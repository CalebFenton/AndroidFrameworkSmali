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
.implements Landroid/view/Window$WindowControllerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Activity$HostCallbacks;,
        Landroid/app/Activity$ManagedCursor;,
        Landroid/app/Activity$ManagedDialog;,
        Landroid/app/Activity$NonConfigurationInstances;,
        Landroid/app/Activity$TranslucentConversionListener;
    }
.end annotation


# static fields
.field private static final DEBUG_LIFECYCLE:Z = false

.field public static final DEFAULT_KEYS_DIALER:I = 0x1

.field public static final DEFAULT_KEYS_DISABLE:I = 0x0

.field public static final DEFAULT_KEYS_SEARCH_GLOBAL:I = 0x4

.field public static final DEFAULT_KEYS_SEARCH_LOCAL:I = 0x3

.field public static final DEFAULT_KEYS_SHORTCUT:I = 0x2

.field public static final DONT_FINISH_TASK_WITH_ACTIVITY:I = 0x0

.field public static final FINISH_TASK_WITH_ACTIVITY:I = 0x2

.field public static final FINISH_TASK_WITH_ROOT_ACTIVITY:I = 0x1

.field protected static final FOCUSED_STATE_SET:[I

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:fragments"

.field private static final HAS_CURENT_PERMISSIONS_REQUEST_KEY:Ljava/lang/String; = "android:hasCurrentPermissionsRequest"

.field private static final KEYBOARD_SHORTCUTS_RECEIVER_CLASS_NAME:Ljava/lang/String; = "com.android.systemui.statusbar.KeyboardShortcutsReceiver"

.field private static final KEYBOARD_SHORTCUTS_RECEIVER_PKG_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final REQUEST_PERMISSIONS_WHO_PREFIX:Ljava/lang/String; = "@android:requestPermissions:"

.field public static final RESULT_CANCELED:I = 0x0

.field public static final RESULT_FIRST_USER:I = 0x1

.field public static final RESULT_OK:I = -0x1

.field private static final SAVED_DIALOGS_TAG:Ljava/lang/String; = "android:savedDialogs"

.field private static final SAVED_DIALOG_ARGS_KEY_PREFIX:Ljava/lang/String; = "android:dialog_args_"

.field private static final SAVED_DIALOG_IDS_KEY:Ljava/lang/String; = "android:savedDialogIds"

.field private static final SAVED_DIALOG_KEY_PREFIX:Ljava/lang/String; = "android:dialog_"

.field private static final TAG:Ljava/lang/String; = "Activity"

.field private static final WINDOW_HIERARCHY_TAG:Ljava/lang/String; = "android:viewHierarchyState"


# instance fields
.field mActionBar:Landroid/app/ActionBar;

.field private mActionModeTypeStarting:I

.field mActivityInfo:Landroid/content/pm/ActivityInfo;

.field mActivityTransitionState:Landroid/app/ActivityTransitionState;

.field private mApplication:Landroid/app/Application;

.field mCalled:Z

.field private mChangeCanvasToTranslucent:Z

.field mChangingConfigurations:Z

.field private mComponent:Landroid/content/ComponentName;

.field mConfigChangeFlags:I

.field mCurrentConfig:Landroid/content/res/Configuration;

.field mDecor:Landroid/view/View;

.field private mDefaultKeyMode:I

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDestroyed:Z

.field private mDoReportFullyDrawn:Z

.field private mEatKeyUpEvent:Z

.field mEmbeddedID:Ljava/lang/String;

.field private mEnableDefaultActionBarUp:Z

.field mEnterTransitionListener:Landroid/app/SharedElementCallback;

.field mExitTransitionListener:Landroid/app/SharedElementCallback;

.field mFinished:Z

.field final mFragments:Landroid/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field private mHasCurrentPermissionsRequest:Z

.field private mIdent:I

.field private final mInstanceTracker:Ljava/lang/Object;

.field private mInstrumentation:Landroid/app/Instrumentation;

.field mIntent:Landroid/content/Intent;

.field mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

.field mMainThread:Landroid/app/ActivityThread;

.field private final mManagedCursors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity$ManagedCursor;",
            ">;"
        }
    .end annotation
.end field

.field private mManagedDialogs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Activity$ManagedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuInflater:Landroid/view/MenuInflater;

.field mParent:Landroid/app/Activity;

.field mReferrer:Ljava/lang/String;

.field mResultCode:I

.field mResultData:Landroid/content/Intent;

.field mResumed:Z

.field private mSearchEvent:Landroid/view/SearchEvent;

.field private mSearchManager:Landroid/app/SearchManager;

.field mStartedActivity:Z

.field mStopped:Z

.field private mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field mTemporaryPause:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:I

.field private mTitleReady:Z

.field private mToken:Landroid/os/IBinder;

.field private mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

.field private mUiThread:Ljava/lang/Thread;

.field mVisibleBehind:Z

.field mVisibleFromClient:Z

.field mVisibleFromServer:Z

.field private mVoiceInteractor:Landroid/app/VoiceInteractor;

.field private mWindow:Landroid/view/Window;

.field mWindowAdded:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -wrap0(Landroid/app/Activity;Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 827
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    const v1, 0x101009c

    #@6
    const/4 v2, 0x0

    #@7
    aput v1, v0, v2

    #@9
    sput-object v0, Landroid/app/Activity;->FOCUSED_STATE_SET:[I

    #@b
    .line 686
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 686
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;-><init>()V

    #@6
    .line 754
    iput-boolean v0, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    #@8
    .line 756
    iput-boolean v1, p0, Landroid/app/Activity;->mTemporaryPause:Z

    #@a
    .line 758
    iput-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    #@c
    .line 776
    iput-object v2, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@e
    .line 777
    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    #@10
    .line 778
    iput-boolean v1, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    #@12
    .line 779
    iput-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    #@14
    .line 780
    iput-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@16
    .line 786
    iput v1, p0, Landroid/app/Activity;->mTitleColor:I

    #@18
    .line 789
    new-instance v0, Landroid/os/Handler;

    #@1a
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    #@1f
    .line 790
    new-instance v0, Landroid/app/Activity$HostCallbacks;

    #@21
    invoke-direct {v0, p0}, Landroid/app/Activity$HostCallbacks;-><init>(Landroid/app/Activity;)V

    #@24
    invoke-static {v0}, Landroid/app/FragmentController;->createController(Landroid/app/FragmentHostCallback;)Landroid/app/FragmentController;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@2a
    .line 807
    new-instance v0, Ljava/util/ArrayList;

    #@2c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2f
    .line 806
    iput-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@31
    .line 810
    iput v1, p0, Landroid/app/Activity;->mResultCode:I

    #@33
    .line 811
    iput-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    #@35
    .line 818
    iput-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    #@37
    .line 819
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    #@39
    .line 821
    iput v1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    #@3b
    .line 822
    iput-object v2, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #@3d
    .line 825
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    #@3f
    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    #@42
    .line 824
    iput-object v0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@44
    .line 830
    invoke-static {p0}, Landroid/os/StrictMode;->trackActivity(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    iput-object v0, p0, Landroid/app/Activity;->mInstanceTracker:Ljava/lang/Object;

    #@4a
    .line 834
    new-instance v0, Landroid/app/ActivityTransitionState;

    #@4c
    invoke-direct {v0}, Landroid/app/ActivityTransitionState;-><init>()V

    #@4f
    iput-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@51
    .line 835
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    #@53
    iput-object v0, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    #@55
    .line 836
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    #@57
    iput-object v0, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    #@59
    .line 686
    return-void
.end method

.method private cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4263
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@7
    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 4264
    .local v0, "decor":Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    #@d
    .line 4265
    invoke-virtual {v0}, Landroid/view/View;->cancelPendingInputEvents()V

    #@10
    .line 4267
    :cond_1
    if-eqz p1, :cond_2

    #@12
    invoke-direct {p0}, Landroid/app/Activity;->isTopOfTask()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_3

    #@18
    .line 4262
    :cond_2
    :goto_0
    return-void

    #@19
    .line 4268
    :cond_3
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@1b
    invoke-virtual {v1, p0, p1}, Landroid/app/ActivityTransitionState;->startExitOutTransition(Landroid/app/Activity;Landroid/os/Bundle;)V

    #@1e
    goto :goto_0
.end method

.method private createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # Ljava/lang/Integer;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1113
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@4
    move-result v1

    #@5
    invoke-virtual {p0, v1, p3}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    #@8
    move-result-object v0

    #@9
    .line 1114
    .local v0, "dialog":Landroid/app/Dialog;
    if-nez v0, :cond_0

    #@b
    .line 1115
    return-object v2

    #@c
    .line 1117
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    #@f
    .line 1118
    return-object v0
.end method

.method private dispatchRequestPermissionsResult(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 7078
    iput-boolean v3, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    #@3
    .line 7080
    if-eqz p2, :cond_0

    #@5
    .line 7081
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    #@8
    .line 7080
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 7082
    .local v1, "permissions":[Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    #@e
    .line 7083
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    #@11
    .line 7082
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    #@14
    move-result-object v0

    #@15
    .line 7084
    .local v0, "grantResults":[I
    :goto_1
    invoke-virtual {p0, p1, v1, v0}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    #@18
    .line 7077
    return-void

    #@19
    .line 7081
    .end local v0    # "grantResults":[I
    .end local v1    # "permissions":[Ljava/lang/String;
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    #@1b
    .restart local v1    # "permissions":[Ljava/lang/String;
    goto :goto_0

    #@1c
    .line 7083
    :cond_1
    new-array v0, v3, [I

    #@1e
    goto :goto_1
.end method

.method private dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "fragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 7090
    if-eqz p2, :cond_0

    #@3
    .line 7091
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    #@6
    .line 7090
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 7092
    .local v1, "permissions":[Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    #@c
    .line 7093
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    #@f
    .line 7092
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    #@12
    move-result-object v0

    #@13
    .line 7094
    .local v0, "grantResults":[I
    :goto_1
    invoke-virtual {p3, p1, v1, v0}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    #@16
    .line 7088
    return-void

    #@17
    .line 7091
    .end local v0    # "grantResults":[I
    .end local v1    # "permissions":[Ljava/lang/String;
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    #@19
    .restart local v1    # "permissions":[Ljava/lang/String;
    goto :goto_0

    #@1a
    .line 7093
    :cond_1
    new-array v0, v3, [I

    #@1c
    goto :goto_1
.end method

.method private ensureSearchManager()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5588
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 5589
    return-void

    #@6
    .line 5592
    :cond_0
    new-instance v0, Landroid/app/SearchManager;

    #@8
    invoke-direct {v0, p0, v1}, Landroid/app/SearchManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@b
    iput-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    #@d
    .line 5587
    return-void
.end method

.method private finish(I)V
    .locals 5
    .param p1, "finishTask"    # I

    #@0
    .prologue
    .line 5195
    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-nez v3, :cond_2

    #@4
    .line 5198
    monitor-enter p0

    #@5
    .line 5199
    :try_start_0
    iget v1, p0, Landroid/app/Activity;->mResultCode:I

    #@7
    .line 5200
    .local v1, "resultCode":I
    iget-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .local v2, "resultData":Landroid/content/Intent;
    monitor-exit p0

    #@a
    .line 5204
    if-eqz v2, :cond_0

    #@c
    .line 5205
    :try_start_1
    invoke-virtual {v2, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@f
    .line 5207
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@12
    move-result-object v3

    #@13
    .line 5208
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@15
    .line 5207
    invoke-interface {v3, v4, v1, v2, p1}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 5209
    const/4 v3, 0x1

    #@1c
    iput-boolean v3, p0, Landroid/app/Activity;->mFinished:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1e
    .line 5194
    .end local v1    # "resultCode":I
    .end local v2    # "resultData":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    #@1f
    .line 5198
    :catchall_0
    move-exception v3

    #@20
    monitor-exit p0

    #@21
    throw v3

    #@22
    .line 5215
    :cond_2
    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@24
    invoke-virtual {v3, p0}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    #@27
    goto :goto_0

    #@28
    .line 5211
    .restart local v1    # "resultCode":I
    .restart local v2    # "resultData":Landroid/content/Intent;
    :catch_0
    move-exception v0

    #@29
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private static native getDlWarning()Ljava/lang/String;
.end method

.method private initWindowDecorActionBar()V
    .locals 3

    #@0
    .prologue
    .line 2387
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    .line 2391
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@7
    .line 2393
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    const/16 v1, 0x8

    #@f
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 2394
    :cond_0
    return-void

    #@1a
    .line 2397
    :cond_1
    new-instance v1, Lcom/android/internal/app/WindowDecorActionBar;

    #@1c
    invoke-direct {v1, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;)V

    #@1f
    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@21
    .line 2398
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@23
    iget-boolean v2, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    #@25
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    #@28
    .line 2400
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@2a
    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@2c
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    #@2f
    move-result v2

    #@30
    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultIcon(I)V

    #@33
    .line 2401
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@35
    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@37
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    #@3a
    move-result v2

    #@3b
    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultLogo(I)V

    #@3e
    .line 2386
    return-void
.end method

.method private isTopOfTask()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5974
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 5975
    :cond_0
    return v3

    #@a
    .line 5978
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    #@11
    move-result-object v2

    #@12
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isTopOfTask(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 5979
    :catch_0
    move-exception v0

    #@18
    .line 5980
    .local v0, "e":Landroid/os/RemoteException;
    return v3
.end method

.method private missingDialog(I)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p1, "id"    # I

    #@0
    .prologue
    .line 3780
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "no dialog with id "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, " was ever "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 3781
    const-string/jumbo v2, "shown via Activity#showDialog"

    #@1c
    .line 3780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    return-object v0
.end method

.method private restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 6919
    if-eqz p1, :cond_0

    #@2
    .line 6921
    const-string/jumbo v0, "android:hasCurrentPermissionsRequest"

    #@5
    const/4 v1, 0x0

    #@6
    .line 6920
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@9
    move-result v0

    #@a
    iput-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    #@c
    .line 6918
    :cond_0
    return-void
.end method

.method private restoreManagedDialogs(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1086
    const-string/jumbo v7, "android:savedDialogs"

    #@4
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@7
    move-result-object v0

    #@8
    .line 1087
    .local v0, "b":Landroid/os/Bundle;
    if-nez v0, :cond_0

    #@a
    .line 1088
    return-void

    #@b
    .line 1091
    :cond_0
    const-string/jumbo v7, "android:savedDialogIds"

    #@e
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    #@11
    move-result-object v4

    #@12
    .line 1092
    .local v4, "ids":[I
    array-length v6, v4

    #@13
    .line 1093
    .local v6, "numDialogs":I
    new-instance v7, Landroid/util/SparseArray;

    #@15
    invoke-direct {v7, v6}, Landroid/util/SparseArray;-><init>(I)V

    #@18
    iput-object v7, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@1a
    .line 1094
    const/4 v3, 0x0

    #@1b
    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_2

    #@1d
    .line 1095
    aget v7, v4, v3

    #@1f
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v1

    #@23
    .line 1096
    .local v1, "dialogId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v7

    #@27
    invoke-static {v7}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@2e
    move-result-object v2

    #@2f
    .line 1097
    .local v2, "dialogState":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    #@31
    .line 1100
    new-instance v5, Landroid/app/Activity$ManagedDialog;

    #@33
    invoke-direct {v5, v10}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$ManagedDialog;)V

    #@36
    .line 1101
    .local v5, "md":Landroid/app/Activity$ManagedDialog;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@39
    move-result v7

    #@3a
    invoke-static {v7}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    #@3d
    move-result-object v7

    #@3e
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@41
    move-result-object v7

    #@42
    iput-object v7, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    #@44
    .line 1102
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    #@46
    invoke-direct {p0, v1, v2, v7}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    #@49
    move-result-object v7

    #@4a
    iput-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@4c
    .line 1103
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@4e
    if-eqz v7, :cond_1

    #@50
    .line 1104
    iget-object v7, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@52
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@55
    move-result v8

    #@56
    invoke-virtual {v7, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@59
    .line 1105
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@5c
    move-result v7

    #@5d
    iget-object v8, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@5f
    iget-object v9, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    #@61
    invoke-virtual {p0, v7, v8, v9}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    #@64
    .line 1106
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@66
    invoke-virtual {v7, v2}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@69
    .line 1094
    .end local v5    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@6b
    goto :goto_0

    #@6c
    .line 1085
    .end local v1    # "dialogId":Ljava/lang/Integer;
    .end local v2    # "dialogState":Landroid/os/Bundle;
    :cond_2
    return-void
.end method

.method private saveManagedDialogs(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1517
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@2
    if-nez v6, :cond_0

    #@4
    .line 1518
    return-void

    #@5
    .line 1521
    :cond_0
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@a
    move-result v5

    #@b
    .line 1522
    .local v5, "numDialogs":I
    if-nez v5, :cond_1

    #@d
    .line 1523
    return-void

    #@e
    .line 1526
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    #@10
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@13
    .line 1528
    .local v0, "dialogState":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@18
    move-result v6

    #@19
    new-array v2, v6, [I

    #@1b
    .line 1531
    .local v2, "ids":[I
    const/4 v1, 0x0

    #@1c
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_3

    #@1e
    .line 1532
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@20
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@23
    move-result v3

    #@24
    .line 1533
    .local v3, "key":I
    aput v3, v2, v1

    #@26
    .line 1534
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@28
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2b
    move-result-object v4

    #@2c
    check-cast v4, Landroid/app/Activity$ManagedDialog;

    #@2e
    .line 1535
    .local v4, "md":Landroid/app/Activity$ManagedDialog;
    invoke-static {v3}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    iget-object v7, v4, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@34
    invoke-virtual {v7}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    #@37
    move-result-object v7

    #@38
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@3b
    .line 1536
    iget-object v6, v4, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    #@3d
    if-eqz v6, :cond_2

    #@3f
    .line 1537
    invoke-static {v3}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    iget-object v7, v4, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    #@45
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@48
    .line 1531
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 1541
    .end local v3    # "key":I
    .end local v4    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_3
    const-string/jumbo v6, "android:savedDialogIds"

    #@4e
    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    #@51
    .line 1542
    const-string/jumbo v6, "android:savedDialogs"

    #@54
    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@57
    .line 1516
    return-void
.end method

.method private static savedDialogArgsKeyFor(I)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # I

    #@0
    .prologue
    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "android:dialog_args_"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method private static savedDialogKeyFor(I)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # I

    #@0
    .prologue
    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "android:dialog_"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method private startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .locals 14
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

    #@0
    .prologue
    .line 4449
    const/4 v5, 0x0

    #@1
    .line 4450
    .local v5, "resolvedType":Ljava/lang/String;
    if-eqz p4, :cond_0

    #@3
    .line 4451
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@6
    .line 4452
    move-object/from16 v0, p4

    #@8
    invoke-virtual {v0, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@b
    .line 4453
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    #@e
    move-result-object v1

    #@f
    move-object/from16 v0, p4

    #@11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    .line 4455
    .end local v5    # "resolvedType":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@18
    move-result-object v1

    #@19
    .line 4456
    iget-object v2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@1b
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@1e
    move-result-object v2

    #@1f
    .line 4457
    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@21
    move-object v3, p1

    #@22
    move-object/from16 v4, p4

    #@24
    move-object/from16 v7, p2

    #@26
    move/from16 v8, p3

    #@28
    move/from16 v9, p5

    #@2a
    move/from16 v10, p6

    #@2c
    move-object/from16 v11, p7

    #@2e
    .line 4455
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    #@31
    move-result v13

    #@32
    .line 4459
    .local v13, "result":I
    const/4 v1, -0x6

    #@33
    if-ne v13, v1, :cond_2

    #@35
    .line 4460
    new-instance v1, Landroid/content/IntentSender$SendIntentException;

    #@37
    invoke-direct {v1}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    #@3a
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 4463
    .end local v13    # "result":I
    :catch_0
    move-exception v12

    #@3c
    .line 4465
    :goto_0
    if-ltz p3, :cond_1

    #@3e
    .line 4473
    const/4 v1, 0x1

    #@3f
    iput-boolean v1, p0, Landroid/app/Activity;->mStartedActivity:Z

    #@41
    .line 4447
    :cond_1
    return-void

    #@42
    .line 4462
    .restart local v13    # "result":I
    :cond_2
    const/4 v1, 0x0

    #@43
    :try_start_1
    invoke-static {v13, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@46
    goto :goto_0
.end method

.method private storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 6913
    if-eqz p1, :cond_0

    #@2
    iget-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 6914
    const-string/jumbo v0, "android:hasCurrentPermissionsRequest"

    #@9
    const/4 v1, 0x1

    #@a
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@d
    .line 6912
    :cond_0
    return-void
.end method

.method private transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4273
    if-nez p1, :cond_0

    #@2
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@8
    invoke-virtual {v1}, Landroid/view/Window;->isActive()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 4280
    :cond_0
    return-object p1

    #@f
    .line 4274
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    #@12
    move-result-object v0

    #@13
    .line 4275
    .local v0, "activityOptions":Landroid/app/ActivityOptions;
    if-eqz v0, :cond_0

    #@15
    .line 4276
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    #@18
    move-result v1

    #@19
    const/4 v2, 0x5

    #@1a
    if-ne v1, v2, :cond_0

    #@1c
    .line 4277
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    #@1f
    move-result-object v1

    #@20
    return-object v1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 2462
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@7
    .line 2463
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    #@a
    .line 2461
    return-void
.end method

.method final attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;)V
    .locals 6
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

    #@0
    .prologue
    .line 6615
    invoke-virtual {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    #@3
    .line 6617
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v1, v2}, Landroid/app/FragmentController;->attachHost(Landroid/app/Fragment;)V

    #@9
    .line 6619
    new-instance v1, Lcom/android/internal/policy/PhoneWindow;

    #@b
    move-object/from16 v0, p16

    #@d
    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    #@10
    iput-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@12
    .line 6620
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@14
    invoke-virtual {v1, p0}, Landroid/view/Window;->setWindowControllerCallback(Landroid/view/Window$WindowControllerCallback;)V

    #@17
    .line 6621
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@19
    invoke-virtual {v1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    #@1c
    .line 6622
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@1e
    invoke-virtual {v1, p0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    #@21
    .line 6623
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@23
    invoke-virtual {v1}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, p0}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    #@2a
    .line 6624
    iget v1, p8, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@2c
    if-eqz v1, :cond_0

    #@2e
    .line 6625
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@30
    iget v2, p8, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@32
    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    #@35
    .line 6627
    :cond_0
    iget v1, p8, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@37
    if-eqz v1, :cond_1

    #@39
    .line 6628
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@3b
    iget v2, p8, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@3d
    invoke-virtual {v1, v2}, Landroid/view/Window;->setUiOptions(I)V

    #@40
    .line 6630
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@43
    move-result-object v1

    #@44
    iput-object v1, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    #@46
    .line 6632
    iput-object p2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@48
    .line 6633
    iput-object p3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@4a
    .line 6634
    iput-object p4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@4c
    .line 6635
    iput p5, p0, Landroid/app/Activity;->mIdent:I

    #@4e
    .line 6636
    iput-object p6, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    #@50
    .line 6637
    iput-object p7, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    #@52
    .line 6638
    move-object/from16 v0, p14

    #@54
    iput-object v0, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    #@56
    .line 6639
    invoke-virtual {p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@59
    move-result-object v1

    #@5a
    iput-object v1, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    #@5c
    .line 6640
    iput-object p8, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@5e
    .line 6641
    iput-object p9, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    #@60
    .line 6642
    move-object/from16 v0, p10

    #@62
    iput-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@64
    .line 6643
    move-object/from16 v0, p11

    #@66
    iput-object v0, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@68
    .line 6644
    move-object/from16 v0, p12

    #@6a
    iput-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@6c
    .line 6645
    if-eqz p15, :cond_2

    #@6e
    .line 6646
    if-eqz p12, :cond_4

    #@70
    .line 6647
    move-object/from16 v0, p12

    #@72
    iget-object v1, v0, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    #@74
    iput-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@76
    .line 6654
    :cond_2
    :goto_0
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@78
    .line 6655
    const-string/jumbo v1, "window"

    #@7b
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7e
    move-result-object v1

    #@7f
    check-cast v1, Landroid/view/WindowManager;

    #@81
    .line 6656
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@83
    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    #@85
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@88
    move-result-object v5

    #@89
    .line 6657
    iget v2, p8, Landroid/content/pm/ActivityInfo;->flags:I

    #@8b
    and-int/lit16 v2, v2, 0x200

    #@8d
    if-eqz v2, :cond_5

    #@8f
    const/4 v2, 0x1

    #@90
    .line 6654
    :goto_1
    invoke-virtual {v3, v1, v4, v5, v2}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    #@93
    .line 6658
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@95
    if-eqz v1, :cond_3

    #@97
    .line 6659
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@99
    iget-object v2, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@9b
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@9e
    move-result-object v2

    #@9f
    invoke-virtual {v1, v2}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    #@a2
    .line 6661
    :cond_3
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@a4
    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    #@a7
    move-result-object v1

    #@a8
    iput-object v1, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    #@aa
    .line 6662
    move-object/from16 v0, p13

    #@ac
    iput-object v0, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    #@ae
    .line 6614
    return-void

    #@af
    .line 6649
    :cond_4
    new-instance v1, Landroid/app/VoiceInteractor;

    #@b1
    .line 6650
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@b4
    move-result-object v2

    #@b5
    .line 6649
    move-object/from16 v0, p15

    #@b7
    invoke-direct {v1, v0, p0, p0, v2}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    #@ba
    iput-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@bc
    goto :goto_0

    #@bd
    .line 6657
    :cond_5
    const/4 v2, 0x0

    #@be
    goto :goto_1
.end method

.method public canStartActivityForResult()Z
    .locals 1

    #@0
    .prologue
    .line 4891
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public closeContextMenu()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x6

    #@1
    .line 3552
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@3
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 3553
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@b
    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    #@e
    .line 3551
    :cond_0
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3491
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@3
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 3492
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@b
    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    #@e
    .line 3490
    :cond_0
    return-void
.end method

.method public convertFromTranslucent()V
    .locals 4

    #@0
    .prologue
    .line 6003
    const/4 v1, 0x0

    #@1
    :try_start_0
    iput-object v1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    #@3
    .line 6004
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@6
    move-result-object v1

    #@7
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@9
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->convertFromTranslucent(Landroid/os/IBinder;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 6005
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@15
    const/4 v3, 0x1

    #@16
    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 6001
    :cond_0
    :goto_0
    return-void

    #@1a
    .line 6007
    :catch_0
    move-exception v0

    #@1b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z
    .locals 6
    .param p1, "callback"    # Landroid/app/Activity$TranslucentConversionListener;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 6042
    :try_start_0
    iput-object p1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    #@3
    .line 6044
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@6
    move-result-object v2

    #@7
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@9
    invoke-interface {v2, v3, p2}, Landroid/app/IActivityManager;->convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z

    #@c
    move-result v2

    #@d
    .line 6043
    iput-boolean v2, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    #@f
    .line 6045
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@12
    move-result-object v2

    #@13
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@15
    const/4 v4, 0x0

    #@16
    invoke-virtual {v2, v3, v4}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 6046
    const/4 v0, 0x1

    #@1a
    .line 6052
    .local v0, "drawComplete":Z
    :goto_0
    iget-boolean v2, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    #@1c
    if-nez v2, :cond_0

    #@1e
    iget-object v2, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 6054
    iget-object v2, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    #@24
    invoke-interface {v2, v0}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    #@27
    .line 6056
    :cond_0
    iget-boolean v2, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    #@29
    return v2

    #@2a
    .line 6047
    .end local v0    # "drawComplete":Z
    :catch_0
    move-exception v1

    #@2b
    .line 6049
    .local v1, "e":Landroid/os/RemoteException;
    iput-boolean v5, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    #@2d
    .line 6050
    const/4 v0, 0x0

    #@2e
    .restart local v0    # "drawComplete":Z
    goto :goto_0
.end method

.method public createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 13
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 5430
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 5432
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@7
    .line 5434
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@a
    move-result-object v0

    #@b
    .line 5436
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@d
    if-nez v1, :cond_0

    #@f
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@11
    .line 5437
    :goto_0
    iget-object v4, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@13
    const/4 v1, 0x1

    #@14
    new-array v6, v1, [Landroid/content/Intent;

    #@16
    const/4 v1, 0x0

    #@17
    aput-object p2, v6, v1

    #@19
    .line 5438
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@1c
    move-result v10

    #@1d
    .line 5435
    const/4 v1, 0x3

    #@1e
    .line 5437
    const/4 v7, 0x0

    #@1f
    const/4 v9, 0x0

    #@20
    move v5, p1

    #@21
    move/from16 v8, p3

    #@23
    .line 5434
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    #@26
    move-result-object v12

    #@27
    .line 5439
    .local v12, "target":Landroid/content/IIntentSender;
    if-eqz v12, :cond_1

    #@29
    new-instance v0, Landroid/app/PendingIntent;

    #@2b
    invoke-direct {v0, v12}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    #@2e
    :goto_1
    return-object v0

    #@2f
    .line 5436
    .end local v12    # "target":Landroid/content/IIntentSender;
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@31
    iget-object v3, v1, Landroid/app/Activity;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    goto :goto_0

    #@34
    .line 5439
    .restart local v12    # "target":Landroid/content/IIntentSender;
    :cond_1
    const/4 v0, 0x0

    #@35
    goto :goto_1

    #@36
    .line 5440
    .end local v12    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v11

    #@37
    .line 5443
    .local v11, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    #@38
    return-object v0
.end method

.method public final dismissDialog(I)V
    .locals 2
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3764
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 3765
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    #@7
    move-result-object v1

    #@8
    throw v1

    #@9
    .line 3768
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/app/Activity$ManagedDialog;

    #@11
    .line 3769
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-nez v0, :cond_1

    #@13
    .line 3770
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    #@16
    move-result-object v1

    #@17
    throw v1

    #@18
    .line 3772
    :cond_1
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@1a
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    #@1d
    .line 3763
    return-void
.end method

.method public final dismissKeyboardShortcutsHelper()V
    .locals 4

    #@0
    .prologue
    .line 1706
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.DISMISS_KEYBOARD_SHORTCUTS"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1707
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    #@a
    const-string/jumbo v2, "com.android.systemui"

    #@d
    .line 1708
    const-string/jumbo v3, "com.android.systemui.statusbar.KeyboardShortcutsReceiver"

    #@10
    .line 1707
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@16
    .line 1709
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    #@19
    .line 1705
    return-void
.end method

.method dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 6
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 6930
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@2
    invoke-virtual {v4}, Landroid/app/FragmentController;->noteStateNotSaved()V

    #@5
    .line 6931
    if-nez p1, :cond_1

    #@7
    .line 6932
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    #@a
    .line 6926
    :cond_0
    :goto_0
    return-void

    #@b
    .line 6933
    :cond_1
    const-string/jumbo v4, "@android:requestPermissions:"

    #@e
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_3

    #@14
    .line 6934
    const-string/jumbo v4, "@android:requestPermissions:"

    #@17
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@1a
    move-result v4

    #@1b
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1e
    move-result-object p1

    #@1f
    .line 6935
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_2

    #@25
    .line 6936
    invoke-direct {p0, p2, p4}, Landroid/app/Activity;->dispatchRequestPermissionsResult(ILandroid/content/Intent;)V

    #@28
    goto :goto_0

    #@29
    .line 6938
    :cond_2
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@2b
    invoke-virtual {v4, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    #@2e
    move-result-object v0

    #@2f
    .line 6939
    .local v0, "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@31
    .line 6940
    invoke-direct {p0, p2, p4, v0}, Landroid/app/Activity;->dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V

    #@34
    goto :goto_0

    #@35
    .line 6943
    .end local v0    # "frag":Landroid/app/Fragment;
    :cond_3
    const-string/jumbo v4, "@android:view:"

    #@38
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_5

    #@3e
    .line 6944
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@41
    move-result-object v4

    #@42
    .line 6945
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    #@45
    move-result-object v5

    #@46
    .line 6944
    invoke-virtual {v4, v5}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    #@49
    move-result-object v3

    #@4a
    .line 6946
    .local v3, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4d
    move-result-object v2

    #@4e
    .local v2, "viewRoot$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@51
    move-result v4

    #@52
    if-eqz v4, :cond_0

    #@54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v1

    #@58
    check-cast v1, Landroid/view/ViewRootImpl;

    #@5a
    .line 6947
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    #@5d
    move-result-object v4

    #@5e
    if-eqz v4, :cond_4

    #@60
    .line 6948
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    #@67
    move-result v4

    #@68
    .line 6947
    if-eqz v4, :cond_4

    #@6a
    .line 6950
    return-void

    #@6b
    .line 6954
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v2    # "viewRoot$iterator":Ljava/util/Iterator;
    .end local v3    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    :cond_5
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@6d
    invoke-virtual {v4, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    #@70
    move-result-object v0

    #@71
    .line 6955
    .restart local v0    # "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@73
    .line 6956
    invoke-virtual {v0, p2, p3, p4}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    #@76
    goto :goto_0
.end method

.method public dispatchEnterAnimationComplete()V
    .locals 1

    #@0
    .prologue
    .line 6208
    invoke-virtual {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    #@3
    .line 6209
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 6210
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnEnterAnimationComplete()V

    #@22
    .line 6207
    :cond_0
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 3096
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    #@3
    .line 3097
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 3098
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 3100
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v8, 0x1

    #@3
    .line 2996
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    #@6
    .line 3000
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@9
    move-result v3

    #@a
    .line 3001
    .local v3, "keyCode":I
    const/16 v6, 0x52

    #@c
    if-ne v3, v6, :cond_0

    #@e
    .line 3002
    iget-object v6, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@10
    if-eqz v6, :cond_0

    #@12
    iget-object v6, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@14
    invoke-virtual {v6, p1}, Landroid/app/ActionBar;->onMenuKeyEvent(Landroid/view/KeyEvent;)Z

    #@17
    move-result v6

    #@18
    .line 3001
    if-eqz v6, :cond_0

    #@1a
    .line 3003
    return v8

    #@1b
    .line 3004
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    #@1e
    move-result v6

    #@1f
    if-eqz v6, :cond_2

    #@21
    .line 3005
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    #@24
    move-result v6

    #@25
    and-int/lit16 v6, v6, -0x7001

    #@27
    invoke-virtual {p1, v6}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    #@2a
    move-result v6

    #@2b
    const/16 v7, 0x3c

    #@2d
    if-ne v6, v7, :cond_2

    #@2f
    .line 3007
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@32
    move-result v0

    #@33
    .line 3008
    .local v0, "action":I
    if-nez v0, :cond_1

    #@35
    .line 3009
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    #@38
    move-result-object v1

    #@39
    .line 3010
    .local v1, "actionBar":Landroid/app/ActionBar;
    if-eqz v1, :cond_2

    #@3b
    invoke-virtual {v1}, Landroid/app/ActionBar;->isShowing()Z

    #@3e
    move-result v6

    #@3f
    if-eqz v6, :cond_2

    #@41
    invoke-virtual {v1}, Landroid/app/ActionBar;->requestFocus()Z

    #@44
    move-result v6

    #@45
    if-eqz v6, :cond_2

    #@47
    .line 3011
    iput-boolean v8, p0, Landroid/app/Activity;->mEatKeyUpEvent:Z

    #@49
    .line 3012
    return v8

    #@4a
    .line 3014
    .end local v1    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    if-ne v0, v8, :cond_2

    #@4c
    iget-boolean v6, p0, Landroid/app/Activity;->mEatKeyUpEvent:Z

    #@4e
    if-eqz v6, :cond_2

    #@50
    .line 3015
    iput-boolean v9, p0, Landroid/app/Activity;->mEatKeyUpEvent:Z

    #@52
    .line 3016
    return v8

    #@53
    .line 3020
    .end local v0    # "action":I
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@56
    move-result-object v4

    #@57
    .line 3021
    .local v4, "win":Landroid/view/Window;
    invoke-virtual {v4, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@5a
    move-result v6

    #@5b
    if-eqz v6, :cond_3

    #@5d
    .line 3022
    return v8

    #@5e
    .line 3024
    :cond_3
    iget-object v2, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@60
    .line 3025
    .local v2, "decor":Landroid/view/View;
    if-nez v2, :cond_4

    #@62
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@65
    move-result-object v2

    #@66
    .line 3026
    :cond_4
    if-eqz v2, :cond_5

    #@68
    .line 3027
    invoke-virtual {v2}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@6b
    move-result-object v5

    #@6c
    .line 3026
    :cond_5
    invoke-virtual {p1, p0, v5, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    #@6f
    move-result v5

    #@70
    return v5
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 3040
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    #@3
    .line 3041
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 3042
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 3044
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@12
    move-result v0

    #@13
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    #@16
    move-result v0

    #@17
    return v0
.end method

.method final dispatchMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z

    #@0
    .prologue
    .line 6891
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchMultiWindowModeChanged(Z)V

    #@5
    .line 6892
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 6893
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@b
    invoke-virtual {v0}, Landroid/view/Window;->onMultiWindowModeChanged()V

    #@e
    .line 6895
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    #@11
    .line 6888
    return-void
.end method

.method final dispatchPictureInPictureModeChanged(Z)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z

    #@0
    .prologue
    .line 6901
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchPictureInPictureModeChanged(Z)V

    #@5
    .line 6902
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onPictureInPictureModeChanged(Z)V

    #@8
    .line 6898
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    const/4 v5, -0x1

    #@3
    .line 3104
    invoke-virtual {p0}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v4

    #@7
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v4

    #@b
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    #@e
    .line 3105
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    #@15
    .line 3107
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@1c
    move-result-object v1

    #@1d
    .line 3108
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@1f
    if-ne v4, v5, :cond_0

    #@21
    .line 3109
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@23
    if-ne v4, v5, :cond_0

    #@25
    move v0, v3

    #@26
    .line 3110
    .local v0, "isFullScreen":Z
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    #@29
    .line 3112
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    #@2c
    move-result-object v2

    #@2d
    .line 3113
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@30
    move-result v4

    #@31
    if-nez v4, :cond_1

    #@33
    .line 3114
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@36
    move-result-object v4

    #@37
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3a
    .line 3117
    :cond_1
    return v3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 3058
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 3059
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    #@9
    .line 3061
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 3062
    const/4 v0, 0x1

    #@14
    return v0

    #@15
    .line 3064
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@18
    move-result v0

    #@19
    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 3078
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    #@3
    .line 3079
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 3080
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 3082
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 5915
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    .line 5914
    return-void
.end method

.method dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 5919
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v1, "Local Activity "

    #@6
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 5920
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@c
    move-result v1

    #@d
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    .line 5921
    const-string/jumbo v1, " State:"

    #@17
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a
    .line 5922
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    const-string/jumbo v2, "  "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    .line 5923
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    const-string/jumbo v1, "mResumed="

    #@34
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37
    .line 5924
    iget-boolean v1, p0, Landroid/app/Activity;->mResumed:Z

    #@39
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@3c
    const-string/jumbo v1, " mStopped="

    #@3f
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42
    .line 5925
    iget-boolean v1, p0, Landroid/app/Activity;->mStopped:Z

    #@44
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@47
    const-string/jumbo v1, " mFinished="

    #@4a
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    .line 5926
    iget-boolean v1, p0, Landroid/app/Activity;->mFinished:Z

    #@4f
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@52
    .line 5927
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55
    const-string/jumbo v1, "mChangingConfigurations="

    #@58
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b
    .line 5928
    iget-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    #@5d
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@60
    .line 5929
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63
    const-string/jumbo v1, "mCurrentConfig="

    #@66
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69
    .line 5930
    iget-object v1, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    #@6b
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@6e
    .line 5932
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@70
    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@73
    .line 5933
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@75
    invoke-virtual {v1}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@7c
    .line 5934
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@7e
    if-eqz v1, :cond_0

    #@80
    .line 5935
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@82
    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/VoiceInteractor;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@85
    .line 5938
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@88
    move-result-object v1

    #@89
    if-eqz v1, :cond_1

    #@8b
    .line 5939
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    #@92
    move-result-object v1

    #@93
    if-eqz v1, :cond_1

    #@95
    .line 5940
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@98
    move-result-object v1

    #@99
    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    #@9c
    move-result-object v1

    #@9d
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@a0
    move-result-object v1

    #@a1
    if-eqz v1, :cond_1

    #@a3
    .line 5941
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@a6
    move-result-object v1

    #@a7
    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    #@aa
    move-result-object v1

    #@ab
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@ae
    move-result-object v1

    #@af
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@b2
    .line 5944
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    #@b4
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@b7
    move-result-object v1

    #@b8
    new-instance v2, Landroid/util/PrintWriterPrinter;

    #@ba
    invoke-direct {v2, p3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@bd
    invoke-virtual {v1, v2, p1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@c0
    .line 5918
    return-void
.end method

.method public enterPictureInPictureMode()V
    .locals 3

    #@0
    .prologue
    .line 1929
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->enterPictureInPictureMode(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1927
    :goto_0
    return-void

    #@a
    .line 1930
    :catch_0
    move-exception v0

    #@b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public enterPictureInPictureModeIfPossible()V
    .locals 2

    #@0
    .prologue
    .line 2981
    iget-object v0, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@2
    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@4
    const/4 v1, 0x3

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 2982
    invoke-virtual {p0}, Landroid/app/Activity;->enterPictureInPictureMode()V

    #@a
    .line 2980
    :cond_0
    return-void
.end method

.method public exitFreeformMode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2963
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->exitFreeformMode(Landroid/os/IBinder;)V

    #@9
    .line 2962
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 2323
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public finish()V
    .locals 1

    #@0
    .prologue
    .line 5225
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(I)V

    #@4
    .line 5224
    return-void
.end method

.method public finishActivity(I)V
    .locals 4
    .param p1, "requestCode"    # I

    #@0
    .prologue
    .line 5294
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 5296
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@7
    move-result-object v1

    #@8
    .line 5297
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@a
    iget-object v3, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@c
    .line 5296
    invoke-interface {v1, v2, v3, p1}, Landroid/app/IActivityManager;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 5293
    :goto_0
    return-void

    #@10
    .line 5302
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@12
    invoke-virtual {v1, p0, p1}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    #@15
    goto :goto_0

    #@16
    .line 5298
    :catch_0
    move-exception v0

    #@17
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 4
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    #@0
    .prologue
    .line 5316
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 5317
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    iget-object v3, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@8
    .line 5316
    invoke-interface {v1, v2, v3, p2}, Landroid/app/IActivityManager;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 5314
    :goto_0
    return-void

    #@c
    .line 5318
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public finishAffinity()V
    .locals 3

    #@0
    .prologue
    .line 5243
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 5244
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "Can not be called from an embedded activity"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 5246
    :cond_0
    iget v1, p0, Landroid/app/Activity;->mResultCode:I

    #@f
    if-nez v1, :cond_1

    #@11
    iget-object v1, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    #@13
    if-eqz v1, :cond_2

    #@15
    .line 5247
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    #@17
    const-string/jumbo v2, "Can not be called to deliver a result"

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 5250
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@21
    move-result-object v1

    #@22
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@24
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->finishActivityAffinity(Landroid/os/IBinder;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_3

    #@2a
    .line 5251
    const/4 v1, 0x1

    #@2b
    iput-boolean v1, p0, Landroid/app/Activity;->mFinished:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 5242
    :cond_3
    :goto_0
    return-void

    #@2e
    .line 5253
    :catch_0
    move-exception v0

    #@2f
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public finishAfterTransition()V
    .locals 1

    #@0
    .prologue
    .line 5279
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@2
    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->startExitBackTransition(Landroid/app/Activity;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 5280
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    #@b
    .line 5278
    :cond_0
    return-void
.end method

.method public finishAndRemoveTask()V
    .locals 1

    #@0
    .prologue
    .line 5328
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(I)V

    #@4
    .line 5327
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 0
    .param p1, "child"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 5268
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    #@3
    .line 5267
    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    #@0
    .prologue
    .line 2333
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    #@3
    .line 2334
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@5
    return-object v0
.end method

.method getActivityOptions()Landroid/app/ActivityOptions;
    .locals 3

    #@0
    .prologue
    .line 6088
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 6089
    :catch_0
    move-exception v0

    #@c
    .line 6091
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public final getActivityToken()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 6667
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@6
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@d
    goto :goto_0
.end method

.method public final getApplication()Landroid/app/Application;
    .locals 1

    #@0
    .prologue
    .line 864
    iget-object v0, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    #@2
    return-object v0
.end method

.method public getCallingActivity()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 5102
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 5103
    :catch_0
    move-exception v0

    #@c
    .line 5104
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 5079
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 5080
    :catch_0
    move-exception v0

    #@c
    .line 5081
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public getChangingConfigurations()I
    .locals 1

    #@0
    .prologue
    .line 1983
    iget v0, p0, Landroid/app/Activity;->mConfigChangeFlags:I

    #@2
    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 5568
    iget-object v0, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    #@0
    .prologue
    .line 2498
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/view/Window;->getContentScene()Landroid/transition/Scene;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getContentTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    #@0
    .prologue
    .line 2476
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/view/Window;->getTransitionManager()Landroid/transition/TransitionManager;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 912
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@7
    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    #@0
    .prologue
    .line 2150
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@2
    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 845
    iget-object v0, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method getLastNonConfigurationChildInstances()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2087
    iget-object v1, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2088
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@7
    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    #@9
    .line 2087
    :cond_0
    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2008
    iget-object v1, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2009
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@7
    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    #@9
    .line 2008
    :cond_0
    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    #@0
    .prologue
    .line 3987
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    #@0
    .prologue
    .line 898
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@2
    invoke-virtual {v0}, Landroid/app/FragmentController;->getLoaderManager()Landroid/app/LoaderManager;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLocalClassName()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 5551
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 5552
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    #@6
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 5553
    .local v0, "cls":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@d
    move-result v1

    #@e
    .line 5554
    .local v1, "packageLen":I
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@17
    move-result v3

    #@18
    if-gt v3, v1, :cond_1

    #@1a
    .line 5556
    :cond_0
    return-object v0

    #@1b
    .line 5555
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v3

    #@1f
    const/16 v4, 0x2e

    #@21
    if-ne v3, v4, :cond_0

    #@23
    .line 5558
    add-int/lit8 v3, v1, 0x1

    #@25
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    return-object v3
.end method

.method public final getMediaController()Landroid/media/session/MediaController;
    .locals 1

    #@0
    .prologue
    .line 5852
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/view/Window;->getMediaController()Landroid/media/session/MediaController;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    #@0
    .prologue
    .line 3996
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3997
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    #@7
    .line 3998
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 3999
    new-instance v0, Landroid/view/MenuInflater;

    #@d
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@f
    invoke-virtual {v1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    #@16
    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    #@18
    .line 4004
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    #@1a
    return-object v0

    #@1b
    .line 4001
    :cond_1
    new-instance v0, Landroid/view/MenuInflater;

    #@1d
    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    #@20
    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    #@22
    goto :goto_0
.end method

.method public final getParent()Landroid/app/Activity;
    .locals 1

    #@0
    .prologue
    .line 874
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    return-object v0
.end method

.method public getParentActivityIntent()Landroid/content/Intent;
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 6507
    iget-object v6, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@3
    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@5
    .line 6508
    .local v4, "parentName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v6

    #@9
    if-eqz v6, :cond_0

    #@b
    .line 6509
    return-object v9

    #@c
    .line 6513
    :cond_0
    new-instance v5, Landroid/content/ComponentName;

    #@e
    invoke-direct {v5, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@11
    .line 6515
    .local v5, "target":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@14
    move-result-object v6

    #@15
    const/4 v7, 0x0

    #@16
    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@19
    move-result-object v2

    #@1a
    .line 6516
    .local v2, "parentInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@1c
    .line 6517
    .local v1, "parentActivity":Ljava/lang/String;
    if-nez v1, :cond_1

    #@1e
    .line 6518
    invoke-static {v5}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@21
    move-result-object v3

    #@22
    .line 6520
    .local v3, "parentIntent":Landroid/content/Intent;
    :goto_0
    return-object v3

    #@23
    .line 6519
    .end local v3    # "parentIntent":Landroid/content/Intent;
    :cond_1
    new-instance v6, Landroid/content/Intent;

    #@25
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    #@28
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    move-result-object v3

    #@2c
    goto :goto_0

    #@2d
    .line 6521
    .end local v1    # "parentActivity":Ljava/lang/String;
    .end local v2    # "parentInfo":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v0

    #@2e
    .line 6522
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "Activity"

    #@31
    new-instance v7, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v8, "getParentActivityIntent: bad parentActivityName \'"

    #@39
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v7

    #@41
    .line 6523
    const-string/jumbo v8, "\' in manifest"

    #@44
    .line 6522
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v7

    #@48
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v7

    #@4c
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 6524
    return-object v9
.end method

.method public getPreferences(I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 5584
    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getReferrer()Landroid/net/Uri;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 5026
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@4
    move-result-object v1

    #@5
    .line 5028
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    const-string/jumbo v4, "android.intent.extra.REFERRER"

    #@8
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/net/Uri;

    #@e
    .line 5029
    .local v2, "referrer":Landroid/net/Uri;
    if-eqz v2, :cond_0

    #@10
    .line 5030
    return-object v2

    #@11
    .line 5032
    :cond_0
    const-string/jumbo v4, "android.intent.extra.REFERRER_NAME"

    #@14
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 5033
    .local v3, "referrerName":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@1a
    .line 5034
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v4

    #@1e
    return-object v4

    #@1f
    .line 5036
    .end local v2    # "referrer":Landroid/net/Uri;
    .end local v3    # "referrerName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@20
    .line 5037
    .local v0, "e":Landroid/os/BadParcelableException;
    const-string/jumbo v4, "Activity"

    #@23
    const-string/jumbo v5, "Cannot read referrer from intent; intent extras contain unknown custom Parcelable objects"

    #@26
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 5040
    .end local v0    # "e":Landroid/os/BadParcelableException;
    :cond_1
    iget-object v4, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    #@2b
    if-eqz v4, :cond_2

    #@2d
    .line 5041
    new-instance v4, Landroid/net/Uri$Builder;

    #@2f
    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    #@32
    const-string/jumbo v5, "android-app"

    #@35
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@38
    move-result-object v4

    #@39
    iget-object v5, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    #@3b
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@42
    move-result-object v4

    #@43
    return-object v4

    #@44
    .line 5043
    :cond_2
    return-object v6
.end method

.method public getRequestedOrientation()I
    .locals 3

    #@0
    .prologue
    .line 5480
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 5482
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@7
    move-result-object v1

    #@8
    .line 5483
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@a
    .line 5482
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getRequestedOrientation(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 5488
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@11
    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 5484
    :catch_0
    move-exception v0

    #@17
    .line 5490
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    #@18
    return v1
.end method

.method public final getSearchEvent()Landroid/view/SearchEvent;
    .locals 1

    #@0
    .prologue
    .line 3868
    iget-object v0, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    #@2
    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5597
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 5598
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    .line 5599
    const-string/jumbo v1, "System services not available to Activities before onCreate()"

    #@b
    .line 5598
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 5602
    :cond_0
    const-string/jumbo v0, "window"

    #@12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 5603
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    #@1a
    return-object v0

    #@1b
    .line 5604
    :cond_1
    const-string/jumbo v0, "search"

    #@1e
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 5605
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    #@27
    .line 5606
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    #@29
    return-object v0

    #@2a
    .line 5608
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method

.method public getTaskId()I
    .locals 4

    #@0
    .prologue
    .line 5501
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 5502
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    const/4 v3, 0x0

    #@7
    .line 5501
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 5503
    :catch_0
    move-exception v0

    #@d
    .line 5504
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    #@e
    return v1
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 5653
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public final getTitleColor()I
    .locals 1

    #@0
    .prologue
    .line 5657
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    #@2
    return v0
.end method

.method public getVoiceInteractor()Landroid/app/VoiceInteractor;
    .locals 1

    #@0
    .prologue
    .line 1321
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@2
    return-object v0
.end method

.method public final getVolumeControlStream()I
    .locals 1

    #@0
    .prologue
    .line 5819
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    #@0
    .prologue
    .line 891
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@2
    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    #@0
    .prologue
    .line 879
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    #@2
    return-object v0
.end method

.method public getWindowStackId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2971
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getActivityStackId(Landroid/os/IBinder;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public hasWindowFocus()Z
    .locals 3

    #@0
    .prologue
    .line 2934
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v1

    #@4
    .line 2935
    .local v1, "w":Landroid/view/Window;
    if-eqz v1, :cond_0

    #@6
    .line 2936
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    .line 2937
    .local v0, "d":Landroid/view/View;
    if-eqz v0, :cond_0

    #@c
    .line 2938
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    #@f
    move-result v2

    #@10
    return v2

    #@11
    .line 2941
    .end local v0    # "d":Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    #@12
    return v2
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3267
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@3
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 3268
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@b
    if-eqz v0, :cond_1

    #@d
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@f
    invoke-virtual {v0}, Landroid/app/ActionBar;->invalidateOptionsMenu()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 3266
    :cond_0
    :goto_0
    return-void

    #@16
    .line 3269
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@18
    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    #@1b
    goto :goto_0
.end method

.method public isBackgroundVisibleBehind()Z
    .locals 3

    #@0
    .prologue
    .line 6173
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 6174
    :catch_0
    move-exception v0

    #@c
    .line 6176
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public isChangingConfigurations()Z
    .locals 1

    #@0
    .prologue
    .line 5170
    iget-boolean v0, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    #@2
    return v0
.end method

.method public final isChild()Z
    .locals 1

    #@0
    .prologue
    .line 869
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    #@0
    .prologue
    .line 5157
    iget-boolean v0, p0, Landroid/app/Activity;->mDestroyed:Z

    #@2
    return v0
.end method

.method public isFinishing()Z
    .locals 1

    #@0
    .prologue
    .line 5149
    iget-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    #@2
    return v0
.end method

.method public isImmersive()Z
    .locals 3

    #@0
    .prologue
    .line 5960
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isImmersive(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 5961
    :catch_0
    move-exception v0

    #@c
    .line 5962
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public isInMultiWindowMode()Z
    .locals 3

    #@0
    .prologue
    .line 1892
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isInMultiWindowMode(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1893
    :catch_0
    move-exception v0

    #@c
    .line 1895
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public isInPictureInPictureMode()Z
    .locals 3

    #@0
    .prologue
    .line 1917
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isInPictureInPictureMode(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1918
    :catch_0
    move-exception v0

    #@c
    .line 1920
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public isLocalVoiceInteractionSupported()Z
    .locals 2

    #@0
    .prologue
    .line 1333
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/app/IActivityManager;->supportsLocalVoiceInteraction()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 1334
    :catch_0
    move-exception v0

    #@a
    .line 1336
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method public isOverlayWithDecorCaptionEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 7035
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0}, Landroid/view/Window;->isOverlayWithDecorCaptionEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final isResumed()Z
    .locals 1

    #@0
    .prologue
    .line 6909
    iget-boolean v0, p0, Landroid/app/Activity;->mResumed:Z

    #@2
    return v0
.end method

.method public isTaskRoot()Z
    .locals 6

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 5516
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@5
    move-result-object v3

    #@6
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@8
    const/4 v5, 0x1

    #@9
    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v3

    #@d
    if-ltz v3, :cond_0

    #@f
    :goto_0
    return v1

    #@10
    :cond_0
    move v1, v2

    #@11
    goto :goto_0

    #@12
    .line 5517
    :catch_0
    move-exception v0

    #@13
    .line 5518
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public isVoiceInteraction()Z
    .locals 1

    #@0
    .prologue
    .line 1297
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isVoiceInteractionRoot()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1309
    :try_start_0
    iget-object v2, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 1310
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@8
    move-result-object v2

    #@9
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@b
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->isRootVoiceInteraction(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v1

    #@f
    .line 1309
    :cond_0
    return v1

    #@10
    .line 1311
    :catch_0
    move-exception v0

    #@11
    .line 1313
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method makeVisible()V
    .locals 3

    #@0
    .prologue
    .line 5129
    iget-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 5130
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    #@7
    move-result-object v0

    #@8
    .line 5131
    .local v0, "wm":Landroid/view/ViewManager;
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@a
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@11
    move-result-object v2

    #@12
    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@15
    .line 5132
    const/4 v1, 0x1

    #@16
    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    #@18
    .line 5134
    .end local v0    # "wm":Landroid/view/ViewManager;
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@1a
    const/4 v2, 0x0

    #@1b
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    #@1e
    .line 5128
    return-void
.end method

.method public final managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2194
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    move-object v5, p4

    #@9
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@c
    move-result-object v6

    #@d
    .line 2195
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    #@f
    .line 2196
    invoke-virtual {p0, v6}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    #@12
    .line 2198
    :cond_0
    return-object v6
.end method

.method public final managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2234
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p3

    #@7
    move-object v4, p4

    #@8
    move-object v5, p5

    #@9
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@c
    move-result-object v6

    #@d
    .line 2235
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    #@f
    .line 2236
    invoke-virtual {p0, v6}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    #@12
    .line 2238
    :cond_0
    return-object v6
.end method

.method public moveTaskToBack(Z)Z
    .locals 3
    .param p1, "nonRoot"    # Z

    #@0
    .prologue
    .line 5535
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 5536
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    .line 5535
    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 5537
    :catch_0
    move-exception v0

    #@c
    .line 5540
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public navigateUpTo(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "upIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 6447
    iget-object v5, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@3
    if-nez v5, :cond_3

    #@5
    .line 6448
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@8
    move-result-object v0

    #@9
    .line 6449
    .local v0, "destInfo":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    #@b
    .line 6450
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {p1, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    #@12
    move-result-object v0

    #@13
    .line 6451
    if-nez v0, :cond_0

    #@15
    .line 6452
    return v7

    #@16
    .line 6454
    :cond_0
    new-instance v4, Landroid/content/Intent;

    #@18
    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@1b
    .line 6455
    .end local p1    # "upIntent":Landroid/content/Intent;
    .local v4, "upIntent":Landroid/content/Intent;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1e
    move-object p1, v4

    #@1f
    .line 6459
    .end local v4    # "upIntent":Landroid/content/Intent;
    .restart local p1    # "upIntent":Landroid/content/Intent;
    :cond_1
    monitor-enter p0

    #@20
    .line 6460
    :try_start_0
    iget v2, p0, Landroid/app/Activity;->mResultCode:I

    #@22
    .line 6461
    .local v2, "resultCode":I
    iget-object v3, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .local v3, "resultData":Landroid/content/Intent;
    monitor-exit p0

    #@25
    .line 6463
    if-eqz v3, :cond_2

    #@27
    .line 6464
    invoke-virtual {v3, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@2a
    .line 6467
    :cond_2
    :try_start_1
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@2d
    .line 6468
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@30
    move-result-object v5

    #@31
    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@33
    invoke-interface {v5, v6, p1, v2, v3}, Landroid/app/IActivityManager;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@36
    move-result v5

    #@37
    return v5

    #@38
    .line 6459
    .end local v2    # "resultCode":I
    .end local v3    # "resultData":Landroid/content/Intent;
    :catchall_0
    move-exception v5

    #@39
    monitor-exit p0

    #@3a
    throw v5

    #@3b
    .line 6470
    .restart local v2    # "resultCode":I
    .restart local v3    # "resultData":Landroid/content/Intent;
    :catch_0
    move-exception v1

    #@3c
    .line 6471
    .local v1, "e":Landroid/os/RemoteException;
    return v7

    #@3d
    .line 6474
    .end local v0    # "destInfo":Landroid/content/ComponentName;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "resultCode":I
    .end local v3    # "resultData":Landroid/content/Intent;
    :cond_3
    iget-object v5, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@3f
    invoke-virtual {v5, p0, p1}, Landroid/app/Activity;->navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z

    #@42
    move-result v5

    #@43
    return v5
.end method

.method public navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "upIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 6491
    invoke-virtual {p0, p2}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    .line 6388
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    .line 6377
    return-void
.end method

.method public onActivityReenter(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 5398
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 5377
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 7
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    #@0
    .prologue
    const/16 v6, 0xff

    #@2
    const/4 v5, 0x0

    #@3
    .line 4016
    iget-object v4, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@5
    if-nez v4, :cond_2

    #@7
    .line 4017
    invoke-super {p0, p1, p2, p3}, Landroid/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    #@a
    .line 4029
    :goto_0
    sget-object v4, Lcom/android/internal/R$styleable;->ActivityTaskDescription:[I

    #@c
    .line 4028
    invoke-virtual {p1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@f
    move-result-object v0

    #@10
    .line 4030
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v4, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@12
    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    #@15
    move-result v4

    #@16
    if-nez v4, :cond_0

    #@18
    .line 4032
    const/4 v4, 0x1

    #@19
    .line 4031
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    #@1c
    move-result v2

    #@1d
    .line 4033
    .local v2, "colorPrimary":I
    if-eqz v2, :cond_0

    #@1f
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    #@22
    move-result v4

    #@23
    if-ne v4, v6, :cond_0

    #@25
    .line 4034
    iget-object v4, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@27
    invoke-virtual {v4, v2}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    #@2a
    .line 4038
    .end local v2    # "colorPrimary":I
    :cond_0
    iget-object v4, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@2c
    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    #@2f
    move-result v4

    #@30
    if-nez v4, :cond_1

    #@32
    .line 4039
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    #@35
    move-result v1

    #@36
    .line 4041
    .local v1, "colorBackground":I
    if-eqz v1, :cond_1

    #@38
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    #@3b
    move-result v4

    #@3c
    if-ne v4, v6, :cond_1

    #@3e
    .line 4042
    iget-object v4, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@40
    invoke-virtual {v4, v1}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    #@43
    .line 4045
    .end local v1    # "colorBackground":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@46
    .line 4046
    iget-object v4, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@48
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    #@4b
    .line 4015
    return-void

    #@4c
    .line 4020
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_2
    :try_start_0
    iget-object v4, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@4e
    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {p1, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@55
    .line 4024
    :goto_1
    invoke-virtual {p1, p2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    #@58
    goto :goto_0

    #@59
    .line 4021
    :catch_0
    move-exception v3

    #@5a
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 2158
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    #@0
    .prologue
    .line 2912
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    #@0
    .prologue
    .line 2747
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@6
    invoke-virtual {v0}, Landroid/app/ActionBar;->collapseActionView()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2748
    return-void

    #@d
    .line 2751
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@f
    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1

    #@19
    .line 2752
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    #@1c
    .line 2746
    :cond_1
    return-void
.end method

.method public onBackgroundVisibleBehindChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 6193
    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "childActivity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 5675
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1952
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@3
    .line 1954
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@5
    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    #@8
    .line 1956
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1958
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@e
    invoke-virtual {v0, p1}, Landroid/view/Window;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@11
    .line 1961
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 1964
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@17
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@1a
    .line 1950
    :cond_1
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    #@0
    .prologue
    .line 2872
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 3575
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3576
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@6
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 3578
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 3589
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3590
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@6
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    #@9
    .line 3588
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 945
    iget-object v2, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 946
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@8
    iget-object v3, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@a
    iget-object v3, v3, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v2, v3}, Landroid/app/FragmentController;->restoreLoaderNonConfig(Landroid/util/ArrayMap;)V

    #@f
    .line 948
    :cond_0
    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@11
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 949
    iget-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@17
    if-nez v2, :cond_5

    #@19
    .line 950
    iput-boolean v4, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    #@1b
    .line 955
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    #@1d
    .line 956
    const-string/jumbo v2, "android:fragments"

    #@20
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@23
    move-result-object v0

    #@24
    .line 957
    .local v0, "p":Landroid/os/Parcelable;
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@26
    iget-object v3, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@28
    if-eqz v3, :cond_2

    #@2a
    .line 958
    iget-object v1, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@2c
    iget-object v1, v1, Landroid/app/Activity$NonConfigurationInstances;->fragments:Landroid/app/FragmentManagerNonConfig;

    #@2e
    .line 957
    :cond_2
    invoke-virtual {v2, v0, v1}, Landroid/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V

    #@31
    .line 960
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_3
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@33
    invoke-virtual {v1}, Landroid/app/FragmentController;->dispatchCreate()V

    #@36
    .line 961
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    #@3d
    .line 962
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@3f
    if-eqz v1, :cond_4

    #@41
    .line 963
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@43
    invoke-virtual {v1, p0}, Landroid/app/VoiceInteractor;->attachActivity(Landroid/app/Activity;)V

    #@46
    .line 965
    :cond_4
    iput-boolean v4, p0, Landroid/app/Activity;->mCalled:Z

    #@48
    .line 943
    return-void

    #@49
    .line 952
    :cond_5
    iget-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@4b
    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    #@4e
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 990
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 989
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    #@0
    .prologue
    .line 3509
    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1652
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3599
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3638
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/TaskStackBuilder;

    #@0
    .prologue
    .line 3444
    invoke-virtual {p1, p0}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/app/TaskStackBuilder;

    #@3
    .line 3443
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 3302
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3303
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@6
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 3305
    :cond_0
    const/4 v0, 0x1

    #@c
    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3141
    if-nez p1, :cond_0

    #@3
    .line 3142
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    #@6
    move-result v0

    #@7
    .line 3143
    .local v0, "show":Z
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@9
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v1, p2, v2}, Landroid/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    #@10
    move-result v1

    #@11
    or-int/2addr v0, v1

    #@12
    .line 3144
    return v0

    #@13
    .line 3146
    .end local v0    # "show":Z
    :cond_0
    return v1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    #@0
    .prologue
    .line 3129
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "outBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1630
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 5897
    const-string/jumbo v0, "fragment"

    #@3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 5898
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 5901
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@10
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 5883
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected onDestroy()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1811
    const/4 v5, 0x1

    #@2
    iput-boolean v5, p0, Landroid/app/Activity;->mCalled:Z

    #@4
    .line 1814
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@6
    if-eqz v5, :cond_2

    #@8
    .line 1815
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@d
    move-result v4

    #@e
    .line 1816
    .local v4, "numDialogs":I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    #@11
    .line 1817
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/app/Activity$ManagedDialog;

    #@19
    .line 1818
    .local v2, "md":Landroid/app/Activity$ManagedDialog;
    iget-object v5, v2, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@1b
    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_0

    #@21
    .line 1819
    iget-object v5, v2, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@23
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    #@26
    .line 1816
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1822
    .end local v2    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_1
    iput-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@2b
    .line 1826
    .end local v1    # "i":I
    .end local v4    # "numDialogs":I
    :cond_2
    iget-object v6, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@2d
    monitor-enter v6

    #@2e
    .line 1827
    :try_start_0
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v3

    #@34
    .line 1828
    .local v3, "numCursors":I
    const/4 v1, 0x0

    #@35
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    #@37
    .line 1829
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Landroid/app/Activity$ManagedCursor;

    #@3f
    .line 1830
    .local v0, "c":Landroid/app/Activity$ManagedCursor;
    if-eqz v0, :cond_3

    #@41
    .line 1831
    invoke-static {v0}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    #@44
    move-result-object v5

    #@45
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    #@48
    .line 1828
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 1834
    .end local v0    # "c":Landroid/app/Activity$ManagedCursor;
    :cond_4
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@4d
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@50
    monitor-exit v6

    #@51
    .line 1838
    iget-object v5, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    #@53
    if-eqz v5, :cond_5

    #@55
    .line 1839
    iget-object v5, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    #@57
    invoke-virtual {v5}, Landroid/app/SearchManager;->stopSearch()V

    #@5a
    .line 1842
    :cond_5
    iget-object v5, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@5c
    if-eqz v5, :cond_6

    #@5e
    .line 1843
    iget-object v5, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@60
    invoke-virtual {v5}, Landroid/app/ActionBar;->onDestroy()V

    #@63
    .line 1846
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5, p0}, Landroid/app/Application;->dispatchActivityDestroyed(Landroid/app/Activity;)V

    #@6a
    .line 1809
    return-void

    #@6b
    .line 1826
    .end local v1    # "i":I
    .end local v3    # "numCursors":I
    :catchall_0
    move-exception v5

    #@6c
    monitor-exit v6

    #@6d
    throw v5
.end method

.method public onDetachedFromWindow()V
    .locals 0

    #@0
    .prologue
    .line 2922
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 0

    #@0
    .prologue
    .line 6201
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2835
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v8, 0x0

    #@4
    .line 2636
    const/4 v5, 0x4

    #@5
    if-ne p1, v5, :cond_1

    #@7
    .line 2637
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@a
    move-result-object v5

    #@b
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@d
    .line 2638
    const/4 v6, 0x5

    #@e
    .line 2637
    if-lt v5, v6, :cond_0

    #@10
    .line 2639
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    #@13
    .line 2643
    :goto_0
    return v7

    #@14
    .line 2641
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    #@17
    goto :goto_0

    #@18
    .line 2646
    :cond_1
    iget v5, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    #@1a
    if-nez v5, :cond_2

    #@1c
    .line 2647
    return v8

    #@1d
    .line 2648
    :cond_2
    iget v5, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    #@1f
    if-ne v5, v6, :cond_4

    #@21
    .line 2649
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@24
    move-result-object v4

    #@25
    .line 2650
    .local v4, "w":Landroid/view/Window;
    invoke-virtual {v4, v8}, Landroid/view/Window;->hasFeature(I)Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_3

    #@2b
    .line 2651
    invoke-virtual {v4, v8, p1, p2, v6}, Landroid/view/Window;->performPanelShortcut(IILandroid/view/KeyEvent;I)Z

    #@2e
    move-result v5

    #@2f
    .line 2650
    if-eqz v5, :cond_3

    #@31
    .line 2653
    return v7

    #@32
    .line 2655
    :cond_3
    return v8

    #@33
    .line 2658
    .end local v4    # "w":Landroid/view/Window;
    :cond_4
    const/4 v0, 0x0

    #@34
    .line 2660
    .local v0, "clearSpannable":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@37
    move-result v5

    #@38
    if-nez v5, :cond_5

    #@3a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    #@3d
    move-result v5

    #@3e
    if-eqz v5, :cond_8

    #@40
    .line 2661
    :cond_5
    const/4 v0, 0x1

    #@41
    .line 2662
    const/4 v1, 0x0

    #@42
    .line 2687
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    #@44
    .line 2688
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #@46
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    #@49
    .line 2689
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #@4b
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    #@4e
    .line 2690
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #@50
    invoke-static {v5, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@53
    .line 2692
    :cond_7
    return v1

    #@54
    .line 2664
    :cond_8
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    #@57
    move-result-object v5

    #@58
    .line 2665
    iget-object v6, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #@5a
    .line 2664
    invoke-virtual {v5, v9, v6, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@5d
    move-result v1

    #@5e
    .line 2666
    .local v1, "handled":Z
    if-eqz v1, :cond_6

    #@60
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #@62
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    #@65
    move-result v5

    #@66
    if-lez v5, :cond_6

    #@68
    .line 2669
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #@6a
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    .line 2670
    .local v3, "str":Ljava/lang/String;
    const/4 v0, 0x1

    #@6f
    .line 2672
    iget v5, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    #@71
    packed-switch v5, :pswitch_data_0

    #@74
    :pswitch_0
    goto :goto_1

    #@75
    .line 2674
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    #@77
    const-string/jumbo v5, "android.intent.action.DIAL"

    #@7a
    new-instance v6, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v7, "tel:"

    #@82
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v6

    #@86
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v6

    #@8a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v6

    #@8e
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@91
    move-result-object v6

    #@92
    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@95
    .line 2675
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    #@97
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@9a
    .line 2676
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    #@9d
    goto :goto_1

    #@9e
    .line 2679
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0, v3, v8, v9, v8}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    #@a1
    goto :goto_1

    #@a2
    .line 2682
    :pswitch_3
    invoke-virtual {p0, v3, v8, v9, v7}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    #@a5
    goto :goto_1

    #@a6
    .line 2672
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 2702
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 2738
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 2768
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    #@3
    move-result-object v0

    #@4
    .line 2769
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    #@9
    move-result v1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 2721
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@3
    move-result-object v0

    #@4
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@6
    .line 2722
    const/4 v1, 0x5

    #@7
    .line 2721
    if-lt v0, v1, :cond_0

    #@9
    .line 2723
    const/4 v0, 0x4

    #@a
    if-ne p1, v0, :cond_0

    #@c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 2724
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 2729
    :cond_0
    const/4 v0, 0x0

    #@19
    return v0

    #@1a
    .line 2725
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    #@1d
    .line 2726
    const/4 v0, 0x1

    #@1e
    return v0
.end method

.method public onLocalVoiceInteractionStarted()V
    .locals 0

    #@0
    .prologue
    .line 1357
    return-void
.end method

.method public onLocalVoiceInteractionStopped()V
    .locals 0

    #@0
    .prologue
    .line 1366
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    #@0
    .prologue
    .line 2135
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@3
    .line 2136
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@5
    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchLowMemory()V

    #@8
    .line 2133
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    const v5, 0xc350

    #@3
    const/4 v1, 0x2

    #@4
    const/4 v4, 0x1

    #@5
    const/4 v3, 0x0

    #@6
    .line 3194
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    .line 3196
    .local v0, "titleCondensed":Ljava/lang/CharSequence;
    sparse-switch p1, :sswitch_data_0

    #@d
    .line 3230
    return v3

    #@e
    .line 3201
    :sswitch_0
    if-eqz v0, :cond_0

    #@10
    .line 3202
    new-array v1, v1, [Ljava/lang/Object;

    #@12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v2

    #@16
    aput-object v2, v1, v3

    #@18
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    aput-object v2, v1, v4

    #@1e
    invoke-static {v5, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@21
    .line 3204
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 3205
    return v4

    #@28
    .line 3207
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@2a
    invoke-virtual {v1, p2}, Landroid/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 3208
    return v4

    #@31
    .line 3210
    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    #@34
    move-result v1

    #@35
    const v2, 0x102002c

    #@38
    if-ne v1, v2, :cond_4

    #@3a
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@3c
    if-eqz v1, :cond_4

    #@3e
    .line 3211
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@40
    invoke-virtual {v1}, Landroid/app/ActionBar;->getDisplayOptions()I

    #@43
    move-result v1

    #@44
    and-int/lit8 v1, v1, 0x4

    #@46
    if-eqz v1, :cond_4

    #@48
    .line 3212
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@4a
    if-nez v1, :cond_3

    #@4c
    .line 3213
    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    #@4f
    move-result v1

    #@50
    return v1

    #@51
    .line 3215
    :cond_3
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@53
    invoke-virtual {v1, p0}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    #@56
    move-result v1

    #@57
    return v1

    #@58
    .line 3218
    :cond_4
    return v3

    #@59
    .line 3221
    :sswitch_1
    if-eqz v0, :cond_5

    #@5b
    .line 3222
    new-array v1, v1, [Ljava/lang/Object;

    #@5d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@60
    move-result-object v2

    #@61
    aput-object v2, v1, v3

    #@63
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    aput-object v2, v1, v4

    #@69
    invoke-static {v5, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@6c
    .line 3224
    :cond_5
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    #@6f
    move-result v1

    #@70
    if-eqz v1, :cond_6

    #@72
    .line 3225
    return v4

    #@73
    .line 3227
    :cond_6
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@75
    invoke-virtual {v1, p2}, Landroid/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    #@78
    move-result v1

    #@79
    return v1

    #@7a
    .line 3196
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 3173
    const/16 v0, 0x8

    #@3
    if-ne p1, v0, :cond_0

    #@5
    .line 3174
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    #@8
    .line 3175
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 3176
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@e
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    #@11
    .line 3181
    :cond_0
    :goto_0
    return v2

    #@12
    .line 3178
    :cond_1
    const-string/jumbo v0, "Activity"

    #@15
    const-string/jumbo v1, "Tried to open action bar menu with no action bar"

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    goto :goto_0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0
    .param p1, "isInMultiWindowMode"    # Z

    #@0
    .prologue
    .line 1879
    return-void
.end method

.method public onNavigateUp()Z
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3384
    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    #@4
    move-result-object v1

    #@5
    .line 3385
    .local v1, "upIntent":Landroid/content/Intent;
    if-eqz v1, :cond_4

    #@7
    .line 3386
    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@9
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@b
    if-nez v2, :cond_0

    #@d
    .line 3390
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    #@10
    .line 3409
    :goto_0
    const/4 v2, 0x1

    #@11
    return v2

    #@12
    .line 3391
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_3

    #@18
    .line 3392
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    #@1b
    move-result-object v0

    #@1c
    .line 3393
    .local v0, "b":Landroid/app/TaskStackBuilder;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    #@1f
    .line 3394
    invoke-virtual {p0, v0}, Landroid/app/Activity;->onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    #@22
    .line 3395
    invoke-virtual {v0}, Landroid/app/TaskStackBuilder;->startActivities()V

    #@25
    .line 3399
    iget v2, p0, Landroid/app/Activity;->mResultCode:I

    #@27
    if-nez v2, :cond_1

    #@29
    iget-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    #@2b
    if-eqz v2, :cond_2

    #@2d
    .line 3401
    :cond_1
    const-string/jumbo v2, "Activity"

    #@30
    const-string/jumbo v3, "onNavigateUp only finishing topmost activity to return a result"

    #@33
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 3402
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    #@39
    goto :goto_0

    #@3a
    .line 3404
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    #@3d
    goto :goto_0

    #@3e
    .line 3407
    .end local v0    # "b":Landroid/app/TaskStackBuilder;
    :cond_3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    #@41
    goto :goto_0

    #@42
    .line 3411
    :cond_4
    return v2
.end method

.method public onNavigateUpFromChild(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 3421
    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public onNewActivityOptions(Landroid/app/ActivityOptions;)V
    .locals 1
    .param p1, "options"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    .line 6072
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@2
    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    #@5
    .line 6073
    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    #@7
    if-nez v0, :cond_0

    #@9
    .line 6074
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@b
    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    #@e
    .line 6071
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1402
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 3352
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3353
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@6
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 3355
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 3470
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3471
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@6
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    #@9
    .line 3469
    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 3244
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 3243
    :goto_0
    return-void

    #@4
    .line 3246
    :sswitch_0
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@6
    invoke-virtual {v0, p2}, Landroid/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    #@9
    .line 3247
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    #@c
    goto :goto_0

    #@d
    .line 3251
    :sswitch_1
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    #@10
    goto :goto_0

    #@11
    .line 3255
    :sswitch_2
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    #@14
    .line 3256
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@16
    const/4 v1, 0x0

    #@17
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    #@1a
    goto :goto_0

    #@1b
    .line 3244
    nop

    #@1c
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    #@0
    .prologue
    .line 1587
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPaused(Landroid/app/Activity;)V

    #@7
    .line 1588
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@a
    .line 1585
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0
    .param p1, "isInPictureInPictureMode"    # Z

    #@0
    .prologue
    .line 1904
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1146
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1147
    iput-boolean v2, p0, Landroid/app/Activity;->mTitleReady:Z

    #@9
    .line 1148
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0}, Landroid/app/Activity;->getTitleColor()I

    #@10
    move-result v1

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    #@14
    .line 1151
    :cond_0
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    #@16
    .line 1145
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 1167
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    #@3
    .line 1166
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1270
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@4
    move-result-object v0

    #@5
    .line 1271
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/view/Window;->makeActive()V

    #@a
    .line 1272
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@c
    if-eqz v1, :cond_1

    #@e
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@10
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    #@13
    .line 1273
    :cond_1
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    #@15
    .line 1269
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3647
    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    #@3
    .line 3646
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3676
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    #@3
    .line 3675
    return-void
.end method

.method public onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/TaskStackBuilder;

    #@0
    .prologue
    .line 3459
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 3327
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3328
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@6
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 3330
    :cond_0
    const/4 v0, 0x1

    #@c
    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 3159
    if-nez p1, :cond_0

    #@2
    if-eqz p3, :cond_0

    #@4
    .line 3160
    invoke-virtual {p0, p3}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    #@7
    move-result v0

    #@8
    .line 3161
    .local v0, "goforit":Z
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@a
    invoke-virtual {v1, p3}, Landroid/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    #@d
    move-result v1

    #@e
    or-int/2addr v0, v1

    #@f
    .line 3162
    return v0

    #@10
    .line 3164
    .end local v0    # "goforit":Z
    :cond_0
    const/4 v1, 0x1

    #@11
    return v1
.end method

.method public onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .locals 0
    .param p1, "outContent"    # Landroid/app/assist/AssistContent;

    #@0
    .prologue
    .line 1688
    return-void
.end method

.method public onProvideAssistData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1666
    return-void
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 10
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    const/4 v8, 0x0

    #@1
    .line 1715
    if-nez p2, :cond_0

    #@3
    .line 1716
    return-void

    #@4
    .line 1718
    :cond_0
    const/4 v1, 0x0

    #@5
    .line 1719
    .local v1, "group":Landroid/view/KeyboardShortcutGroup;
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    #@8
    move-result v4

    #@9
    .line 1720
    .local v4, "menuSize":I
    const/4 v2, 0x0

    #@a
    .end local v1    # "group":Landroid/view/KeyboardShortcutGroup;
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_4

    #@c
    .line 1721
    invoke-interface {p2, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    #@f
    move-result-object v3

    #@10
    .line 1722
    .local v3, "item":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    #@13
    move-result-object v6

    #@14
    .line 1723
    .local v6, "title":Ljava/lang/CharSequence;
    invoke-interface {v3}, Landroid/view/MenuItem;->getAlphabeticShortcut()C

    #@17
    move-result v0

    #@18
    .line 1724
    .local v0, "alphaShortcut":C
    if-eqz v6, :cond_2

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 1725
    if-nez v1, :cond_1

    #@1e
    .line 1726
    iget-object v7, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    #@20
    invoke-virtual {v7}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@23
    move-result-object v7

    #@24
    iget v5, v7, Landroid/content/pm/ApplicationInfo;->labelRes:I

    #@26
    .line 1727
    .local v5, "resource":I
    new-instance v1, Landroid/view/KeyboardShortcutGroup;

    #@28
    if-eqz v5, :cond_3

    #@2a
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    #@2d
    move-result-object v7

    #@2e
    :goto_1
    invoke-direct {v1, v7}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;)V

    #@31
    .line 1729
    .end local v5    # "resource":I
    :cond_1
    new-instance v7, Landroid/view/KeyboardShortcutInfo;

    #@33
    .line 1730
    const/16 v9, 0x1000

    #@35
    .line 1729
    invoke-direct {v7, v6, v0, v9}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;CI)V

    #@38
    invoke-virtual {v1, v7}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    #@3b
    .line 1720
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@3d
    goto :goto_0

    #@3e
    .restart local v5    # "resource":I
    :cond_3
    move-object v7, v8

    #@3f
    .line 1727
    goto :goto_1

    #@40
    .line 1733
    .end local v0    # "alphaShortcut":C
    .end local v3    # "item":Landroid/view/MenuItem;
    .end local v5    # "resource":I
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_4
    if-eqz v1, :cond_5

    #@42
    .line 1734
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@45
    .line 1714
    :cond_5
    return-void
.end method

.method public onProvideReferrer()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 5053
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    #@0
    .prologue
    .line 4142
    return-void
.end method

.method protected onRestart()V
    .locals 1

    #@0
    .prologue
    .line 1215
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@3
    .line 1214
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1044
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1045
    const-string/jumbo v1, "android:viewHierarchyState"

    #@7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@a
    move-result-object v0

    #@b
    .line 1046
    .local v0, "windowState":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@d
    .line 1047
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@f
    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    #@12
    .line 1043
    .end local v0    # "windowState":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 1075
    if-eqz p1, :cond_0

    #@2
    .line 1076
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@5
    .line 1074
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    #@0
    .prologue
    .line 1251
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityResumed(Landroid/app/Activity;)V

    #@7
    .line 1252
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@9
    invoke-direct {p0}, Landroid/app/Activity;->isTopOfTask()Z

    #@c
    move-result v1

    #@d
    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityTransitionState;->onResume(Landroid/app/Activity;Z)V

    #@10
    .line 1253
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@13
    .line 1249
    return-void
.end method

.method onRetainNonConfigurationChildInstances()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2100
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 2065
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1484
    const-string/jumbo v1, "android:viewHierarchyState"

    #@3
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@5
    invoke-virtual {v2}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@c
    .line 1485
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@e
    invoke-virtual {v1}, Landroid/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    #@11
    move-result-object v0

    #@12
    .line 1486
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    #@14
    .line 1487
    const-string/jumbo v1, "android:fragments"

    #@17
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@1a
    .line 1489
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    #@21
    .line 1483
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 1508
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 1507
    return-void
.end method

.method public onSearchRequested()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 3851
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@9
    move-result-object v0

    #@a
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    #@c
    and-int/lit8 v0, v0, 0xf

    #@e
    .line 3852
    const/4 v1, 0x4

    #@f
    .line 3851
    if-eq v0, v1, :cond_0

    #@11
    .line 3853
    invoke-virtual {p0, v3, v2, v3, v2}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    #@14
    .line 3854
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 3856
    :cond_0
    return v2
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 2
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    #@0
    .prologue
    .line 3841
    iput-object p1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    #@2
    .line 3842
    invoke-virtual {p0}, Landroid/app/Activity;->onSearchRequested()Z

    #@5
    move-result v0

    #@6
    .line 3843
    .local v0, "result":Z
    const/4 v1, 0x0

    #@7
    iput-object v1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    #@9
    .line 3844
    return v0
.end method

.method protected onStart()V
    .locals 1

    #@0
    .prologue
    .line 1186
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@3
    .line 1188
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@5
    invoke-virtual {v0}, Landroid/app/FragmentController;->doLoaderStart()V

    #@8
    .line 1190
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityStarted(Landroid/app/Activity;)V

    #@f
    .line 1184
    return-void
.end method

.method public onStateNotSaved()V
    .locals 0

    #@0
    .prologue
    .line 1225
    return-void
.end method

.method protected onStop()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1773
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    #@b
    .line 1774
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@d
    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->onStop()V

    #@10
    .line 1775
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityStopped(Landroid/app/Activity;)V

    #@17
    .line 1776
    iput-object v2, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    #@19
    .line 1777
    const/4 v0, 0x1

    #@1a
    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@1c
    .line 1771
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    #@0
    .prologue
    .line 5661
    iget-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 5662
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@7
    move-result-object v0

    #@8
    .line 5663
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    #@a
    .line 5664
    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    #@d
    .line 5665
    if-eqz p2, :cond_0

    #@f
    .line 5666
    invoke-virtual {v0, p2}, Landroid/view/Window;->setTitleColor(I)V

    #@12
    .line 5669
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 5670
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@18
    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    #@1b
    .line 5660
    .end local v0    # "win":Landroid/view/Window;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2783
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0, p0, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2784
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    #@b
    .line 2785
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 2788
    :cond_0
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2806
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method onTranslucentConversionComplete(Z)V
    .locals 3
    .param p1, "drawComplete"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6061
    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 6062
    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    #@7
    invoke-interface {v0, p1}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    #@a
    .line 6063
    iput-object v1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    #@c
    .line 6065
    :cond_0
    iget-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 6066
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x0

    #@17
    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    #@1a
    .line 6060
    :cond_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 2141
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@3
    .line 2142
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@5
    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchTrimMemory(I)V

    #@8
    .line 2139
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    #@0
    .prologue
    .line 2857
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    #@0
    .prologue
    .line 1606
    return-void
.end method

.method public onVisibleBehindCanceled()V
    .locals 1

    #@0
    .prologue
    .line 6155
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@3
    .line 6154
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 2864
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2865
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@6
    .line 2866
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@b
    move-result-object v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 2867
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    #@11
    move-result-object v1

    #@12
    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@15
    .line 2860
    .end local v0    # "decor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onWindowDismissed(Z)V
    .locals 1
    .param p1, "finishTask"    # Z

    #@0
    .prologue
    .line 2950
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x2

    #@3
    :goto_0
    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(I)V

    #@6
    .line 2949
    return-void

    #@7
    .line 2950
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    #@0
    .prologue
    .line 2902
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6346
    iget v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 6347
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    #@8
    .line 6348
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 6349
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@e
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 6352
    :cond_0
    return-object v1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6362
    :try_start_0
    iput p2, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    #@3
    .line 6363
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    .line 6365
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    #@9
    .line 6363
    return-object v0

    #@a
    .line 6364
    :catchall_0
    move-exception v0

    #@b
    .line 6365
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    #@d
    .line 6364
    throw v0
.end method

.method public openContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 3545
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    #@3
    .line 3544
    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 3480
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@4
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 3481
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@c
    if-eqz v0, :cond_1

    #@e
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@10
    invoke-virtual {v0}, Landroid/app/ActionBar;->openOptionsMenu()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 3479
    :cond_0
    :goto_0
    return-void

    #@17
    .line 3482
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@19
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    #@1c
    goto :goto_0
.end method

.method public overridePendingTransition(II)V
    .locals 4
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I

    #@0
    .prologue
    .line 4954
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 4955
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    .line 4954
    invoke-interface {v1, v2, v3, p1, p2}, Landroid/app/IActivityManager;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 4952
    :goto_0
    return-void

    #@e
    .line 4956
    :catch_0
    move-exception v0

    #@f
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method final performCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 6678
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    #@3
    .line 6679
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@6
    .line 6680
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@8
    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->readState(Landroid/os/Bundle;)V

    #@b
    .line 6681
    invoke-virtual {p0}, Landroid/app/Activity;->performCreateCommon()V

    #@e
    .line 6677
    return-void
.end method

.method final performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 6685
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    #@3
    .line 6686
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    #@6
    .line 6687
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@8
    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->readState(Landroid/os/Bundle;)V

    #@b
    .line 6688
    invoke-virtual {p0}, Landroid/app/Activity;->performCreateCommon()V

    #@e
    .line 6684
    return-void
.end method

.method final performCreateCommon()V
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6671
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@3
    invoke-virtual {v1}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    #@6
    move-result-object v1

    #@7
    .line 6672
    const/16 v2, 0xa

    #@9
    .line 6671
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    :goto_0
    iput-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    #@11
    .line 6673
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@13
    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchActivityCreated()V

    #@16
    .line 6674
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@18
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    #@1f
    .line 6670
    return-void

    #@20
    .line 6671
    :cond_0
    const/4 v0, 0x1

    #@21
    goto :goto_0
.end method

.method final performDestroy()V
    .locals 1

    #@0
    .prologue
    .line 6878
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Activity;->mDestroyed:Z

    #@3
    .line 6879
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@5
    invoke-virtual {v0}, Landroid/view/Window;->destroy()V

    #@8
    .line 6880
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@a
    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchDestroy()V

    #@d
    .line 6881
    invoke-virtual {p0}, Landroid/app/Activity;->onDestroy()V

    #@10
    .line 6882
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@12
    invoke-virtual {v0}, Landroid/app/FragmentController;->doLoaderDestroy()V

    #@15
    .line 6883
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 6884
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@1b
    invoke-virtual {v0}, Landroid/app/VoiceInteractor;->detachActivity()V

    #@1e
    .line 6877
    :cond_0
    return-void
.end method

.method final performPause()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6816
    iput-boolean v2, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    #@3
    .line 6817
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@5
    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchPause()V

    #@8
    .line 6818
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    #@a
    .line 6819
    invoke-virtual {p0}, Landroid/app/Activity;->onPause()V

    #@d
    .line 6820
    iput-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    #@f
    .line 6821
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@11
    if-nez v0, :cond_0

    #@13
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@16
    move-result-object v0

    #@17
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@19
    .line 6822
    const/16 v1, 0x9

    #@1b
    .line 6821
    if-lt v0, v1, :cond_0

    #@1d
    .line 6823
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@1f
    .line 6824
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v2, "Activity "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    #@2d
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 6825
    const-string/jumbo v2, " did not call through to super.onPause()"

    #@38
    .line 6824
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 6823
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0

    #@44
    .line 6827
    :cond_0
    iput-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    #@46
    .line 6815
    return-void
.end method

.method final performRestart()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 6734
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@3
    invoke-virtual {v3}, Landroid/app/FragmentController;->noteStateNotSaved()V

    #@6
    .line 6736
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@8
    if-eqz v3, :cond_0

    #@a
    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@c
    if-nez v3, :cond_0

    #@e
    .line 6738
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@11
    move-result-object v3

    #@12
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@14
    invoke-virtual {v3, v4, v6}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    #@17
    .line 6741
    :cond_0
    iget-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    #@19
    if-eqz v3, :cond_6

    #@1b
    .line 6742
    iput-boolean v6, p0, Landroid/app/Activity;->mStopped:Z

    #@1d
    .line 6744
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@1f
    monitor-enter v4

    #@20
    .line 6745
    :try_start_0
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v0

    #@26
    .line 6746
    .local v0, "N":I
    const/4 v1, 0x0

    #@27
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@29
    .line 6747
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/app/Activity$ManagedCursor;

    #@31
    .line 6748
    .local v2, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get1(Landroid/app/Activity$ManagedCursor;)Z

    #@34
    move-result v3

    #@35
    if-nez v3, :cond_1

    #@37
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get2(Landroid/app/Activity$ManagedCursor;)Z

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_3

    #@3d
    .line 6749
    :cond_1
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    #@40
    move-result-object v3

    #@41
    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    #@44
    move-result v3

    #@45
    if-nez v3, :cond_2

    #@47
    .line 6750
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@4a
    move-result-object v3

    #@4b
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@4d
    .line 6751
    const/16 v5, 0xe

    #@4f
    .line 6750
    if-lt v3, v5, :cond_2

    #@51
    .line 6752
    new-instance v3, Ljava/lang/IllegalStateException;

    #@53
    .line 6753
    new-instance v5, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v6, "trying to requery an already closed cursor  "

    #@5b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    .line 6754
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    #@62
    move-result-object v6

    #@63
    .line 6753
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    .line 6752
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6f
    .line 6744
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :catchall_0
    move-exception v3

    #@70
    monitor-exit v4

    #@71
    throw v3

    #@72
    .line 6757
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_2
    const/4 v3, 0x0

    #@73
    :try_start_1
    invoke-static {v2, v3}, Landroid/app/Activity$ManagedCursor;->-set0(Landroid/app/Activity$ManagedCursor;Z)Z

    #@76
    .line 6758
    const/4 v3, 0x0

    #@77
    invoke-static {v2, v3}, Landroid/app/Activity$ManagedCursor;->-set1(Landroid/app/Activity$ManagedCursor;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7a
    .line 6746
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@7c
    goto :goto_0

    #@7d
    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_4
    monitor-exit v4

    #@7e
    .line 6763
    iput-boolean v6, p0, Landroid/app/Activity;->mCalled:Z

    #@80
    .line 6764
    iget-object v3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@82
    invoke-virtual {v3, p0}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    #@85
    .line 6765
    iget-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    #@87
    if-nez v3, :cond_5

    #@89
    .line 6766
    new-instance v3, Landroid/util/SuperNotCalledException;

    #@8b
    .line 6767
    new-instance v4, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v5, "Activity "

    #@93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v4

    #@97
    iget-object v5, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    #@99
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@9c
    move-result-object v5

    #@9d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v4

    #@a1
    .line 6768
    const-string/jumbo v5, " did not call through to super.onRestart()"

    #@a4
    .line 6767
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v4

    #@a8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v4

    #@ac
    .line 6766
    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@af
    throw v3

    #@b0
    .line 6770
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->performStart()V

    #@b3
    .line 6733
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method final performRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1002
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 1003
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    #@6
    .line 1001
    return-void
.end method

.method final performRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 1017
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    #@3
    .line 1018
    if-eqz p1, :cond_0

    #@5
    .line 1019
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    #@8
    .line 1016
    :cond_0
    return-void
.end method

.method final performResume()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6775
    invoke-virtual {p0}, Landroid/app/Activity;->performRestart()V

    #@4
    .line 6777
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@6
    invoke-virtual {v0}, Landroid/app/FragmentController;->execPendingActions()Z

    #@9
    .line 6779
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@c
    .line 6781
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    #@e
    .line 6783
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@10
    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    #@13
    .line 6784
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@15
    if-nez v0, :cond_0

    #@17
    .line 6785
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@19
    .line 6786
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "Activity "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    #@27
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 6787
    const-string/jumbo v2, " did not call through to super.onResume()"

    #@32
    .line 6786
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    .line 6785
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 6791
    :cond_0
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    #@40
    if-nez v0, :cond_1

    #@42
    iget-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    #@44
    if-eqz v0, :cond_2

    #@46
    .line 6802
    :cond_1
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    #@48
    .line 6804
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@4a
    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchResume()V

    #@4d
    .line 6805
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@4f
    invoke-virtual {v0}, Landroid/app/FragmentController;->execPendingActions()Z

    #@52
    .line 6807
    invoke-virtual {p0}, Landroid/app/Activity;->onPostResume()V

    #@55
    .line 6808
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@57
    if-nez v0, :cond_3

    #@59
    .line 6809
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@5b
    .line 6810
    new-instance v1, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v2, "Activity "

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    #@69
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    .line 6811
    const-string/jumbo v2, " did not call through to super.onPostResume()"

    #@74
    .line 6810
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    .line 6809
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v0

    #@80
    .line 6792
    :cond_2
    const-string/jumbo v0, "Activity"

    #@83
    const-string/jumbo v1, "An activity without a UI must call finish() before onResume() completes"

    #@86
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@89
    .line 6793
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@8c
    move-result-object v0

    #@8d
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@8f
    .line 6794
    const/16 v1, 0x16

    #@91
    .line 6793
    if-le v0, v1, :cond_1

    #@93
    .line 6795
    new-instance v0, Ljava/lang/IllegalStateException;

    #@95
    .line 6796
    new-instance v1, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v2, "Activity "

    #@9d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v1

    #@a1
    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    #@a3
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@a6
    move-result-object v2

    #@a7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v1

    #@ab
    .line 6797
    const-string/jumbo v2, " did not call finish() prior to onResume() completing"

    #@ae
    .line 6796
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v1

    #@b2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v1

    #@b6
    .line 6795
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b9
    throw v0

    #@ba
    .line 6774
    :cond_3
    return-void
.end method

.method final performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1414
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 1415
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    #@6
    .line 1416
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@8
    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->saveState(Landroid/os/Bundle;)V

    #@b
    .line 1417
    invoke-direct {p0, p1}, Landroid/app/Activity;->storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    #@e
    .line 1413
    return-void
.end method

.method final performSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 1431
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    #@3
    .line 1432
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    #@6
    .line 1433
    invoke-direct {p0, p1}, Landroid/app/Activity;->storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    #@9
    .line 1430
    return-void
.end method

.method final performStart()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 6692
    iget-object v7, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@5
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    #@8
    move-result-object v8

    #@9
    invoke-virtual {v7, p0, v8}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    #@c
    .line 6693
    iget-object v7, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@e
    invoke-virtual {v7}, Landroid/app/FragmentController;->noteStateNotSaved()V

    #@11
    .line 6694
    iput-boolean v6, p0, Landroid/app/Activity;->mCalled:Z

    #@13
    .line 6695
    iget-object v7, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@15
    invoke-virtual {v7}, Landroid/app/FragmentController;->execPendingActions()Z

    #@18
    .line 6696
    iget-object v7, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@1a
    invoke-virtual {v7, p0}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    #@1d
    .line 6697
    iget-boolean v7, p0, Landroid/app/Activity;->mCalled:Z

    #@1f
    if-nez v7, :cond_0

    #@21
    .line 6698
    new-instance v5, Landroid/util/SuperNotCalledException;

    #@23
    .line 6699
    new-instance v6, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v7, "Activity "

    #@2b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v6

    #@2f
    iget-object v7, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    #@31
    invoke-virtual {v7}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    .line 6700
    const-string/jumbo v7, " did not call through to super.onStart()"

    #@3c
    .line 6699
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    .line 6698
    invoke-direct {v5, v6}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@47
    throw v5

    #@48
    .line 6702
    :cond_0
    iget-object v7, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@4a
    invoke-virtual {v7}, Landroid/app/FragmentController;->dispatchStart()V

    #@4d
    .line 6703
    iget-object v7, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@4f
    invoke-virtual {v7}, Landroid/app/FragmentController;->reportLoaderStart()V

    #@52
    .line 6706
    const-string/jumbo v7, "ro.bionic.ld.warning"

    #@55
    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@58
    move-result v7

    #@59
    if-ne v7, v5, :cond_3

    #@5b
    const/4 v3, 0x1

    #@5c
    .line 6708
    .local v3, "isDlwarningEnabled":Z
    :goto_0
    iget-object v7, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    #@5e
    invoke-virtual {v7}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@61
    move-result-object v7

    #@62
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    #@64
    and-int/lit8 v7, v7, 0x2

    #@66
    if-eqz v7, :cond_4

    #@68
    move v2, v5

    #@69
    .line 6710
    .local v2, "isAppDebuggable":Z
    :goto_1
    if-nez v2, :cond_1

    #@6b
    if-eqz v3, :cond_2

    #@6d
    .line 6711
    :cond_1
    invoke-static {}, Landroid/app/Activity;->getDlWarning()Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    .line 6712
    .local v1, "dlwarning":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@73
    .line 6713
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@76
    move-result-object v7

    #@77
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7a
    move-result-object v8

    #@7b
    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@7e
    move-result-object v7

    #@7f
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@82
    move-result-object v0

    #@83
    .line 6715
    .local v0, "appName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v8, "Detected problems with app native libraries\n(please consult log for detail):\n"

    #@8b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v7

    #@8f
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v7

    #@93
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v4

    #@97
    .line 6717
    .local v4, "warning":Ljava/lang/String;
    if-eqz v2, :cond_5

    #@99
    .line 6718
    new-instance v5, Landroid/app/AlertDialog$Builder;

    #@9b
    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@9e
    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@a1
    move-result-object v5

    #@a2
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@a5
    move-result-object v5

    #@a6
    .line 6721
    const v7, 0x104000a

    #@a9
    .line 6718
    invoke-virtual {v5, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@ac
    move-result-object v5

    #@ad
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    #@b0
    move-result-object v5

    #@b1
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    #@b4
    .line 6730
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "dlwarning":Ljava/lang/String;
    .end local v4    # "warning":Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v5, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@b6
    invoke-virtual {v5, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    #@b9
    .line 6691
    return-void

    #@ba
    .line 6706
    .end local v2    # "isAppDebuggable":Z
    .end local v3    # "isDlwarningEnabled":Z
    :cond_3
    const/4 v3, 0x0

    #@bb
    .restart local v3    # "isDlwarningEnabled":Z
    goto :goto_0

    #@bc
    :cond_4
    move v2, v6

    #@bd
    .line 6708
    goto :goto_1

    #@be
    .line 6725
    .restart local v0    # "appName":Ljava/lang/String;
    .restart local v1    # "dlwarning":Ljava/lang/String;
    .restart local v2    # "isAppDebuggable":Z
    .restart local v4    # "warning":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v6

    #@c7
    const-string/jumbo v7, "\n"

    #@ca
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v6

    #@ce
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v6

    #@d2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v6

    #@d6
    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #@d9
    move-result-object v5

    #@da
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    #@dd
    goto :goto_2
.end method

.method final performStop(Z)V
    .locals 7
    .param p1, "preserveWindow"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 6836
    iput-boolean v5, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    #@4
    .line 6837
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@6
    iget-boolean v4, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    #@8
    invoke-virtual {v3, v4}, Landroid/app/FragmentController;->doLoaderStop(Z)V

    #@b
    .line 6839
    iget-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    #@d
    if-nez v3, :cond_5

    #@f
    .line 6840
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 6841
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@15
    invoke-virtual {v3}, Landroid/view/Window;->closeAllPanels()V

    #@18
    .line 6847
    :cond_0
    if-nez p1, :cond_1

    #@1a
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@1c
    if-eqz v3, :cond_1

    #@1e
    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@20
    if-nez v3, :cond_1

    #@22
    .line 6848
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@25
    move-result-object v3

    #@26
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@28
    invoke-virtual {v3, v4, v6}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    #@2b
    .line 6851
    :cond_1
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@2d
    invoke-virtual {v3}, Landroid/app/FragmentController;->dispatchStop()V

    #@30
    .line 6853
    iput-boolean v5, p0, Landroid/app/Activity;->mCalled:Z

    #@32
    .line 6854
    iget-object v3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@34
    invoke-virtual {v3, p0}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    #@37
    .line 6855
    iget-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    #@39
    if-nez v3, :cond_2

    #@3b
    .line 6856
    new-instance v3, Landroid/util/SuperNotCalledException;

    #@3d
    .line 6857
    new-instance v4, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v5, "Activity "

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    iget-object v5, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    #@4b
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    .line 6858
    const-string/jumbo v5, " did not call through to super.onStop()"

    #@56
    .line 6857
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    .line 6856
    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@61
    throw v3

    #@62
    .line 6861
    :cond_2
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@64
    monitor-enter v4

    #@65
    .line 6862
    :try_start_0
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@67
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6a
    move-result v0

    #@6b
    .line 6863
    .local v0, "N":I
    const/4 v1, 0x0

    #@6c
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@6e
    .line 6864
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@70
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@73
    move-result-object v2

    #@74
    check-cast v2, Landroid/app/Activity$ManagedCursor;

    #@76
    .line 6865
    .local v2, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get1(Landroid/app/Activity$ManagedCursor;)Z

    #@79
    move-result v3

    #@7a
    if-nez v3, :cond_3

    #@7c
    .line 6866
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    #@7f
    move-result-object v3

    #@80
    invoke-interface {v3}, Landroid/database/Cursor;->deactivate()V

    #@83
    .line 6867
    const/4 v3, 0x1

    #@84
    invoke-static {v2, v3}, Landroid/app/Activity$ManagedCursor;->-set0(Landroid/app/Activity$ManagedCursor;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@87
    .line 6863
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@89
    goto :goto_0

    #@8a
    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_4
    monitor-exit v4

    #@8b
    .line 6872
    iput-boolean v6, p0, Landroid/app/Activity;->mStopped:Z

    #@8d
    .line 6874
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_5
    iput-boolean v5, p0, Landroid/app/Activity;->mResumed:Z

    #@8f
    .line 6835
    return-void

    #@90
    .line 6861
    :catchall_0
    move-exception v3

    #@91
    monitor-exit v4

    #@92
    throw v3
.end method

.method final performUserLeaving()V
    .locals 0

    #@0
    .prologue
    .line 6831
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    #@3
    .line 6832
    invoke-virtual {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    #@6
    .line 6830
    return-void
.end method

.method public postponeEnterTransition()V
    .locals 1

    #@0
    .prologue
    .line 6575
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@2
    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->postponeEnterTransition()V

    #@5
    .line 6574
    return-void
.end method

.method public recreate()V
    .locals 10

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 5180
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 5181
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Can only be called on top-level activity"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 5183
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@15
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    #@18
    move-result-object v1

    #@19
    if-eq v0, v1, :cond_1

    #@1b
    .line 5184
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1d
    const-string/jumbo v1, "Must be called from main thread"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 5186
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@26
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@28
    move-object v3, v2

    #@29
    move v5, v4

    #@2a
    move-object v6, v2

    #@2b
    move-object v7, v2

    #@2c
    move v8, v4

    #@2d
    move v9, v4

    #@2e
    invoke-virtual/range {v0 .. v9}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;ZZ)V

    #@31
    .line 5179
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 3523
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    #@3
    .line 3522
    return-void
.end method

.method public releaseInstance()Z
    .locals 3

    #@0
    .prologue
    .line 5344
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->releaseActivityInstance(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 5345
    :catch_0
    move-exception v0

    #@c
    .line 5348
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public final removeDialog(I)V
    .locals 2
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3808
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3809
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/app/Activity$ManagedDialog;

    #@c
    .line 3810
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-eqz v0, :cond_0

    #@e
    .line 3811
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@10
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    #@13
    .line 3812
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    #@18
    .line 3807
    .end local v0    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_0
    return-void
.end method

.method public reportFullyDrawn()V
    .locals 3

    #@0
    .prologue
    .line 1863
    iget-boolean v1, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1864
    const/4 v1, 0x0

    #@5
    iput-boolean v1, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    #@7
    .line 1866
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@a
    move-result-object v1

    #@b
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@d
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->reportActivityFullyDrawn(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 1862
    :cond_0
    :goto_0
    return-void

    #@11
    .line 1867
    :catch_0
    move-exception v0

    #@12
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
    .locals 3
    .param p1, "event"    # Landroid/view/DragEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6595
    invoke-static {p1}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    #@4
    move-result-object v0

    #@5
    .line 6596
    .local v0, "dragAndDropPermissions":Landroid/view/DragAndDropPermissions;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Landroid/view/DragAndDropPermissions;->take(Landroid/os/IBinder;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 6597
    return-object v0

    #@12
    .line 6599
    :cond_0
    return-object v2
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4113
    iget-boolean v1, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 4114
    const-string/jumbo v1, "Activity"

    #@8
    const-string/jumbo v2, "Can reqeust only one set of permissions at a time"

    #@b
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 4116
    new-array v1, v3, [Ljava/lang/String;

    #@10
    new-array v2, v3, [I

    #@12
    invoke-virtual {p0, p2, v1, v2}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    #@15
    .line 4117
    return-void

    #@16
    .line 4119
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    #@1d
    move-result-object v0

    #@1e
    .line 4120
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "@android:requestPermissions:"

    #@21
    const/4 v2, 0x0

    #@22
    invoke-virtual {p0, v1, v0, p2, v2}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@25
    .line 4121
    const/4 v1, 0x1

    #@26
    iput-boolean v1, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    #@28
    .line 4112
    return-void
.end method

.method public final requestShowKeyboardShortcuts()V
    .locals 4

    #@0
    .prologue
    .line 1696
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.SHOW_KEYBOARD_SHORTCUTS"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1697
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    #@a
    const-string/jumbo v2, "com.android.systemui"

    #@d
    .line 1698
    const-string/jumbo v3, "com.android.systemui.statusbar.KeyboardShortcutsReceiver"

    #@10
    .line 1697
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@16
    .line 1699
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    #@19
    .line 1695
    return-void
.end method

.method public requestVisibleBehind(Z)Z
    .locals 4
    .param p1, "visible"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6127
    iget-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 6129
    const/4 p1, 0x0

    #@6
    .line 6132
    .end local p1    # "visible":Z
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@9
    move-result-object v2

    #@a
    .line 6133
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@c
    .line 6132
    invoke-interface {v2, v3, p1}, Landroid/app/IActivityManager;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    :goto_0
    iput-boolean p1, p0, Landroid/app/Activity;->mVisibleBehind:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 6137
    :goto_1
    iget-boolean v1, p0, Landroid/app/Activity;->mVisibleBehind:Z

    #@16
    return v1

    #@17
    :cond_1
    move p1, v1

    #@18
    .line 6132
    goto :goto_0

    #@19
    .line 6134
    :catch_0
    move-exception v0

    #@1a
    .line 6135
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v1, p0, Landroid/app/Activity;->mVisibleBehind:Z

    #@1c
    goto :goto_1
.end method

.method public final requestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    #@0
    .prologue
    .line 3946
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2104
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 2105
    .local v0, "activity":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationChildInstances()Ljava/util/HashMap;

    #@8
    move-result-object v1

    #@9
    .line 2106
    .local v1, "children":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@b
    invoke-virtual {v5}, Landroid/app/FragmentController;->retainNestedNonConfig()Landroid/app/FragmentManagerNonConfig;

    #@e
    move-result-object v2

    #@f
    .line 2112
    .local v2, "fragments":Landroid/app/FragmentManagerNonConfig;
    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@11
    invoke-virtual {v5}, Landroid/app/FragmentController;->doLoaderStart()V

    #@14
    .line 2113
    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@16
    const/4 v6, 0x1

    #@17
    invoke-virtual {v5, v6}, Landroid/app/FragmentController;->doLoaderStop(Z)V

    #@1a
    .line 2114
    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@1c
    invoke-virtual {v5}, Landroid/app/FragmentController;->retainLoaderNonConfig()Landroid/util/ArrayMap;

    #@1f
    move-result-object v3

    #@20
    .line 2116
    .local v3, "loaders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/LoaderManager;>;"
    if-nez v0, :cond_0

    #@22
    if-nez v1, :cond_0

    #@24
    if-nez v2, :cond_0

    #@26
    if-nez v3, :cond_0

    #@28
    .line 2117
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@2a
    if-nez v5, :cond_0

    #@2c
    .line 2118
    return-object v7

    #@2d
    .line 2121
    :cond_0
    new-instance v4, Landroid/app/Activity$NonConfigurationInstances;

    #@2f
    invoke-direct {v4}, Landroid/app/Activity$NonConfigurationInstances;-><init>()V

    #@32
    .line 2122
    .local v4, "nci":Landroid/app/Activity$NonConfigurationInstances;
    iput-object v0, v4, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    #@34
    .line 2123
    iput-object v1, v4, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    #@36
    .line 2124
    iput-object v2, v4, Landroid/app/Activity$NonConfigurationInstances;->fragments:Landroid/app/FragmentManagerNonConfig;

    #@38
    .line 2125
    iput-object v3, v4, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    #@3a
    .line 2126
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@3c
    if-eqz v5, :cond_1

    #@3e
    .line 2127
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@40
    invoke-virtual {v5}, Landroid/app/VoiceInteractor;->retainInstance()V

    #@43
    .line 2128
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@45
    iput-object v5, v4, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    #@47
    .line 2130
    :cond_1
    return-object v4
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 5863
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 5864
    iget-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    #@a
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@d
    .line 5862
    :goto_0
    return-void

    #@e
    .line 5866
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@11
    goto :goto_0
.end method

.method public setActionBar(Landroid/widget/Toolbar;)V
    .locals 4
    .param p1, "toolbar"    # Landroid/widget/Toolbar;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2353
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    #@4
    move-result-object v0

    #@5
    .line 2354
    .local v0, "ab":Landroid/app/ActionBar;
    instance-of v2, v0, Lcom/android/internal/app/WindowDecorActionBar;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 2355
    new-instance v2, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v3, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set android:windowActionBar to false in your theme to use a Toolbar instead."

    #@e
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 2362
    :cond_0
    iput-object v3, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    #@14
    .line 2365
    if-eqz v0, :cond_1

    #@16
    .line 2366
    invoke-virtual {v0}, Landroid/app/ActionBar;->onDestroy()V

    #@19
    .line 2369
    :cond_1
    if-eqz p1, :cond_2

    #@1b
    .line 2370
    new-instance v1, Lcom/android/internal/app/ToolbarActionBar;

    #@1d
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v1, p1, v2, p0}, Lcom/android/internal/app/ToolbarActionBar;-><init>(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    #@24
    .line 2371
    .local v1, "tbab":Lcom/android/internal/app/ToolbarActionBar;
    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@26
    .line 2372
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@28
    invoke-virtual {v1}, Lcom/android/internal/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    #@2f
    .line 2379
    .end local v1    # "tbab":Lcom/android/internal/app/ToolbarActionBar;
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    #@32
    .line 2352
    return-void

    #@33
    .line 2374
    :cond_2
    iput-object v3, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@35
    .line 2376
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@37
    invoke-virtual {v2, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    #@3a
    goto :goto_0
.end method

.method public setContentTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 1
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    #@0
    .prologue
    .line 2486
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Window;->setTransitionManager(Landroid/transition/TransitionManager;)V

    #@7
    .line 2485
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    #@0
    .prologue
    .line 2414
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    #@7
    .line 2415
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    #@a
    .line 2413
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 2434
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    #@7
    .line 2435
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    #@a
    .line 2433
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 2450
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@7
    .line 2451
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    #@a
    .line 2449
    return-void
.end method

.method public final setDefaultKeyMode(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 2589
    iput p1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    #@2
    .line 2593
    packed-switch p1, :pswitch_data_0

    #@5
    .line 2605
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@a
    throw v0

    #@b
    .line 2596
    :pswitch_0
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #@e
    .line 2588
    :goto_0
    return-void

    #@f
    .line 2601
    :pswitch_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@11
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@14
    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #@16
    .line 2602
    iget-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #@18
    const/4 v1, 0x0

    #@19
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@1c
    goto :goto_0

    #@1d
    .line 2593
    nop

    #@1e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    #@0
    .prologue
    .line 6537
    if-nez p1, :cond_0

    #@2
    .line 6538
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    #@4
    .line 6540
    :cond_0
    iput-object p1, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    #@6
    .line 6536
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    #@0
    .prologue
    .line 6553
    if-nez p1, :cond_0

    #@2
    .line 6554
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    #@4
    .line 6556
    :cond_0
    iput-object p1, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    #@6
    .line 6552
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 3970
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    #@7
    .line 3969
    return-void
.end method

.method public final setFeatureDrawableAlpha(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    #@0
    .prologue
    .line 3978
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    #@7
    .line 3977
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    #@0
    .prologue
    .line 3954
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    #@7
    .line 3953
    return-void
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 3962
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    #@7
    .line 3961
    return-void
.end method

.method public setFinishOnTouchOutside(Z)V
    .locals 1
    .param p1, "finish"    # Z

    #@0
    .prologue
    .line 2506
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    #@5
    .line 2505
    return-void
.end method

.method public setImmersive(Z)V
    .locals 3
    .param p1, "i"    # Z

    #@0
    .prologue
    .line 6230
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->setImmersive(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 6228
    :goto_0
    return-void

    #@a
    .line 6231
    :catch_0
    move-exception v0

    #@b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "newIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 859
    iput-object p1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    #@2
    .line 858
    return-void
.end method

.method public final setMediaController(Landroid/media/session/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/session/MediaController;

    #@0
    .prologue
    .line 5841
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Window;->setMediaController(Landroid/media/session/MediaController;)V

    #@7
    .line 5840
    return-void
.end method

.method public setOverlayWithDecorCaptionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 7048
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/Window;->setOverlayWithDecorCaptionEnabled(Z)V

    #@5
    .line 7047
    return-void
.end method

.method final setParent(Landroid/app/Activity;)V
    .locals 0
    .param p1, "parent"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 6605
    iput-object p1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    .line 6604
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "isPersistent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2312
    return-void
.end method

.method public final setProgress(I)V
    .locals 3
    .param p1, "progress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 5767
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    add-int/lit8 v1, p1, 0x0

    #@6
    const/4 v2, 0x2

    #@7
    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    #@a
    .line 5766
    return-void
.end method

.method public final setProgressBarIndeterminate(Z)V
    .locals 3
    .param p1, "indeterminate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 5749
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v1

    #@4
    .line 5750
    if-eqz p1, :cond_0

    #@6
    const/4 v0, -0x3

    #@7
    .line 5749
    :goto_0
    const/4 v2, 0x2

    #@8
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    #@b
    .line 5748
    return-void

    #@c
    .line 5751
    :cond_0
    const/4 v0, -0x4

    #@d
    goto :goto_0
.end method

.method public final setProgressBarIndeterminateVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 5733
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v1

    #@4
    .line 5734
    if-eqz p1, :cond_0

    #@6
    const/4 v0, -0x1

    #@7
    .line 5733
    :goto_0
    const/4 v2, 0x5

    #@8
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    #@b
    .line 5732
    return-void

    #@c
    .line 5734
    :cond_0
    const/4 v0, -0x2

    #@d
    goto :goto_0
.end method

.method public final setProgressBarVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 5718
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v1

    #@4
    if-eqz p1, :cond_0

    #@6
    const/4 v0, -0x1

    #@7
    :goto_0
    const/4 v2, 0x2

    #@8
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    #@b
    .line 5717
    return-void

    #@c
    .line 5719
    :cond_0
    const/4 v0, -0x2

    #@d
    goto :goto_0
.end method

.method public setRequestedOrientation(I)V
    .locals 3
    .param p1, "requestedOrientation"    # I

    #@0
    .prologue
    .line 5457
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 5459
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@7
    move-result-object v1

    #@8
    .line 5460
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@a
    .line 5459
    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->setRequestedOrientation(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 5456
    :goto_0
    return-void

    #@e
    .line 5465
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@10
    invoke-virtual {v1, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    #@13
    goto :goto_0

    #@14
    .line 5461
    :catch_0
    move-exception v0

    #@15
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final setResult(I)V
    .locals 1
    .param p1, "resultCode"    # I

    #@0
    .prologue
    .line 4973
    monitor-enter p0

    #@1
    .line 4974
    :try_start_0
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    #@3
    .line 4975
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 4972
    return-void

    #@8
    .line 4973
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public final setResult(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 5002
    monitor-enter p0

    #@1
    .line 5003
    :try_start_0
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    #@3
    .line 5004
    iput-object p2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 5001
    return-void

    #@7
    .line 5002
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public final setSecondaryProgress(I)V
    .locals 3
    .param p1, "secondaryProgress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 5786
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    .line 5787
    add-int/lit16 v1, p1, 0x4e20

    #@6
    .line 5786
    const/4 v2, 0x2

    #@7
    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    #@a
    .line 5785
    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 6
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    #@0
    .prologue
    .line 5691
    iget-object v3, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@2
    if-eq v3, p1, :cond_0

    #@4
    .line 5692
    iget-object v3, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@6
    invoke-virtual {v3, p1}, Landroid/app/ActivityManager$TaskDescription;->copyFrom(Landroid/app/ActivityManager$TaskDescription;)V

    #@9
    .line 5694
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    if-nez v3, :cond_0

    #@f
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    #@12
    move-result-object v3

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 5695
    invoke-static {p0}, Landroid/app/ActivityManager;->getLauncherLargeIconSizeInner(Landroid/content/Context;)I

    #@18
    move-result v2

    #@19
    .line 5696
    .local v2, "size":I
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    #@1c
    move-result-object v3

    #@1d
    .line 5697
    const/4 v4, 0x1

    #@1e
    .line 5696
    invoke-static {v3, v2, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@21
    move-result-object v1

    #@22
    .line 5698
    .local v1, "icon":Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@24
    invoke-virtual {v3, v1}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/Bitmap;)V

    #@27
    .line 5702
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    .end local v2    # "size":I
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@2a
    move-result-object v3

    #@2b
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@2d
    iget-object v5, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@2f
    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 5690
    :goto_0
    return-void

    #@33
    .line 5703
    :catch_0
    move-exception v0

    #@34
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setTheme(I)V
    .locals 1
    .param p1, "resid"    # I

    #@0
    .prologue
    .line 4009
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    #@3
    .line 4010
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@5
    invoke-virtual {v0, p1}, Landroid/view/Window;->setTheme(I)V

    #@8
    .line 4008
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    #@0
    .prologue
    .line 5633
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    #@7
    .line 5632
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 5618
    iput-object p1, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    #@2
    .line 5619
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    #@7
    .line 5621
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 5622
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@d
    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    #@10
    .line 5617
    :cond_0
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 5648
    iput p1, p0, Landroid/app/Activity;->mTitleColor:I

    #@2
    .line 5649
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    #@4
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    #@7
    .line 5647
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 5119
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 5120
    iput-boolean p1, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    #@6
    .line 5121
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 5122
    if-eqz p1, :cond_1

    #@c
    invoke-virtual {p0}, Landroid/app/Activity;->makeVisible()V

    #@f
    .line 5118
    :cond_0
    :goto_0
    return-void

    #@10
    .line 5123
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@12
    const/4 v1, 0x4

    #@13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@16
    goto :goto_0
.end method

.method setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 5
    .param p1, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1277
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1278
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@7
    invoke-virtual {v1}, Landroid/app/VoiceInteractor;->getActiveRequests()[Landroid/app/VoiceInteractor$Request;

    #@a
    move-result-object v2

    #@b
    const/4 v1, 0x0

    #@c
    array-length v3, v2

    #@d
    :goto_0
    if-ge v1, v3, :cond_0

    #@f
    aget-object v0, v2, v1

    #@11
    .line 1279
    .local v0, "activeRequest":Landroid/app/VoiceInteractor$Request;
    invoke-virtual {v0}, Landroid/app/VoiceInteractor$Request;->cancel()V

    #@14
    .line 1280
    invoke-virtual {v0}, Landroid/app/VoiceInteractor$Request;->clear()V

    #@17
    .line 1278
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1283
    .end local v0    # "activeRequest":Landroid/app/VoiceInteractor$Request;
    :cond_0
    if-nez p1, :cond_1

    #@1c
    .line 1284
    iput-object v4, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@1e
    .line 1276
    :goto_1
    return-void

    #@1f
    .line 1286
    :cond_1
    new-instance v1, Landroid/app/VoiceInteractor;

    #@21
    .line 1287
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@24
    move-result-object v2

    #@25
    .line 1286
    invoke-direct {v1, p1, p0, p0, v2}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    #@28
    iput-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@2a
    goto :goto_1
.end method

.method public final setVolumeControlStream(I)V
    .locals 1
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 5807
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    #@7
    .line 5806
    return-void
.end method

.method public setVrModeEnabled(ZLandroid/content/ComponentName;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "requestedComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 6294
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    invoke-interface {v1, v2, p1, p2}, Landroid/app/IActivityManager;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 6296
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@e
    .line 6297
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 6296
    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 6299
    :catch_0
    move-exception v0

    #@17
    .line 6292
    :cond_0
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4167
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 9
    .param p1, "targetIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 6406
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4
    move-result-object v4

    #@5
    .line 6407
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@8
    move-result-object v0

    #@9
    .line 6408
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    #@b
    .line 6409
    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    #@e
    move-result-object v0

    #@f
    .line 6411
    :cond_0
    const/4 v5, 0x0

    #@10
    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@13
    move-result-object v3

    #@14
    .line 6412
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@16
    if-nez v5, :cond_1

    #@18
    .line 6413
    return v8

    #@19
    .line 6415
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1c
    move-result-object v5

    #@1d
    .line 6416
    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@1f
    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@21
    .line 6415
    invoke-interface {v5, v6, v7}, Landroid/app/IActivityManager;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result v5

    #@25
    return v5

    #@26
    .line 6419
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    #@27
    .line 6420
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v8

    #@28
    .line 6417
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    #@29
    .line 6418
    .local v2, "e":Landroid/os/RemoteException;
    return v8
.end method

.method public showAssist(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1750
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1751
    :catch_0
    move-exception v0

    #@c
    .line 1753
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public final showDialog(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3690
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    #@4
    .line 3689
    return-void
.end method

.method public final showDialog(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3726
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 3727
    new-instance v1, Landroid/util/SparseArray;

    #@7
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@a
    iput-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@c
    .line 3729
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/app/Activity$ManagedDialog;

    #@14
    .line 3730
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-nez v0, :cond_2

    #@16
    .line 3731
    new-instance v0, Landroid/app/Activity$ManagedDialog;

    #@18
    .end local v0    # "md":Landroid/app/Activity$ManagedDialog;
    invoke-direct {v0, v2}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$ManagedDialog;)V

    #@1b
    .line 3732
    .restart local v0    # "md":Landroid/app/Activity$ManagedDialog;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {p0, v1, v2, p2}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    #@22
    move-result-object v1

    #@23
    iput-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@25
    .line 3733
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@27
    if-nez v1, :cond_1

    #@29
    .line 3734
    const/4 v1, 0x0

    #@2a
    return v1

    #@2b
    .line 3736
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@2d
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@30
    .line 3739
    :cond_2
    iput-object p2, v0, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    #@32
    .line 3740
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@34
    invoke-virtual {p0, p1, v1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    #@37
    .line 3741
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@39
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    #@3c
    .line 3742
    const/4 v1, 0x1

    #@3d
    return v1
.end method

.method public showLockTaskEscapeMessage()V
    .locals 3

    #@0
    .prologue
    .line 7020
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 7018
    :goto_0
    return-void

    #@a
    .line 7021
    :catch_0
    move-exception v0

    #@b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    .line 6314
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 6328
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 1
    .param p1, "intents"    # [Landroid/content/Intent;

    #@0
    .prologue
    .line 4539
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    #@4
    .line 4538
    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4566
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@2
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@4
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@7
    move-result-object v2

    #@8
    .line 4567
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@a
    move-object v1, p0

    #@b
    move-object v4, p0

    #@c
    move-object v5, p1

    #@d
    move-object v6, p2

    #@e
    .line 4566
    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V

    #@11
    .line 4565
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 4490
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    #@4
    .line 4489
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 4517
    if-eqz p2, :cond_0

    #@3
    .line 4518
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@6
    .line 4516
    :goto_0
    return-void

    #@7
    .line 4522
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    #@a
    goto :goto_0
.end method

.method public startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "ignoreTargetSecurity"    # Z
    .param p4, "userId"    # I

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 4364
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 4365
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v1, "Can\'t be called from a child"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 4367
    :cond_0
    invoke-direct {p0, p2}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@11
    move-result-object p2

    #@12
    .line 4369
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@14
    .line 4370
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@16
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@19
    move-result-object v2

    #@1a
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@1c
    move-object v1, p0

    #@1d
    move-object v4, p0

    #@1e
    move-object v5, p1

    #@1f
    move-object v7, p2

    #@20
    move v8, p3

    #@21
    move v9, p4

    #@22
    .line 4369
    invoke-virtual/range {v0 .. v9}, Landroid/app/Instrumentation;->execStartActivityAsCaller(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;ZI)Landroid/app/Instrumentation$ActivityResult;

    #@25
    move-result-object v10

    #@26
    .line 4372
    .local v10, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v10, :cond_1

    #@28
    .line 4373
    iget-object v3, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@2a
    .line 4374
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@2c
    iget-object v5, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@2e
    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    #@31
    move-result v7

    #@32
    .line 4375
    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    #@35
    move-result-object v8

    #@36
    .line 4373
    invoke-virtual/range {v3 .. v8}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    #@39
    .line 4377
    :cond_1
    invoke-direct {p0, p2}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    #@3c
    .line 4363
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 4331
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 4332
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v1, "Can\'t be called from a child"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 4334
    :cond_0
    invoke-direct {p0, p2}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@11
    move-result-object p2

    #@12
    .line 4336
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@14
    .line 4337
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@16
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@19
    move-result-object v2

    #@1a
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@1c
    move-object v1, p0

    #@1d
    move-object v4, p0

    #@1e
    move-object v5, p1

    #@1f
    move-object v7, p2

    #@20
    move-object v8, p3

    #@21
    .line 4336
    invoke-virtual/range {v0 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    #@24
    move-result-object v9

    #@25
    .line 4339
    .local v9, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v9, :cond_1

    #@27
    .line 4340
    iget-object v3, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@29
    .line 4341
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@2b
    iget-object v5, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@2d
    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    #@30
    move-result v7

    #@31
    .line 4342
    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    #@34
    move-result-object v8

    #@35
    .line 4340
    invoke-virtual/range {v3 .. v8}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    #@38
    .line 4344
    :cond_1
    invoke-direct {p0, p2}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    #@3b
    .line 4330
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 4324
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@4
    .line 4323
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    #@0
    .prologue
    .line 4183
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@4
    .line 4182
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4222
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-nez v0, :cond_2

    #@4
    .line 4223
    invoke-direct {p0, p3}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@7
    move-result-object p3

    #@8
    .line 4225
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@a
    .line 4226
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@c
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@f
    move-result-object v2

    #@10
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@12
    move-object v1, p0

    #@13
    move-object v4, p0

    #@14
    move-object v5, p1

    #@15
    move v6, p2

    #@16
    move-object v7, p3

    #@17
    .line 4225
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    #@1a
    move-result-object v8

    #@1b
    .line 4228
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v8, :cond_0

    #@1d
    .line 4229
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@1f
    .line 4230
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@21
    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@23
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    #@26
    move-result v4

    #@27
    .line 4231
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    #@2a
    move-result-object v5

    #@2b
    move v3, p2

    #@2c
    .line 4229
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    #@2f
    .line 4233
    :cond_0
    if-ltz p2, :cond_1

    #@31
    .line 4241
    const/4 v0, 0x1

    #@32
    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    #@34
    .line 4244
    :cond_1
    invoke-direct {p0, p3}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    #@37
    .line 4221
    .end local v8    # "ar":Landroid/app/Instrumentation$ActivityResult;
    :goto_0
    return-void

    #@38
    .line 4247
    :cond_2
    if-eqz p3, :cond_3

    #@3a
    .line 4248
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@3c
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@3f
    goto :goto_0

    #@40
    .line 4252
    :cond_3
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@42
    invoke-virtual {v0, p0, p1, p2}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    #@45
    goto :goto_0
.end method

.method public startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 10
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4869
    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    #@3
    move-result-object v9

    #@4
    .line 4870
    .local v9, "referrer":Landroid/net/Uri;
    if-eqz v9, :cond_0

    #@6
    .line 4871
    const-string/jumbo v0, "android.intent.extra.REFERRER"

    #@9
    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@c
    .line 4873
    :cond_0
    invoke-direct {p0, p4}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@f
    move-result-object p4

    #@10
    .line 4875
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@12
    .line 4876
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@14
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@17
    move-result-object v2

    #@18
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@1a
    move-object v1, p0

    #@1b
    move-object v4, p1

    #@1c
    move-object v5, p2

    #@1d
    move v6, p3

    #@1e
    move-object v7, p4

    #@1f
    .line 4875
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    #@22
    move-result-object v8

    #@23
    .line 4878
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v8, :cond_1

    #@25
    .line 4879
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@27
    .line 4880
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@29
    .line 4881
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    #@2c
    move-result v4

    #@2d
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    #@30
    move-result-object v5

    #@31
    move-object v2, p1

    #@32
    move v3, p3

    #@33
    .line 4879
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    #@36
    .line 4883
    :cond_1
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    #@39
    .line 4868
    return-void
.end method

.method public startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 4295
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4296
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Can\'t be called from a child"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 4298
    :cond_0
    invoke-direct {p0, p3}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@10
    move-result-object p3

    #@11
    .line 4299
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@13
    .line 4300
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@15
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@18
    move-result-object v2

    #@19
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@1b
    move-object v1, p0

    #@1c
    move-object v4, p0

    #@1d
    move-object v5, p1

    #@1e
    move v6, p2

    #@1f
    move-object v7, p3

    #@20
    move-object v8, p4

    #@21
    .line 4299
    invoke-virtual/range {v0 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    #@24
    move-result-object v9

    #@25
    .line 4302
    .local v9, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v9, :cond_1

    #@27
    .line 4303
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@29
    .line 4304
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@2b
    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@2d
    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    #@30
    move-result v4

    #@31
    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    #@34
    move-result-object v5

    #@35
    move v3, p2

    #@36
    .line 4303
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    #@39
    .line 4306
    :cond_1
    if-ltz p2, :cond_2

    #@3b
    .line 4314
    const/4 v0, 0x1

    #@3c
    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    #@3e
    .line 4317
    :cond_2
    invoke-direct {p0, p3}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    #@41
    .line 4294
    return-void
.end method

.method public startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 4287
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    #@4
    .line 4286
    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    #@0
    .prologue
    .line 4783
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@4
    .line 4782
    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4807
    invoke-direct {p0, p4}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@3
    move-result-object p4

    #@4
    .line 4809
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@6
    .line 4810
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@8
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@e
    move-object v1, p0

    #@f
    move-object v4, p1

    #@10
    move-object v5, p2

    #@11
    move v6, p3

    #@12
    move-object v7, p4

    #@13
    .line 4809
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    #@16
    move-result-object v8

    #@17
    .line 4812
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v8, :cond_0

    #@19
    .line 4813
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@1b
    .line 4814
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@1d
    iget-object v2, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@1f
    .line 4815
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    #@22
    move-result v4

    #@23
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    #@26
    move-result-object v5

    #@27
    move v3, p3

    #@28
    .line 4813
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    #@2b
    .line 4817
    :cond_0
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    #@2e
    .line 4806
    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    #@0
    .prologue
    .line 4835
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@4
    .line 4834
    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4860
    iget-object v0, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    #@2
    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@5
    .line 4859
    return-void
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;I)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    #@0
    .prologue
    .line 4641
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4676
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-nez v0, :cond_3

    #@4
    .line 4677
    const/4 v13, 0x1

    #@5
    .line 4679
    .local v13, "result":I
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    #@8
    move-result-object v12

    #@9
    .line 4680
    .local v12, "referrer":Landroid/net/Uri;
    if-eqz v12, :cond_0

    #@b
    .line 4681
    const-string/jumbo v0, "android.intent.extra.REFERRER"

    #@e
    invoke-virtual {p1, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@11
    .line 4683
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@14
    .line 4684
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@17
    .line 4685
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1a
    move-result-object v0

    #@1b
    .line 4686
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@1d
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {p0}, Landroid/app/Activity;->getBasePackageName()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 4687
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@2f
    .line 4688
    iget-object v6, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@31
    const/4 v8, 0x1

    #@32
    .line 4689
    const/4 v9, 0x0

    #@33
    move-object v3, p1

    #@34
    move/from16 v7, p2

    #@36
    move-object/from16 v10, p3

    #@38
    .line 4685
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    move-result v13

    #@3c
    .line 4694
    .end local v12    # "referrer":Landroid/net/Uri;
    :goto_0
    invoke-static {v13, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    #@3f
    .line 4696
    if-ltz p2, :cond_1

    #@41
    .line 4704
    const/4 v0, 0x1

    #@42
    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    #@44
    .line 4706
    :cond_1
    const/4 v0, 0x1

    #@45
    if-eq v13, v0, :cond_2

    #@47
    const/4 v0, 0x1

    #@48
    :goto_1
    return v0

    #@49
    :cond_2
    const/4 v0, 0x0

    #@4a
    goto :goto_1

    #@4b
    .line 4709
    .end local v13    # "result":I
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@4d
    .line 4710
    const-string/jumbo v1, "startActivityIfNeeded can only be called from a top-level activity"

    #@50
    .line 4709
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@53
    throw v0

    #@54
    .line 4690
    .restart local v13    # "result":I
    :catch_0
    move-exception v11

    #@55
    .local v11, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 7
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

    #@0
    .prologue
    .line 4587
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    .line 4586
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    #@a
    .line 4585
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8
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

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 4613
    if-eqz p6, :cond_0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v3, p2

    #@6
    move v4, p3

    #@7
    move v5, p4

    #@8
    move v6, p5

    #@9
    move-object v7, p6

    #@a
    .line 4614
    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    #@d
    .line 4612
    :goto_0
    return-void

    #@e
    :cond_0
    move-object v0, p0

    #@f
    move-object v1, p1

    #@10
    move-object v3, p2

    #@11
    move v4, p3

    #@12
    move v5, p4

    #@13
    move v6, p5

    #@14
    .line 4619
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    #@17
    goto :goto_0
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 8
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

    #@0
    .prologue
    .line 4399
    const/4 v7, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move v6, p6

    #@8
    .line 4398
    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    #@b
    .line 4397
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
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

    #@0
    .prologue
    .line 4430
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4431
    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    move v3, p2

    #@9
    move-object v4, p3

    #@a
    move v5, p4

    #@b
    move v6, p5

    #@c
    move-object/from16 v7, p7

    #@e
    invoke-direct/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    #@11
    .line 4429
    :goto_0
    return-void

    #@12
    .line 4433
    :cond_0
    if-eqz p7, :cond_1

    #@14
    .line 4434
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@16
    move-object v1, p0

    #@17
    move-object v2, p1

    #@18
    move v3, p2

    #@19
    move-object v4, p3

    #@1a
    move v5, p4

    #@1b
    move v6, p5

    #@1c
    move v7, p6

    #@1d
    move-object/from16 v8, p7

    #@1f
    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    #@22
    goto :goto_0

    #@23
    .line 4439
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@25
    move-object v1, p0

    #@26
    move-object v2, p1

    #@27
    move v3, p2

    #@28
    move-object v4, p3

    #@29
    move v5, p4

    #@2a
    move v6, p5

    #@2b
    move v7, p6

    #@2c
    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    #@2f
    goto :goto_0
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 9
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

    #@0
    .prologue
    .line 4903
    const/4 v8, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    move v5, p5

    #@7
    move v6, p6

    #@8
    move/from16 v7, p7

    #@a
    .line 4902
    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    #@d
    .line 4901
    return-void
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8
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

    #@0
    .prologue
    .line 4916
    iget-object v2, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@2
    move-object v0, p0

    #@3
    move-object v1, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    move v5, p5

    #@7
    move v6, p6

    #@8
    move-object/from16 v7, p8

    #@a
    invoke-direct/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    #@d
    .line 4915
    return-void
.end method

.method public startIntentSenderFromChildFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "child"    # Landroid/app/Fragment;
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

    #@0
    .prologue
    .line 4931
    iget-object v2, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    #@2
    move-object v0, p0

    #@3
    move-object v1, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    move v5, p5

    #@7
    move v6, p6

    #@8
    move-object/from16 v7, p8

    #@a
    invoke-direct/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    #@d
    .line 4930
    return-void
.end method

.method public startLocalVoiceInteraction(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "privateOptions"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1347
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1345
    :goto_0
    return-void

    #@a
    .line 1348
    :catch_0
    move-exception v0

    #@b
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startLockTask()V
    .locals 3

    #@0
    .prologue
    .line 6984
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->startLockTaskMode(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 6982
    :goto_0
    return-void

    #@a
    .line 6985
    :catch_0
    move-exception v0

    #@b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startManagingCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2270
    iget-object v1, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 2271
    :try_start_0
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@5
    new-instance v2, Landroid/app/Activity$ManagedCursor;

    #@7
    invoke-direct {v2, p1}, Landroid/app/Activity$ManagedCursor;-><init>(Landroid/database/Cursor;)V

    #@a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 2269
    return-void

    #@f
    .line 2270
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 4728
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4752
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 4754
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@7
    .line 4755
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@a
    .line 4756
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@d
    move-result-object v1

    #@e
    .line 4757
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@10
    .line 4756
    invoke-interface {v1, v2, p1, p2}, Landroid/app/IActivityManager;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 4758
    :catch_0
    move-exception v0

    #@16
    .line 4761
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@17
    return v1

    #@18
    .line 4764
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@1a
    .line 4765
    const-string/jumbo v2, "startNextMatchingActivity can only be called from a top-level activity"

    #@1d
    .line 4764
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1
.end method

.method public startPostponedEnterTransition()V
    .locals 1

    #@0
    .prologue
    .line 6584
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@2
    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->startPostponedEnterTransition()V

    #@5
    .line 6583
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    #@0
    .prologue
    .line 3903
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    #@3
    .line 3904
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    #@5
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    #@8
    move-result-object v3

    #@9
    move-object v1, p1

    #@a
    move v2, p2

    #@b
    move-object v4, p3

    #@c
    move v5, p4

    #@d
    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    #@10
    .line 3902
    return-void
.end method

.method public stopLocalVoiceInteraction()V
    .locals 3

    #@0
    .prologue
    .line 1376
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1374
    :goto_0
    return-void

    #@a
    .line 1377
    :catch_0
    move-exception v0

    #@b
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public stopLockTask()V
    .locals 2

    #@0
    .prologue
    .line 7008
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/app/IActivityManager;->stopLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 7006
    :goto_0
    return-void

    #@8
    .line 7009
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public stopManagingCursor(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2294
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@2
    monitor-enter v4

    #@3
    .line 2295
    :try_start_0
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    .line 2296
    .local v0, "N":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@c
    .line 2297
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/app/Activity$ManagedCursor;

    #@14
    .line 2298
    .local v2, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    #@17
    move-result-object v3

    #@18
    if-ne v3, p1, :cond_1

    #@1a
    .line 2299
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_0
    monitor-exit v4

    #@20
    .line 2293
    return-void

    #@21
    .line 2296
    .restart local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 2294
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :catchall_0
    move-exception v3

    #@25
    monitor-exit v4

    #@26
    throw v3
.end method

.method public takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    #@0
    .prologue
    .line 3931
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    #@7
    .line 3930
    return-void
.end method

.method public triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "appSearchData"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 3919
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    #@3
    .line 3920
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    #@5
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, p1, v1, p2}, Landroid/app/SearchManager;->triggerSearch(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)V

    #@c
    .line 3918
    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 3534
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    #@4
    .line 3533
    return-void
.end method
