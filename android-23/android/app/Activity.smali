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


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Activity$ManagedDialog;,
        Landroid/app/Activity$NonConfigurationInstances;,
        Landroid/app/Activity$ManagedCursor;,
        Landroid/app/Activity$TranslucentConversionListener;,
        Landroid/app/Activity$HostCallbacks;
    }
.end annotation


# static fields
.field private static final DEBUG_LIFECYCLE:Z = false

.field public static final DEFAULT_KEYS_DIALER:I = 0x1

.field public static final DEFAULT_KEYS_DISABLE:I = 0x0

.field public static final DEFAULT_KEYS_SEARCH_GLOBAL:I = 0x4

.field public static final DEFAULT_KEYS_SEARCH_LOCAL:I = 0x3

.field public static final DEFAULT_KEYS_SHORTCUT:I = 0x2

.field protected static final FOCUSED_STATE_SET:[I

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:fragments"

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

.field mEmbeddedID:Ljava/lang/String;

.field private mEnableDefaultActionBarUp:Z

.field mEnterTransitionListener:Landroid/app/SharedElementCallback;

.field mExitTransitionListener:Landroid/app/SharedElementCallback;

.field mFinished:Z

.field final mFragments:Landroid/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

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

.field private mStopped:Z

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
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 789
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
    .line 670
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
    .line 670
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;-><init>()V

    #@6
    .line 719
    iput-boolean v0, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    #@8
    .line 721
    iput-boolean v1, p0, Landroid/app/Activity;->mTemporaryPause:Z

    #@a
    .line 723
    iput-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    #@c
    .line 741
    iput-object v2, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@e
    .line 742
    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    #@10
    .line 743
    iput-boolean v1, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    #@12
    .line 744
    iput-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    #@14
    .line 745
    iput-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@16
    .line 751
    iput v1, p0, Landroid/app/Activity;->mTitleColor:I

    #@18
    .line 754
    new-instance v0, Landroid/os/Handler;

    #@1a
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    #@1f
    .line 755
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
    .line 772
    new-instance v0, Ljava/util/ArrayList;

    #@2c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2f
    .line 771
    iput-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@31
    .line 775
    iput v1, p0, Landroid/app/Activity;->mResultCode:I

    #@33
    .line 776
    iput-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    #@35
    .line 783
    iput-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    #@37
    .line 784
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    #@39
    .line 786
    iput v1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    #@3b
    .line 787
    iput-object v2, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #@3d
    .line 792
    invoke-static {p0}, Landroid/os/StrictMode;->trackActivity(Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    iput-object v0, p0, Landroid/app/Activity;->mInstanceTracker:Ljava/lang/Object;

    #@43
    .line 796
    new-instance v0, Landroid/app/ActivityTransitionState;

    #@45
    invoke-direct {v0}, Landroid/app/ActivityTransitionState;-><init>()V

    #@48
    iput-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@4a
    .line 797
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    #@4c
    iput-object v0, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    #@4e
    .line 798
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    #@50
    iput-object v0, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    #@52
    .line 670
    return-void
.end method

.method private cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 3955
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@2
    if-eqz v1, :cond_2

    #@4
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@6
    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    .line 3956
    :goto_0
    if-eqz v0, :cond_0

    #@c
    .line 3957
    invoke-virtual {v0}, Landroid/view/View;->cancelPendingInputEvents()V

    #@f
    .line 3959
    :cond_0
    if-eqz p1, :cond_1

    #@11
    invoke-direct {p0}, Landroid/app/Activity;->isTopOfTask()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_3

    #@17
    .line 3954
    :cond_1
    :goto_1
    return-void

    #@18
    .line 3955
    :cond_2
    const/4 v0, 0x0

    #@19
    .local v0, "decor":Landroid/view/View;
    goto :goto_0

    #@1a
    .line 3960
    .end local v0    # "decor":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@1c
    invoke-virtual {v1, p0, p1}, Landroid/app/ActivityTransitionState;->startExitOutTransition(Landroid/app/Activity;Landroid/os/Bundle;)V

    #@1f
    goto :goto_1
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
    .line 1070
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@4
    move-result v1

    #@5
    invoke-virtual {p0, v1, p3}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    #@8
    move-result-object v0

    #@9
    .line 1071
    .local v0, "dialog":Landroid/app/Dialog;
    if-nez v0, :cond_0

    #@b
    .line 1072
    return-object v2

    #@c
    .line 1074
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    #@f
    .line 1075
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
    .line 6549
    if-eqz p2, :cond_0

    #@3
    .line 6550
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    #@6
    .line 6549
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 6551
    .local v1, "permissions":[Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    #@c
    .line 6552
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    #@f
    .line 6551
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    #@12
    move-result-object v0

    #@13
    .line 6553
    .local v0, "grantResults":[I
    :goto_1
    invoke-virtual {p0, p1, v1, v0}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    #@16
    .line 6547
    return-void

    #@17
    .line 6550
    .end local v0    # "grantResults":[I
    .end local v1    # "permissions":[Ljava/lang/String;
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    #@19
    .restart local v1    # "permissions":[Ljava/lang/String;
    goto :goto_0

    #@1a
    .line 6552
    :cond_1
    new-array v0, v3, [I

    #@1c
    .restart local v0    # "grantResults":[I
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
    .line 6559
    if-eqz p2, :cond_0

    #@3
    .line 6560
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    #@6
    .line 6559
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 6561
    .local v1, "permissions":[Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    #@c
    .line 6562
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    #@f
    .line 6561
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    #@12
    move-result-object v0

    #@13
    .line 6563
    .local v0, "grantResults":[I
    :goto_1
    invoke-virtual {p3, p1, v1, v0}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    #@16
    .line 6557
    return-void

    #@17
    .line 6560
    .end local v0    # "grantResults":[I
    .end local v1    # "permissions":[Ljava/lang/String;
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    #@19
    .restart local v1    # "permissions":[Ljava/lang/String;
    goto :goto_0

    #@1a
    .line 6562
    :cond_1
    new-array v0, v3, [I

    #@1c
    .restart local v0    # "grantResults":[I
    goto :goto_1
.end method

.method private ensureSearchManager()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5243
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 5244
    return-void

    #@6
    .line 5247
    :cond_0
    new-instance v0, Landroid/app/SearchManager;

    #@8
    invoke-direct {v0, p0, v1}, Landroid/app/SearchManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@b
    iput-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    #@d
    .line 5242
    return-void
.end method

.method private finish(Z)V
    .locals 5
    .param p1, "finishTask"    # Z

    #@0
    .prologue
    .line 4848
    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-nez v3, :cond_2

    #@4
    .line 4851
    monitor-enter p0

    #@5
    .line 4852
    :try_start_0
    iget v1, p0, Landroid/app/Activity;->mResultCode:I

    #@7
    .line 4853
    .local v1, "resultCode":I
    iget-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .local v2, "resultData":Landroid/content/Intent;
    monitor-exit p0

    #@a
    .line 4857
    if-eqz v2, :cond_0

    #@c
    .line 4858
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@f
    .line 4860
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@12
    move-result-object v3

    #@13
    .line 4861
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@15
    .line 4860
    invoke-interface {v3, v4, v1, v2, p1}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 4862
    const/4 v3, 0x1

    #@1c
    iput-boolean v3, p0, Landroid/app/Activity;->mFinished:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1e
    .line 4847
    .end local v1    # "resultCode":I
    .end local v2    # "resultData":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    #@1f
    .line 4851
    :catchall_0
    move-exception v3

    #@20
    monitor-exit p0

    #@21
    throw v3

    #@22
    .line 4868
    :cond_2
    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@24
    invoke-virtual {v3, p0}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    #@27
    goto :goto_0

    #@28
    .line 4864
    .restart local v1    # "resultCode":I
    .restart local v2    # "resultData":Landroid/content/Intent;
    :catch_0
    move-exception v0

    #@29
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private initWindowDecorActionBar()V
    .locals 3

    #@0
    .prologue
    .line 2139
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    .line 2143
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@7
    .line 2145
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
    .line 2146
    :cond_0
    return-void

    #@1a
    .line 2149
    :cond_1
    new-instance v1, Lcom/android/internal/app/WindowDecorActionBar;

    #@1c
    invoke-direct {v1, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;)V

    #@1f
    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@21
    .line 2150
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@23
    iget-boolean v2, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    #@25
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    #@28
    .line 2152
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
    .line 2153
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
    .line 2138
    return-void
.end method

.method private isTopOfTask()Z
    .locals 3

    #@0
    .prologue
    .line 5620
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isTopOfTask(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 5621
    :catch_0
    move-exception v0

    #@c
    .line 5622
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method private missingDialog(I)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p1, "id"    # I

    #@0
    .prologue
    .line 3484
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
    .line 3485
    const-string/jumbo v2, "shown via Activity#showDialog"

    #@1c
    .line 3484
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

.method private restoreManagedDialogs(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1043
    const-string/jumbo v7, "android:savedDialogs"

    #@4
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@7
    move-result-object v0

    #@8
    .line 1044
    .local v0, "b":Landroid/os/Bundle;
    if-nez v0, :cond_0

    #@a
    .line 1045
    return-void

    #@b
    .line 1048
    :cond_0
    const-string/jumbo v7, "android:savedDialogIds"

    #@e
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    #@11
    move-result-object v4

    #@12
    .line 1049
    .local v4, "ids":[I
    array-length v6, v4

    #@13
    .line 1050
    .local v6, "numDialogs":I
    new-instance v7, Landroid/util/SparseArray;

    #@15
    invoke-direct {v7, v6}, Landroid/util/SparseArray;-><init>(I)V

    #@18
    iput-object v7, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@1a
    .line 1051
    const/4 v3, 0x0

    #@1b
    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_2

    #@1d
    .line 1052
    aget v7, v4, v3

    #@1f
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v1

    #@23
    .line 1053
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
    .line 1054
    .local v2, "dialogState":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    #@31
    .line 1057
    new-instance v5, Landroid/app/Activity$ManagedDialog;

    #@33
    invoke-direct {v5, v10}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$ManagedDialog;)V

    #@36
    .line 1058
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
    .line 1059
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    #@46
    invoke-direct {p0, v1, v2, v7}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    #@49
    move-result-object v7

    #@4a
    iput-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@4c
    .line 1060
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@4e
    if-eqz v7, :cond_1

    #@50
    .line 1061
    iget-object v7, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@52
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@55
    move-result v8

    #@56
    invoke-virtual {v7, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@59
    .line 1062
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
    .line 1063
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@66
    invoke-virtual {v7, v2}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@69
    .line 1051
    .end local v5    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@6b
    goto :goto_0

    #@6c
    .line 1042
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
    .line 1399
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@2
    if-nez v6, :cond_0

    #@4
    .line 1400
    return-void

    #@5
    .line 1403
    :cond_0
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@a
    move-result v5

    #@b
    .line 1404
    .local v5, "numDialogs":I
    if-nez v5, :cond_1

    #@d
    .line 1405
    return-void

    #@e
    .line 1408
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    #@10
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@13
    .line 1410
    .local v0, "dialogState":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@18
    move-result v6

    #@19
    new-array v2, v6, [I

    #@1b
    .line 1413
    .local v2, "ids":[I
    const/4 v1, 0x0

    #@1c
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_3

    #@1e
    .line 1414
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@20
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@23
    move-result v3

    #@24
    .line 1415
    .local v3, "key":I
    aput v3, v2, v1

    #@26
    .line 1416
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@28
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2b
    move-result-object v4

    #@2c
    check-cast v4, Landroid/app/Activity$ManagedDialog;

    #@2e
    .line 1417
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
    .line 1418
    iget-object v6, v4, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    #@3d
    if-eqz v6, :cond_2

    #@3f
    .line 1419
    invoke-static {v3}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    iget-object v7, v4, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    #@45
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@48
    .line 1413
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 1423
    .end local v3    # "key":I
    .end local v4    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_3
    const-string/jumbo v6, "android:savedDialogIds"

    #@4e
    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    #@51
    .line 1424
    const-string/jumbo v6, "android:savedDialogs"

    #@54
    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@57
    .line 1398
    return-void
.end method

.method private static savedDialogArgsKeyFor(I)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # I

    #@0
    .prologue
    .line 1083
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
    .line 1079
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

.method private startIntentSenderForResultInner(Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/app/Activity;Landroid/os/Bundle;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "activity"    # Landroid/app/Activity;
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    #@0
    .prologue
    .line 4127
    const/4 v5, 0x0

    #@1
    .line 4128
    .local v5, "resolvedType":Ljava/lang/String;
    if-eqz p3, :cond_0

    #@3
    .line 4129
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@6
    .line 4130
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@9
    .line 4131
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    #@c
    move-result-object v1

    #@d
    move-object/from16 v0, p3

    #@f
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    .line 4133
    .end local v5    # "resolvedType":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@16
    move-result-object v1

    #@17
    .line 4134
    iget-object v2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@19
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@1c
    move-result-object v2

    #@1d
    .line 4135
    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@1f
    move-object/from16 v0, p6

    #@21
    iget-object v7, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@23
    move-object v3, p1

    #@24
    move-object/from16 v4, p3

    #@26
    move/from16 v8, p2

    #@28
    move/from16 v9, p4

    #@2a
    move/from16 v10, p5

    #@2c
    move-object/from16 v11, p7

    #@2e
    .line 4133
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    #@31
    move-result v13

    #@32
    .line 4137
    .local v13, "result":I
    const/4 v1, -0x6

    #@33
    if-ne v13, v1, :cond_2

    #@35
    .line 4138
    new-instance v1, Landroid/content/IntentSender$SendIntentException;

    #@37
    invoke-direct {v1}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    #@3a
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 4141
    .end local v13    # "result":I
    :catch_0
    move-exception v12

    #@3c
    .line 4143
    :goto_0
    if-ltz p2, :cond_1

    #@3e
    .line 4151
    const/4 v1, 0x1

    #@3f
    iput-boolean v1, p0, Landroid/app/Activity;->mStartedActivity:Z

    #@41
    .line 4125
    :cond_1
    return-void

    #@42
    .line 4140
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


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 2214
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@7
    .line 2215
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    #@a
    .line 2213
    return-void
.end method

.method final attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;)V
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

    #@0
    .prologue
    .line 6175
    invoke-virtual {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    #@3
    .line 6177
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v1, v2}, Landroid/app/FragmentController;->attachHost(Landroid/app/Fragment;)V

    #@9
    .line 6179
    new-instance v1, Lcom/android/internal/policy/PhoneWindow;

    #@b
    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    #@e
    iput-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@10
    .line 6180
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@12
    invoke-virtual {v1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    #@15
    .line 6181
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@17
    invoke-virtual {v1, p0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    #@1a
    .line 6182
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@1c
    invoke-virtual {v1}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p0}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    #@23
    .line 6183
    iget v1, p8, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@25
    if-eqz v1, :cond_0

    #@27
    .line 6184
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@29
    iget v2, p8, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@2b
    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    #@2e
    .line 6186
    :cond_0
    iget v1, p8, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@30
    if-eqz v1, :cond_1

    #@32
    .line 6187
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@34
    iget v2, p8, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@36
    invoke-virtual {v1, v2}, Landroid/view/Window;->setUiOptions(I)V

    #@39
    .line 6189
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3c
    move-result-object v1

    #@3d
    iput-object v1, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    #@3f
    .line 6191
    iput-object p2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@41
    .line 6192
    iput-object p3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@43
    .line 6193
    iput-object p4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@45
    .line 6194
    iput p5, p0, Landroid/app/Activity;->mIdent:I

    #@47
    .line 6195
    iput-object p6, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    #@49
    .line 6196
    iput-object p7, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    #@4b
    .line 6197
    move-object/from16 v0, p14

    #@4d
    iput-object v0, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    #@4f
    .line 6198
    invoke-virtual {p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@52
    move-result-object v1

    #@53
    iput-object v1, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    #@55
    .line 6199
    iput-object p8, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@57
    .line 6200
    iput-object p9, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    #@59
    .line 6201
    move-object/from16 v0, p10

    #@5b
    iput-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@5d
    .line 6202
    move-object/from16 v0, p11

    #@5f
    iput-object v0, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@61
    .line 6203
    move-object/from16 v0, p12

    #@63
    iput-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@65
    .line 6204
    if-eqz p15, :cond_2

    #@67
    .line 6205
    if-eqz p12, :cond_4

    #@69
    .line 6206
    move-object/from16 v0, p12

    #@6b
    iget-object v1, v0, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    #@6d
    iput-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@6f
    .line 6213
    :cond_2
    :goto_0
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@71
    .line 6214
    const-string/jumbo v1, "window"

    #@74
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@77
    move-result-object v1

    #@78
    check-cast v1, Landroid/view/WindowManager;

    #@7a
    .line 6215
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@7c
    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    #@7e
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@81
    move-result-object v5

    #@82
    .line 6216
    iget v2, p8, Landroid/content/pm/ActivityInfo;->flags:I

    #@84
    and-int/lit16 v2, v2, 0x200

    #@86
    if-eqz v2, :cond_5

    #@88
    const/4 v2, 0x1

    #@89
    .line 6213
    :goto_1
    invoke-virtual {v3, v1, v4, v5, v2}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    #@8c
    .line 6217
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@8e
    if-eqz v1, :cond_3

    #@90
    .line 6218
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@92
    iget-object v2, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@94
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@97
    move-result-object v2

    #@98
    invoke-virtual {v1, v2}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    #@9b
    .line 6220
    :cond_3
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@9d
    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    #@a0
    move-result-object v1

    #@a1
    iput-object v1, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    #@a3
    .line 6221
    move-object/from16 v0, p13

    #@a5
    iput-object v0, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    #@a7
    .line 6174
    return-void

    #@a8
    .line 6208
    :cond_4
    new-instance v1, Landroid/app/VoiceInteractor;

    #@aa
    .line 6209
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@ad
    move-result-object v2

    #@ae
    .line 6208
    move-object/from16 v0, p15

    #@b0
    invoke-direct {v1, v0, p0, p0, v2}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    #@b3
    iput-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@b5
    goto :goto_0

    #@b6
    .line 6216
    :cond_5
    const/4 v2, 0x0

    #@b7
    goto :goto_1
.end method

.method public canStartActivityForResult()Z
    .locals 1

    #@0
    .prologue
    .line 4565
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
    .line 3256
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@3
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 3257
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@b
    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    #@e
    .line 3255
    :cond_0
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3195
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@3
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 3196
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@b
    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    #@e
    .line 3194
    :cond_0
    return-void
.end method

.method public convertFromTranslucent()V
    .locals 4

    #@0
    .prologue
    .line 5645
    const/4 v1, 0x0

    #@1
    :try_start_0
    iput-object v1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    #@3
    .line 5646
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
    .line 5647
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
    .line 5643
    :cond_0
    :goto_0
    return-void

    #@1a
    .line 5649
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
    .line 5684
    :try_start_0
    iput-object p1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    #@3
    .line 5686
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
    .line 5685
    iput-boolean v2, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    #@f
    .line 5687
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
    .line 5688
    const/4 v0, 0x1

    #@1a
    .line 5694
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
    .line 5696
    iget-object v2, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    #@24
    invoke-interface {v2, v0}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    #@27
    .line 5698
    :cond_0
    iget-boolean v2, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    #@29
    return v2

    #@2a
    .line 5689
    .end local v0    # "drawComplete":Z
    :catch_0
    move-exception v1

    #@2b
    .line 5691
    .local v1, "e":Landroid/os/RemoteException;
    iput-boolean v5, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    #@2d
    .line 5692
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
    .line 5083
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 5085
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@7
    .line 5087
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@a
    move-result-object v0

    #@b
    .line 5089
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@d
    if-nez v1, :cond_0

    #@f
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@11
    .line 5090
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
    .line 5091
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@1c
    move-result v10

    #@1d
    .line 5088
    const/4 v1, 0x3

    #@1e
    .line 5090
    const/4 v7, 0x0

    #@1f
    const/4 v9, 0x0

    #@20
    move v5, p1

    #@21
    move/from16 v8, p3

    #@23
    .line 5087
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    #@26
    move-result-object v12

    #@27
    .line 5092
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
    .line 5089
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
    .line 5092
    .restart local v12    # "target":Landroid/content/IIntentSender;
    :cond_1
    const/4 v0, 0x0

    #@35
    goto :goto_1

    #@36
    .line 5093
    .end local v12    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v11

    #@37
    .line 5096
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
    .line 3468
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 3469
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    #@7
    move-result-object v1

    #@8
    throw v1

    #@9
    .line 3472
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/app/Activity$ManagedDialog;

    #@11
    .line 3473
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-nez v0, :cond_1

    #@13
    .line 3474
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    #@16
    move-result-object v1

    #@17
    throw v1

    #@18
    .line 3476
    :cond_1
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@1a
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    #@1d
    .line 3467
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
    .line 6426
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@2
    invoke-virtual {v4}, Landroid/app/FragmentController;->noteStateNotSaved()V

    #@5
    .line 6427
    if-nez p1, :cond_1

    #@7
    .line 6428
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    #@a
    .line 6422
    :cond_0
    :goto_0
    return-void

    #@b
    .line 6429
    :cond_1
    const-string/jumbo v4, "@android:requestPermissions:"

    #@e
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_3

    #@14
    .line 6430
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
    .line 6431
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_2

    #@25
    .line 6432
    invoke-direct {p0, p2, p4}, Landroid/app/Activity;->dispatchRequestPermissionsResult(ILandroid/content/Intent;)V

    #@28
    goto :goto_0

    #@29
    .line 6434
    :cond_2
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@2b
    invoke-virtual {v4, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    #@2e
    move-result-object v0

    #@2f
    .line 6435
    .local v0, "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@31
    .line 6436
    invoke-direct {p0, p2, p4, v0}, Landroid/app/Activity;->dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V

    #@34
    goto :goto_0

    #@35
    .line 6439
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
    .line 6440
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@41
    move-result-object v4

    #@42
    .line 6441
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    #@45
    move-result-object v5

    #@46
    .line 6440
    invoke-virtual {v4, v5}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    #@49
    move-result-object v3

    #@4a
    .line 6442
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
    .line 6443
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    #@5d
    move-result-object v4

    #@5e
    if-eqz v4, :cond_4

    #@60
    .line 6444
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    #@67
    move-result v4

    #@68
    .line 6443
    if-eqz v4, :cond_4

    #@6a
    .line 6446
    return-void

    #@6b
    .line 6450
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
    .line 6451
    .restart local v0    # "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@73
    .line 6452
    invoke-virtual {v0, p2, p3, p4}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    #@76
    goto :goto_0
.end method

.method public dispatchEnterAnimationComplete()V
    .locals 1

    #@0
    .prologue
    .line 5852
    invoke-virtual {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    #@3
    .line 5853
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
    .line 5854
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
    .line 5851
    :cond_0
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2800
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    #@3
    .line 2801
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
    .line 2802
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 2804
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2715
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    #@5
    .line 2719
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@8
    move-result v3

    #@9
    const/16 v4, 0x52

    #@b
    if-ne v3, v4, :cond_0

    #@d
    .line 2720
    iget-object v3, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@f
    if-eqz v3, :cond_0

    #@11
    iget-object v3, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@13
    invoke-virtual {v3, p1}, Landroid/app/ActionBar;->onMenuKeyEvent(Landroid/view/KeyEvent;)Z

    #@16
    move-result v3

    #@17
    .line 2719
    if-eqz v3, :cond_0

    #@19
    .line 2721
    return v5

    #@1a
    .line 2724
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@1d
    move-result-object v1

    #@1e
    .line 2725
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_1

    #@24
    .line 2726
    return v5

    #@25
    .line 2728
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@27
    .line 2729
    .local v0, "decor":Landroid/view/View;
    if-nez v0, :cond_2

    #@29
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@2c
    move-result-object v0

    #@2d
    .line 2730
    :cond_2
    if-eqz v0, :cond_3

    #@2f
    .line 2731
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@32
    move-result-object v2

    #@33
    .line 2730
    :cond_3
    invoke-virtual {p1, p0, v2, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    #@36
    move-result v2

    #@37
    return v2
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 2744
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    #@3
    .line 2745
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
    .line 2746
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 2748
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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 2808
    invoke-virtual {p0}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    #@4
    move-result-object v3

    #@5
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    #@c
    .line 2809
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    #@13
    .line 2811
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@1a
    move-result-object v1

    #@1b
    .line 2812
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@1d
    if-ne v3, v4, :cond_2

    #@1f
    .line 2813
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@21
    if-ne v3, v4, :cond_1

    #@23
    const/4 v0, 0x1

    #@24
    .line 2814
    .local v0, "isFullScreen":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    #@27
    .line 2816
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    #@2a
    move-result-object v2

    #@2b
    .line 2817
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2e
    move-result v3

    #@2f
    if-nez v3, :cond_0

    #@31
    .line 2818
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@34
    move-result-object v3

    #@35
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    .line 2821
    :cond_0
    const/4 v3, 0x1

    #@39
    return v3

    #@3a
    .line 2813
    .end local v0    # "isFullScreen":Z
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_1
    const/4 v0, 0x0

    #@3b
    .restart local v0    # "isFullScreen":Z
    goto :goto_0

    #@3c
    .line 2812
    .end local v0    # "isFullScreen":Z
    :cond_2
    const/4 v0, 0x0

    #@3d
    .restart local v0    # "isFullScreen":Z
    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2762
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2763
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    #@9
    .line 2765
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
    .line 2766
    const/4 v0, 0x1

    #@14
    return v0

    #@15
    .line 2768
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
    .line 2782
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    #@3
    .line 2783
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
    .line 2784
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 2786
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
    .line 5560
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    .line 5559
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
    .line 5564
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v1, "Local Activity "

    #@6
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 5565
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
    .line 5566
    const-string/jumbo v1, " State:"

    #@17
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a
    .line 5567
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
    .line 5568
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    const-string/jumbo v1, "mResumed="

    #@34
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37
    .line 5569
    iget-boolean v1, p0, Landroid/app/Activity;->mResumed:Z

    #@39
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@3c
    const-string/jumbo v1, " mStopped="

    #@3f
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42
    .line 5570
    iget-boolean v1, p0, Landroid/app/Activity;->mStopped:Z

    #@44
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@47
    const-string/jumbo v1, " mFinished="

    #@4a
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    .line 5571
    iget-boolean v1, p0, Landroid/app/Activity;->mFinished:Z

    #@4f
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@52
    .line 5572
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55
    const-string/jumbo v1, "mChangingConfigurations="

    #@58
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b
    .line 5573
    iget-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    #@5d
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@60
    .line 5574
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63
    const-string/jumbo v1, "mCurrentConfig="

    #@66
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69
    .line 5575
    iget-object v1, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    #@6b
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@6e
    .line 5577
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@70
    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@73
    .line 5578
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@75
    invoke-virtual {v1}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@7c
    .line 5579
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@7e
    if-eqz v1, :cond_0

    #@80
    .line 5580
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@82
    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/VoiceInteractor;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@85
    .line 5583
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@88
    move-result-object v1

    #@89
    if-eqz v1, :cond_1

    #@8b
    .line 5584
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
    .line 5585
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
    .line 5586
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
    .line 5589
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
    .line 5563
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 2090
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
    .line 4878
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(Z)V

    #@4
    .line 4877
    return-void
.end method

.method public finishActivity(I)V
    .locals 4
    .param p1, "requestCode"    # I

    #@0
    .prologue
    .line 4947
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 4949
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@7
    move-result-object v1

    #@8
    .line 4950
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@a
    iget-object v3, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@c
    .line 4949
    invoke-interface {v1, v2, v3, p1}, Landroid/app/IActivityManager;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 4946
    :goto_0
    return-void

    #@10
    .line 4955
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@12
    invoke-virtual {v1, p0, p1}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    #@15
    goto :goto_0

    #@16
    .line 4951
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
    .line 4969
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 4970
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    iget-object v3, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@8
    .line 4969
    invoke-interface {v1, v2, v3, p2}, Landroid/app/IActivityManager;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 4967
    :goto_0
    return-void

    #@c
    .line 4971
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
    .line 4896
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4897
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "Can not be called from an embedded activity"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 4899
    :cond_0
    iget v1, p0, Landroid/app/Activity;->mResultCode:I

    #@f
    if-nez v1, :cond_1

    #@11
    iget-object v1, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    #@13
    if-eqz v1, :cond_2

    #@15
    .line 4900
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    #@17
    const-string/jumbo v2, "Can not be called to deliver a result"

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 4903
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
    .line 4904
    const/4 v1, 0x1

    #@2b
    iput-boolean v1, p0, Landroid/app/Activity;->mFinished:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 4895
    :cond_3
    :goto_0
    return-void

    #@2e
    .line 4906
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
    .line 4932
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@2
    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->startExitBackTransition(Landroid/app/Activity;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 4933
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    #@b
    .line 4931
    :cond_0
    return-void
.end method

.method public finishAndRemoveTask()V
    .locals 1

    #@0
    .prologue
    .line 4981
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(Z)V

    #@4
    .line 4980
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 0
    .param p1, "child"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 4921
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    #@3
    .line 4920
    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    #@0
    .prologue
    .line 2100
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    #@3
    .line 2101
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@5
    return-object v0
.end method

.method getActivityOptions()Landroid/app/ActivityOptions;
    .locals 3

    #@0
    .prologue
    .line 5730
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
    .line 5731
    :catch_0
    move-exception v0

    #@c
    .line 5733
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public final getActivityToken()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 6226
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
    .line 821
    iget-object v0, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    #@2
    return-object v0
.end method

.method public getCallingActivity()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 4756
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
    .line 4757
    :catch_0
    move-exception v0

    #@c
    .line 4758
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 4733
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
    .line 4734
    :catch_0
    move-exception v0

    #@c
    .line 4735
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public getChangingConfigurations()I
    .locals 1

    #@0
    .prologue
    .line 1756
    iget v0, p0, Landroid/app/Activity;->mConfigChangeFlags:I

    #@2
    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 5222
    iget-object v0, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    #@0
    .prologue
    .line 2250
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
    .line 2228
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
    .line 869
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
    .line 1917
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
    .line 802
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
    .line 1862
    iget-object v1, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1863
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@7
    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    #@9
    .line 1862
    :cond_0
    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1783
    iget-object v1, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1784
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@7
    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    #@9
    .line 1783
    :cond_0
    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    #@0
    .prologue
    .line 3691
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
    .line 855
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
    .line 5205
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 5206
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    #@6
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 5207
    .local v0, "cls":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@d
    move-result v1

    #@e
    .line 5208
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
    .line 5210
    :cond_0
    return-object v0

    #@1b
    .line 5209
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v3

    #@1f
    const/16 v4, 0x2e

    #@21
    if-ne v3, v4, :cond_0

    #@23
    .line 5212
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
    .line 5497
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
    .line 3700
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3701
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    #@7
    .line 3702
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 3703
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
    .line 3708
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    #@1a
    return-object v0

    #@1b
    .line 3705
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
    .line 831
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
    .line 6083
    iget-object v6, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@3
    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@5
    .line 6084
    .local v4, "parentName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v6

    #@9
    if-eqz v6, :cond_0

    #@b
    .line 6085
    return-object v9

    #@c
    .line 6089
    :cond_0
    new-instance v5, Landroid/content/ComponentName;

    #@e
    invoke-direct {v5, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@11
    .line 6091
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
    .line 6092
    .local v2, "parentInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@1c
    .line 6093
    .local v1, "parentActivity":Ljava/lang/String;
    if-nez v1, :cond_1

    #@1e
    .line 6094
    invoke-static {v5}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@21
    move-result-object v3

    #@22
    .line 6096
    .local v3, "parentIntent":Landroid/content/Intent;
    :goto_0
    return-object v3

    #@23
    .line 6095
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
    .restart local v3    # "parentIntent":Landroid/content/Intent;
    goto :goto_0

    #@2d
    .line 6097
    .end local v1    # "parentActivity":Ljava/lang/String;
    .end local v2    # "parentInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "parentIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    #@2e
    .line 6098
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
    .line 6099
    const-string/jumbo v8, "\' in manifest"

    #@44
    .line 6098
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
    .line 6100
    return-object v9
.end method

.method public getPreferences(I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 5239
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
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4685
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@4
    move-result-object v0

    #@5
    .line 4686
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.REFERRER"

    #@8
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/net/Uri;

    #@e
    .line 4687
    .local v1, "referrer":Landroid/net/Uri;
    if-eqz v1, :cond_0

    #@10
    .line 4688
    return-object v1

    #@11
    .line 4690
    :cond_0
    const-string/jumbo v3, "android.intent.extra.REFERRER_NAME"

    #@14
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 4691
    .local v2, "referrerName":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@1a
    .line 4692
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@1d
    move-result-object v3

    #@1e
    return-object v3

    #@1f
    .line 4694
    :cond_1
    iget-object v3, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    #@21
    if-eqz v3, :cond_2

    #@23
    .line 4695
    new-instance v3, Landroid/net/Uri$Builder;

    #@25
    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    #@28
    const-string/jumbo v4, "android-app"

    #@2b
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@2e
    move-result-object v3

    #@2f
    iget-object v4, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    #@31
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@38
    move-result-object v3

    #@39
    return-object v3

    #@3a
    .line 4697
    :cond_2
    return-object v4
.end method

.method public getRequestedOrientation()I
    .locals 3

    #@0
    .prologue
    .line 5133
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 5135
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@7
    move-result-object v1

    #@8
    .line 5136
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@a
    .line 5135
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getRequestedOrientation(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 5141
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@11
    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 5137
    :catch_0
    move-exception v0

    #@17
    .line 5143
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    #@18
    return v1
.end method

.method public final getSearchEvent()Landroid/view/SearchEvent;
    .locals 1

    #@0
    .prologue
    .line 3572
    iget-object v0, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    #@2
    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5252
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 5253
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    .line 5254
    const-string/jumbo v1, "System services not available to Activities before onCreate()"

    #@b
    .line 5253
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 5257
    :cond_0
    const-string/jumbo v0, "window"

    #@12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 5258
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    #@1a
    return-object v0

    #@1b
    .line 5259
    :cond_1
    const-string/jumbo v0, "search"

    #@1e
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 5260
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    #@27
    .line 5261
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    #@29
    return-object v0

    #@2a
    .line 5263
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
    .line 5154
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 5155
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    const/4 v3, 0x0

    #@7
    .line 5154
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 5156
    :catch_0
    move-exception v0

    #@d
    .line 5157
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    #@e
    return v1
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 5308
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public final getTitleColor()I
    .locals 1

    #@0
    .prologue
    .line 5312
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    #@2
    return v0
.end method

.method public getVoiceInteractor()Landroid/app/VoiceInteractor;
    .locals 1

    #@0
    .prologue
    .line 1262
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@2
    return-object v0
.end method

.method public final getVolumeControlStream()I
    .locals 1

    #@0
    .prologue
    .line 5464
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
    .line 848
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@2
    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    #@0
    .prologue
    .line 836
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    #@2
    return-object v0
.end method

.method public hasWindowFocus()Z
    .locals 3

    #@0
    .prologue
    .line 2686
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v1

    #@4
    .line 2687
    .local v1, "w":Landroid/view/Window;
    if-eqz v1, :cond_0

    #@6
    .line 2688
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    .line 2689
    .local v0, "d":Landroid/view/View;
    if-eqz v0, :cond_0

    #@c
    .line 2690
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    #@f
    move-result v2

    #@10
    return v2

    #@11
    .line 2693
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
    .line 2971
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@3
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2972
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
    .line 2970
    :cond_0
    :goto_0
    return-void

    #@16
    .line 2973
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
    .line 5817
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
    .line 5818
    :catch_0
    move-exception v0

    #@c
    .line 5820
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public isChangingConfigurations()Z
    .locals 1

    #@0
    .prologue
    .line 4824
    iget-boolean v0, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    #@2
    return v0
.end method

.method public final isChild()Z
    .locals 1

    #@0
    .prologue
    .line 826
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
    .line 4811
    iget-boolean v0, p0, Landroid/app/Activity;->mDestroyed:Z

    #@2
    return v0
.end method

.method public isFinishing()Z
    .locals 1

    #@0
    .prologue
    .line 4803
    iget-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    #@2
    return v0
.end method

.method public isImmersive()Z
    .locals 3

    #@0
    .prologue
    .line 5605
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
    .line 5606
    :catch_0
    move-exception v0

    #@c
    .line 5607
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public final isResumed()Z
    .locals 1

    #@0
    .prologue
    .line 6418
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
    .line 5169
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@5
    move-result-object v3

    #@6
    .line 5170
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@8
    const/4 v5, 0x1

    #@9
    .line 5169
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
    .line 5171
    :catch_0
    move-exception v0

    #@13
    .line 5172
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public isVoiceInteraction()Z
    .locals 1

    #@0
    .prologue
    .line 1238
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
    .line 1250
    :try_start_0
    iget-object v2, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 1251
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
    .line 1250
    :cond_0
    return v1

    #@10
    .line 1252
    :catch_0
    move-exception v0

    #@11
    .line 1254
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method makeVisible()V
    .locals 3

    #@0
    .prologue
    .line 4783
    iget-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 4784
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    #@7
    move-result-object v0

    #@8
    .line 4785
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
    .line 4786
    const/4 v1, 0x1

    #@16
    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    #@18
    .line 4788
    .end local v0    # "wm":Landroid/view/ViewManager;
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@1a
    const/4 v2, 0x0

    #@1b
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    #@1e
    .line 4782
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
    .line 1961
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
    .line 1962
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    #@f
    .line 1963
    invoke-virtual {p0, v6}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    #@12
    .line 1965
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
    .line 2001
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
    .line 2002
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    #@f
    .line 2003
    invoke-virtual {p0, v6}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    #@12
    .line 2005
    :cond_0
    return-object v6
.end method

.method public moveTaskToBack(Z)Z
    .locals 3
    .param p1, "nonRoot"    # Z

    #@0
    .prologue
    .line 5189
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 5190
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    .line 5189
    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 5191
    :catch_0
    move-exception v0

    #@c
    .line 5194
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
    .line 6023
    iget-object v5, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@3
    if-nez v5, :cond_3

    #@5
    .line 6024
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@8
    move-result-object v0

    #@9
    .line 6025
    .local v0, "destInfo":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    #@b
    .line 6026
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {p1, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    #@12
    move-result-object v0

    #@13
    .line 6027
    if-nez v0, :cond_0

    #@15
    .line 6028
    return v7

    #@16
    .line 6030
    :cond_0
    new-instance v4, Landroid/content/Intent;

    #@18
    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@1b
    .line 6031
    .end local p1    # "upIntent":Landroid/content/Intent;
    .local v4, "upIntent":Landroid/content/Intent;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1e
    move-object p1, v4

    #@1f
    .line 6035
    .end local v4    # "upIntent":Landroid/content/Intent;
    .restart local p1    # "upIntent":Landroid/content/Intent;
    :cond_1
    monitor-enter p0

    #@20
    .line 6036
    :try_start_0
    iget v2, p0, Landroid/app/Activity;->mResultCode:I

    #@22
    .line 6037
    .local v2, "resultCode":I
    iget-object v3, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .local v3, "resultData":Landroid/content/Intent;
    monitor-exit p0

    #@25
    .line 6039
    if-eqz v3, :cond_2

    #@27
    .line 6040
    invoke-virtual {v3}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@2a
    .line 6043
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@2d
    .line 6044
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
    .line 6035
    .end local v2    # "resultCode":I
    .end local v3    # "resultData":Landroid/content/Intent;
    :catchall_0
    move-exception v5

    #@39
    monitor-exit p0

    #@3a
    throw v5

    #@3b
    .line 6046
    .restart local v2    # "resultCode":I
    .restart local v3    # "resultData":Landroid/content/Intent;
    :catch_0
    move-exception v1

    #@3c
    .line 6047
    .local v1, "e":Landroid/os/RemoteException;
    return v7

    #@3d
    .line 6050
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
    .line 6067
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
    .line 5964
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    .line 5953
    return-void
.end method

.method public onActivityReenter(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 5051
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 5030
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 7
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 3714
    iget-object v4, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@4
    if-nez v4, :cond_1

    #@6
    .line 3715
    invoke-super {p0, p1, p2, p3}, Landroid/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    #@9
    .line 3726
    :goto_0
    if-eqz p1, :cond_0

    #@b
    .line 3727
    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    #@d
    invoke-virtual {p1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@10
    move-result-object v0

    #@11
    .line 3728
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0xe3

    #@13
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    #@16
    move-result v1

    #@17
    .line 3729
    .local v1, "colorPrimary":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 3730
    if-eqz v1, :cond_0

    #@1c
    .line 3731
    new-instance v3, Landroid/app/ActivityManager$TaskDescription;

    #@1e
    invoke-direct {v3, v5, v5, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    #@21
    .line 3733
    .local v3, "v":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    #@24
    .line 3713
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "colorPrimary":I
    .end local v3    # "v":Landroid/app/ActivityManager$TaskDescription;
    :cond_0
    return-void

    #@25
    .line 3718
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@27
    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {p1, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 3722
    :goto_1
    invoke-virtual {p1, p2, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    #@31
    goto :goto_0

    #@32
    .line 3719
    :catch_0
    move-exception v2

    #@33
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 1925
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    #@0
    .prologue
    .line 2664
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    #@0
    .prologue
    .line 2499
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
    .line 2500
    return-void

    #@d
    .line 2503
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
    .line 2504
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    #@1c
    .line 2498
    :cond_1
    return-void
.end method

.method public onBackgroundVisibleBehindChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 5837
    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "childActivity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 5330
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1725
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@3
    .line 1727
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@5
    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    #@8
    .line 1729
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1731
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@e
    invoke-virtual {v0, p1}, Landroid/view/Window;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@11
    .line 1734
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 1737
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@17
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@1a
    .line 1723
    :cond_1
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    #@0
    .prologue
    .line 2624
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 3279
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3280
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@6
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 3282
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
    .line 3293
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3294
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@6
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    #@9
    .line 3292
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
    .line 902
    iget-object v2, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 903
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@8
    iget-object v3, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@a
    iget-object v3, v3, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v2, v3}, Landroid/app/FragmentController;->restoreLoaderNonConfig(Landroid/util/ArrayMap;)V

    #@f
    .line 905
    :cond_0
    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@11
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 906
    iget-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@17
    if-nez v2, :cond_5

    #@19
    .line 907
    iput-boolean v4, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    #@1b
    .line 912
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    #@1d
    .line 913
    const-string/jumbo v2, "android:fragments"

    #@20
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@23
    move-result-object v0

    #@24
    .line 914
    .local v0, "p":Landroid/os/Parcelable;
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@26
    iget-object v3, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@28
    if-eqz v3, :cond_2

    #@2a
    .line 915
    iget-object v1, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@2c
    iget-object v1, v1, Landroid/app/Activity$NonConfigurationInstances;->fragments:Ljava/util/List;

    #@2e
    .line 914
    :cond_2
    invoke-virtual {v2, v0, v1}, Landroid/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V

    #@31
    .line 917
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_3
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@33
    invoke-virtual {v1}, Landroid/app/FragmentController;->dispatchCreate()V

    #@36
    .line 918
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    #@3d
    .line 919
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@3f
    if-eqz v1, :cond_4

    #@41
    .line 920
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@43
    invoke-virtual {v1, p0}, Landroid/app/VoiceInteractor;->attachActivity(Landroid/app/Activity;)V

    #@46
    .line 922
    :cond_4
    iput-boolean v4, p0, Landroid/app/Activity;->mCalled:Z

    #@48
    .line 900
    return-void

    #@49
    .line 909
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
    .line 947
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 946
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    #@0
    .prologue
    .line 3213
    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1534
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
    .line 3303
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
    .line 3342
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
    .line 3148
    invoke-virtual {p1, p0}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/app/TaskStackBuilder;

    #@3
    .line 3147
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 3006
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3007
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@6
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 3009
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
    .line 2845
    if-nez p1, :cond_0

    #@3
    .line 2846
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    #@6
    move-result v0

    #@7
    .line 2847
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
    .line 2848
    return v0

    #@13
    .line 2850
    .end local v0    # "show":Z
    :cond_0
    return v1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    #@0
    .prologue
    .line 2833
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
    .line 1512
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
    .line 5542
    const-string/jumbo v0, "fragment"

    #@3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 5543
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 5546
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
    .line 5528
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
    .line 1650
    const/4 v5, 0x1

    #@2
    iput-boolean v5, p0, Landroid/app/Activity;->mCalled:Z

    #@4
    .line 1653
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@6
    if-eqz v5, :cond_2

    #@8
    .line 1654
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@d
    move-result v4

    #@e
    .line 1655
    .local v4, "numDialogs":I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    #@11
    .line 1656
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/app/Activity$ManagedDialog;

    #@19
    .line 1657
    .local v2, "md":Landroid/app/Activity$ManagedDialog;
    iget-object v5, v2, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@1b
    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_0

    #@21
    .line 1658
    iget-object v5, v2, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@23
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    #@26
    .line 1655
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1661
    .end local v2    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_1
    iput-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@2b
    .line 1665
    .end local v1    # "i":I
    .end local v4    # "numDialogs":I
    :cond_2
    iget-object v6, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@2d
    monitor-enter v6

    #@2e
    .line 1666
    :try_start_0
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v3

    #@34
    .line 1667
    .local v3, "numCursors":I
    const/4 v1, 0x0

    #@35
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    #@37
    .line 1668
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Landroid/app/Activity$ManagedCursor;

    #@3f
    .line 1669
    .local v0, "c":Landroid/app/Activity$ManagedCursor;
    if-eqz v0, :cond_3

    #@41
    .line 1670
    invoke-static {v0}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    #@44
    move-result-object v5

    #@45
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    #@48
    .line 1667
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 1673
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
    .line 1677
    iget-object v5, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    #@53
    if-eqz v5, :cond_5

    #@55
    .line 1678
    iget-object v5, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    #@57
    invoke-virtual {v5}, Landroid/app/SearchManager;->stopSearch()V

    #@5a
    .line 1681
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v5, p0}, Landroid/app/Application;->dispatchActivityDestroyed(Landroid/app/Activity;)V

    #@61
    .line 1648
    return-void

    #@62
    .line 1665
    .end local v1    # "i":I
    .end local v3    # "numCursors":I
    :catchall_0
    move-exception v5

    #@63
    monitor-exit v6

    #@64
    throw v5
.end method

.method public onDetachedFromWindow()V
    .locals 0

    #@0
    .prologue
    .line 2674
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 0

    #@0
    .prologue
    .line 5845
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2587
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
    .line 2388
    const/4 v5, 0x4

    #@5
    if-ne p1, v5, :cond_1

    #@7
    .line 2389
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@a
    move-result-object v5

    #@b
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@d
    .line 2390
    const/4 v6, 0x5

    #@e
    .line 2389
    if-lt v5, v6, :cond_0

    #@10
    .line 2391
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    #@13
    .line 2395
    :goto_0
    return v7

    #@14
    .line 2393
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    #@17
    goto :goto_0

    #@18
    .line 2398
    :cond_1
    iget v5, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    #@1a
    if-nez v5, :cond_2

    #@1c
    .line 2399
    return v8

    #@1d
    .line 2400
    :cond_2
    iget v5, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    #@1f
    if-ne v5, v6, :cond_4

    #@21
    .line 2401
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@24
    move-result-object v4

    #@25
    .line 2402
    .local v4, "w":Landroid/view/Window;
    invoke-virtual {v4, v8}, Landroid/view/Window;->hasFeature(I)Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_3

    #@2b
    .line 2403
    invoke-virtual {v4, v8, p1, p2, v6}, Landroid/view/Window;->performPanelShortcut(IILandroid/view/KeyEvent;I)Z

    #@2e
    move-result v5

    #@2f
    .line 2402
    if-eqz v5, :cond_3

    #@31
    .line 2405
    return v7

    #@32
    .line 2407
    :cond_3
    return v8

    #@33
    .line 2410
    .end local v4    # "w":Landroid/view/Window;
    :cond_4
    const/4 v0, 0x0

    #@34
    .line 2412
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
    .line 2413
    :cond_5
    const/4 v0, 0x1

    #@41
    .line 2414
    const/4 v1, 0x0

    #@42
    .line 2439
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    #@44
    .line 2440
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #@46
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    #@49
    .line 2441
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #@4b
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    #@4e
    .line 2442
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #@50
    invoke-static {v5, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@53
    .line 2444
    :cond_7
    return v1

    #@54
    .line 2416
    :cond_8
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    #@57
    move-result-object v5

    #@58
    .line 2417
    iget-object v6, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #@5a
    .line 2416
    invoke-virtual {v5, v9, v6, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@5d
    move-result v1

    #@5e
    .line 2418
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
    .line 2421
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #@6a
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    .line 2422
    .local v3, "str":Ljava/lang/String;
    const/4 v0, 0x1

    #@6f
    .line 2424
    iget v5, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    #@71
    packed-switch v5, :pswitch_data_0

    #@74
    :pswitch_0
    goto :goto_1

    #@75
    .line 2426
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
    .line 2427
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    #@97
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@9a
    .line 2428
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    #@9d
    goto :goto_1

    #@9e
    .line 2431
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0, v3, v8, v9, v8}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    #@a1
    goto :goto_1

    #@a2
    .line 2434
    :pswitch_3
    invoke-virtual {p0, v3, v8, v9, v7}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    #@a5
    goto :goto_1

    #@a6
    .line 2424
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
    .line 2454
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
    .line 2490
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
    .line 2520
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    #@3
    move-result-object v0

    #@4
    .line 2521
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
    .line 2473
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@3
    move-result-object v0

    #@4
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@6
    .line 2474
    const/4 v1, 0x5

    #@7
    .line 2473
    if-lt v0, v1, :cond_0

    #@9
    .line 2475
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
    .line 2476
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 2481
    :cond_0
    const/4 v0, 0x0

    #@19
    return v0

    #@1a
    .line 2477
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    #@1d
    .line 2478
    const/4 v0, 0x1

    #@1e
    return v0
.end method

.method public onLowMemory()V
    .locals 1

    #@0
    .prologue
    .line 1902
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@3
    .line 1903
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@5
    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchLowMemory()V

    #@8
    .line 1900
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
    .line 2898
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    .line 2900
    .local v0, "titleCondensed":Ljava/lang/CharSequence;
    sparse-switch p1, :sswitch_data_0

    #@d
    .line 2934
    return v3

    #@e
    .line 2905
    :sswitch_0
    if-eqz v0, :cond_0

    #@10
    .line 2906
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
    .line 2908
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 2909
    return v4

    #@28
    .line 2911
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@2a
    invoke-virtual {v1, p2}, Landroid/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 2912
    return v4

    #@31
    .line 2914
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
    .line 2915
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
    .line 2916
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@4a
    if-nez v1, :cond_3

    #@4c
    .line 2917
    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    #@4f
    move-result v1

    #@50
    return v1

    #@51
    .line 2919
    :cond_3
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@53
    invoke-virtual {v1, p0}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    #@56
    move-result v1

    #@57
    return v1

    #@58
    .line 2922
    :cond_4
    return v3

    #@59
    .line 2925
    :sswitch_1
    if-eqz v0, :cond_5

    #@5b
    .line 2926
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
    .line 2928
    :cond_5
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    #@6f
    move-result v1

    #@70
    if-eqz v1, :cond_6

    #@72
    .line 2929
    return v4

    #@73
    .line 2931
    :cond_6
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@75
    invoke-virtual {v1, p2}, Landroid/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    #@78
    move-result v1

    #@79
    return v1

    #@7a
    .line 2900
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
    .line 2877
    const/16 v0, 0x8

    #@3
    if-ne p1, v0, :cond_0

    #@5
    .line 2878
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    #@8
    .line 2879
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 2880
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@e
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    #@11
    .line 2885
    :cond_0
    :goto_0
    return v2

    #@12
    .line 2882
    :cond_1
    const-string/jumbo v0, "Activity"

    #@15
    const-string/jumbo v1, "Tried to open action bar menu with no action bar"

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    goto :goto_0
.end method

.method public onNavigateUp()Z
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3088
    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    #@4
    move-result-object v1

    #@5
    .line 3089
    .local v1, "upIntent":Landroid/content/Intent;
    if-eqz v1, :cond_4

    #@7
    .line 3090
    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@9
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@b
    if-nez v2, :cond_0

    #@d
    .line 3094
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    #@10
    .line 3113
    :goto_0
    const/4 v2, 0x1

    #@11
    return v2

    #@12
    .line 3095
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_3

    #@18
    .line 3096
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    #@1b
    move-result-object v0

    #@1c
    .line 3097
    .local v0, "b":Landroid/app/TaskStackBuilder;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    #@1f
    .line 3098
    invoke-virtual {p0, v0}, Landroid/app/Activity;->onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    #@22
    .line 3099
    invoke-virtual {v0}, Landroid/app/TaskStackBuilder;->startActivities()V

    #@25
    .line 3103
    iget v2, p0, Landroid/app/Activity;->mResultCode:I

    #@27
    if-nez v2, :cond_1

    #@29
    iget-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    #@2b
    if-eqz v2, :cond_2

    #@2d
    .line 3105
    :cond_1
    const-string/jumbo v2, "Activity"

    #@30
    const-string/jumbo v3, "onNavigateUp only finishing topmost activity to return a result"

    #@33
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 3106
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    #@39
    goto :goto_0

    #@3a
    .line 3108
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    #@3d
    goto :goto_0

    #@3e
    .line 3111
    .end local v0    # "b":Landroid/app/TaskStackBuilder;
    :cond_3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    #@41
    goto :goto_0

    #@42
    .line 3115
    :cond_4
    return v2
.end method

.method public onNavigateUpFromChild(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 3125
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
    .line 5714
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@2
    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    #@5
    .line 5715
    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    #@7
    if-nez v0, :cond_0

    #@9
    .line 5716
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@b
    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    #@e
    .line 5713
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1286
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 3056
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3057
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@6
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 3059
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
    .line 3174
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3175
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@6
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    #@9
    .line 3173
    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 2948
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 2947
    :goto_0
    return-void

    #@4
    .line 2950
    :sswitch_0
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@6
    invoke-virtual {v0, p2}, Landroid/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    #@9
    .line 2951
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    #@c
    goto :goto_0

    #@d
    .line 2955
    :sswitch_1
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    #@10
    goto :goto_0

    #@11
    .line 2959
    :sswitch_2
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    #@14
    .line 2960
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@16
    const/4 v1, 0x0

    #@17
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    #@1a
    goto :goto_0

    #@1b
    .line 2948
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
    .line 1469
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPaused(Landroid/app/Activity;)V

    #@7
    .line 1470
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@a
    .line 1467
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1103
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1104
    iput-boolean v2, p0, Landroid/app/Activity;->mTitleReady:Z

    #@9
    .line 1105
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
    .line 1107
    :cond_0
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    #@16
    .line 1102
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 1123
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    #@3
    .line 1122
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1226
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@4
    move-result-object v0

    #@5
    .line 1227
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/view/Window;->makeActive()V

    #@a
    .line 1228
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@c
    if-eqz v1, :cond_1

    #@e
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@10
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    #@13
    .line 1229
    :cond_1
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    #@15
    .line 1225
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
    .line 3351
    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    #@3
    .line 3350
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
    .line 3380
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    #@3
    .line 3379
    return-void
.end method

.method public onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/TaskStackBuilder;

    #@0
    .prologue
    .line 3163
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 3031
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3032
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@6
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 3034
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
    .line 2863
    if-nez p1, :cond_0

    #@2
    if-eqz p3, :cond_0

    #@4
    .line 2864
    invoke-virtual {p0, p3}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    #@7
    move-result v0

    #@8
    .line 2865
    .local v0, "goforit":Z
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@a
    invoke-virtual {v1, p3}, Landroid/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    #@d
    move-result v1

    #@e
    or-int/2addr v0, v1

    #@f
    .line 2866
    return v0

    #@10
    .line 2868
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
    .line 1570
    return-void
.end method

.method public onProvideAssistData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1548
    return-void
.end method

.method public onProvideReferrer()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 4707
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
    .line 3836
    return-void
.end method

.method protected onRestart()V
    .locals 1

    #@0
    .prologue
    .line 1171
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@3
    .line 1170
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1001
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1002
    const-string/jumbo v1, "android:viewHierarchyState"

    #@7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@a
    move-result-object v0

    #@b
    .line 1003
    .local v0, "windowState":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@d
    .line 1004
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@f
    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    #@12
    .line 1000
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
    .line 1032
    if-eqz p1, :cond_0

    #@2
    .line 1033
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@5
    .line 1031
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    #@0
    .prologue
    .line 1207
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityResumed(Landroid/app/Activity;)V

    #@7
    .line 1208
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@9
    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->onResume()V

    #@c
    .line 1209
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@f
    .line 1205
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
    .line 1875
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1840
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1366
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
    .line 1367
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@e
    invoke-virtual {v1}, Landroid/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    #@11
    move-result-object v0

    #@12
    .line 1368
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    #@14
    .line 1369
    const-string/jumbo v1, "android:fragments"

    #@17
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@1a
    .line 1371
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    #@21
    .line 1365
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 1390
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 1389
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
    .line 3555
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
    .line 3556
    const/4 v1, 0x4

    #@f
    .line 3555
    if-eq v0, v1, :cond_0

    #@11
    .line 3557
    invoke-virtual {p0, v3, v2, v3, v2}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    #@14
    .line 3558
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 3560
    :cond_0
    return v2
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 2
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    #@0
    .prologue
    .line 3545
    iput-object p1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    #@2
    .line 3546
    invoke-virtual {p0}, Landroid/app/Activity;->onSearchRequested()Z

    #@5
    move-result v0

    #@6
    .line 3547
    .local v0, "result":Z
    const/4 v1, 0x0

    #@7
    iput-object v1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    #@9
    .line 3548
    return v0
.end method

.method protected onStart()V
    .locals 1

    #@0
    .prologue
    .line 1142
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@3
    .line 1144
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@5
    invoke-virtual {v0}, Landroid/app/FragmentController;->doLoaderStart()V

    #@8
    .line 1146
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityStarted(Landroid/app/Activity;)V

    #@f
    .line 1140
    return-void
.end method

.method public onStateNotSaved()V
    .locals 0

    #@0
    .prologue
    .line 1181
    return-void
.end method

.method protected onStop()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1612
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
    .line 1613
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@d
    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->onStop()V

    #@10
    .line 1614
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityStopped(Landroid/app/Activity;)V

    #@17
    .line 1615
    iput-object v2, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    #@19
    .line 1616
    const/4 v0, 0x1

    #@1a
    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@1c
    .line 1610
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    #@0
    .prologue
    .line 5316
    iget-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 5317
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@7
    move-result-object v0

    #@8
    .line 5318
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    #@a
    .line 5319
    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    #@d
    .line 5320
    if-eqz p2, :cond_0

    #@f
    .line 5321
    invoke-virtual {v0, p2}, Landroid/view/Window;->setTitleColor(I)V

    #@12
    .line 5324
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 5325
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@18
    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    #@1b
    .line 5315
    .end local v0    # "win":Landroid/view/Window;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2535
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0, p0, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2536
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    #@b
    .line 2537
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 2540
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
    .line 2558
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
    .line 5703
    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 5704
    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    #@7
    invoke-interface {v0, p1}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    #@a
    .line 5705
    iput-object v1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    #@c
    .line 5707
    :cond_0
    iget-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 5708
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
    .line 5702
    :cond_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 1908
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@3
    .line 1909
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@5
    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchTrimMemory(I)V

    #@8
    .line 1906
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    #@0
    .prologue
    .line 2609
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    #@0
    .prologue
    .line 1488
    return-void
.end method

.method public onVisibleBehindCanceled()V
    .locals 1

    #@0
    .prologue
    .line 5799
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@3
    .line 5798
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 2616
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2617
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@6
    .line 2618
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@b
    move-result-object v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 2619
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    #@11
    move-result-object v1

    #@12
    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@15
    .line 2612
    .end local v0    # "decor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onWindowDismissed()V
    .locals 0

    #@0
    .prologue
    .line 2702
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    #@3
    .line 2701
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    #@0
    .prologue
    .line 2654
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5922
    iget v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 5923
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    #@8
    .line 5924
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 5925
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@e
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 5928
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
    .line 5938
    :try_start_0
    iput p2, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    #@3
    .line 5939
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    .line 5941
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    #@9
    .line 5939
    return-object v0

    #@a
    .line 5940
    :catchall_0
    move-exception v0

    #@b
    .line 5941
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    #@d
    .line 5940
    throw v0
.end method

.method public openContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 3249
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    #@3
    .line 3248
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
    .line 3184
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@4
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 3185
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
    .line 3183
    :cond_0
    :goto_0
    return-void

    #@17
    .line 3186
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
    .line 4613
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 4614
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@6
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    .line 4613
    invoke-interface {v1, v2, v3, p1, p2}, Landroid/app/IActivityManager;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 4611
    :goto_0
    return-void

    #@e
    .line 4615
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
    .line 6237
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 6238
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@5
    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->readState(Landroid/os/Bundle;)V

    #@8
    .line 6239
    invoke-virtual {p0}, Landroid/app/Activity;->performCreateCommon()V

    #@b
    .line 6236
    return-void
.end method

.method final performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 6243
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    #@3
    .line 6244
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@5
    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->readState(Landroid/os/Bundle;)V

    #@8
    .line 6245
    invoke-virtual {p0}, Landroid/app/Activity;->performCreateCommon()V

    #@b
    .line 6242
    return-void
.end method

.method final performCreateCommon()V
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6230
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@3
    invoke-virtual {v1}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    #@6
    move-result-object v1

    #@7
    .line 6231
    const/16 v2, 0xa

    #@9
    .line 6230
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    :goto_0
    iput-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    #@11
    .line 6232
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@13
    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchActivityCreated()V

    #@16
    .line 6233
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@18
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    #@1f
    .line 6229
    return-void

    #@20
    .line 6230
    :cond_0
    const/4 v0, 0x1

    #@21
    goto :goto_0
.end method

.method final performDestroy()V
    .locals 1

    #@0
    .prologue
    .line 6404
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Activity;->mDestroyed:Z

    #@3
    .line 6405
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@5
    invoke-virtual {v0}, Landroid/view/Window;->destroy()V

    #@8
    .line 6406
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@a
    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchDestroy()V

    #@d
    .line 6407
    invoke-virtual {p0}, Landroid/app/Activity;->onDestroy()V

    #@10
    .line 6408
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@12
    invoke-virtual {v0}, Landroid/app/FragmentController;->doLoaderDestroy()V

    #@15
    .line 6409
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 6410
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@1b
    invoke-virtual {v0}, Landroid/app/VoiceInteractor;->detachActivity()V

    #@1e
    .line 6403
    :cond_0
    return-void
.end method

.method final performPause()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6345
    iput-boolean v2, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    #@3
    .line 6346
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@5
    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchPause()V

    #@8
    .line 6347
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    #@a
    .line 6348
    invoke-virtual {p0}, Landroid/app/Activity;->onPause()V

    #@d
    .line 6349
    iput-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    #@f
    .line 6350
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
    .line 6351
    const/16 v1, 0x9

    #@1b
    .line 6350
    if-lt v0, v1, :cond_0

    #@1d
    .line 6352
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@1f
    .line 6353
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
    .line 6354
    const-string/jumbo v2, " did not call through to super.onPause()"

    #@38
    .line 6353
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 6352
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0

    #@44
    .line 6356
    :cond_0
    iput-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    #@46
    .line 6344
    return-void
.end method

.method final performRestart()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 6265
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@3
    invoke-virtual {v3}, Landroid/app/FragmentController;->noteStateNotSaved()V

    #@6
    .line 6267
    iget-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    #@8
    if-eqz v3, :cond_6

    #@a
    .line 6268
    iput-boolean v6, p0, Landroid/app/Activity;->mStopped:Z

    #@c
    .line 6269
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@e
    if-eqz v3, :cond_0

    #@10
    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@12
    if-nez v3, :cond_0

    #@14
    .line 6270
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@17
    move-result-object v3

    #@18
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@1a
    invoke-virtual {v3, v4, v6}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    #@1d
    .line 6273
    :cond_0
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@1f
    monitor-enter v4

    #@20
    .line 6274
    :try_start_0
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v0

    #@26
    .line 6275
    .local v0, "N":I
    const/4 v1, 0x0

    #@27
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@29
    .line 6276
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/app/Activity$ManagedCursor;

    #@31
    .line 6277
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
    .line 6278
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
    .line 6279
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@4a
    move-result-object v3

    #@4b
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@4d
    .line 6280
    const/16 v5, 0xe

    #@4f
    .line 6279
    if-lt v3, v5, :cond_2

    #@51
    .line 6281
    new-instance v3, Ljava/lang/IllegalStateException;

    #@53
    .line 6282
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
    .line 6283
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    #@62
    move-result-object v6

    #@63
    .line 6282
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    .line 6281
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6f
    .line 6273
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
    .line 6286
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_2
    const/4 v3, 0x0

    #@73
    :try_start_1
    invoke-static {v2, v3}, Landroid/app/Activity$ManagedCursor;->-set0(Landroid/app/Activity$ManagedCursor;Z)Z

    #@76
    .line 6287
    const/4 v3, 0x0

    #@77
    invoke-static {v2, v3}, Landroid/app/Activity$ManagedCursor;->-set1(Landroid/app/Activity$ManagedCursor;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7a
    .line 6275
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@7c
    goto :goto_0

    #@7d
    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_4
    monitor-exit v4

    #@7e
    .line 6292
    iput-boolean v6, p0, Landroid/app/Activity;->mCalled:Z

    #@80
    .line 6293
    iget-object v3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@82
    invoke-virtual {v3, p0}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    #@85
    .line 6294
    iget-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    #@87
    if-nez v3, :cond_5

    #@89
    .line 6295
    new-instance v3, Landroid/util/SuperNotCalledException;

    #@8b
    .line 6296
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
    .line 6297
    const-string/jumbo v5, " did not call through to super.onRestart()"

    #@a4
    .line 6296
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v4

    #@a8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v4

    #@ac
    .line 6295
    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@af
    throw v3

    #@b0
    .line 6299
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->performStart()V

    #@b3
    .line 6264
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
    .line 959
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 960
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    #@6
    .line 958
    return-void
.end method

.method final performRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 974
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    #@3
    .line 975
    if-eqz p1, :cond_0

    #@5
    .line 976
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    #@8
    .line 973
    :cond_0
    return-void
.end method

.method final performResume()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6304
    invoke-virtual {p0}, Landroid/app/Activity;->performRestart()V

    #@4
    .line 6306
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@6
    invoke-virtual {v0}, Landroid/app/FragmentController;->execPendingActions()Z

    #@9
    .line 6308
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@c
    .line 6310
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    #@e
    .line 6312
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@10
    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    #@13
    .line 6313
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@15
    if-nez v0, :cond_0

    #@17
    .line 6314
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@19
    .line 6315
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
    .line 6316
    const-string/jumbo v2, " did not call through to super.onResume()"

    #@32
    .line 6315
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    .line 6314
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 6320
    :cond_0
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    #@40
    if-nez v0, :cond_1

    #@42
    iget-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    #@44
    if-eqz v0, :cond_2

    #@46
    .line 6331
    :cond_1
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    #@48
    .line 6333
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@4a
    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchResume()V

    #@4d
    .line 6334
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@4f
    invoke-virtual {v0}, Landroid/app/FragmentController;->execPendingActions()Z

    #@52
    .line 6336
    invoke-virtual {p0}, Landroid/app/Activity;->onPostResume()V

    #@55
    .line 6337
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@57
    if-nez v0, :cond_3

    #@59
    .line 6338
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@5b
    .line 6339
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
    .line 6340
    const-string/jumbo v2, " did not call through to super.onPostResume()"

    #@74
    .line 6339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    .line 6338
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v0

    #@80
    .line 6321
    :cond_2
    const-string/jumbo v0, "Activity"

    #@83
    const-string/jumbo v1, "An activity without a UI must call finish() before onResume() completes"

    #@86
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@89
    .line 6322
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@8c
    move-result-object v0

    #@8d
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@8f
    .line 6323
    const/16 v1, 0x16

    #@91
    .line 6322
    if-le v0, v1, :cond_1

    #@93
    .line 6324
    new-instance v0, Ljava/lang/IllegalStateException;

    #@95
    .line 6325
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
    .line 6326
    const-string/jumbo v2, " did not call finish() prior to onResume() completing"

    #@ae
    .line 6325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v1

    #@b2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v1

    #@b6
    .line 6324
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b9
    throw v0

    #@ba
    .line 6303
    :cond_3
    return-void
.end method

.method final performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1298
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 1299
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    #@6
    .line 1300
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@8
    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->saveState(Landroid/os/Bundle;)V

    #@b
    .line 1297
    return-void
.end method

.method final performSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 1314
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    #@3
    .line 1315
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    #@6
    .line 1313
    return-void
.end method

.method final performStart()V
    .locals 3

    #@0
    .prologue
    .line 6249
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@2
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    #@9
    .line 6250
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@b
    invoke-virtual {v0}, Landroid/app/FragmentController;->noteStateNotSaved()V

    #@e
    .line 6251
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@11
    .line 6252
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@13
    invoke-virtual {v0}, Landroid/app/FragmentController;->execPendingActions()Z

    #@16
    .line 6253
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@18
    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    #@1b
    .line 6254
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    #@1d
    if-nez v0, :cond_0

    #@1f
    .line 6255
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@21
    .line 6256
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v2, "Activity "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    #@2f
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 6257
    const-string/jumbo v2, " did not call through to super.onStart()"

    #@3a
    .line 6256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    .line 6255
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0

    #@46
    .line 6259
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@48
    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchStart()V

    #@4b
    .line 6260
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@4d
    invoke-virtual {v0}, Landroid/app/FragmentController;->reportLoaderStart()V

    #@50
    .line 6261
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@52
    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    #@55
    .line 6248
    return-void
.end method

.method final performStop()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 6365
    iput-boolean v5, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    #@4
    .line 6366
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@6
    iget-boolean v4, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    #@8
    invoke-virtual {v3, v4}, Landroid/app/FragmentController;->doLoaderStop(Z)V

    #@b
    .line 6368
    iget-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    #@d
    if-nez v3, :cond_5

    #@f
    .line 6369
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 6370
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@15
    invoke-virtual {v3}, Landroid/view/Window;->closeAllPanels()V

    #@18
    .line 6373
    :cond_0
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@1a
    if-eqz v3, :cond_1

    #@1c
    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@1e
    if-nez v3, :cond_1

    #@20
    .line 6374
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@23
    move-result-object v3

    #@24
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@26
    invoke-virtual {v3, v4, v6}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    #@29
    .line 6377
    :cond_1
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@2b
    invoke-virtual {v3}, Landroid/app/FragmentController;->dispatchStop()V

    #@2e
    .line 6379
    iput-boolean v5, p0, Landroid/app/Activity;->mCalled:Z

    #@30
    .line 6380
    iget-object v3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@32
    invoke-virtual {v3, p0}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    #@35
    .line 6381
    iget-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    #@37
    if-nez v3, :cond_2

    #@39
    .line 6382
    new-instance v3, Landroid/util/SuperNotCalledException;

    #@3b
    .line 6383
    new-instance v4, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v5, "Activity "

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    iget-object v5, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    #@49
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    .line 6384
    const-string/jumbo v5, " did not call through to super.onStop()"

    #@54
    .line 6383
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    .line 6382
    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v3

    #@60
    .line 6387
    :cond_2
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@62
    monitor-enter v4

    #@63
    .line 6388
    :try_start_0
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@65
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@68
    move-result v0

    #@69
    .line 6389
    .local v0, "N":I
    const/4 v1, 0x0

    #@6a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@6c
    .line 6390
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@6e
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@71
    move-result-object v2

    #@72
    check-cast v2, Landroid/app/Activity$ManagedCursor;

    #@74
    .line 6391
    .local v2, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get1(Landroid/app/Activity$ManagedCursor;)Z

    #@77
    move-result v3

    #@78
    if-nez v3, :cond_3

    #@7a
    .line 6392
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    #@7d
    move-result-object v3

    #@7e
    invoke-interface {v3}, Landroid/database/Cursor;->deactivate()V

    #@81
    .line 6393
    const/4 v3, 0x1

    #@82
    invoke-static {v2, v3}, Landroid/app/Activity$ManagedCursor;->-set0(Landroid/app/Activity$ManagedCursor;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@85
    .line 6389
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@87
    goto :goto_0

    #@88
    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_4
    monitor-exit v4

    #@89
    .line 6398
    iput-boolean v6, p0, Landroid/app/Activity;->mStopped:Z

    #@8b
    .line 6400
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_5
    iput-boolean v5, p0, Landroid/app/Activity;->mResumed:Z

    #@8d
    .line 6364
    return-void

    #@8e
    .line 6387
    :catchall_0
    move-exception v3

    #@8f
    monitor-exit v4

    #@90
    throw v3
.end method

.method final performUserLeaving()V
    .locals 0

    #@0
    .prologue
    .line 6360
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    #@3
    .line 6361
    invoke-virtual {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    #@6
    .line 6359
    return-void
.end method

.method public postponeEnterTransition()V
    .locals 1

    #@0
    .prologue
    .line 6151
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@2
    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->postponeEnterTransition()V

    #@5
    .line 6150
    return-void
.end method

.method public recreate()V
    .locals 9

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 4834
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4835
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Can only be called on top-level activity"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 4837
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
    .line 4838
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1d
    const-string/jumbo v1, "Must be called from main thread"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 4840
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
    invoke-virtual/range {v0 .. v8}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V

    #@30
    .line 4833
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 3227
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    #@3
    .line 3226
    return-void
.end method

.method public releaseInstance()Z
    .locals 3

    #@0
    .prologue
    .line 4997
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
    .line 4998
    :catch_0
    move-exception v0

    #@c
    .line 5001
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
    .line 3512
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3513
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/app/Activity$ManagedDialog;

    #@c
    .line 3514
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-eqz v0, :cond_0

    #@e
    .line 3515
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@10
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    #@13
    .line 3516
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    #@18
    .line 3511
    .end local v0    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_0
    return-void
.end method

.method public reportFullyDrawn()V
    .locals 3

    #@0
    .prologue
    .line 1698
    iget-boolean v1, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1699
    const/4 v1, 0x0

    #@5
    iput-boolean v1, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    #@7
    .line 1701
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
    .line 1697
    :cond_0
    :goto_0
    return-void

    #@11
    .line 1702
    :catch_0
    move-exception v0

    #@12
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    #@0
    .prologue
    .line 3814
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    #@7
    move-result-object v0

    #@8
    .line 3815
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "@android:requestPermissions:"

    #@b
    const/4 v2, 0x0

    #@c
    invoke-virtual {p0, v1, v0, p2, v2}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@f
    .line 3813
    return-void
.end method

.method public requestVisibleBehind(Z)Z
    .locals 4
    .param p1, "visible"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5770
    iget-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 5772
    const/4 p1, 0x0

    #@6
    .line 5775
    .end local p1    # "visible":Z
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@9
    move-result-object v2

    #@a
    .line 5776
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@c
    .line 5775
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
    .line 5780
    :goto_1
    iget-boolean v1, p0, Landroid/app/Activity;->mVisibleBehind:Z

    #@16
    return v1

    #@17
    :cond_1
    move p1, v1

    #@18
    .line 5775
    goto :goto_0

    #@19
    .line 5777
    :catch_0
    move-exception v0

    #@1a
    .line 5778
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
    .line 3650
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
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1879
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 1880
    .local v0, "activity":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationChildInstances()Ljava/util/HashMap;

    #@8
    move-result-object v1

    #@9
    .line 1881
    .local v1, "children":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@b
    invoke-virtual {v5}, Landroid/app/FragmentController;->retainNonConfig()Ljava/util/List;

    #@e
    move-result-object v2

    #@f
    .line 1882
    .local v2, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@11
    invoke-virtual {v5}, Landroid/app/FragmentController;->retainLoaderNonConfig()Landroid/util/ArrayMap;

    #@14
    move-result-object v3

    #@15
    .line 1883
    .local v3, "loaders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/LoaderManager;>;"
    if-nez v0, :cond_0

    #@17
    if-nez v1, :cond_0

    #@19
    if-nez v2, :cond_0

    #@1b
    if-nez v3, :cond_0

    #@1d
    .line 1884
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@1f
    if-nez v5, :cond_0

    #@21
    .line 1885
    return-object v6

    #@22
    .line 1888
    :cond_0
    new-instance v4, Landroid/app/Activity$NonConfigurationInstances;

    #@24
    invoke-direct {v4}, Landroid/app/Activity$NonConfigurationInstances;-><init>()V

    #@27
    .line 1889
    .local v4, "nci":Landroid/app/Activity$NonConfigurationInstances;
    iput-object v0, v4, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    #@29
    .line 1890
    iput-object v1, v4, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    #@2b
    .line 1891
    iput-object v2, v4, Landroid/app/Activity$NonConfigurationInstances;->fragments:Ljava/util/List;

    #@2d
    .line 1892
    iput-object v3, v4, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    #@2f
    .line 1893
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@31
    if-eqz v5, :cond_1

    #@33
    .line 1894
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@35
    invoke-virtual {v5}, Landroid/app/VoiceInteractor;->retainInstance()V

    #@38
    .line 1895
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    #@3a
    iput-object v5, v4, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    #@3c
    .line 1897
    :cond_1
    return-object v4
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 5508
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 5509
    iget-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    #@a
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@d
    .line 5507
    :goto_0
    return-void

    #@e
    .line 5511
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@11
    goto :goto_0
.end method

.method public setActionBar(Landroid/widget/Toolbar;)V
    .locals 3
    .param p1, "toolbar"    # Landroid/widget/Toolbar;

    #@0
    .prologue
    .line 2120
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    #@3
    move-result-object v1

    #@4
    instance-of v1, v1, Lcom/android/internal/app/WindowDecorActionBar;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 2121
    new-instance v1, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v2, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set android:windowActionBar to false in your theme to use a Toolbar instead."

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 2126
    :cond_0
    const/4 v1, 0x0

    #@12
    iput-object v1, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    #@14
    .line 2128
    new-instance v0, Lcom/android/internal/app/ToolbarActionBar;

    #@16
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, p1, v1, p0}, Lcom/android/internal/app/ToolbarActionBar;-><init>(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    #@1d
    .line 2129
    .local v0, "tbab":Lcom/android/internal/app/ToolbarActionBar;
    iput-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@1f
    .line 2130
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@21
    invoke-virtual {v0}, Lcom/android/internal/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v1, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    #@28
    .line 2131
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    #@2a
    invoke-virtual {v1}, Landroid/app/ActionBar;->invalidateOptionsMenu()Z

    #@2d
    .line 2119
    return-void
.end method

.method public setContentTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 1
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    #@0
    .prologue
    .line 2238
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Window;->setTransitionManager(Landroid/transition/TransitionManager;)V

    #@7
    .line 2237
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    #@0
    .prologue
    .line 2166
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    #@7
    .line 2167
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    #@a
    .line 2165
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 2186
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    #@7
    .line 2187
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    #@a
    .line 2185
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 2202
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@7
    .line 2203
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    #@a
    .line 2201
    return-void
.end method

.method public final setDefaultKeyMode(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 2341
    iput p1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    #@2
    .line 2345
    packed-switch p1, :pswitch_data_0

    #@5
    .line 2357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@a
    throw v0

    #@b
    .line 2348
    :pswitch_0
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #@e
    .line 2340
    :goto_0
    return-void

    #@f
    .line 2353
    :pswitch_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@11
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@14
    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #@16
    .line 2354
    iget-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    #@18
    const/4 v1, 0x0

    #@19
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@1c
    goto :goto_0

    #@1d
    .line 2345
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
    .line 6113
    if-nez p1, :cond_0

    #@2
    .line 6114
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    #@4
    .line 6116
    :cond_0
    iput-object p1, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    #@6
    .line 6112
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    #@0
    .prologue
    .line 6129
    if-nez p1, :cond_0

    #@2
    .line 6130
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    #@4
    .line 6132
    :cond_0
    iput-object p1, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    #@6
    .line 6128
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 3674
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    #@7
    .line 3673
    return-void
.end method

.method public final setFeatureDrawableAlpha(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    #@0
    .prologue
    .line 3682
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    #@7
    .line 3681
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    #@0
    .prologue
    .line 3658
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    #@7
    .line 3657
    return-void
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 3666
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    #@7
    .line 3665
    return-void
.end method

.method public setFinishOnTouchOutside(Z)V
    .locals 1
    .param p1, "finish"    # Z

    #@0
    .prologue
    .line 2258
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    #@5
    .line 2257
    return-void
.end method

.method public setImmersive(Z)V
    .locals 3
    .param p1, "i"    # Z

    #@0
    .prologue
    .line 5874
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
    .line 5872
    :goto_0
    return-void

    #@a
    .line 5875
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
    .line 816
    iput-object p1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    #@2
    .line 815
    return-void
.end method

.method public final setMediaController(Landroid/media/session/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/session/MediaController;

    #@0
    .prologue
    .line 5486
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Window;->setMediaController(Landroid/media/session/MediaController;)V

    #@7
    .line 5485
    return-void
.end method

.method final setParent(Landroid/app/Activity;)V
    .locals 0
    .param p1, "parent"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 6166
    iput-object p1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    .line 6165
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "isPersistent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2079
    return-void
.end method

.method public final setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    #@0
    .prologue
    .line 5414
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
    .line 5413
    return-void
.end method

.method public final setProgressBarIndeterminate(Z)V
    .locals 3
    .param p1, "indeterminate"    # Z

    #@0
    .prologue
    .line 5398
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v1

    #@4
    .line 5399
    if-eqz p1, :cond_0

    #@6
    const/4 v0, -0x3

    #@7
    .line 5398
    :goto_0
    const/4 v2, 0x2

    #@8
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    #@b
    .line 5397
    return-void

    #@c
    .line 5400
    :cond_0
    const/4 v0, -0x4

    #@d
    goto :goto_0
.end method

.method public final setProgressBarIndeterminateVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 5384
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v1

    #@4
    .line 5385
    if-eqz p1, :cond_0

    #@6
    const/4 v0, -0x1

    #@7
    .line 5384
    :goto_0
    const/4 v2, 0x5

    #@8
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    #@b
    .line 5383
    return-void

    #@c
    .line 5385
    :cond_0
    const/4 v0, -0x2

    #@d
    goto :goto_0
.end method

.method public final setProgressBarVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 5371
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
    .line 5370
    return-void

    #@c
    .line 5372
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
    .line 5110
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 5112
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@7
    move-result-object v1

    #@8
    .line 5113
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@a
    .line 5112
    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->setRequestedOrientation(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 5109
    :goto_0
    return-void

    #@e
    .line 5118
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@10
    invoke-virtual {v1, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    #@13
    goto :goto_0

    #@14
    .line 5114
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
    .line 4632
    monitor-enter p0

    #@1
    .line 4633
    :try_start_0
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    #@3
    .line 4634
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 4631
    return-void

    #@8
    .line 4632
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
    .line 4661
    monitor-enter p0

    #@1
    .line 4662
    :try_start_0
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    #@3
    .line 4663
    iput-object p2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 4660
    return-void

    #@7
    .line 4661
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

    #@0
    .prologue
    .line 5431
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    .line 5432
    add-int/lit16 v1, p1, 0x4e20

    #@6
    .line 5431
    const/4 v2, 0x2

    #@7
    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    #@a
    .line 5430
    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 6
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    #@0
    .prologue
    .line 5348
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    if-nez v4, :cond_0

    #@6
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    #@9
    move-result-object v4

    #@a
    if-eqz v4, :cond_0

    #@c
    .line 5349
    invoke-static {p0}, Landroid/app/ActivityManager;->getLauncherLargeIconSizeInner(Landroid/content/Context;)I

    #@f
    move-result v2

    #@10
    .line 5350
    .local v2, "size":I
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    #@13
    move-result-object v4

    #@14
    const/4 v5, 0x1

    #@15
    invoke-static {v4, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@18
    move-result-object v1

    #@19
    .line 5351
    .local v1, "icon":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/app/ActivityManager$TaskDescription;

    #@1b
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    .line 5352
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    #@22
    move-result v5

    #@23
    .line 5351
    invoke-direct {v3, v4, v1, v5}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    #@26
    .line 5357
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    .end local v2    # "size":I
    .local v3, "td":Landroid/app/ActivityManager$TaskDescription;
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@29
    move-result-object v4

    #@2a
    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@2c
    invoke-interface {v4, v5, v3}, Landroid/app/IActivityManager;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 5345
    :goto_1
    return-void

    #@30
    .line 5354
    .end local v3    # "td":Landroid/app/ActivityManager$TaskDescription;
    :cond_0
    move-object v3, p1

    #@31
    .restart local v3    # "td":Landroid/app/ActivityManager$TaskDescription;
    goto :goto_0

    #@32
    .line 5358
    :catch_0
    move-exception v0

    #@33
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    #@0
    .prologue
    .line 5288
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    #@7
    .line 5287
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 5273
    iput-object p1, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    #@2
    .line 5274
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    #@7
    .line 5276
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 5277
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@d
    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    #@10
    .line 5272
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
    .line 5303
    iput p1, p0, Landroid/app/Activity;->mTitleColor:I

    #@2
    .line 5304
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    #@4
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    #@7
    .line 5302
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 4773
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 4774
    iput-boolean p1, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    #@6
    .line 4775
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 4776
    if-eqz p1, :cond_1

    #@c
    invoke-virtual {p0}, Landroid/app/Activity;->makeVisible()V

    #@f
    .line 4772
    :cond_0
    :goto_0
    return-void

    #@10
    .line 4777
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@12
    const/4 v1, 0x4

    #@13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@16
    goto :goto_0
.end method

.method public final setVolumeControlStream(I)V
    .locals 1
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 5452
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    #@7
    .line 5451
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3861
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
    .line 5982
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4
    move-result-object v4

    #@5
    .line 5983
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@8
    move-result-object v0

    #@9
    .line 5984
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    #@b
    .line 5985
    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    #@e
    move-result-object v0

    #@f
    .line 5987
    :cond_0
    const/4 v5, 0x0

    #@10
    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@13
    move-result-object v3

    #@14
    .line 5988
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@16
    if-nez v5, :cond_1

    #@18
    .line 5989
    return v8

    #@19
    .line 5991
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1c
    move-result-object v5

    #@1d
    .line 5992
    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@1f
    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@21
    .line 5991
    invoke-interface {v5, v6, v7}, Landroid/app/IActivityManager;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result v5

    #@25
    return v5

    #@26
    .line 5995
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    #@27
    .line 5996
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v8

    #@28
    .line 5993
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    #@29
    .line 5994
    .local v2, "e":Landroid/os/RemoteException;
    return v8
.end method

.method public showAssist(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1585
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
    .line 1586
    :catch_0
    move-exception v0

    #@c
    .line 1588
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
    .line 3394
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    #@4
    .line 3393
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
    .line 3430
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 3431
    new-instance v1, Landroid/util/SparseArray;

    #@7
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@a
    iput-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@c
    .line 3433
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/app/Activity$ManagedDialog;

    #@14
    .line 3434
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-nez v0, :cond_2

    #@16
    .line 3435
    new-instance v0, Landroid/app/Activity$ManagedDialog;

    #@18
    .end local v0    # "md":Landroid/app/Activity$ManagedDialog;
    invoke-direct {v0, v2}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$ManagedDialog;)V

    #@1b
    .line 3436
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
    .line 3437
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@27
    if-nez v1, :cond_1

    #@29
    .line 3438
    const/4 v1, 0x0

    #@2a
    return v1

    #@2b
    .line 3440
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    #@2d
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@30
    .line 3443
    :cond_2
    iput-object p2, v0, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    #@32
    .line 3444
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@34
    invoke-virtual {p0, p1, v1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    #@37
    .line 3445
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    #@39
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    #@3c
    .line 3446
    const/4 v1, 0x1

    #@3d
    return v1
.end method

.method public showLockTaskEscapeMessage()V
    .locals 3

    #@0
    .prologue
    .line 6516
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
    .line 6514
    :goto_0
    return-void

    #@a
    .line 6517
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
    .line 5890
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
    .line 5904
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
    .line 4217
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    #@4
    .line 4216
    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4244
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@2
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@4
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@7
    move-result-object v2

    #@8
    .line 4245
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
    .line 4244
    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V

    #@11
    .line 4243
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 4168
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    #@4
    .line 4167
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
    .line 4195
    if-eqz p2, :cond_0

    #@3
    .line 4196
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@6
    .line 4194
    :goto_0
    return-void

    #@7
    .line 4200
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
    .line 4043
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 4044
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v1, "Can\'t be called from a child"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 4047
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@10
    .line 4048
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@12
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@18
    move-object v1, p0

    #@19
    move-object v4, p0

    #@1a
    move-object v5, p1

    #@1b
    move-object v7, p2

    #@1c
    move v8, p3

    #@1d
    move v9, p4

    #@1e
    .line 4047
    invoke-virtual/range {v0 .. v9}, Landroid/app/Instrumentation;->execStartActivityAsCaller(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;ZI)Landroid/app/Instrumentation$ActivityResult;

    #@21
    move-result-object v10

    #@22
    .line 4050
    .local v10, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v10, :cond_1

    #@24
    .line 4051
    iget-object v3, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@26
    .line 4052
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@28
    iget-object v5, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@2a
    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    #@2d
    move-result v7

    #@2e
    .line 4053
    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    #@31
    move-result-object v8

    #@32
    .line 4051
    invoke-virtual/range {v3 .. v8}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    #@35
    .line 4055
    :cond_1
    invoke-direct {p0, p2}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    #@38
    .line 4042
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
    .line 4011
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 4012
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v1, "Can\'t be called from a child"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 4015
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@10
    .line 4016
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@12
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@18
    move-object v1, p0

    #@19
    move-object v4, p0

    #@1a
    move-object v5, p1

    #@1b
    move-object v7, p2

    #@1c
    move-object v8, p3

    #@1d
    .line 4015
    invoke-virtual/range {v0 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    #@20
    move-result-object v9

    #@21
    .line 4018
    .local v9, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v9, :cond_1

    #@23
    .line 4019
    iget-object v3, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@25
    .line 4020
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@27
    iget-object v5, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@29
    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    #@2c
    move-result v7

    #@2d
    .line 4021
    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    #@30
    move-result-object v8

    #@31
    .line 4019
    invoke-virtual/range {v3 .. v8}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    #@34
    .line 4023
    :cond_1
    invoke-direct {p0, p2}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    #@37
    .line 4010
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 4004
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@4
    .line 4003
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    #@0
    .prologue
    .line 3877
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@4
    .line 3876
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 3915
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-nez v0, :cond_2

    #@4
    .line 3917
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@6
    .line 3918
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
    move-object v4, p0

    #@10
    move-object v5, p1

    #@11
    move v6, p2

    #@12
    move-object v7, p3

    #@13
    .line 3917
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    #@16
    move-result-object v8

    #@17
    .line 3920
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v8, :cond_0

    #@19
    .line 3921
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@1b
    .line 3922
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@1d
    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@1f
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    #@22
    move-result v4

    #@23
    .line 3923
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    #@26
    move-result-object v5

    #@27
    move v3, p2

    #@28
    .line 3921
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    #@2b
    .line 3925
    :cond_0
    if-ltz p2, :cond_1

    #@2d
    .line 3933
    const/4 v0, 0x1

    #@2e
    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    #@30
    .line 3936
    :cond_1
    invoke-direct {p0, p3}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    #@33
    .line 3914
    .end local v8    # "ar":Landroid/app/Instrumentation$ActivityResult;
    :goto_0
    return-void

    #@34
    .line 3939
    :cond_2
    if-eqz p3, :cond_3

    #@36
    .line 3940
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@38
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@3b
    goto :goto_0

    #@3c
    .line 3944
    :cond_3
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@3e
    invoke-virtual {v0, p0, p1, p2}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    #@41
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
    .line 4544
    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    #@3
    move-result-object v9

    #@4
    .line 4545
    .local v9, "referrer":Landroid/net/Uri;
    if-eqz v9, :cond_0

    #@6
    .line 4546
    const-string/jumbo v0, "android.intent.extra.REFERRER"

    #@9
    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@c
    .line 4549
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@e
    .line 4550
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@10
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@13
    move-result-object v2

    #@14
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@16
    move-object v1, p0

    #@17
    move-object v4, p1

    #@18
    move-object v5, p2

    #@19
    move v6, p3

    #@1a
    move-object v7, p4

    #@1b
    .line 4549
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    #@1e
    move-result-object v8

    #@1f
    .line 4552
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v8, :cond_1

    #@21
    .line 4553
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@23
    .line 4554
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@25
    .line 4555
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    #@28
    move-result v4

    #@29
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    #@2c
    move-result-object v5

    #@2d
    move-object v2, p1

    #@2e
    move v3, p3

    #@2f
    .line 4553
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    #@32
    .line 4557
    :cond_1
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    #@35
    .line 4543
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
    .line 3976
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3977
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Can\'t be called from a child"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 3979
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@f
    .line 3980
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@11
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@14
    move-result-object v2

    #@15
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@17
    move-object v1, p0

    #@18
    move-object v4, p0

    #@19
    move-object v5, p1

    #@1a
    move v6, p2

    #@1b
    move-object v7, p3

    #@1c
    move-object v8, p4

    #@1d
    .line 3979
    invoke-virtual/range {v0 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    #@20
    move-result-object v9

    #@21
    .line 3982
    .local v9, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v9, :cond_1

    #@23
    .line 3983
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@25
    .line 3984
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@27
    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@29
    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    #@2c
    move-result v4

    #@2d
    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    #@30
    move-result-object v5

    #@31
    move v3, p2

    #@32
    .line 3983
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    #@35
    .line 3986
    :cond_1
    if-ltz p2, :cond_2

    #@37
    .line 3994
    const/4 v0, 0x1

    #@38
    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    #@3a
    .line 3997
    :cond_2
    invoke-direct {p0, p3}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    #@3d
    .line 3975
    return-void
.end method

.method public startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 3968
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    #@4
    .line 3967
    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    #@0
    .prologue
    .line 4459
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@4
    .line 4458
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
    .line 4484
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    #@2
    .line 4485
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@4
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@7
    move-result-object v2

    #@8
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@a
    move-object v1, p0

    #@b
    move-object v4, p1

    #@c
    move-object v5, p2

    #@d
    move v6, p3

    #@e
    move-object v7, p4

    #@f
    .line 4484
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    #@12
    move-result-object v8

    #@13
    .line 4487
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v8, :cond_0

    #@15
    .line 4488
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    #@17
    .line 4489
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@19
    iget-object v2, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@1b
    .line 4490
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    #@1e
    move-result v4

    #@1f
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    #@22
    move-result-object v5

    #@23
    move v3, p3

    #@24
    .line 4488
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    #@27
    .line 4492
    :cond_0
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    #@2a
    .line 4482
    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    #@0
    .prologue
    .line 4510
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@4
    .line 4509
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
    .line 4535
    iget-object v0, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    #@2
    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@5
    .line 4534
    return-void
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;I)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    #@0
    .prologue
    .line 4318
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
    .line 4353
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-nez v0, :cond_3

    #@4
    .line 4354
    const/4 v13, 0x1

    #@5
    .line 4356
    .local v13, "result":I
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    #@8
    move-result-object v12

    #@9
    .line 4357
    .local v12, "referrer":Landroid/net/Uri;
    if-eqz v12, :cond_0

    #@b
    .line 4358
    const-string/jumbo v0, "android.intent.extra.REFERRER"

    #@e
    invoke-virtual {p1, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@11
    .line 4360
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@14
    .line 4361
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@17
    .line 4362
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1a
    move-result-object v0

    #@1b
    .line 4363
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
    .line 4364
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
    .line 4365
    iget-object v6, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    #@31
    const/4 v8, 0x1

    #@32
    .line 4366
    const/4 v9, 0x0

    #@33
    move-object v3, p1

    #@34
    move/from16 v7, p2

    #@36
    move-object/from16 v10, p3

    #@38
    .line 4362
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    move-result v13

    #@3c
    .line 4371
    .end local v12    # "referrer":Landroid/net/Uri;
    :goto_0
    invoke-static {v13, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    #@3f
    .line 4373
    if-ltz p2, :cond_1

    #@41
    .line 4381
    const/4 v0, 0x1

    #@42
    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    #@44
    .line 4383
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
    .line 4386
    .end local v13    # "result":I
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@4d
    .line 4387
    const-string/jumbo v1, "startActivityIfNeeded can only be called from a top-level activity"

    #@50
    .line 4386
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@53
    throw v0

    #@54
    .line 4367
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
    .line 4265
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
    .line 4264
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    #@a
    .line 4263
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
    .line 4291
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
    .line 4292
    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    #@d
    .line 4290
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
    .line 4297
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
    .line 4077
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
    .line 4076
    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    #@b
    .line 4075
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
    .line 4108
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-nez v0, :cond_0

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move v2, p2

    #@7
    move-object v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    move-object v6, p0

    #@b
    move-object/from16 v7, p7

    #@d
    .line 4109
    invoke-direct/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/app/Activity;Landroid/os/Bundle;)V

    #@10
    .line 4107
    :goto_0
    return-void

    #@11
    .line 4111
    :cond_0
    if-eqz p7, :cond_1

    #@13
    .line 4112
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@15
    move-object v1, p0

    #@16
    move-object v2, p1

    #@17
    move v3, p2

    #@18
    move-object v4, p3

    #@19
    move v5, p4

    #@1a
    move v6, p5

    #@1b
    move v7, p6

    #@1c
    move-object/from16 v8, p7

    #@1e
    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    #@21
    goto :goto_0

    #@22
    .line 4117
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@24
    move-object v1, p0

    #@25
    move-object v2, p1

    #@26
    move v3, p2

    #@27
    move-object v4, p3

    #@28
    move v5, p4

    #@29
    move v6, p5

    #@2a
    move v7, p6

    #@2b
    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    #@2e
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
    .line 4577
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
    .line 4576
    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    #@d
    .line 4575
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
    move-object v0, p0

    #@1
    move-object v1, p2

    #@2
    move v2, p3

    #@3
    move-object v3, p4

    #@4
    move v4, p5

    #@5
    move v5, p6

    #@6
    move-object v6, p1

    #@7
    move-object/from16 v7, p8

    #@9
    .line 4590
    invoke-direct/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/app/Activity;Landroid/os/Bundle;)V

    #@c
    .line 4589
    return-void
.end method

.method public startLockTask()V
    .locals 3

    #@0
    .prologue
    .line 6480
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
    .line 6478
    :goto_0
    return-void

    #@a
    .line 6481
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
    .line 2037
    iget-object v1, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 2038
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
    .line 2036
    return-void

    #@f
    .line 2037
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
    .line 4405
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
    .line 4428
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 4430
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@7
    .line 4431
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@a
    .line 4432
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@d
    move-result-object v1

    #@e
    .line 4433
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    #@10
    .line 4432
    invoke-interface {v1, v2, p1, p2}, Landroid/app/IActivityManager;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 4434
    :catch_0
    move-exception v0

    #@16
    .line 4437
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@17
    return v1

    #@18
    .line 4440
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@1a
    .line 4441
    const-string/jumbo v2, "startNextMatchingActivity can only be called from a top-level activity"

    #@1d
    .line 4440
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1
.end method

.method public startPostponedEnterTransition()V
    .locals 1

    #@0
    .prologue
    .line 6160
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    #@2
    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->startPostponedEnterTransition()V

    #@5
    .line 6159
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
    .line 3607
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    #@3
    .line 3608
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
    .line 3606
    return-void
.end method

.method public stopLockTask()V
    .locals 2

    #@0
    .prologue
    .line 6504
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/app/IActivityManager;->stopLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 6502
    :goto_0
    return-void

    #@8
    .line 6505
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
    .line 2061
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@2
    monitor-enter v4

    #@3
    .line 2062
    :try_start_0
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    .line 2063
    .local v0, "N":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@c
    .line 2064
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/app/Activity$ManagedCursor;

    #@14
    .line 2065
    .local v2, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    #@17
    move-result-object v3

    #@18
    if-ne v3, p1, :cond_1

    #@1a
    .line 2066
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
    .line 2060
    return-void

    #@21
    .line 2063
    .restart local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 2061
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
    .line 3635
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    #@7
    .line 3634
    return-void
.end method

.method public triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "appSearchData"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 3623
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    #@3
    .line 3624
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    #@5
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, p1, v1, p2}, Landroid/app/SearchManager;->triggerSearch(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)V

    #@c
    .line 3622
    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 3238
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    #@4
    .line 3237
    return-void
.end method
