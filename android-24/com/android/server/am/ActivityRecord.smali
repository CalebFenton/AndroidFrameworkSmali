.class final Lcom/android/server/am/ActivityRecord;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityRecord$Token;
    }
.end annotation


# static fields
.field static final ACTIVITY_ICON_SUFFIX:Ljava/lang/String; = "_activity_icon_"

.field static final APPLICATION_ACTIVITY_TYPE:I = 0x0

.field private static final ATTR_COMPONENTSPECIFIED:Ljava/lang/String; = "component_specified"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_LAUNCHEDFROMPACKAGE:Ljava/lang/String; = "launched_from_package"

.field private static final ATTR_LAUNCHEDFROMUID:Ljava/lang/String; = "launched_from_uid"

.field private static final ATTR_RESOLVEDTYPE:Ljava/lang/String; = "resolved_type"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field static final HOME_ACTIVITY_TYPE:I = 0x1

.field static final RECENTS_ACTIVITY_TYPE:I = 0x2

.field public static final RECENTS_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui.recents"

.field private static final SHOW_ACTIVITY_START_TIME:Z = true

.field static final STARTING_WINDOW_NOT_SHOWN:I = 0x0

.field static final STARTING_WINDOW_REMOVED:I = 0x2

.field static final STARTING_WINDOW_SHOWN:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_PERSISTABLEBUNDLE:Ljava/lang/String; = "persistable_bundle"

.field private static final TAG_STATES:Ljava/lang/String;

.field private static final TAG_SWITCH:Ljava/lang/String;

.field private static final TAG_THUMBNAILS:Ljava/lang/String;


# instance fields
.field app:Lcom/android/server/am/ProcessRecord;

.field final appInfo:Landroid/content/pm/ApplicationInfo;

.field appTimeTracker:Lcom/android/server/am/AppTimeTracker;

.field final appToken:Landroid/view/IApplicationToken$Stub;

.field compat:Landroid/content/res/CompatibilityInfo;

.field final componentSpecified:Z

.field configChangeFlags:I

.field configuration:Landroid/content/res/Configuration;

.field connections:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field cpuTimeAtResume:J

.field createTime:J

.field deferRelaunchUntilPaused:Z

.field delayedResume:Z

.field displayStartTime:J

.field finishing:Z

.field forceNewConfig:Z

.field frontOfTask:Z

.field frozenBeforeDestroy:Z

.field fullscreen:Z

.field fullyDrawnStartTime:J

.field hasBeenLaunched:Z

.field haveState:Z

.field icicle:Landroid/os/Bundle;

.field icon:I

.field idle:Z

.field immersive:Z

.field private inHistory:Z

.field final info:Landroid/content/pm/ActivityInfo;

.field final intent:Landroid/content/Intent;

.field keysPaused:Z

.field labelRes:I

.field lastLaunchTime:J

.field lastVisibleTime:J

.field launchCount:I

.field launchFailed:Z

.field launchMode:I

.field launchTickTime:J

.field final launchedFromPackage:Ljava/lang/String;

.field final launchedFromUid:I

.field logo:I

.field mActivityType:I

.field mChildContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalSizeConfigurations:[I

.field mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

.field mLaunchTaskBehind:Z

.field private mSmallestSizeConfigurations:[I

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mStartingWindowState:I

.field mTaskOverlay:Z

.field mUpdateTaskThumbnailWhenHidden:Z

.field private mVerticalSizeConfigurations:[I

.field newIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field final noDisplay:Z

.field nonLocalizedLabel:Ljava/lang/CharSequence;

.field nowVisible:Z

.field final packageName:Ljava/lang/String;

.field pauseTime:J

.field pendingOptions:Landroid/app/ActivityOptions;

.field pendingResults:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field pendingVoiceInteractionStart:Z

.field persistentState:Landroid/os/PersistableBundle;

.field preserveWindowOnDeferredRelaunch:Z

.field final processName:Ljava/lang/String;

.field final realActivity:Landroid/content/ComponentName;

.field realTheme:I

.field final requestCode:I

.field requestedVrComponent:Landroid/content/ComponentName;

.field final resolvedType:Ljava/lang/String;

.field resultTo:Lcom/android/server/am/ActivityRecord;

.field final resultWho:Ljava/lang/String;

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field returningOptions:Landroid/app/ActivityOptions;

.field final rootVoiceInteraction:Z

.field final service:Lcom/android/server/am/ActivityManagerService;

.field final shortComponentName:Ljava/lang/String;

.field sleeping:Z

.field startTime:J

.field state:Lcom/android/server/am/ActivityStack$ActivityState;

.field final stateNotNeeded:Z

.field stopped:Z

.field stringName:Ljava/lang/String;

.field task:Lcom/android/server/am/TaskRecord;

.field final taskAffinity:Ljava/lang/String;

.field taskConfigOverride:Landroid/content/res/Configuration;

.field taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field theme:I

.field uriPermissions:Lcom/android/server/am/UriPermissionOwner;

.field final userId:I

.field visible:Z

.field voiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field windowFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 91
    const-string/jumbo v0, "ActivityManager"

    #@3
    sput-object v0, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    #@5
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    sget-object v1, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_STATES:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    sput-object v0, Lcom/android/server/am/ActivityRecord;->TAG_STATES:Ljava/lang/String;

    #@1c
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    sget-object v1, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SWITCH:Ljava/lang/String;

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    sput-object v0, Lcom/android/server/am/ActivityRecord;->TAG_SWITCH:Ljava/lang/String;

    #@33
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    sget-object v1, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_THUMBNAILS:Ljava/lang/String;

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    sput-object v0, Lcom/android/server/am/ActivityRecord;->TAG_THUMBNAILS:Ljava/lang/String;

    #@4a
    .line 90
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V
    .locals 13
    .param p1, "_service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_caller"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "_launchedFromUid"    # I
    .param p4, "_launchedFromPackage"    # Ljava/lang/String;
    .param p5, "_intent"    # Landroid/content/Intent;
    .param p6, "_resolvedType"    # Ljava/lang/String;
    .param p7, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p8, "_configuration"    # Landroid/content/res/Configuration;
    .param p9, "_resultTo"    # Lcom/android/server/am/ActivityRecord;
    .param p10, "_resultWho"    # Ljava/lang/String;
    .param p11, "_reqCode"    # I
    .param p12, "_componentSpecified"    # Z
    .param p13, "_rootVoiceInteraction"    # Z
    .param p14, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p15, "container"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p16, "options"    # Landroid/app/ActivityOptions;
    .param p17, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v8

    #@7
    iput-wide v8, p0, Lcom/android/server/am/ActivityRecord;->createTime:J

    #@9
    .line 194
    new-instance v8, Ljava/util/ArrayList;

    #@b
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    #@10
    .line 204
    const/4 v8, 0x0

    #@11
    iput v8, p0, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    #@13
    .line 205
    const/4 v8, 0x0

    #@14
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    #@16
    .line 604
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@18
    .line 605
    new-instance v8, Lcom/android/server/am/ActivityRecord$Token;

    #@1a
    iget-object v9, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@1c
    invoke-direct {v8, p0, v9}, Lcom/android/server/am/ActivityRecord$Token;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityManagerService;)V

    #@1f
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@21
    .line 606
    move-object/from16 v0, p7

    #@23
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@25
    .line 607
    move/from16 v0, p3

    #@27
    iput v0, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    #@29
    .line 608
    move-object/from16 v0, p4

    #@2b
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@2d
    .line 609
    move-object/from16 v0, p7

    #@2f
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@31
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@33
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    #@36
    move-result v8

    #@37
    iput v8, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@39
    .line 610
    move-object/from16 v0, p5

    #@3b
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@3d
    .line 611
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@40
    move-result-object v8

    #@41
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@44
    move-result-object v8

    #@45
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@47
    .line 612
    move-object/from16 v0, p6

    #@49
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    #@4b
    .line 613
    move/from16 v0, p12

    #@4d
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    #@4f
    .line 614
    move/from16 v0, p13

    #@51
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->rootVoiceInteraction:Z

    #@53
    .line 615
    move-object/from16 v0, p8

    #@55
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    #@57
    .line 616
    sget-object v8, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@59
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->taskConfigOverride:Landroid/content/res/Configuration;

    #@5b
    .line 617
    move-object/from16 v0, p9

    #@5d
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@5f
    .line 618
    move-object/from16 v0, p10

    #@61
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    #@63
    .line 619
    move/from16 v0, p11

    #@65
    iput v0, p0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    #@67
    .line 620
    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@69
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@6b
    .line 621
    const/4 v8, 0x0

    #@6c
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@6e
    .line 622
    const/4 v8, 0x0

    #@6f
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    #@71
    .line 623
    const/4 v8, 0x0

    #@72
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@74
    .line 624
    const/4 v8, 0x0

    #@75
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    #@77
    .line 625
    const/4 v8, 0x0

    #@78
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@7a
    .line 626
    const/4 v8, 0x0

    #@7b
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    #@7d
    .line 627
    const/4 v8, 0x0

    #@7e
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    #@80
    .line 628
    const/4 v8, 0x0

    #@81
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    #@83
    .line 629
    const/4 v8, 0x0

    #@84
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@86
    .line 630
    const/4 v8, 0x0

    #@87
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@89
    .line 631
    const/4 v8, 0x0

    #@8a
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    #@8c
    .line 632
    const/4 v8, 0x0

    #@8d
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    #@8f
    .line 633
    move-object/from16 v0, p14

    #@91
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@93
    .line 634
    move-object/from16 v0, p15

    #@95
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@97
    .line 635
    if-eqz p16, :cond_0

    #@99
    .line 636
    move-object/from16 v0, p16

    #@9b
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@9d
    .line 637
    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@9f
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getLaunchTaskBehind()Z

    #@a2
    move-result v8

    #@a3
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@a5
    .line 638
    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@a7
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getUsageTimeReport()Landroid/app/PendingIntent;

    #@aa
    move-result-object v7

    #@ab
    .line 639
    .local v7, "usageReport":Landroid/app/PendingIntent;
    if-eqz v7, :cond_0

    #@ad
    .line 640
    new-instance v8, Lcom/android/server/am/AppTimeTracker;

    #@af
    invoke-direct {v8, v7}, Lcom/android/server/am/AppTimeTracker;-><init>(Landroid/app/PendingIntent;)V

    #@b2
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@b4
    .line 647
    .end local v7    # "usageReport":Landroid/app/PendingIntent;
    :cond_0
    const/4 v8, 0x1

    #@b5
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    #@b7
    .line 649
    if-eqz p7, :cond_14

    #@b9
    .line 653
    move-object/from16 v0, p7

    #@bb
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@bd
    if-eqz v8, :cond_1

    #@bf
    .line 654
    move-object/from16 v0, p7

    #@c1
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@c3
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@c6
    move-result-object v9

    #@c7
    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@ca
    move-result-object v9

    #@cb
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ce
    move-result v8

    #@cf
    if-eqz v8, :cond_8

    #@d1
    .line 655
    move-object/from16 v0, p7

    #@d3
    iget v8, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@d5
    if-eqz v8, :cond_1

    #@d7
    .line 656
    move-object/from16 v0, p7

    #@d9
    iget v8, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@db
    const/4 v9, 0x1

    #@dc
    if-ne v8, v9, :cond_8

    #@de
    .line 657
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@e1
    move-result-object v8

    #@e2
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@e4
    .line 661
    :goto_0
    move-object/from16 v0, p7

    #@e6
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@e8
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    #@ea
    .line 662
    move-object/from16 v0, p7

    #@ec
    iget v8, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@ee
    and-int/lit8 v8, v8, 0x10

    #@f0
    if-eqz v8, :cond_9

    #@f2
    const/4 v8, 0x1

    #@f3
    :goto_1
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    #@f5
    .line 664
    move-object/from16 v0, p7

    #@f7
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@f9
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@fb
    .line 665
    move-object/from16 v0, p7

    #@fd
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@ff
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@101
    .line 666
    move-object/from16 v0, p7

    #@103
    iget v8, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    #@105
    iput v8, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    #@107
    .line 667
    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@109
    if-nez v8, :cond_2

    #@10b
    iget v8, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    #@10d
    if-nez v8, :cond_2

    #@10f
    .line 668
    move-object/from16 v0, p7

    #@111
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@113
    .line 669
    .local v4, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v8, v4, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@115
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@117
    .line 670
    iget v8, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    #@119
    iput v8, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    #@11b
    .line 672
    .end local v4    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_2
    invoke-virtual/range {p7 .. p7}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    #@11e
    move-result v8

    #@11f
    iput v8, p0, Lcom/android/server/am/ActivityRecord;->icon:I

    #@121
    .line 673
    invoke-virtual/range {p7 .. p7}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    #@124
    move-result v8

    #@125
    iput v8, p0, Lcom/android/server/am/ActivityRecord;->logo:I

    #@127
    .line 674
    invoke-virtual/range {p7 .. p7}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    #@12a
    move-result v8

    #@12b
    iput v8, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    #@12d
    .line 675
    iget v8, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    #@12f
    iput v8, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    #@131
    .line 676
    iget v8, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    #@133
    if-nez v8, :cond_3

    #@135
    .line 677
    move-object/from16 v0, p7

    #@137
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@139
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@13b
    .line 678
    const/16 v9, 0xb

    #@13d
    .line 677
    if-ge v8, v9, :cond_a

    #@13f
    .line 679
    const v8, 0x1030005

    #@142
    .line 677
    :goto_2
    iput v8, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    #@144
    .line 682
    :cond_3
    move-object/from16 v0, p7

    #@146
    iget v8, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@148
    and-int/lit16 v8, v8, 0x200

    #@14a
    if-eqz v8, :cond_4

    #@14c
    .line 683
    iget v8, p0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    #@14e
    const/high16 v9, 0x1000000

    #@150
    or-int/2addr v8, v9

    #@151
    iput v8, p0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    #@153
    .line 685
    :cond_4
    move-object/from16 v0, p7

    #@155
    iget v8, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@157
    and-int/lit8 v8, v8, 0x1

    #@159
    if-eqz v8, :cond_b

    #@15b
    .line 686
    if-eqz p2, :cond_b

    #@15d
    .line 687
    move-object/from16 v0, p7

    #@15f
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@161
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@163
    const/16 v9, 0x3e8

    #@165
    if-eq v8, v9, :cond_5

    #@167
    .line 688
    move-object/from16 v0, p7

    #@169
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@16b
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@16d
    iget-object v9, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@16f
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    #@171
    if-ne v8, v9, :cond_b

    #@173
    .line 689
    :cond_5
    iget-object v8, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@175
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    #@177
    .line 694
    :goto_3
    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@179
    if-eqz v8, :cond_6

    #@17b
    move-object/from16 v0, p7

    #@17d
    iget v8, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@17f
    and-int/lit8 v8, v8, 0x20

    #@181
    if-eqz v8, :cond_6

    #@183
    .line 695
    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@185
    const/high16 v9, 0x800000

    #@187
    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@18a
    .line 698
    :cond_6
    move-object/from16 v0, p7

    #@18c
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@18e
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@190
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@192
    .line 699
    move-object/from16 v0, p7

    #@194
    iget v8, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@196
    iput v8, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    #@198
    .line 701
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    #@19b
    move-result-object v8

    #@19c
    iget-object v9, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@19e
    .line 702
    iget v10, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    #@1a0
    sget-object v11, Lcom/android/internal/R$styleable;->Window:[I

    #@1a2
    iget v12, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@1a4
    .line 701
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    #@1a7
    move-result-object v5

    #@1a8
    .line 703
    .local v5, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v5, :cond_e

    #@1aa
    iget-object v8, v5, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    #@1ac
    .line 704
    const/4 v9, 0x5

    #@1ad
    const/4 v10, 0x0

    #@1ae
    .line 703
    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1b1
    move-result v8

    #@1b2
    if-nez v8, :cond_c

    #@1b4
    .line 705
    iget-object v8, v5, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    #@1b6
    .line 706
    const/4 v9, 0x5

    #@1b7
    .line 705
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@1ba
    move-result v8

    #@1bb
    if-nez v8, :cond_d

    #@1bd
    .line 707
    iget-object v8, v5, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    #@1bf
    .line 708
    const/16 v9, 0x19

    #@1c1
    .line 709
    const/4 v10, 0x0

    #@1c2
    .line 707
    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1c5
    move-result v6

    #@1c6
    .line 710
    :goto_4
    if-eqz v5, :cond_7

    #@1c8
    iget-object v8, v5, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    #@1ca
    .line 711
    const/4 v9, 0x4

    #@1cb
    const/4 v10, 0x0

    #@1cc
    .line 710
    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1cf
    move-result v8

    #@1d0
    if-eqz v8, :cond_f

    #@1d2
    :cond_7
    const/4 v8, 0x0

    #@1d3
    :goto_5
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@1d5
    .line 713
    if-eqz v5, :cond_11

    #@1d7
    iget-object v8, v5, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    #@1d9
    .line 714
    const/16 v9, 0xa

    #@1db
    const/4 v10, 0x0

    #@1dc
    .line 713
    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1df
    move-result v8

    #@1e0
    :goto_6
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    #@1e2
    .line 716
    move/from16 v0, p12

    #@1e4
    move/from16 v1, p3

    #@1e6
    move-object/from16 v2, p5

    #@1e8
    move-object/from16 v3, p17

    #@1ea
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/am/ActivityRecord;->setActivityType(ZILandroid/content/Intent;Lcom/android/server/am/ActivityRecord;)V

    #@1ed
    .line 718
    move-object/from16 v0, p7

    #@1ef
    iget v8, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@1f1
    and-int/lit16 v8, v8, 0x800

    #@1f3
    if-eqz v8, :cond_12

    #@1f5
    const/4 v8, 0x1

    #@1f6
    :goto_7
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->immersive:Z

    #@1f8
    .line 720
    move-object/from16 v0, p7

    #@1fa
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    #@1fc
    if-nez v8, :cond_13

    #@1fe
    .line 721
    const/4 v8, 0x0

    #@1ff
    .line 720
    :goto_8
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    #@201
    .line 603
    .end local v5    # "ent":Lcom/android/server/AttributeCache$Entry;
    :goto_9
    return-void

    #@202
    .line 659
    :cond_8
    new-instance v8, Landroid/content/ComponentName;

    #@204
    move-object/from16 v0, p7

    #@206
    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@208
    move-object/from16 v0, p7

    #@20a
    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@20c
    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@20f
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@211
    goto/16 :goto_0

    #@213
    .line 662
    :cond_9
    const/4 v8, 0x0

    #@214
    goto/16 :goto_1

    #@216
    .line 680
    :cond_a
    const v8, 0x103006b

    #@219
    goto/16 :goto_2

    #@21b
    .line 691
    :cond_b
    move-object/from16 v0, p7

    #@21d
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@21f
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    #@221
    goto/16 :goto_3

    #@223
    .line 703
    .restart local v5    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_c
    const/4 v6, 0x1

    #@224
    .local v6, "translucent":Z
    goto :goto_4

    #@225
    .line 705
    .end local v6    # "translucent":Z
    :cond_d
    const/4 v6, 0x0

    #@226
    .restart local v6    # "translucent":Z
    goto :goto_4

    #@227
    .line 703
    .end local v6    # "translucent":Z
    :cond_e
    const/4 v6, 0x0

    #@228
    .restart local v6    # "translucent":Z
    goto :goto_4

    #@229
    .line 712
    .end local v6    # "translucent":Z
    :cond_f
    if-eqz v6, :cond_10

    #@22b
    const/4 v8, 0x0

    #@22c
    goto :goto_5

    #@22d
    :cond_10
    const/4 v8, 0x1

    #@22e
    goto :goto_5

    #@22f
    .line 713
    :cond_11
    const/4 v8, 0x0

    #@230
    goto :goto_6

    #@231
    .line 718
    :cond_12
    const/4 v8, 0x0

    #@232
    goto :goto_7

    #@233
    .line 721
    :cond_13
    move-object/from16 v0, p7

    #@235
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    #@237
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@23a
    move-result-object v8

    #@23b
    goto :goto_8

    #@23c
    .line 723
    .end local v5    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_14
    const/4 v8, 0x0

    #@23d
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@23f
    .line 724
    const/4 v8, 0x0

    #@240
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    #@242
    .line 725
    const/4 v8, 0x0

    #@243
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    #@245
    .line 726
    const/4 v8, 0x0

    #@246
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@248
    .line 727
    const/4 v8, 0x0

    #@249
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    #@24b
    .line 728
    const/4 v8, 0x0

    #@24c
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@24e
    .line 729
    const/4 v8, 0x1

    #@24f
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@251
    .line 730
    const/4 v8, 0x0

    #@252
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    #@254
    .line 731
    const/4 v8, 0x0

    #@255
    iput v8, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@257
    .line 732
    const/4 v8, 0x0

    #@258
    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->immersive:Z

    #@25a
    .line 733
    const/4 v8, 0x0

    #@25b
    iput-object v8, p0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    #@25d
    goto :goto_9
.end method

.method private static activityTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 1505
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1509
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 1506
    :pswitch_0
    const-string/jumbo v0, "APPLICATION_ACTIVITY_TYPE"

    #@b
    return-object v0

    #@c
    .line 1507
    :pswitch_1
    const-string/jumbo v0, "HOME_ACTIVITY_TYPE"

    #@f
    return-object v0

    #@10
    .line 1508
    :pswitch_2
    const-string/jumbo v0, "RECENTS_ACTIVITY_TYPE"

    #@13
    return-object v0

    #@14
    .line 1505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private canLaunchHomeActivity(ILcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 746
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@4
    move-result v1

    #@5
    if-eq p1, v1, :cond_0

    #@7
    if-nez p1, :cond_1

    #@9
    .line 748
    :cond_0
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 751
    :cond_1
    if-eqz p2, :cond_2

    #@d
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    #@10
    move-result v0

    #@11
    :cond_2
    return v0
.end method

.method private static createImageFilename(JI)Ljava/lang/String;
    .locals 2
    .param p0, "createTime"    # J
    .param p2, "taskId"    # I

    #@0
    .prologue
    .line 1358
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "_activity_icon_"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 1359
    const-string/jumbo v1, ".png"

    #@1b
    .line 1358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

.method private static crossesSizeThreshold([III)Z
    .locals 4
    .param p0, "thresholds"    # [I
    .param p1, "firstDp"    # I
    .param p2, "secondDp"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 422
    if-nez p0, :cond_0

    #@3
    .line 423
    return v3

    #@4
    .line 425
    :cond_0
    array-length v2, p0

    #@5
    add-int/lit8 v0, v2, -0x1

    #@7
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    #@9
    .line 426
    aget v1, p0, v0

    #@b
    .line 427
    .local v1, "threshold":I
    if-ge p1, v1, :cond_2

    #@d
    if-lt p2, v1, :cond_2

    #@f
    .line 429
    :cond_1
    const/4 v2, 0x1

    #@10
    return v2

    #@11
    .line 428
    :cond_2
    if-lt p1, v1, :cond_3

    #@13
    if-lt p2, v1, :cond_1

    #@15
    .line 425
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 432
    .end local v1    # "threshold":I
    :cond_4
    return v3
.end method

.method static forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 5
    .param p0, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 586
    :try_start_0
    move-object v0, p0

    #@1
    check-cast v0, Lcom/android/server/am/ActivityRecord$Token;

    #@3
    move-object v2, v0

    #@4
    invoke-static {v2}, Lcom/android/server/am/ActivityRecord$Token;->-wrap0(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v2

    #@8
    return-object v2

    #@9
    .line 587
    :catch_0
    move-exception v1

    #@a
    .line 588
    .local v1, "e":Ljava/lang/ClassCastException;
    sget-object v2, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "Bad activity token: "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@23
    .line 589
    const/4 v2, 0x0

    #@24
    return-object v2
.end method

.method static getStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStack;
    .locals 2
    .param p0, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1332
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@4
    move-result-object v0

    #@5
    .line 1333
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    #@7
    .line 1334
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@9
    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@b
    return-object v1

    #@c
    .line 1336
    :cond_0
    return-object v1
.end method

.method static getTaskForActivityLocked(Landroid/os/IBinder;Z)I
    .locals 5
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "onlyRoot"    # Z

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 1314
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@4
    move-result-object v1

    #@5
    .line 1315
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_0

    #@7
    .line 1316
    return v4

    #@8
    .line 1318
    :cond_0
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@a
    .line 1319
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@f
    move-result v0

    #@10
    .line 1320
    .local v0, "activityNdx":I
    if-ltz v0, :cond_1

    #@12
    if-eqz p1, :cond_2

    #@14
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    #@17
    move-result v3

    #@18
    if-le v0, v3, :cond_2

    #@1a
    .line 1321
    :cond_1
    return v4

    #@1b
    .line 1323
    :cond_2
    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    #@1d
    return v3
.end method

.method private isHomeIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 738
    const-string/jumbo v2, "android.intent.action.MAIN"

    #@5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 739
    const-string/jumbo v2, "android.intent.category.HOME"

    #@12
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    #@15
    move-result v2

    #@16
    .line 738
    if-eqz v2, :cond_1

    #@18
    .line 740
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@1b
    move-result-object v2

    #@1c
    invoke-interface {v2}, Ljava/util/Set;->size()I

    #@1f
    move-result v2

    #@20
    if-ne v2, v0, :cond_1

    #@22
    .line 741
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@25
    move-result-object v2

    #@26
    if-nez v2, :cond_1

    #@28
    .line 742
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    if-nez v2, :cond_0

    #@2e
    .line 738
    :goto_0
    return v0

    #@2f
    :cond_0
    move v0, v1

    #@30
    .line 742
    goto :goto_0

    #@31
    :cond_1
    move v0, v1

    #@32
    .line 738
    goto :goto_0
.end method

.method static isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .param p0, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1327
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@4
    move-result-object v0

    #@5
    .line 1328
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    #@7
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@9
    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@b
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@e
    move-result-object v1

    #@f
    :cond_0
    return-object v1
.end method

.method private reportLaunchTimeLocked(J)V
    .locals 13
    .param p1, "curTime"    # J

    #@0
    .prologue
    .line 1195
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@2
    iget-object v8, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@4
    .line 1196
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v8, :cond_0

    #@6
    .line 1197
    return-void

    #@7
    .line 1199
    :cond_0
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@9
    sub-long v4, p1, v2

    #@b
    .line 1200
    .local v4, "thisTime":J
    iget-wide v2, v8, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    #@d
    const-wide/16 v10, 0x0

    #@f
    cmp-long v1, v2, v10

    #@11
    if-eqz v1, :cond_3

    #@13
    .line 1201
    iget-wide v2, v8, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    #@15
    sub-long v6, p1, v2

    #@17
    .line 1203
    .local v6, "totalTime":J
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "launching: "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    const-wide/16 v2, 0x40

    #@2f
    const/4 v9, 0x0

    #@30
    invoke-static {v2, v3, v1, v9}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@33
    .line 1204
    const/4 v1, 0x5

    #@34
    new-array v1, v1, [Ljava/lang/Object;

    #@36
    .line 1205
    iget v2, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v2

    #@3c
    const/4 v3, 0x0

    #@3d
    aput-object v2, v1, v3

    #@3f
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@42
    move-result v2

    #@43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46
    move-result-object v2

    #@47
    const/4 v3, 0x1

    #@48
    aput-object v2, v1, v3

    #@4a
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@4c
    const/4 v3, 0x2

    #@4d
    aput-object v2, v1, v3

    #@4f
    .line 1206
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@52
    move-result-object v2

    #@53
    const/4 v3, 0x3

    #@54
    aput-object v2, v1, v3

    #@56
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@59
    move-result-object v2

    #@5a
    const/4 v3, 0x4

    #@5b
    aput-object v2, v1, v3

    #@5d
    .line 1204
    const/16 v2, 0x7539

    #@5f
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@62
    .line 1207
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@64
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    #@66
    .line 1208
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6a
    .line 1209
    const-string/jumbo v1, "Displayed "

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 1210
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    .line 1211
    const-string/jumbo v1, ": "

    #@78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    .line 1212
    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@7e
    .line 1213
    cmp-long v1, v4, v6

    #@80
    if-eqz v1, :cond_1

    #@82
    .line 1214
    const-string/jumbo v1, " (total "

    #@85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    .line 1215
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@8b
    .line 1216
    const-string/jumbo v1, ")"

    #@8e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    .line 1218
    :cond_1
    sget-object v1, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    #@93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v2

    #@97
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9a
    .line 1220
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@9c
    const/4 v2, 0x0

    #@9d
    move-object v3, p0

    #@9e
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    #@a1
    .line 1221
    const-wide/16 v2, 0x0

    #@a3
    cmp-long v1, v6, v2

    #@a5
    if-lez v1, :cond_2

    #@a7
    .line 1224
    :cond_2
    const-wide/16 v2, 0x0

    #@a9
    iput-wide v2, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@ab
    .line 1225
    const-wide/16 v2, 0x0

    #@ad
    iput-wide v2, v8, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    #@af
    .line 1194
    return-void

    #@b0
    .line 1201
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "totalTime":J
    :cond_3
    move-wide v6, v4

    #@b1
    .restart local v6    # "totalTime":J
    goto/16 :goto_0
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/ActivityRecord;
    .locals 38
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1425
    const/4 v5, 0x0

    #@1
    .line 1426
    .local v5, "intent":Landroid/content/Intent;
    const/16 v36, 0x0

    #@3
    .line 1427
    .local v36, "persistentState":Landroid/os/PersistableBundle;
    const/4 v13, 0x0

    #@4
    .line 1428
    .local v13, "launchedFromUid":I
    const/4 v14, 0x0

    #@5
    .line 1429
    .local v14, "launchedFromPackage":Ljava/lang/String;
    const/4 v6, 0x0

    #@6
    .line 1430
    .local v6, "resolvedType":Ljava/lang/String;
    const/16 v22, 0x0

    #@8
    .line 1431
    .local v22, "componentSpecified":Z
    const/4 v9, 0x0

    #@9
    .line 1432
    .local v9, "userId":I
    const-wide/16 v32, -0x1

    #@b
    .line 1433
    .local v32, "createTime":J
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@e
    move-result v35

    #@f
    .line 1434
    .local v35, "outerDepth":I
    new-instance v37, Landroid/app/ActivityManager$TaskDescription;

    #@11
    invoke-direct/range {v37 .. v37}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    #@14
    .line 1436
    .local v37, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@17
    move-result v4

    #@18
    add-int/lit8 v29, v4, -0x1

    #@1a
    .end local v6    # "resolvedType":Ljava/lang/String;
    .end local v14    # "launchedFromPackage":Ljava/lang/String;
    .end local v22    # "componentSpecified":Z
    .local v29, "attrNdx":I
    :goto_0
    if-ltz v29, :cond_8

    #@1c
    .line 1437
    move-object/from16 v0, p0

    #@1e
    move/from16 v1, v29

    #@20
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@23
    move-result-object v28

    #@24
    .line 1438
    .local v28, "attrName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@26
    move/from16 v1, v29

    #@28
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@2b
    move-result-object v30

    #@2c
    .line 1441
    .local v30, "attrValue":Ljava/lang/String;
    const-string/jumbo v4, "id"

    #@2f
    move-object/from16 v0, v28

    #@31
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_0

    #@37
    .line 1442
    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@3e
    move-result-wide v32

    #@3f
    .line 1436
    :goto_1
    add-int/lit8 v29, v29, -0x1

    #@41
    goto :goto_0

    #@42
    .line 1443
    :cond_0
    const-string/jumbo v4, "launched_from_uid"

    #@45
    move-object/from16 v0, v28

    #@47
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v4

    #@4b
    if-eqz v4, :cond_1

    #@4d
    .line 1444
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@50
    move-result v13

    #@51
    goto :goto_1

    #@52
    .line 1445
    :cond_1
    const-string/jumbo v4, "launched_from_package"

    #@55
    move-object/from16 v0, v28

    #@57
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v4

    #@5b
    if-eqz v4, :cond_2

    #@5d
    .line 1446
    move-object/from16 v14, v30

    #@5f
    .local v14, "launchedFromPackage":Ljava/lang/String;
    goto :goto_1

    #@60
    .line 1447
    .end local v14    # "launchedFromPackage":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "resolved_type"

    #@63
    move-object/from16 v0, v28

    #@65
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v4

    #@69
    if-eqz v4, :cond_3

    #@6b
    .line 1448
    move-object/from16 v6, v30

    #@6d
    .local v6, "resolvedType":Ljava/lang/String;
    goto :goto_1

    #@6e
    .line 1449
    .end local v6    # "resolvedType":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "component_specified"

    #@71
    move-object/from16 v0, v28

    #@73
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v4

    #@77
    if-eqz v4, :cond_4

    #@79
    .line 1450
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    #@80
    move-result v22

    #@81
    .local v22, "componentSpecified":Z
    goto :goto_1

    #@82
    .line 1451
    .end local v22    # "componentSpecified":Z
    :cond_4
    const-string/jumbo v4, "user_id"

    #@85
    move-object/from16 v0, v28

    #@87
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result v4

    #@8b
    if-eqz v4, :cond_5

    #@8d
    .line 1452
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@90
    move-result v9

    #@91
    goto :goto_1

    #@92
    .line 1453
    :cond_5
    const-string/jumbo v4, "task_description_"

    #@95
    move-object/from16 v0, v28

    #@97
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9a
    move-result v4

    #@9b
    if-eqz v4, :cond_6

    #@9d
    .line 1454
    move-object/from16 v0, v37

    #@9f
    move-object/from16 v1, v28

    #@a1
    move-object/from16 v2, v30

    #@a3
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    #@a6
    goto :goto_1

    #@a7
    .line 1456
    :cond_6
    sget-object v4, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    #@a9
    new-instance v7, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v8, "Unknown ActivityRecord attribute="

    #@b1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v7

    #@b5
    move-object/from16 v0, v28

    #@b7
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v7

    #@bb
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v7

    #@bf
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c2
    goto/16 :goto_1

    #@c4
    .line 1476
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v28    # "attrName":Ljava/lang/String;
    .end local v30    # "attrValue":Ljava/lang/String;
    .end local v36    # "persistentState":Landroid/os/PersistableBundle;
    .local v31, "event":I
    .local v34, "name":Ljava/lang/String;
    :cond_7
    sget-object v4, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    #@c6
    new-instance v7, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v8, "restoreActivity: unexpected name="

    #@ce
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v7

    #@d2
    move-object/from16 v0, v34

    #@d4
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v7

    #@d8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v7

    #@dc
    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@df
    .line 1477
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@e2
    .line 1461
    .end local v31    # "event":I
    .end local v34    # "name":Ljava/lang/String;
    :cond_8
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@e5
    move-result v31

    #@e6
    .restart local v31    # "event":I
    const/4 v4, 0x1

    #@e7
    move/from16 v0, v31

    #@e9
    if-eq v0, v4, :cond_b

    #@eb
    .line 1462
    const/4 v4, 0x3

    #@ec
    move/from16 v0, v31

    #@ee
    if-ne v0, v4, :cond_9

    #@f0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@f3
    move-result v4

    #@f4
    move/from16 v0, v35

    #@f6
    if-lt v4, v0, :cond_b

    #@f8
    .line 1463
    :cond_9
    const/4 v4, 0x2

    #@f9
    move/from16 v0, v31

    #@fb
    if-ne v0, v4, :cond_8

    #@fd
    .line 1464
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@100
    move-result-object v34

    #@101
    .line 1467
    .restart local v34    # "name":Ljava/lang/String;
    const-string/jumbo v4, "intent"

    #@104
    move-object/from16 v0, v34

    #@106
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@109
    move-result v4

    #@10a
    if-eqz v4, :cond_a

    #@10c
    .line 1468
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    #@10f
    move-result-object v5

    #@110
    .local v5, "intent":Landroid/content/Intent;
    goto :goto_2

    #@111
    .line 1471
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_a
    const-string/jumbo v4, "persistable_bundle"

    #@114
    move-object/from16 v0, v34

    #@116
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@119
    move-result v4

    #@11a
    if-eqz v4, :cond_7

    #@11c
    .line 1472
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    #@11f
    move-result-object v36

    #@120
    .local v36, "persistentState":Landroid/os/PersistableBundle;
    goto :goto_2

    #@121
    .line 1482
    .end local v34    # "name":Ljava/lang/String;
    .end local v36    # "persistentState":Landroid/os/PersistableBundle;
    :cond_b
    if-nez v5, :cond_c

    #@123
    .line 1483
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    #@125
    new-instance v7, Ljava/lang/StringBuilder;

    #@127
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@12a
    const-string/jumbo v8, "restoreActivity error intent="

    #@12d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v7

    #@131
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v7

    #@135
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@138
    move-result-object v7

    #@139
    invoke-direct {v4, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@13c
    throw v4

    #@13d
    .line 1486
    :cond_c
    move-object/from16 v0, p1

    #@13f
    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@141
    .line 1487
    .local v11, "service":Lcom/android/server/am/ActivityManagerService;
    const/4 v7, 0x0

    #@142
    const/4 v8, 0x0

    #@143
    move-object/from16 v4, p1

    #@145
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    #@148
    move-result-object v17

    #@149
    .line 1489
    .local v17, "aInfo":Landroid/content/pm/ActivityInfo;
    if-nez v17, :cond_d

    #@14b
    .line 1490
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    #@14d
    new-instance v7, Ljava/lang/StringBuilder;

    #@14f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@152
    const-string/jumbo v8, "restoreActivity resolver error. Intent="

    #@155
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v7

    #@159
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v7

    #@15d
    .line 1491
    const-string/jumbo v8, " resolvedType="

    #@160
    .line 1490
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v7

    #@164
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v7

    #@168
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16b
    move-result-object v7

    #@16c
    invoke-direct {v4, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@16f
    throw v4

    #@170
    .line 1493
    :cond_d
    new-instance v10, Lcom/android/server/am/ActivityRecord;

    #@172
    .line 1494
    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->getConfiguration()Landroid/content/res/Configuration;

    #@175
    move-result-object v18

    #@176
    .line 1493
    const/4 v12, 0x0

    #@177
    .line 1495
    const/16 v19, 0x0

    #@179
    const/16 v20, 0x0

    #@17b
    const/16 v21, 0x0

    #@17d
    const/16 v23, 0x0

    #@17f
    const/16 v25, 0x0

    #@181
    const/16 v26, 0x0

    #@183
    const/16 v27, 0x0

    #@185
    move-object v15, v5

    #@186
    move-object/from16 v16, v6

    #@188
    move-object/from16 v24, p1

    #@18a
    .line 1493
    invoke-direct/range {v10 .. v27}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V

    #@18d
    .line 1497
    .local v10, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v36

    #@18f
    iput-object v0, v10, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    #@191
    .line 1498
    move-object/from16 v0, v37

    #@193
    iput-object v0, v10, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@195
    .line 1499
    move-wide/from16 v0, v32

    #@197
    iput-wide v0, v10, Lcom/android/server/am/ActivityRecord;->createTime:J

    #@199
    .line 1501
    return-object v10
.end method

.method private setActivityType(ZILandroid/content/Intent;Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "componentSpecified"    # Z
    .param p2, "launchedFromUid"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 756
    if-eqz p1, :cond_0

    #@2
    invoke-direct {p0, p2, p4}, Lcom/android/server/am/ActivityRecord;->canLaunchHomeActivity(ILcom/android/server/am/ActivityRecord;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 757
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/am/ActivityRecord;->isHomeIntent(Landroid/content/Intent;)Z

    #@b
    move-result v0

    #@c
    .line 756
    if-eqz v0, :cond_1

    #@e
    .line 757
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 760
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@16
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    const-string/jumbo v1, "com.android.systemui.recents"

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_3

    #@23
    .line 761
    const/4 v0, 0x2

    #@24
    iput v0, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@26
    .line 755
    :goto_0
    return-void

    #@27
    .line 759
    :cond_2
    const/4 v0, 0x1

    #@28
    iput v0, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@2a
    goto :goto_0

    #@2b
    .line 763
    :cond_3
    const/4 v0, 0x0

    #@2c
    iput v0, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@2e
    goto :goto_0
.end method

.method private static startingWindowStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    #@0
    .prologue
    .line 225
    packed-switch p0, :pswitch_data_0

    #@3
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "unknown state="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 227
    :pswitch_0
    const-string/jumbo v0, "STARTING_WINDOW_NOT_SHOWN"

    #@1b
    return-object v0

    #@1c
    .line 229
    :pswitch_1
    const-string/jumbo v0, "STARTING_WINDOW_SHOWN"

    #@1f
    return-object v0

    #@20
    .line 231
    :pswitch_2
    const-string/jumbo v0, "STARTING_WINDOW_REMOVED"

    #@23
    return-object v0

    #@24
    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V
    .locals 1
    .param p1, "intent"    # Lcom/android/internal/content/ReferrerIntent;

    #@0
    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 920
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@b
    .line 922
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 918
    return-void
.end method

.method addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 6
    .param p1, "from"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "resultData"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 892
    new-instance v0, Lcom/android/server/am/ActivityResult;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityResult;-><init>(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    #@a
    .line 894
    .local v0, "r":Lcom/android/server/am/ActivityResult;
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@c
    if-nez v1, :cond_0

    #@e
    .line 895
    new-instance v1, Ljava/util/ArrayList;

    #@10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@13
    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@15
    .line 897
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    .line 891
    return-void
.end method

.method applyOptionsLocked()V
    .locals 17

    #@0
    .prologue
    .line 970
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 971
    move-object/from16 v0, p0

    #@8
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@a
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAnimationType()I

    #@d
    move-result v1

    #@e
    const/4 v2, 0x5

    #@f
    if-eq v1, v2, :cond_1

    #@11
    .line 972
    move-object/from16 v0, p0

    #@13
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@15
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAnimationType()I

    #@18
    move-result v15

    #@19
    .line 973
    .local v15, "animationType":I
    packed-switch v15, :pswitch_data_0

    #@1c
    .line 1044
    :pswitch_0
    sget-object v1, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    #@1e
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "applyOptionsLocked: Unknown animationType="

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 1047
    :cond_0
    :goto_0
    const/4 v1, 0x0

    #@36
    move-object/from16 v0, p0

    #@38
    iput-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@3a
    .line 969
    .end local v15    # "animationType":I
    :cond_1
    return-void

    #@3b
    .line 975
    .restart local v15    # "animationType":I
    :pswitch_1
    move-object/from16 v0, p0

    #@3d
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@3f
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@41
    .line 976
    move-object/from16 v0, p0

    #@43
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@45
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    .line 977
    move-object/from16 v0, p0

    #@4b
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@4d
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getCustomEnterResId()I

    #@50
    move-result v3

    #@51
    .line 978
    move-object/from16 v0, p0

    #@53
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@55
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getCustomExitResId()I

    #@58
    move-result v4

    #@59
    .line 979
    move-object/from16 v0, p0

    #@5b
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@5d
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    #@60
    move-result-object v5

    #@61
    .line 975
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    #@64
    goto :goto_0

    #@65
    .line 982
    :pswitch_2
    move-object/from16 v0, p0

    #@67
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@69
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@6b
    .line 983
    move-object/from16 v0, p0

    #@6d
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@6f
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    #@72
    move-result v2

    #@73
    move-object/from16 v0, p0

    #@75
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@77
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    #@7a
    move-result v3

    #@7b
    .line 984
    move-object/from16 v0, p0

    #@7d
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@7f
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getWidth()I

    #@82
    move-result v4

    #@83
    move-object/from16 v0, p0

    #@85
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@87
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getHeight()I

    #@8a
    move-result v5

    #@8b
    .line 982
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionClipReveal(IIII)V

    #@8e
    .line 985
    move-object/from16 v0, p0

    #@90
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@92
    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    #@95
    move-result-object v1

    #@96
    if-nez v1, :cond_0

    #@98
    .line 986
    move-object/from16 v0, p0

    #@9a
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@9c
    new-instance v2, Landroid/graphics/Rect;

    #@9e
    move-object/from16 v0, p0

    #@a0
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@a2
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    #@a5
    move-result v3

    #@a6
    .line 987
    move-object/from16 v0, p0

    #@a8
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@aa
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    #@ad
    move-result v4

    #@ae
    .line 988
    move-object/from16 v0, p0

    #@b0
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@b2
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartX()I

    #@b5
    move-result v5

    #@b6
    move-object/from16 v0, p0

    #@b8
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@ba
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getWidth()I

    #@bd
    move-result v7

    #@be
    add-int/2addr v5, v7

    #@bf
    .line 989
    move-object/from16 v0, p0

    #@c1
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@c3
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartY()I

    #@c6
    move-result v7

    #@c7
    move-object/from16 v0, p0

    #@c9
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@cb
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getHeight()I

    #@ce
    move-result v8

    #@cf
    add-int/2addr v7, v8

    #@d0
    .line 986
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    #@d3
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@d6
    goto/16 :goto_0

    #@d8
    .line 993
    :pswitch_3
    move-object/from16 v0, p0

    #@da
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@dc
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@de
    .line 994
    move-object/from16 v0, p0

    #@e0
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@e2
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    #@e5
    move-result v2

    #@e6
    move-object/from16 v0, p0

    #@e8
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@ea
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    #@ed
    move-result v3

    #@ee
    .line 995
    move-object/from16 v0, p0

    #@f0
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@f2
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getWidth()I

    #@f5
    move-result v4

    #@f6
    move-object/from16 v0, p0

    #@f8
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@fa
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getHeight()I

    #@fd
    move-result v5

    #@fe
    .line 993
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionScaleUp(IIII)V

    #@101
    .line 996
    move-object/from16 v0, p0

    #@103
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@105
    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    #@108
    move-result-object v1

    #@109
    if-nez v1, :cond_0

    #@10b
    .line 997
    move-object/from16 v0, p0

    #@10d
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@10f
    new-instance v2, Landroid/graphics/Rect;

    #@111
    move-object/from16 v0, p0

    #@113
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@115
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    #@118
    move-result v3

    #@119
    .line 998
    move-object/from16 v0, p0

    #@11b
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@11d
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    #@120
    move-result v4

    #@121
    .line 999
    move-object/from16 v0, p0

    #@123
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@125
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartX()I

    #@128
    move-result v5

    #@129
    move-object/from16 v0, p0

    #@12b
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@12d
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getWidth()I

    #@130
    move-result v7

    #@131
    add-int/2addr v5, v7

    #@132
    .line 1000
    move-object/from16 v0, p0

    #@134
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@136
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartY()I

    #@139
    move-result v7

    #@13a
    move-object/from16 v0, p0

    #@13c
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@13e
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getHeight()I

    #@141
    move-result v8

    #@142
    add-int/2addr v7, v8

    #@143
    .line 997
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    #@146
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@149
    goto/16 :goto_0

    #@14b
    .line 1005
    :pswitch_4
    const/4 v1, 0x3

    #@14c
    if-ne v15, v1, :cond_2

    #@14e
    const/4 v6, 0x1

    #@14f
    .line 1006
    .local v6, "scaleUp":Z
    :goto_1
    move-object/from16 v0, p0

    #@151
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@153
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@155
    .line 1007
    move-object/from16 v0, p0

    #@157
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@159
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    #@15c
    move-result-object v2

    #@15d
    .line 1008
    move-object/from16 v0, p0

    #@15f
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@161
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    #@164
    move-result v3

    #@165
    move-object/from16 v0, p0

    #@167
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@169
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    #@16c
    move-result v4

    #@16d
    .line 1009
    move-object/from16 v0, p0

    #@16f
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@171
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    #@174
    move-result-object v5

    #@175
    .line 1006
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V

    #@178
    .line 1011
    move-object/from16 v0, p0

    #@17a
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@17c
    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    #@17f
    move-result-object v1

    #@180
    if-nez v1, :cond_0

    #@182
    .line 1012
    move-object/from16 v0, p0

    #@184
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@186
    new-instance v2, Landroid/graphics/Rect;

    #@188
    move-object/from16 v0, p0

    #@18a
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@18c
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    #@18f
    move-result v3

    #@190
    .line 1013
    move-object/from16 v0, p0

    #@192
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@194
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    #@197
    move-result v4

    #@198
    .line 1014
    move-object/from16 v0, p0

    #@19a
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@19c
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartX()I

    #@19f
    move-result v5

    #@1a0
    .line 1015
    move-object/from16 v0, p0

    #@1a2
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@1a4
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    #@1a7
    move-result-object v7

    #@1a8
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    #@1ab
    move-result v7

    #@1ac
    .line 1014
    add-int/2addr v5, v7

    #@1ad
    .line 1016
    move-object/from16 v0, p0

    #@1af
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@1b1
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartY()I

    #@1b4
    move-result v7

    #@1b5
    .line 1017
    move-object/from16 v0, p0

    #@1b7
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@1b9
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    #@1bc
    move-result-object v8

    #@1bd
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    #@1c0
    move-result v8

    #@1c1
    .line 1016
    add-int/2addr v7, v8

    #@1c2
    .line 1012
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    #@1c5
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@1c8
    goto/16 :goto_0

    #@1ca
    .line 1005
    .end local v6    # "scaleUp":Z
    :cond_2
    const/4 v6, 0x0

    #@1cb
    .restart local v6    # "scaleUp":Z
    goto :goto_1

    #@1cc
    .line 1022
    .end local v6    # "scaleUp":Z
    :pswitch_5
    move-object/from16 v0, p0

    #@1ce
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@1d0
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAnimSpecs()[Landroid/view/AppTransitionAnimationSpec;

    #@1d3
    move-result-object v16

    #@1d4
    .line 1023
    .local v16, "specs":[Landroid/view/AppTransitionAnimationSpec;
    const/16 v1, 0x9

    #@1d6
    if-ne v15, v1, :cond_3

    #@1d8
    .line 1024
    if-eqz v16, :cond_3

    #@1da
    .line 1025
    move-object/from16 v0, p0

    #@1dc
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@1de
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@1e0
    .line 1026
    move-object/from16 v0, p0

    #@1e2
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@1e4
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    #@1e7
    move-result-object v2

    #@1e8
    .line 1027
    move-object/from16 v0, p0

    #@1ea
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@1ec
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getAnimationFinishedListener()Landroid/os/IRemoteCallback;

    #@1ef
    move-result-object v3

    #@1f0
    const/4 v4, 0x0

    #@1f1
    .line 1025
    move-object/from16 v0, v16

    #@1f3
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    #@1f6
    goto/16 :goto_0

    #@1f8
    .line 1029
    :cond_3
    move-object/from16 v0, p0

    #@1fa
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@1fc
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@1fe
    .line 1030
    move-object/from16 v0, p0

    #@200
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@202
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    #@205
    move-result-object v8

    #@206
    .line 1031
    move-object/from16 v0, p0

    #@208
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@20a
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getStartX()I

    #@20d
    move-result v9

    #@20e
    move-object/from16 v0, p0

    #@210
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@212
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getStartY()I

    #@215
    move-result v10

    #@216
    .line 1032
    move-object/from16 v0, p0

    #@218
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@21a
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getWidth()I

    #@21d
    move-result v11

    #@21e
    move-object/from16 v0, p0

    #@220
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@222
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getHeight()I

    #@225
    move-result v12

    #@226
    .line 1033
    move-object/from16 v0, p0

    #@228
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@22a
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    #@22d
    move-result-object v13

    #@22e
    .line 1034
    const/16 v1, 0x8

    #@230
    if-ne v15, v1, :cond_4

    #@232
    const/4 v14, 0x1

    #@233
    .line 1029
    :goto_2
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V

    #@236
    .line 1035
    move-object/from16 v0, p0

    #@238
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@23a
    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    #@23d
    move-result-object v1

    #@23e
    if-nez v1, :cond_0

    #@240
    .line 1036
    move-object/from16 v0, p0

    #@242
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@244
    new-instance v2, Landroid/graphics/Rect;

    #@246
    move-object/from16 v0, p0

    #@248
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@24a
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    #@24d
    move-result v3

    #@24e
    .line 1037
    move-object/from16 v0, p0

    #@250
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@252
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    #@255
    move-result v4

    #@256
    .line 1038
    move-object/from16 v0, p0

    #@258
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@25a
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartX()I

    #@25d
    move-result v5

    #@25e
    move-object/from16 v0, p0

    #@260
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@262
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getWidth()I

    #@265
    move-result v7

    #@266
    add-int/2addr v5, v7

    #@267
    .line 1039
    move-object/from16 v0, p0

    #@269
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@26b
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartY()I

    #@26e
    move-result v7

    #@26f
    move-object/from16 v0, p0

    #@271
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@273
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getHeight()I

    #@276
    move-result v8

    #@277
    add-int/2addr v7, v8

    #@278
    .line 1036
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    #@27b
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@27e
    goto/16 :goto_0

    #@280
    .line 1034
    :cond_4
    const/4 v14, 0x0

    #@281
    goto :goto_2

    #@282
    .line 973
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method canGoInDockedStack()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 860
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_2

    #@8
    .line 861
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isResizeableOrForced()Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@10
    iget v2, v2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@12
    if-ne v2, v0, :cond_1

    #@14
    .line 860
    :cond_0
    :goto_0
    return v0

    #@15
    :cond_1
    move v0, v1

    #@16
    .line 861
    goto :goto_0

    #@17
    :cond_2
    move v0, v1

    #@18
    .line 860
    goto :goto_0
.end method

.method changeWindowTranslucency(Z)Z
    .locals 4
    .param p1, "toOpaque"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 784
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@3
    if-ne v0, p1, :cond_0

    #@5
    .line 785
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 789
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@9
    iget v3, v2, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    #@b
    if-eqz p1, :cond_1

    #@d
    move v0, v1

    #@e
    :goto_0
    add-int/2addr v0, v3

    #@f
    iput v0, v2, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    #@11
    .line 791
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@13
    .line 792
    return v1

    #@14
    .line 789
    :cond_1
    const/4 v0, -0x1

    #@15
    goto :goto_0
.end method

.method clearOptionsLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1056
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1057
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@7
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    #@a
    .line 1058
    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@c
    .line 1055
    :cond_0
    return-void
.end method

.method clearVoiceSessionLocked()V
    .locals 1

    #@0
    .prologue
    .line 1381
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@3
    .line 1382
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->pendingVoiceInteractionStart:Z

    #@6
    .line 1380
    return-void
.end method

.method continueLaunchTickingLocked()Z
    .locals 8

    #@0
    .prologue
    const/16 v7, 0x67

    #@2
    const/4 v6, 0x0

    #@3
    .line 1112
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    #@5
    const-wide/16 v4, 0x0

    #@7
    cmp-long v2, v2, v4

    #@9
    if-nez v2, :cond_0

    #@b
    .line 1113
    return v6

    #@c
    .line 1116
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@e
    iget-object v1, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@10
    .line 1117
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v1, :cond_1

    #@12
    .line 1118
    return v6

    #@13
    .line 1121
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@15
    invoke-virtual {v2, v7, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@18
    move-result-object v0

    #@19
    .line 1122
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@1b
    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    #@1e
    .line 1123
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@20
    const-wide/16 v4, 0x1f4

    #@22
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@25
    .line 1124
    const/4 v2, 0x1

    #@26
    return v2
.end method

.method public crossesHorizontalSizeThreshold(II)Z
    .locals 1
    .param p1, "firstDp"    # I
    .param p2, "secondDp"    # I

    #@0
    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mHorizontalSizeConfigurations:[I

    #@2
    invoke-static {v0, p1, p2}, Lcom/android/server/am/ActivityRecord;->crossesSizeThreshold([III)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public crossesSmallestSizeThreshold(II)Z
    .locals 1
    .param p1, "firstDp"    # I
    .param p2, "secondDp"    # I

    #@0
    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mSmallestSizeConfigurations:[I

    #@2
    invoke-static {v0, p1, p2}, Lcom/android/server/am/ActivityRecord;->crossesSizeThreshold([III)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public crossesVerticalSizeThreshold(II)Z
    .locals 1
    .param p1, "firstDp"    # I
    .param p2, "secondDp"    # I

    #@0
    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mVerticalSizeConfigurations:[I

    #@2
    invoke-static {v0, p1, p2}, Lcom/android/server/am/ActivityRecord;->crossesSizeThreshold([III)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method final deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 11
    .param p1, "callingUid"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "referrer"    # Ljava/lang/String;

    #@0
    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@2
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@4
    .line 932
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    #@7
    move-result-object v4

    #@8
    iget v5, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@a
    move v1, p1

    #@b
    move-object v3, p2

    #@c
    .line 931
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    #@f
    .line 938
    new-instance v9, Lcom/android/internal/content/ReferrerIntent;

    #@11
    invoke-direct {v9, p2, p3}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    #@14
    .line 939
    .local v9, "rintent":Lcom/android/internal/content/ReferrerIntent;
    const/4 v10, 0x1

    #@15
    .line 940
    .local v10, "unsent":Z
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@17
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@19
    if-eq v0, v1, :cond_0

    #@1b
    .line 941
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@1d
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingLocked()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_1

    #@23
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@25
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 942
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@2b
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@2d
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@30
    move-result-object v0

    #@31
    if-ne v0, p0, :cond_1

    #@33
    .line 943
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@35
    if-eqz v0, :cond_1

    #@37
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@39
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@3b
    if-eqz v0, :cond_1

    #@3d
    .line 945
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    #@3f
    const/4 v0, 0x1

    #@40
    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@43
    .line 946
    .local v6, "ar":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@46
    .line 947
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@48
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@4a
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@4c
    invoke-interface {v0, v6, v1}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    .line 948
    const/4 v10, 0x0

    #@50
    .line 955
    .end local v6    # "ar":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    #@52
    .line 956
    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityRecord;->addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V

    #@55
    .line 929
    :cond_2
    return-void

    #@56
    .line 951
    :catch_0
    move-exception v8

    #@57
    .line 952
    .local v8, "e":Ljava/lang/NullPointerException;
    sget-object v0, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    #@59
    new-instance v1, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v2, "Exception thrown sending new intent to "

    #@61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@70
    goto :goto_0

    #@71
    .line 949
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    #@72
    .line 950
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    #@74
    new-instance v1, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v2, "Exception thrown sending new intent to "

    #@7c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v1

    #@84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v1

    #@88
    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8b
    goto :goto_0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v6

    #@4
    .line 239
    .local v6, "now":J
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7
    const-string/jumbo v11, "packageName="

    #@a
    move-object/from16 v0, p1

    #@c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    move-object/from16 v0, p0

    #@11
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@13
    move-object/from16 v0, p1

    #@15
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    .line 240
    const-string/jumbo v11, " processName="

    #@1b
    move-object/from16 v0, p1

    #@1d
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    move-object/from16 v0, p0

    #@22
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    #@24
    move-object/from16 v0, p1

    #@26
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@29
    .line 241
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    const-string/jumbo v11, "launchedFromUid="

    #@2f
    move-object/from16 v0, p1

    #@31
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    move-object/from16 v0, p0

    #@36
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    #@38
    move-object/from16 v0, p1

    #@3a
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    #@3d
    .line 242
    const-string/jumbo v11, " launchedFromPackage="

    #@40
    move-object/from16 v0, p1

    #@42
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45
    move-object/from16 v0, p0

    #@47
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@49
    move-object/from16 v0, p1

    #@4b
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    .line 243
    const-string/jumbo v11, " userId="

    #@51
    move-object/from16 v0, p1

    #@53
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    move-object/from16 v0, p0

    #@58
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@5a
    move-object/from16 v0, p1

    #@5c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    #@5f
    .line 244
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62
    const-string/jumbo v11, "app="

    #@65
    move-object/from16 v0, p1

    #@67
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6a
    move-object/from16 v0, p0

    #@6c
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@6e
    move-object/from16 v0, p1

    #@70
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@73
    .line 245
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@76
    move-object/from16 v0, p0

    #@78
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@7a
    invoke-virtual {v11}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    #@7d
    move-result-object v11

    #@7e
    move-object/from16 v0, p1

    #@80
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@83
    .line 246
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@86
    const-string/jumbo v11, "frontOfTask="

    #@89
    move-object/from16 v0, p1

    #@8b
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8e
    move-object/from16 v0, p0

    #@90
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@92
    move-object/from16 v0, p1

    #@94
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@97
    .line 247
    const-string/jumbo v11, " task="

    #@9a
    move-object/from16 v0, p1

    #@9c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9f
    move-object/from16 v0, p0

    #@a1
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@a3
    move-object/from16 v0, p1

    #@a5
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@a8
    .line 248
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ab
    const-string/jumbo v11, "taskAffinity="

    #@ae
    move-object/from16 v0, p1

    #@b0
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b3
    move-object/from16 v0, p0

    #@b5
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    #@b7
    move-object/from16 v0, p1

    #@b9
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bc
    .line 249
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bf
    const-string/jumbo v11, "realActivity="

    #@c2
    move-object/from16 v0, p1

    #@c4
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c7
    .line 250
    move-object/from16 v0, p0

    #@c9
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@cb
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@ce
    move-result-object v11

    #@cf
    move-object/from16 v0, p1

    #@d1
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d4
    .line 251
    move-object/from16 v0, p0

    #@d6
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@d8
    if-eqz v11, :cond_1

    #@da
    .line 252
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@dd
    const-string/jumbo v11, "baseDir="

    #@e0
    move-object/from16 v0, p1

    #@e2
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e5
    move-object/from16 v0, p0

    #@e7
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@e9
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@eb
    move-object/from16 v0, p1

    #@ed
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f0
    .line 253
    move-object/from16 v0, p0

    #@f2
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@f4
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@f6
    move-object/from16 v0, p0

    #@f8
    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@fa
    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@fc
    invoke-static {v11, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@ff
    move-result v11

    #@100
    if-nez v11, :cond_0

    #@102
    .line 254
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@105
    const-string/jumbo v11, "resDir="

    #@108
    move-object/from16 v0, p1

    #@10a
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10d
    move-object/from16 v0, p0

    #@10f
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@111
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@113
    move-object/from16 v0, p1

    #@115
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@118
    .line 256
    :cond_0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11b
    const-string/jumbo v11, "dataDir="

    #@11e
    move-object/from16 v0, p1

    #@120
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@123
    move-object/from16 v0, p0

    #@125
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@127
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@129
    move-object/from16 v0, p1

    #@12b
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12e
    .line 257
    move-object/from16 v0, p0

    #@130
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@132
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@134
    if-eqz v11, :cond_1

    #@136
    .line 258
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@139
    const-string/jumbo v11, "splitDir="

    #@13c
    move-object/from16 v0, p1

    #@13e
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@141
    .line 259
    move-object/from16 v0, p0

    #@143
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@145
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@147
    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@14a
    move-result-object v11

    #@14b
    move-object/from16 v0, p1

    #@14d
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@150
    .line 262
    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@153
    const-string/jumbo v11, "stateNotNeeded="

    #@156
    move-object/from16 v0, p1

    #@158
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15b
    move-object/from16 v0, p0

    #@15d
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    #@15f
    move-object/from16 v0, p1

    #@161
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@164
    .line 263
    const-string/jumbo v11, " componentSpecified="

    #@167
    move-object/from16 v0, p1

    #@169
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16c
    move-object/from16 v0, p0

    #@16e
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    #@170
    move-object/from16 v0, p1

    #@172
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@175
    .line 264
    const-string/jumbo v11, " mActivityType="

    #@178
    move-object/from16 v0, p1

    #@17a
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17d
    move-object/from16 v0, p0

    #@17f
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@181
    move-object/from16 v0, p1

    #@183
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    #@186
    .line 265
    move-object/from16 v0, p0

    #@188
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->rootVoiceInteraction:Z

    #@18a
    if-eqz v11, :cond_2

    #@18c
    .line 266
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18f
    const-string/jumbo v11, "rootVoiceInteraction="

    #@192
    move-object/from16 v0, p1

    #@194
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@197
    move-object/from16 v0, p0

    #@199
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->rootVoiceInteraction:Z

    #@19b
    move-object/from16 v0, p1

    #@19d
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    #@1a0
    .line 268
    :cond_2
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a3
    const-string/jumbo v11, "compat="

    #@1a6
    move-object/from16 v0, p1

    #@1a8
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ab
    move-object/from16 v0, p0

    #@1ad
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    #@1af
    move-object/from16 v0, p1

    #@1b1
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@1b4
    .line 269
    const-string/jumbo v11, " labelRes=0x"

    #@1b7
    move-object/from16 v0, p1

    #@1b9
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1bc
    move-object/from16 v0, p0

    #@1be
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    #@1c0
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1c3
    move-result-object v11

    #@1c4
    move-object/from16 v0, p1

    #@1c6
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c9
    .line 270
    const-string/jumbo v11, " icon=0x"

    #@1cc
    move-object/from16 v0, p1

    #@1ce
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d1
    move-object/from16 v0, p0

    #@1d3
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    #@1d5
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1d8
    move-result-object v11

    #@1d9
    move-object/from16 v0, p1

    #@1db
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1de
    .line 271
    const-string/jumbo v11, " theme=0x"

    #@1e1
    move-object/from16 v0, p1

    #@1e3
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e6
    move-object/from16 v0, p0

    #@1e8
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    #@1ea
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1ed
    move-result-object v11

    #@1ee
    move-object/from16 v0, p1

    #@1f0
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f3
    .line 272
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f6
    const-string/jumbo v11, "config="

    #@1f9
    move-object/from16 v0, p1

    #@1fb
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fe
    move-object/from16 v0, p0

    #@200
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    #@202
    move-object/from16 v0, p1

    #@204
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@207
    .line 273
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20a
    const-string/jumbo v11, "taskConfigOverride="

    #@20d
    move-object/from16 v0, p1

    #@20f
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@212
    move-object/from16 v0, p0

    #@214
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskConfigOverride:Landroid/content/res/Configuration;

    #@216
    move-object/from16 v0, p1

    #@218
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@21b
    .line 274
    move-object/from16 v0, p0

    #@21d
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@21f
    if-nez v11, :cond_3

    #@221
    move-object/from16 v0, p0

    #@223
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    #@225
    if-eqz v11, :cond_4

    #@227
    .line 275
    :cond_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22a
    const-string/jumbo v11, "resultTo="

    #@22d
    move-object/from16 v0, p1

    #@22f
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@232
    move-object/from16 v0, p0

    #@234
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@236
    move-object/from16 v0, p1

    #@238
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@23b
    .line 276
    const-string/jumbo v11, " resultWho="

    #@23e
    move-object/from16 v0, p1

    #@240
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@243
    move-object/from16 v0, p0

    #@245
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    #@247
    move-object/from16 v0, p1

    #@249
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24c
    .line 277
    const-string/jumbo v11, " resultCode="

    #@24f
    move-object/from16 v0, p1

    #@251
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@254
    move-object/from16 v0, p0

    #@256
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    #@258
    move-object/from16 v0, p1

    #@25a
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    #@25d
    .line 279
    :cond_4
    move-object/from16 v0, p0

    #@25f
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@261
    if-eqz v11, :cond_7

    #@263
    .line 280
    move-object/from16 v0, p0

    #@265
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@267
    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    #@26a
    move-result-object v3

    #@26b
    .line 281
    .local v3, "iconFilename":Ljava/lang/String;
    if-nez v3, :cond_5

    #@26d
    move-object/from16 v0, p0

    #@26f
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@271
    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    #@274
    move-result-object v11

    #@275
    if-eqz v11, :cond_9

    #@277
    .line 283
    :cond_5
    :goto_0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27a
    const-string/jumbo v11, "taskDescription:"

    #@27d
    move-object/from16 v0, p1

    #@27f
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@282
    .line 284
    const-string/jumbo v11, " iconFilename="

    #@285
    move-object/from16 v0, p1

    #@287
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28a
    move-object/from16 v0, p0

    #@28c
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@28e
    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    #@291
    move-result-object v11

    #@292
    move-object/from16 v0, p1

    #@294
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@297
    .line 285
    const-string/jumbo v11, " label=\""

    #@29a
    move-object/from16 v0, p1

    #@29c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29f
    move-object/from16 v0, p0

    #@2a1
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@2a3
    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    #@2a6
    move-result-object v11

    #@2a7
    move-object/from16 v0, p1

    #@2a9
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ac
    .line 286
    const-string/jumbo v11, "\""

    #@2af
    move-object/from16 v0, p1

    #@2b1
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b4
    .line 287
    const-string/jumbo v11, " color="

    #@2b7
    move-object/from16 v0, p1

    #@2b9
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2bc
    .line 288
    move-object/from16 v0, p0

    #@2be
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@2c0
    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    #@2c3
    move-result v11

    #@2c4
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2c7
    move-result-object v11

    #@2c8
    move-object/from16 v0, p1

    #@2ca
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2cd
    .line 290
    :cond_6
    if-nez v3, :cond_7

    #@2cf
    move-object/from16 v0, p0

    #@2d1
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@2d3
    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    #@2d6
    move-result-object v11

    #@2d7
    if-eqz v11, :cond_7

    #@2d9
    .line 291
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2dc
    const-string/jumbo v11, "taskDescription contains Bitmap"

    #@2df
    move-object/from16 v0, p1

    #@2e1
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e4
    .line 294
    .end local v3    # "iconFilename":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    #@2e6
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@2e8
    if-eqz v11, :cond_8

    #@2ea
    .line 295
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ed
    const-string/jumbo v11, "results="

    #@2f0
    move-object/from16 v0, p1

    #@2f2
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f5
    move-object/from16 v0, p0

    #@2f7
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@2f9
    move-object/from16 v0, p1

    #@2fb
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2fe
    .line 297
    :cond_8
    move-object/from16 v0, p0

    #@300
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    #@302
    if-eqz v11, :cond_c

    #@304
    move-object/from16 v0, p0

    #@306
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    #@308
    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    #@30b
    move-result v11

    #@30c
    if-lez v11, :cond_c

    #@30e
    .line 298
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@311
    const-string/jumbo v11, "Pending Results:"

    #@314
    move-object/from16 v0, p1

    #@316
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@319
    .line 299
    move-object/from16 v0, p0

    #@31b
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    #@31d
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@320
    move-result-object v10

    #@321
    .local v10, "wpir$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@324
    move-result v11

    #@325
    if-eqz v11, :cond_c

    #@327
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32a
    move-result-object v9

    #@32b
    check-cast v9, Ljava/lang/ref/WeakReference;

    #@32d
    .line 300
    .local v9, "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    if-eqz v9, :cond_a

    #@32f
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@332
    move-result-object v5

    #@333
    check-cast v5, Lcom/android/server/am/PendingIntentRecord;

    #@335
    .line 301
    :goto_2
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@338
    const-string/jumbo v11, "  - "

    #@33b
    move-object/from16 v0, p1

    #@33d
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@340
    .line 302
    if-nez v5, :cond_b

    #@342
    .line 303
    const-string/jumbo v11, "null"

    #@345
    move-object/from16 v0, p1

    #@347
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@34a
    goto :goto_1

    #@34b
    .line 282
    .end local v9    # "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v10    # "wpir$iterator":Ljava/util/Iterator;
    .restart local v3    # "iconFilename":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    #@34d
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@34f
    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    #@352
    move-result v11

    #@353
    if-eqz v11, :cond_6

    #@355
    goto/16 :goto_0

    #@357
    .line 300
    .end local v3    # "iconFilename":Ljava/lang/String;
    .restart local v9    # "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .restart local v10    # "wpir$iterator":Ljava/util/Iterator;
    :cond_a
    const/4 v5, 0x0

    #@358
    .local v5, "pir":Lcom/android/server/am/PendingIntentRecord;
    goto :goto_2

    #@359
    .line 305
    .end local v5    # "pir":Lcom/android/server/am/PendingIntentRecord;
    :cond_b
    move-object/from16 v0, p1

    #@35b
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@35e
    .line 306
    new-instance v11, Ljava/lang/StringBuilder;

    #@360
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@363
    move-object/from16 v0, p2

    #@365
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@368
    move-result-object v11

    #@369
    const-string/jumbo v12, "    "

    #@36c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36f
    move-result-object v11

    #@370
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@373
    move-result-object v11

    #@374
    move-object/from16 v0, p1

    #@376
    invoke-virtual {v5, v0, v11}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@379
    goto :goto_1

    #@37a
    .line 310
    .end local v9    # "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v10    # "wpir$iterator":Ljava/util/Iterator;
    :cond_c
    move-object/from16 v0, p0

    #@37c
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@37e
    if-eqz v11, :cond_e

    #@380
    move-object/from16 v0, p0

    #@382
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@384
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@387
    move-result v11

    #@388
    if-lez v11, :cond_e

    #@38a
    .line 311
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38d
    const-string/jumbo v11, "Pending New Intents:"

    #@390
    move-object/from16 v0, p1

    #@392
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@395
    .line 312
    const/4 v2, 0x0

    #@396
    .local v2, "i":I
    :goto_3
    move-object/from16 v0, p0

    #@398
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@39a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@39d
    move-result v11

    #@39e
    if-ge v2, v11, :cond_e

    #@3a0
    .line 313
    move-object/from16 v0, p0

    #@3a2
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@3a4
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3a7
    move-result-object v4

    #@3a8
    check-cast v4, Landroid/content/Intent;

    #@3aa
    .line 314
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ad
    const-string/jumbo v11, "  - "

    #@3b0
    move-object/from16 v0, p1

    #@3b2
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b5
    .line 315
    if-nez v4, :cond_d

    #@3b7
    .line 316
    const-string/jumbo v11, "null"

    #@3ba
    move-object/from16 v0, p1

    #@3bc
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3bf
    .line 312
    :goto_4
    add-int/lit8 v2, v2, 0x1

    #@3c1
    goto :goto_3

    #@3c2
    .line 318
    :cond_d
    const/4 v11, 0x0

    #@3c3
    const/4 v12, 0x1

    #@3c4
    const/4 v13, 0x0

    #@3c5
    const/4 v14, 0x1

    #@3c6
    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    #@3c9
    move-result-object v11

    #@3ca
    move-object/from16 v0, p1

    #@3cc
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3cf
    goto :goto_4

    #@3d0
    .line 322
    .end local v2    # "i":I
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_e
    move-object/from16 v0, p0

    #@3d2
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@3d4
    if-eqz v11, :cond_f

    #@3d6
    .line 323
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d9
    const-string/jumbo v11, "pendingOptions="

    #@3dc
    move-object/from16 v0, p1

    #@3de
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e1
    move-object/from16 v0, p0

    #@3e3
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@3e5
    move-object/from16 v0, p1

    #@3e7
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@3ea
    .line 325
    :cond_f
    move-object/from16 v0, p0

    #@3ec
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@3ee
    if-eqz v11, :cond_10

    #@3f0
    .line 326
    move-object/from16 v0, p0

    #@3f2
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@3f4
    const/4 v12, 0x0

    #@3f5
    move-object/from16 v0, p1

    #@3f7
    move-object/from16 v1, p2

    #@3f9
    invoke-virtual {v11, v0, v1, v12}, Lcom/android/server/am/AppTimeTracker;->dumpWithHeader(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    #@3fc
    .line 328
    :cond_10
    move-object/from16 v0, p0

    #@3fe
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@400
    if-eqz v11, :cond_11

    #@402
    .line 329
    move-object/from16 v0, p0

    #@404
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@406
    move-object/from16 v0, p1

    #@408
    move-object/from16 v1, p2

    #@40a
    invoke-virtual {v11, v0, v1}, Lcom/android/server/am/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@40d
    .line 331
    :cond_11
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@410
    const-string/jumbo v11, "launchFailed="

    #@413
    move-object/from16 v0, p1

    #@415
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@418
    move-object/from16 v0, p0

    #@41a
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    #@41c
    move-object/from16 v0, p1

    #@41e
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@421
    .line 332
    const-string/jumbo v11, " launchCount="

    #@424
    move-object/from16 v0, p1

    #@426
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@429
    move-object/from16 v0, p0

    #@42b
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    #@42d
    move-object/from16 v0, p1

    #@42f
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    #@432
    .line 333
    const-string/jumbo v11, " lastLaunchTime="

    #@435
    move-object/from16 v0, p1

    #@437
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43a
    .line 334
    move-object/from16 v0, p0

    #@43c
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    #@43e
    const-wide/16 v14, 0x0

    #@440
    cmp-long v11, v12, v14

    #@442
    if-nez v11, :cond_1b

    #@444
    const-string/jumbo v11, "0"

    #@447
    move-object/from16 v0, p1

    #@449
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44c
    .line 336
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@44f
    .line 337
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@452
    const-string/jumbo v11, "haveState="

    #@455
    move-object/from16 v0, p1

    #@457
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45a
    move-object/from16 v0, p0

    #@45c
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    #@45e
    move-object/from16 v0, p1

    #@460
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@463
    .line 338
    const-string/jumbo v11, " icicle="

    #@466
    move-object/from16 v0, p1

    #@468
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46b
    move-object/from16 v0, p0

    #@46d
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    #@46f
    move-object/from16 v0, p1

    #@471
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@474
    .line 339
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@477
    const-string/jumbo v11, "state="

    #@47a
    move-object/from16 v0, p1

    #@47c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47f
    move-object/from16 v0, p0

    #@481
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@483
    move-object/from16 v0, p1

    #@485
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@488
    .line 340
    const-string/jumbo v11, " stopped="

    #@48b
    move-object/from16 v0, p1

    #@48d
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@490
    move-object/from16 v0, p0

    #@492
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@494
    move-object/from16 v0, p1

    #@496
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@499
    .line 341
    const-string/jumbo v11, " delayedResume="

    #@49c
    move-object/from16 v0, p1

    #@49e
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a1
    move-object/from16 v0, p0

    #@4a3
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    #@4a5
    move-object/from16 v0, p1

    #@4a7
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@4aa
    .line 342
    const-string/jumbo v11, " finishing="

    #@4ad
    move-object/from16 v0, p1

    #@4af
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b2
    move-object/from16 v0, p0

    #@4b4
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@4b6
    move-object/from16 v0, p1

    #@4b8
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    #@4bb
    .line 343
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4be
    const-string/jumbo v11, "keysPaused="

    #@4c1
    move-object/from16 v0, p1

    #@4c3
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c6
    move-object/from16 v0, p0

    #@4c8
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    #@4ca
    move-object/from16 v0, p1

    #@4cc
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@4cf
    .line 344
    const-string/jumbo v11, " inHistory="

    #@4d2
    move-object/from16 v0, p1

    #@4d4
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d7
    move-object/from16 v0, p0

    #@4d9
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    #@4db
    move-object/from16 v0, p1

    #@4dd
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@4e0
    .line 345
    const-string/jumbo v11, " visible="

    #@4e3
    move-object/from16 v0, p1

    #@4e5
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e8
    move-object/from16 v0, p0

    #@4ea
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@4ec
    move-object/from16 v0, p1

    #@4ee
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@4f1
    .line 346
    const-string/jumbo v11, " sleeping="

    #@4f4
    move-object/from16 v0, p1

    #@4f6
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f9
    move-object/from16 v0, p0

    #@4fb
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    #@4fd
    move-object/from16 v0, p1

    #@4ff
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@502
    .line 347
    const-string/jumbo v11, " idle="

    #@505
    move-object/from16 v0, p1

    #@507
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50a
    move-object/from16 v0, p0

    #@50c
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->idle:Z

    #@50e
    move-object/from16 v0, p1

    #@510
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@513
    .line 348
    const-string/jumbo v11, " mStartingWindowState="

    #@516
    move-object/from16 v0, p1

    #@518
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51b
    .line 349
    move-object/from16 v0, p0

    #@51d
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    #@51f
    invoke-static {v11}, Lcom/android/server/am/ActivityRecord;->startingWindowStateToString(I)Ljava/lang/String;

    #@522
    move-result-object v11

    #@523
    move-object/from16 v0, p1

    #@525
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@528
    .line 350
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52b
    const-string/jumbo v11, "fullscreen="

    #@52e
    move-object/from16 v0, p1

    #@530
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@533
    move-object/from16 v0, p0

    #@535
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@537
    move-object/from16 v0, p1

    #@539
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@53c
    .line 351
    const-string/jumbo v11, " noDisplay="

    #@53f
    move-object/from16 v0, p1

    #@541
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@544
    move-object/from16 v0, p0

    #@546
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    #@548
    move-object/from16 v0, p1

    #@54a
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@54d
    .line 352
    const-string/jumbo v11, " immersive="

    #@550
    move-object/from16 v0, p1

    #@552
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@555
    move-object/from16 v0, p0

    #@557
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->immersive:Z

    #@559
    move-object/from16 v0, p1

    #@55b
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@55e
    .line 353
    const-string/jumbo v11, " launchMode="

    #@561
    move-object/from16 v0, p1

    #@563
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@566
    move-object/from16 v0, p0

    #@568
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    #@56a
    move-object/from16 v0, p1

    #@56c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    #@56f
    .line 354
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@572
    const-string/jumbo v11, "frozenBeforeDestroy="

    #@575
    move-object/from16 v0, p1

    #@577
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57a
    move-object/from16 v0, p0

    #@57c
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    #@57e
    move-object/from16 v0, p1

    #@580
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@583
    .line 355
    const-string/jumbo v11, " forceNewConfig="

    #@586
    move-object/from16 v0, p1

    #@588
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@58b
    move-object/from16 v0, p0

    #@58d
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    #@58f
    move-object/from16 v0, p1

    #@591
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    #@594
    .line 356
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@597
    const-string/jumbo v11, "mActivityType="

    #@59a
    move-object/from16 v0, p1

    #@59c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@59f
    .line 357
    move-object/from16 v0, p0

    #@5a1
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@5a3
    invoke-static {v11}, Lcom/android/server/am/ActivityRecord;->activityTypeToString(I)Ljava/lang/String;

    #@5a6
    move-result-object v11

    #@5a7
    move-object/from16 v0, p1

    #@5a9
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5ac
    .line 358
    move-object/from16 v0, p0

    #@5ae
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    #@5b0
    if-eqz v11, :cond_12

    #@5b2
    .line 359
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b5
    .line 360
    const-string/jumbo v11, "requestedVrComponent="

    #@5b8
    move-object/from16 v0, p1

    #@5ba
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5bd
    .line 361
    move-object/from16 v0, p0

    #@5bf
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    #@5c1
    move-object/from16 v0, p1

    #@5c3
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@5c6
    .line 363
    :cond_12
    move-object/from16 v0, p0

    #@5c8
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@5ca
    const-wide/16 v14, 0x0

    #@5cc
    cmp-long v11, v12, v14

    #@5ce
    if-nez v11, :cond_13

    #@5d0
    move-object/from16 v0, p0

    #@5d2
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->startTime:J

    #@5d4
    const-wide/16 v14, 0x0

    #@5d6
    cmp-long v11, v12, v14

    #@5d8
    if-eqz v11, :cond_14

    #@5da
    .line 364
    :cond_13
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5dd
    const-string/jumbo v11, "displayStartTime="

    #@5e0
    move-object/from16 v0, p1

    #@5e2
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e5
    .line 365
    move-object/from16 v0, p0

    #@5e7
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@5e9
    const-wide/16 v14, 0x0

    #@5eb
    cmp-long v11, v12, v14

    #@5ed
    if-nez v11, :cond_1c

    #@5ef
    const-string/jumbo v11, "0"

    #@5f2
    move-object/from16 v0, p1

    #@5f4
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f7
    .line 367
    :goto_6
    const-string/jumbo v11, " startTime="

    #@5fa
    move-object/from16 v0, p1

    #@5fc
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5ff
    .line 368
    move-object/from16 v0, p0

    #@601
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->startTime:J

    #@603
    const-wide/16 v14, 0x0

    #@605
    cmp-long v11, v12, v14

    #@607
    if-nez v11, :cond_1d

    #@609
    const-string/jumbo v11, "0"

    #@60c
    move-object/from16 v0, p1

    #@60e
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@611
    .line 370
    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@614
    .line 372
    :cond_14
    move-object/from16 v0, p0

    #@616
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@618
    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@61a
    move-object/from16 v0, p0

    #@61c
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@61f
    move-result v8

    #@620
    .line 373
    .local v8, "waitingVisible":Z
    move-object/from16 v0, p0

    #@622
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    #@624
    const-wide/16 v14, 0x0

    #@626
    cmp-long v11, v12, v14

    #@628
    if-nez v11, :cond_15

    #@62a
    if-nez v8, :cond_15

    #@62c
    move-object/from16 v0, p0

    #@62e
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@630
    if-eqz v11, :cond_16

    #@632
    .line 374
    :cond_15
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@635
    const-string/jumbo v11, "waitingVisible="

    #@638
    move-object/from16 v0, p1

    #@63a
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63d
    move-object/from16 v0, p1

    #@63f
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Z)V

    #@642
    .line 375
    const-string/jumbo v11, " nowVisible="

    #@645
    move-object/from16 v0, p1

    #@647
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@64a
    move-object/from16 v0, p0

    #@64c
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@64e
    move-object/from16 v0, p1

    #@650
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@653
    .line 376
    const-string/jumbo v11, " lastVisibleTime="

    #@656
    move-object/from16 v0, p1

    #@658
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@65b
    .line 377
    move-object/from16 v0, p0

    #@65d
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    #@65f
    const-wide/16 v14, 0x0

    #@661
    cmp-long v11, v12, v14

    #@663
    if-nez v11, :cond_1e

    #@665
    const-string/jumbo v11, "0"

    #@668
    move-object/from16 v0, p1

    #@66a
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66d
    .line 379
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@670
    .line 381
    :cond_16
    move-object/from16 v0, p0

    #@672
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    #@674
    if-nez v11, :cond_17

    #@676
    move-object/from16 v0, p0

    #@678
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@67a
    if-eqz v11, :cond_18

    #@67c
    .line 382
    :cond_17
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@67f
    const-string/jumbo v11, "deferRelaunchUntilPaused="

    #@682
    move-object/from16 v0, p1

    #@684
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@687
    move-object/from16 v0, p0

    #@689
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    #@68b
    move-object/from16 v0, p1

    #@68d
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@690
    .line 383
    const-string/jumbo v11, " configChangeFlags="

    #@693
    move-object/from16 v0, p1

    #@695
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@698
    .line 384
    move-object/from16 v0, p0

    #@69a
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@69c
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@69f
    move-result-object v11

    #@6a0
    move-object/from16 v0, p1

    #@6a2
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6a5
    .line 386
    :cond_18
    move-object/from16 v0, p0

    #@6a7
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    #@6a9
    if-eqz v11, :cond_19

    #@6ab
    .line 387
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6ae
    const-string/jumbo v11, "connections="

    #@6b1
    move-object/from16 v0, p1

    #@6b3
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6b6
    move-object/from16 v0, p0

    #@6b8
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    #@6ba
    move-object/from16 v0, p1

    #@6bc
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@6bf
    .line 389
    :cond_19
    move-object/from16 v0, p0

    #@6c1
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@6c3
    if-eqz v11, :cond_1a

    #@6c5
    .line 390
    new-instance v11, Ljava/lang/StringBuilder;

    #@6c7
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@6ca
    move-object/from16 v0, p2

    #@6cc
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6cf
    move-result-object v11

    #@6d0
    const-string/jumbo v12, "resizeMode="

    #@6d3
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d6
    move-result-object v11

    #@6d7
    move-object/from16 v0, p0

    #@6d9
    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@6db
    iget v12, v12, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@6dd
    invoke-static {v12}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    #@6e0
    move-result-object v12

    #@6e1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e4
    move-result-object v11

    #@6e5
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e8
    move-result-object v11

    #@6e9
    move-object/from16 v0, p1

    #@6eb
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6ee
    .line 237
    :cond_1a
    return-void

    #@6ef
    .line 335
    .end local v8    # "waitingVisible":Z
    :cond_1b
    move-object/from16 v0, p0

    #@6f1
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    #@6f3
    move-object/from16 v0, p1

    #@6f5
    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@6f8
    goto/16 :goto_5

    #@6fa
    .line 366
    :cond_1c
    move-object/from16 v0, p0

    #@6fc
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@6fe
    move-object/from16 v0, p1

    #@700
    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@703
    goto/16 :goto_6

    #@705
    .line 369
    :cond_1d
    move-object/from16 v0, p0

    #@707
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->startTime:J

    #@709
    move-object/from16 v0, p1

    #@70b
    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@70e
    goto/16 :goto_7

    #@710
    .line 378
    .restart local v8    # "waitingVisible":Z
    :cond_1e
    move-object/from16 v0, p0

    #@712
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    #@714
    move-object/from16 v0, p1

    #@716
    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@719
    goto/16 :goto_8
.end method

.method finishLaunchTickingLocked()V
    .locals 4

    #@0
    .prologue
    .line 1128
    const-wide/16 v2, 0x0

    #@2
    iput-wide v2, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    #@4
    .line 1129
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@8
    .line 1130
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    #@a
    .line 1131
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@c
    const/16 v2, 0x67

    #@e
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@11
    .line 1127
    :cond_0
    return-void
.end method

.method getOptionsForTargetActivityLocked()Landroid/app/ActivityOptions;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1052
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@7
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->forTargetActivity()Landroid/app/ActivityOptions;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;
    .locals 2

    #@0
    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 884
    new-instance v0, Lcom/android/server/am/UriPermissionOwner;

    #@6
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@8
    invoke-direct {v0, v1, p0}, Lcom/android/server/am/UriPermissionOwner;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Object;)V

    #@b
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@d
    .line 886
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@f
    return-object v0
.end method

.method getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;
    .locals 3

    #@0
    .prologue
    .line 1273
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@2
    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@c
    if-eqz v2, :cond_2

    #@e
    .line 1274
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@10
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@13
    move-result-object v1

    #@14
    .line 1276
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@16
    .line 1277
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_1

    #@18
    .line 1278
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@1a
    .line 1280
    :cond_1
    if-eqz v0, :cond_2

    #@1c
    .line 1281
    return-object v0

    #@1d
    .line 1284
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    return-object p0
.end method

.method isAlwaysFocusable()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 865
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@3
    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    #@5
    const/high16 v2, 0x40000

    #@7
    and-int/2addr v1, v2

    #@8
    if-eqz v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :cond_0
    return v0
.end method

.method isApplicationActivity()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 828
    iget v1, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method final isDestroyable()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1340
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@3
    if-nez v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@7
    if-nez v0, :cond_1

    #@9
    .line 1343
    :cond_0
    return v2

    #@a
    .line 1340
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@c
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@e
    if-eq v0, v1, :cond_0

    #@10
    .line 1341
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@12
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@14
    if-eq v0, v1, :cond_0

    #@16
    .line 1345
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@18
    if-eqz v0, :cond_2

    #@1a
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1c
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@1e
    if-nez v0, :cond_3

    #@20
    .line 1348
    :cond_2
    return v2

    #@21
    .line 1345
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@23
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@25
    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@27
    if-eq p0, v0, :cond_2

    #@29
    .line 1346
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@2b
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@2d
    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@2f
    if-eq p0, v0, :cond_2

    #@31
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    #@33
    if-eqz v0, :cond_2

    #@35
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@37
    if-eqz v0, :cond_2

    #@39
    .line 1350
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@3b
    if-eqz v0, :cond_4

    #@3d
    .line 1352
    return v2

    #@3e
    .line 1354
    :cond_4
    const/4 v0, 0x1

    #@3f
    return v0
.end method

.method isFocusable()Z
    .locals 1

    #@0
    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@2
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@4
    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@6
    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->canReceiveKeys(I)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isAlwaysFocusable()Z

    #@f
    move-result v0

    #@10
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method isFreeform()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 488
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@7
    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 489
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@d
    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@f
    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@11
    const/4 v2, 0x2

    #@12
    if-ne v1, v2, :cond_0

    #@14
    const/4 v0, 0x1

    #@15
    .line 488
    :cond_0
    return v0
.end method

.method isHomeActivity()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 820
    iget v1, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@3
    if-ne v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method isInHistory()Z
    .locals 1

    #@0
    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    #@2
    return v0
.end method

.method isInStackLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 816
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@7
    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@9
    if-eqz v1, :cond_0

    #@b
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@d
    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@f
    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@12
    move-result-object v1

    #@13
    if-eqz v1, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    :cond_0
    return v0
.end method

.method public isInterestingToUserLocked()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1292
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@3
    if-nez v1, :cond_0

    #@5
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@7
    if-nez v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@b
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@d
    if-ne v1, v2, :cond_1

    #@f
    :cond_0
    :goto_0
    return v0

    #@10
    .line 1293
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@12
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@14
    if-eq v1, v2, :cond_0

    #@16
    const/4 v0, 0x0

    #@17
    goto :goto_0
.end method

.method isNonResizableOrForced()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 851
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@9
    iget v1, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@b
    const/4 v2, 0x2

    #@c
    if-eq v1, v2, :cond_0

    #@e
    .line 852
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@10
    iget v1, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@12
    const/4 v2, 0x3

    #@13
    if-eq v1, v2, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    .line 851
    :cond_0
    return v0
.end method

.method isPersistable()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 832
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@4
    iget v2, v2, Landroid/content/pm/ActivityInfo;->persistableMode:I

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 833
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@a
    iget v2, v2, Landroid/content/pm/ActivityInfo;->persistableMode:I

    #@c
    const/4 v3, 0x2

    #@d
    if-ne v2, v3, :cond_2

    #@f
    .line 834
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 835
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@15
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    #@18
    move-result v2

    #@19
    const/high16 v3, 0x800000

    #@1b
    and-int/2addr v2, v3

    #@1c
    if-nez v2, :cond_3

    #@1e
    :cond_1
    :goto_0
    move v1, v0

    #@1f
    .line 832
    :cond_2
    return v1

    #@20
    :cond_3
    move v0, v1

    #@21
    .line 835
    goto :goto_0
.end method

.method isRecentsActivity()Z
    .locals 2

    #@0
    .prologue
    .line 824
    iget v0, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method isResizeable()Z
    .locals 1

    #@0
    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@8
    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@a
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method isResizeableOrForced()Z
    .locals 1

    #@0
    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1

    #@6
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@e
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    #@10
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0

    #@13
    :cond_1
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method

.method isResolverActivity()Z
    .locals 2

    #@0
    .prologue
    .line 594
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@8
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method makeFinishingLocked()V
    .locals 2

    #@0
    .prologue
    .line 869
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 870
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@a
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 871
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@10
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@12
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    #@15
    move-result-object v0

    #@16
    if-ne p0, v0, :cond_0

    #@18
    .line 873
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1a
    const/4 v1, 0x0

    #@1b
    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    #@1e
    .line 875
    :cond_0
    const/4 v0, 0x1

    #@1f
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@21
    .line 876
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 877
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    #@28
    .line 868
    :cond_1
    return-void
.end method

.method public mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1142
    if-eqz p1, :cond_0

    #@3
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    #@5
    if-eqz v1, :cond_1

    #@7
    :cond_0
    :goto_0
    return v0

    #@8
    :cond_1
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    #@a
    if-nez v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method pauseKeyDispatchingLocked()V
    .locals 2

    #@0
    .prologue
    .line 1076
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1077
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    #@7
    .line 1078
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@9
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@b
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->pauseKeyDispatching(Landroid/os/IBinder;)V

    #@10
    .line 1075
    :cond_0
    return-void
.end method

.method putInHistory()V
    .locals 1

    #@0
    .prologue
    .line 796
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 797
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    #@7
    .line 795
    :cond_0
    return-void
.end method

.method removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 3
    .param p1, "from"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    #@0
    .prologue
    .line 902
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@2
    if-eqz v2, :cond_4

    #@4
    .line 903
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v2

    #@a
    add-int/lit8 v0, v2, -0x1

    #@c
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    #@e
    .line 904
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lcom/android/server/am/ActivityResult;

    #@16
    .line 905
    .local v1, "r":Lcom/android/server/am/ActivityResult;
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mFrom:Lcom/android/server/am/ActivityRecord;

    #@18
    if-eq v2, p1, :cond_1

    #@1a
    .line 903
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 906
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    #@1f
    if-nez v2, :cond_3

    #@21
    .line 907
    if-nez p2, :cond_0

    #@23
    .line 911
    :cond_2
    iget v2, v1, Lcom/android/server/am/ActivityResult;->mRequestCode:I

    #@25
    if-ne v2, p3, :cond_0

    #@27
    .line 913
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2c
    goto :goto_1

    #@2d
    .line 909
    :cond_3
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    #@2f
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_2

    #@35
    goto :goto_1

    #@36
    .line 901
    .end local v0    # "i":I
    .end local v1    # "r":Lcom/android/server/am/ActivityResult;
    :cond_4
    return-void
.end method

.method removeUriPermissionsLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1069
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1070
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@7
    invoke-virtual {v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked()V

    #@a
    .line 1071
    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@c
    .line 1068
    :cond_0
    return-void
.end method

.method public reportFullyDrawnLocked()V
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x0

    #@1
    const-wide/16 v12, 0x0

    #@3
    .line 1159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6
    move-result-wide v0

    #@7
    .line 1160
    .local v0, "curTime":J
    iget-wide v8, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@9
    cmp-long v8, v8, v12

    #@b
    if-eqz v8, :cond_0

    #@d
    .line 1161
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityRecord;->reportLaunchTimeLocked(J)V

    #@10
    .line 1163
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@12
    iget-object v3, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@14
    .line 1164
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    iget-wide v8, p0, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    #@16
    cmp-long v8, v8, v12

    #@18
    if-eqz v8, :cond_3

    #@1a
    if-eqz v3, :cond_3

    #@1c
    .line 1165
    iget-wide v8, p0, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    #@1e
    sub-long v4, v0, v8

    #@20
    .line 1166
    .local v4, "thisTime":J
    iget-wide v8, v3, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    #@22
    cmp-long v8, v8, v12

    #@24
    if-eqz v8, :cond_4

    #@26
    .line 1167
    iget-wide v8, v3, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    #@28
    sub-long v6, v0, v8

    #@2a
    .line 1169
    .local v6, "totalTime":J
    :goto_0
    const-string/jumbo v8, "drawing"

    #@2d
    const-wide/16 v10, 0x40

    #@2f
    invoke-static {v10, v11, v8, v14}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@32
    .line 1170
    const/4 v8, 0x5

    #@33
    new-array v8, v8, [Ljava/lang/Object;

    #@35
    .line 1171
    iget v9, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@37
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v9

    #@3b
    aput-object v9, v8, v14

    #@3d
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@40
    move-result v9

    #@41
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v9

    #@45
    const/4 v10, 0x1

    #@46
    aput-object v9, v8, v10

    #@48
    iget-object v9, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@4a
    const/4 v10, 0x2

    #@4b
    aput-object v9, v8, v10

    #@4d
    .line 1172
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@50
    move-result-object v9

    #@51
    const/4 v10, 0x3

    #@52
    aput-object v9, v8, v10

    #@54
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@57
    move-result-object v9

    #@58
    const/4 v10, 0x4

    #@59
    aput-object v9, v8, v10

    #@5b
    .line 1170
    const/16 v9, 0x755a

    #@5d
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@60
    .line 1173
    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@62
    iget-object v2, v8, Lcom/android/server/am/ActivityManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    #@64
    .line 1174
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    #@67
    .line 1175
    const-string/jumbo v8, "Fully drawn "

    #@6a
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    .line 1176
    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@6f
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    .line 1177
    const-string/jumbo v8, ": "

    #@75
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    .line 1178
    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@7b
    .line 1179
    cmp-long v8, v4, v6

    #@7d
    if-eqz v8, :cond_1

    #@7f
    .line 1180
    const-string/jumbo v8, " (total "

    #@82
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    .line 1181
    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@88
    .line 1182
    const-string/jumbo v8, ")"

    #@8b
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    .line 1184
    :cond_1
    sget-object v8, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    #@90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v9

    #@94
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@97
    .line 1186
    cmp-long v8, v6, v12

    #@99
    if-lez v8, :cond_2

    #@9b
    .line 1189
    :cond_2
    iput-wide v12, v3, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    #@9d
    .line 1191
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "thisTime":J
    .end local v6    # "totalTime":J
    :cond_3
    iput-wide v12, p0, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    #@9f
    .line 1158
    return-void

    #@a0
    .line 1167
    .restart local v4    # "thisTime":J
    :cond_4
    move-wide v6, v4

    #@a1
    .restart local v6    # "totalTime":J
    goto :goto_0
.end method

.method resumeKeyDispatchingLocked()V
    .locals 2

    #@0
    .prologue
    .line 1083
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1084
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    #@7
    .line 1085
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@9
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@b
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->resumeKeyDispatching(Landroid/os/IBinder;)V

    #@10
    .line 1082
    :cond_0
    return-void
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1397
    const-string/jumbo v0, "id"

    #@4
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->createTime:J

    #@6
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d
    .line 1398
    const-string/jumbo v0, "launched_from_uid"

    #@10
    iget v1, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    #@12
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@19
    .line 1399
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 1400
    const-string/jumbo v0, "launched_from_package"

    #@20
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@22
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@25
    .line 1402
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 1403
    const-string/jumbo v0, "resolved_type"

    #@2c
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    #@2e
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@31
    .line 1405
    :cond_1
    const-string/jumbo v0, "component_specified"

    #@34
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    #@36
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3d
    .line 1406
    const-string/jumbo v0, "user_id"

    #@40
    iget v1, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@42
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@49
    .line 1408
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@4b
    if-eqz v0, :cond_2

    #@4d
    .line 1409
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@4f
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@52
    .line 1412
    :cond_2
    const-string/jumbo v0, "intent"

    #@55
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@58
    .line 1413
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@5a
    invoke-virtual {v0, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@5d
    .line 1414
    const-string/jumbo v0, "intent"

    #@60
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@63
    .line 1416
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    #@66
    move-result v0

    #@67
    if-eqz v0, :cond_3

    #@69
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    #@6b
    if-eqz v0, :cond_3

    #@6d
    .line 1417
    const-string/jumbo v0, "persistable_bundle"

    #@70
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@73
    .line 1418
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    #@75
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@78
    .line 1419
    const-string/jumbo v0, "persistable_bundle"

    #@7b
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7e
    .line 1396
    :cond_3
    return-void
.end method

.method scheduleConfigurationChanged(Landroid/content/res/Configuration;Z)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "reportToActivity"    # Z

    #@0
    .prologue
    .line 443
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@2
    if-eqz v2, :cond_0

    #@4
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@6
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@8
    if-nez v2, :cond_1

    #@a
    .line 444
    :cond_0
    return-void

    #@b
    .line 450
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/res/Configuration;

    #@d
    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@10
    .line 451
    .local v1, "overrideConfig":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@12
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@14
    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    #@16
    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    #@18
    .line 456
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@1a
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@1c
    .line 457
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@1e
    .line 456
    invoke-interface {v2, v3, v1, p2}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 442
    .end local v1    # "overrideConfig":Landroid/content/res/Configuration;
    :goto_0
    return-void

    #@22
    .line 458
    :catch_0
    move-exception v0

    #@23
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method scheduleMultiWindowModeChanged()V
    .locals 4

    #@0
    .prologue
    .line 464
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6
    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@8
    if-nez v1, :cond_1

    #@a
    .line 465
    :cond_0
    return-void

    #@b
    .line 464
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@d
    if-eqz v1, :cond_0

    #@f
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@11
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 469
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@17
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@19
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@1b
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1d
    iget-boolean v1, v1, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    #@1f
    if-eqz v1, :cond_2

    #@21
    const/4 v1, 0x0

    #@22
    :goto_0
    invoke-interface {v2, v3, v1}, Landroid/app/IApplicationThread;->scheduleMultiWindowModeChanged(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 463
    :goto_1
    return-void

    #@26
    .line 469
    :cond_2
    const/4 v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 470
    :catch_0
    move-exception v0

    #@29
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method schedulePictureInPictureModeChanged()V
    .locals 5

    #@0
    .prologue
    .line 476
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6
    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@8
    if-nez v1, :cond_1

    #@a
    .line 477
    :cond_0
    return-void

    #@b
    .line 476
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@d
    if-eqz v1, :cond_0

    #@f
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@11
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 480
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@17
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@19
    .line 481
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@1b
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1d
    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@1f
    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@21
    const/4 v4, 0x4

    #@22
    if-ne v1, v4, :cond_2

    #@24
    const/4 v1, 0x1

    #@25
    .line 480
    :goto_0
    invoke-interface {v2, v3, v1}, Landroid/app/IApplicationThread;->schedulePictureInPictureModeChanged(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 475
    :goto_1
    return-void

    #@29
    .line 481
    :cond_2
    const/4 v1, 0x0

    #@2a
    goto :goto_0

    #@2b
    .line 482
    :catch_0
    move-exception v0

    #@2c
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public setSizeConfigurations([I[I[I)V
    .locals 0
    .param p1, "horizontalSizeConfiguration"    # [I
    .param p2, "verticalSizeConfigurations"    # [I
    .param p3, "smallestSizeConfigurations"    # [I

    #@0
    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->mHorizontalSizeConfigurations:[I

    #@2
    .line 438
    iput-object p2, p0, Lcom/android/server/am/ActivityRecord;->mVerticalSizeConfigurations:[I

    #@4
    .line 439
    iput-object p3, p0, Lcom/android/server/am/ActivityRecord;->mSmallestSizeConfigurations:[I

    #@6
    .line 436
    return-void
.end method

.method public setSleeping(Z)V
    .locals 4
    .param p1, "_sleeping"    # Z

    #@0
    .prologue
    .line 1297
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    #@2
    if-ne v1, p1, :cond_0

    #@4
    .line 1298
    return-void

    #@5
    .line 1300
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@7
    if-eqz v1, :cond_2

    #@9
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@b
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@d
    if-eqz v1, :cond_2

    #@f
    .line 1302
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@11
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@13
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@15
    invoke-interface {v1, v2, p1}, Landroid/app/IApplicationThread;->scheduleSleeping(Landroid/os/IBinder;Z)V

    #@18
    .line 1303
    if-eqz p1, :cond_1

    #@1a
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1c
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_3

    #@24
    .line 1306
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    #@26
    .line 1296
    :cond_2
    :goto_1
    return-void

    #@27
    .line 1304
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@29
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    goto :goto_0

    #@2f
    .line 1307
    :catch_0
    move-exception v0

    #@30
    .line 1308
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    #@32
    new-instance v2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v3, "Exception thrown when sleeping: "

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@40
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4f
    goto :goto_1
.end method

.method setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 3
    .param p1, "newTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "taskToAffiliateWith"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6
    invoke-virtual {v0, p0}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@e
    if-eq v0, p1, :cond_0

    #@10
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@12
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 769
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@18
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@1a
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1c
    const-string/jumbo v2, "setTask"

    #@1f
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    #@22
    .line 771
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@24
    .line 772
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    #@27
    .line 767
    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 7
    .param p1, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    #@0
    .prologue
    .line 1364
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 1365
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    #@9
    move-result-object v0

    #@a
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    #@c
    .line 1366
    iget-wide v4, p0, Lcom/android/server/am/ActivityRecord;->createTime:J

    #@e
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@10
    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    #@12
    invoke-static {v4, v5, v6}, Lcom/android/server/am/ActivityRecord;->createImageFilename(JI)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    .line 1367
    .local v3, "iconFilename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    #@18
    iget v4, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@1a
    invoke-static {v4}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    #@1d
    move-result-object v4

    #@1e
    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@21
    .line 1368
    .local v1, "iconFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 1369
    .local v2, "iconFilePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@27
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@29
    invoke-virtual {v4, v0, v2}, Lcom/android/server/am/RecentTasks;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    #@2c
    .line 1370
    invoke-virtual {p1, v2}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    #@2f
    .line 1372
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    .end local v1    # "iconFile":Ljava/io/File;
    .end local v2    # "iconFilePath":Ljava/lang/String;
    .end local v3    # "iconFilename":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@31
    .line 1362
    return-void
.end method

.method setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V
    .locals 2
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 776
    if-eqz p1, :cond_0

    #@2
    .line 777
    iget v0, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    #@4
    const/4 v1, 0x3

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 778
    iget v0, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    #@9
    const/4 v1, 0x2

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 779
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@e
    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    #@11
    .line 775
    :cond_0
    return-void
.end method

.method setVoiceSessionLocked(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 1
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    #@0
    .prologue
    .line 1376
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@2
    .line 1377
    const/4 v0, 0x0

    #@3
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->pendingVoiceInteractionStart:Z

    #@5
    .line 1375
    return-void
.end method

.method showStartingWindow(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 13
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "createIfNeeded"    # Z

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1387
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@3
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@5
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    #@a
    move-result-object v4

    #@b
    .line 1388
    .local v4, "compatInfo":Landroid/content/res/CompatibilityInfo;
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@d
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@f
    .line 1389
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@11
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@13
    iget v3, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    #@15
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@17
    iget v6, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    #@19
    iget v7, p0, Lcom/android/server/am/ActivityRecord;->icon:I

    #@1b
    .line 1390
    iget v8, p0, Lcom/android/server/am/ActivityRecord;->logo:I

    #@1d
    iget v9, p0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    #@1f
    if-eqz p1, :cond_0

    #@21
    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@23
    :cond_0
    move v11, p2

    #@24
    .line 1388
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)Z

    #@27
    move-result v12

    #@28
    .line 1391
    .local v12, "shown":Z
    if-eqz v12, :cond_1

    #@2a
    .line 1392
    const/4 v0, 0x1

    #@2b
    iput v0, p0, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    #@2d
    .line 1385
    :cond_1
    return-void
.end method

.method public startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "configChanges"    # I

    #@0
    .prologue
    .line 1146
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1147
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@8
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@a
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@c
    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    #@f
    .line 1145
    :cond_0
    return-void
.end method

.method startLaunchTickingLocked()V
    .locals 4

    #@0
    .prologue
    .line 1102
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1103
    return-void

    #@5
    .line 1105
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    #@7
    const-wide/16 v2, 0x0

    #@9
    cmp-long v0, v0, v2

    #@b
    if-nez v0, :cond_1

    #@d
    .line 1106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@10
    move-result-wide v0

    #@11
    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    #@13
    .line 1107
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->continueLaunchTickingLocked()Z

    #@16
    .line 1101
    :cond_1
    return-void
.end method

.method public stopFreezingScreenLocked(Z)V
    .locals 2
    .param p1, "force"    # Z

    #@0
    .prologue
    .line 1152
    if-nez p1, :cond_0

    #@2
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1153
    :cond_0
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    #@9
    .line 1154
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@b
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@d
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@f
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    #@12
    .line 1151
    :cond_1
    return-void
.end method

.method supportsPictureInPicture()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 856
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@9
    iget v1, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@b
    const/4 v2, 0x3

    #@c
    if-ne v1, v2, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :cond_0
    return v0
.end method

.method takeFromHistory()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 802
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 803
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    #@8
    .line 804
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 807
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    #@13
    .line 801
    :cond_1
    return-void

    #@14
    .line 805
    :cond_2
    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@16
    goto :goto_0
.end method

.method takeOptionsLocked()Landroid/app/ActivityOptions;
    .locals 2

    #@0
    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@2
    .line 1064
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x0

    #@3
    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@5
    .line 1065
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1515
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_2

    #@4
    .line 1516
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, " t"

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@18
    if-nez v1, :cond_0

    #@1a
    const/4 v1, -0x1

    #@1b
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 1517
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@21
    if-eqz v1, :cond_1

    #@23
    const-string/jumbo v1, " f}"

    #@26
    .line 1516
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    return-object v1

    #@2f
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@31
    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@33
    goto :goto_0

    #@34
    .line 1517
    :cond_1
    const-string/jumbo v1, "}"

    #@37
    goto :goto_1

    #@38
    .line 1519
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@3a
    const/16 v1, 0x80

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@3f
    .line 1520
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ActivityRecord{"

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 1521
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@48
    move-result v1

    #@49
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    .line 1522
    const-string/jumbo v1, " u"

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 1523
    iget v1, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    .line 1524
    const/16 v1, 0x20

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@60
    .line 1525
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@62
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    .line 1526
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    #@73
    .line 1527
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    #@76
    move-result-object v1

    #@77
    return-object v1
.end method

.method updateOptionsLocked(Landroid/app/ActivityOptions;)V
    .locals 1
    .param p1, "options"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    .line 961
    if-eqz p1, :cond_1

    #@2
    .line 962
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 963
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@8
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    #@b
    .line 965
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@d
    .line 960
    :cond_1
    return-void
.end method

.method updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "newThumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "description"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1090
    if-eqz p1, :cond_0

    #@2
    .line 1093
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4
    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskRecord;->setLastThumbnailLocked(Landroid/graphics/Bitmap;)Z

    #@7
    move-result v0

    #@8
    .line 1094
    .local v0, "thumbnailUpdated":Z
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 1095
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@12
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@14
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@16
    const/4 v3, 0x0

    #@17
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@1a
    .line 1098
    .end local v0    # "thumbnailUpdated":Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1c
    iput-object p2, v1, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    #@1e
    .line 1089
    return-void
.end method

.method windowsDrawnLocked()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 1229
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@4
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    #@6
    invoke-virtual {v0}, Lcom/android/server/am/ActivityMetricsLogger;->notifyWindowsDrawn()V

    #@9
    .line 1230
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@b
    cmp-long v0, v0, v2

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 1231
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@12
    move-result-wide v0

    #@13
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityRecord;->reportLaunchTimeLocked(J)V

    #@16
    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@18
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V

    #@1b
    .line 1234
    iput-wide v2, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    #@1d
    .line 1235
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    #@20
    .line 1236
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 1237
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@26
    const/4 v1, 0x1

    #@27
    iput-boolean v1, v0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    #@29
    .line 1228
    :cond_1
    return-void
.end method

.method windowsVisibleLocked()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1242
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3
    invoke-virtual {v3, p0}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V

    #@6
    .line 1244
    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@8
    if-nez v3, :cond_1

    #@a
    .line 1245
    const/4 v3, 0x1

    #@b
    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@d
    .line 1246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@10
    move-result-wide v4

    #@11
    iput-wide v4, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    #@13
    .line 1247
    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    #@15
    if-nez v3, :cond_2

    #@17
    .line 1250
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@19
    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    #@1c
    .line 1265
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@1e
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    #@21
    .line 1241
    :cond_1
    return-void

    #@22
    .line 1255
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@24
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v2

    #@2a
    .line 1256
    .local v2, "size":I
    if-lez v2, :cond_0

    #@2c
    .line 1257
    const/4 v0, 0x0

    #@2d
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    #@2f
    .line 1258
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@31
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v1

    #@37
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@39
    .line 1257
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 1261
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3e
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@43
    .line 1262
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@45
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    #@48
    goto :goto_0
.end method
