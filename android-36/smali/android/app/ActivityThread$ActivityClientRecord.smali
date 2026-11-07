.class public final Landroid/app/ActivityThread$ActivityClientRecord;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityClientRecord"
.end annotation


# instance fields
.field greylist activity:Landroid/app/Activity;

.field blacklist activityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

.field greylist activityInfo:Landroid/content/pm/ActivityInfo;

.field public blacklist assistToken:Landroid/os/IBinder;

.field greylist compatInfo:Landroid/content/res/CompatibilityInfo;

.field greylist-max-o createdConfig:Landroid/content/res/Configuration;

.field greylist-max-o embeddedID:Ljava/lang/String;

.field greylist-max-o hideForNow:Z

.field greylist-max-o ident:I

.field public blacklist initialCallerInfoAccessToken:Landroid/os/IBinder;

.field greylist intent:Landroid/content/Intent;

.field public final greylist-max-o isForward:Z

.field blacklist isTopResumedActivity:Z

.field greylist-max-o lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

.field blacklist lastReportedTopResumedState:Z

.field private final blacklist mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field blacklist mIsUserLeaving:Z

.field private final blacklist mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field blacklist mLastReportedWindowingMode:I

.field blacklist mLaunchedFromBubble:Z

.field private greylist-max-o mLifecycleState:I

.field greylist-max-o mPendingRemoveWindow:Landroid/view/Window;

.field greylist-max-o mPendingRemoveWindowManager:Landroid/view/WindowManager;

.field greylist mPreserveWindow:Z

.field blacklist mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

.field private blacklist mSizeConfigurations:Landroid/window/SizeConfigurationBuckets;

.field public blacklist mTaskFragmentToken:Landroid/os/IBinder;

.field greylist-max-o overrideConfig:Landroid/content/res/Configuration;

.field public greylist packageInfo:Landroid/app/LoadedApk;

.field greylist-max-o parent:Landroid/app/Activity;

.field greylist paused:Z

.field greylist-max-o pendingConfigChanges:I

.field greylist-max-o pendingIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o pendingResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o persistentState:Landroid/os/PersistableBundle;

.field greylist-max-o profilerInfo:Landroid/app/ProfilerInfo;

.field greylist-max-o referrer:Ljava/lang/String;

.field public blacklist shareableActivityToken:Landroid/os/IBinder;

.field greylist-max-o startsNotResumed:Z

.field greylist-max-o state:Landroid/os/Bundle;

.field greylist stopped:Z

.field private final greylist-max-o tmpConfig:Landroid/content/res/Configuration;

.field public greylist token:Landroid/os/IBinder;

.field greylist-max-o voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field greylist-max-o window:Landroid/view/Window;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastReportedActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/SizeConfigurationBuckets;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mSizeConfigurations:Landroid/window/SizeConfigurationBuckets;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/window/SizeConfigurationBuckets;)V
    .registers 2

    iput-object p1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mSizeConfigurations:Landroid/window/SizeConfigurationBuckets;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPreP(Landroid/app/ActivityThread$ActivityClientRecord;)Z
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreP()Z

    move-result p0

    return p0
.end method

.method public constructor greylist-max-p <init>()V
    .registers 2

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    new-instance v0, Landroid/window/ActivityWindowInfo;

    invoke-direct {v0}, Landroid/window/ActivityWindowInfo;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 637
    new-instance v0, Landroid/window/ActivityWindowInfo;

    invoke-direct {v0}, Landroid/window/ActivityWindowInfo;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 641
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;

    .line 686
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mLastReportedWindowingMode:I

    .line 688
    iput v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mLifecycleState:I

    .line 696
    iput-boolean v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    .line 697
    invoke-direct {p0}, Landroid/app/ActivityThread$ActivityClientRecord;->init()V

    .line 698
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;Landroid/app/ActivityOptions$SceneTransitionInfo;ZLandroid/app/ProfilerInfo;Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/os/IBinder;ZLandroid/os/IBinder;Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;)V
    .registers 38
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "ident"    # I
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;
    .param p5, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p6, "referrer"    # Ljava/lang/String;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "state"    # Landroid/os/Bundle;
    .param p9, "persistentState"    # Landroid/os/PersistableBundle;
    .param p12, "sceneTransitionInfo"    # Landroid/app/ActivityOptions$SceneTransitionInfo;
    .param p13, "isForward"    # Z
    .param p14, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p15, "client"    # Landroid/app/ClientTransactionHandler;
    .param p16, "assistToken"    # Landroid/os/IBinder;
    .param p17, "shareableActivityToken"    # Landroid/os/IBinder;
    .param p18, "launchedFromBubble"    # Z
    .param p19, "taskFragmentToken"    # Landroid/os/IBinder;
    .param p20, "initialCallerInfoAccessToken"    # Landroid/os/IBinder;
    .param p21, "activityWindowInfo"    # Landroid/window/ActivityWindowInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/content/Intent;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/IVoiceInteractor;",
            "Landroid/os/Bundle;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;",
            "Landroid/app/ActivityOptions$SceneTransitionInfo;",
            "Z",
            "Landroid/app/ProfilerInfo;",
            "Landroid/app/ClientTransactionHandler;",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            "Z",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            "Landroid/window/ActivityWindowInfo;",
            ")V"
        }
    .end annotation

    .line 708
    .local p10, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p11, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 635
    new-instance v1, Landroid/window/ActivityWindowInfo;

    invoke-direct {v1}, Landroid/window/ActivityWindowInfo;-><init>()V

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 637
    new-instance v1, Landroid/window/ActivityWindowInfo;

    invoke-direct {v1}, Landroid/window/ActivityWindowInfo;-><init>()V

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 641
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;

    .line 686
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mLastReportedWindowingMode:I

    .line 688
    iput v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mLifecycleState:I

    .line 709
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 710
    move-object/from16 v2, p16

    iput-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->assistToken:Landroid/os/IBinder;

    .line 711
    move-object/from16 v3, p17

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->shareableActivityToken:Landroid/os/IBinder;

    .line 712
    move/from16 v4, p3

    iput v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 713
    move-object/from16 v5, p2

    iput-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 714
    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    .line 715
    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 716
    move-object/from16 v8, p4

    iput-object v8, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 717
    move-object/from16 v9, p8

    iput-object v9, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 718
    move-object/from16 v10, p9

    iput-object v10, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 719
    move-object/from16 v11, p10

    iput-object v11, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 720
    move-object/from16 v12, p11

    iput-object v12, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 721
    move/from16 v13, p13

    iput-boolean v13, v0, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    .line 722
    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 723
    move-object/from16 v15, p5

    iput-object v15, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 724
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v2, p15

    invoke-virtual {v2, v1}, Landroid/app/ClientTransactionHandler;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 725
    move-object/from16 v1, p20

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->initialCallerInfoAccessToken:Landroid/os/IBinder;

    .line 726
    move-object/from16 v1, p12

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 727
    move/from16 v1, p18

    iput-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mLaunchedFromBubble:Z

    .line 728
    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 729
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    move-object/from16 v0, p21

    invoke-virtual {v1, v0}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    .line 730
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread$ActivityClientRecord;->init()V

    .line 731
    return-void
.end method

.method private greylist-max-o init()V
    .registers 2

    .line 735
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    .line 736
    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    .line 737
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 738
    iput-boolean v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 739
    iput-boolean v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 740
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord$1;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$ActivityClientRecord$1;-><init>(Landroid/app/ActivityThread$ActivityClientRecord;)V

    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    .line 759
    return-void
.end method

.method private greylist-max-o isPreHoneycomb()Z
    .registers 3

    .line 794
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private greylist-max-o isPreP()Z
    .registers 3

    .line 799
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method


# virtual methods
.method public blacklist getActivityWindowInfo()Landroid/window/ActivityWindowInfo;
    .registers 2

    .line 813
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    return-object v0
.end method

.method public greylist-max-o getLifecycleState()I
    .registers 2

    .line 763
    iget v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mLifecycleState:I

    return v0
.end method

.method public greylist-max-o getStateString()Ljava/lang/String;
    .registers 6

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 827
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ActivityClientRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    const-string/jumbo v1, "paused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 829
    const-string v1, ", stopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 830
    const-string v2, ", hideForNow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 831
    const-string v2, ", startsNotResumed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 832
    const-string v2, ", isForward="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 833
    const-string v2, ", pendingConfigChanges="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 834
    const-string v2, ", preserveWindow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 835
    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const-string/jumbo v3, "}"

    if-eqz v2, :cond_b8

    .line 836
    const-string v2, ", Activity{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    const-string/jumbo v2, "resumed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mResumed:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 838
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 839
    const-string v1, ", finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 840
    const-string v1, ", destroyed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 841
    const-string v1, ", startedActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mStartedActivity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 842
    const-string v1, ", changingConfigurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 843
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    :cond_b8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o isPersistable()Z
    .registers 3

    .line 804
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist-max-o isVisibleFromServer()Z
    .registers 2

    .line 808
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist-max-o setState(I)V
    .registers 5
    .param p1, "newLifecycleState"    # I

    .line 768
    iput p1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mLifecycleState:I

    .line 769
    iget v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mLifecycleState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_24

    goto :goto_23

    .line 787
    :pswitch_a
    iput-boolean v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 788
    iput-boolean v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    goto :goto_23

    .line 783
    :pswitch_f
    iput-boolean v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 784
    iput-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 785
    goto :goto_23

    .line 779
    :pswitch_14
    iput-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 780
    iput-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 781
    goto :goto_23

    .line 775
    :pswitch_19
    iput-boolean v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 776
    iput-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 777
    goto :goto_23

    .line 771
    :pswitch_1e
    iput-boolean v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 772
    iput-boolean v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 773
    nop

    .line 791
    :goto_23
    return-void

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_19
        :pswitch_14
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 817
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 818
    .local v0, "componentName":Landroid/content/ComponentName;
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityRecord{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 819
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 820
    if-nez v0, :cond_3b

    .line 821
    const-string/jumbo v2, "no component name"

    goto :goto_3f

    :cond_3b
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    :goto_3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 818
    return-object v1
.end method
