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

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_PERSISTABLEBUNDLE:Ljava/lang/String; = "persistable_bundle"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_THUMBNAILS:Ljava/lang/String; = "ActivityManager"


# instance fields
.field app:Lcom/android/server/am/ProcessRecord;

.field final appInfo:Landroid/content/pm/ApplicationInfo;

.field appTimeTracker:Lcom/android/server/am/AppTimeTracker;

.field final appToken:Landroid/view/IApplicationToken$Stub;

.field compat:Landroid/content/res/CompatibilityInfo;

.field final componentSpecified:Z

.field configChangeFlags:I

.field configDestroy:Z

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

.field mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

.field mLaunchTaskBehind:Z

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mStartingWindowShown:Z

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

.field persistentState:Landroid/os/PersistableBundle;

.field final processName:Ljava/lang/String;

.field final realActivity:Landroid/content/ComponentName;

.field realTheme:I

.field final requestCode:I

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

.field stackConfigOverride:Landroid/content/res/Configuration;

.field startTime:J

.field state:Lcom/android/server/am/ActivityStack$ActivityState;

.field final stateNotNeeded:Z

.field stopped:Z

.field stringName:Ljava/lang/String;

.field task:Lcom/android/server/am/TaskRecord;

.field final taskAffinity:Ljava/lang/String;

.field taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field theme:I

.field uriPermissions:Lcom/android/server/am/UriPermissionOwner;

.field final userId:I

.field visible:Z

.field windowFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/os/Bundle;)V
    .locals 11
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
    .param p16, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v6

    #@7
    iput-wide v6, p0, Lcom/android/server/am/ActivityRecord;->createTime:J

    #@9
    .line 174
    new-instance v6, Ljava/util/ArrayList;

    #@b
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    #@10
    .line 180
    const/4 v6, 0x0

    #@11
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    #@13
    .line 442
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@15
    .line 443
    new-instance v6, Lcom/android/server/am/ActivityRecord$Token;

    #@17
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@19
    invoke-direct {v6, p0, v7}, Lcom/android/server/am/ActivityRecord$Token;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityManagerService;)V

    #@1c
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@1e
    .line 444
    move-object/from16 v0, p7

    #@20
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@22
    .line 445
    iput p3, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    #@24
    .line 446
    iput-object p4, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@26
    .line 447
    move-object/from16 v0, p7

    #@28
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2a
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@2c
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    #@2f
    move-result v6

    #@30
    iput v6, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@32
    .line 448
    move-object/from16 v0, p5

    #@34
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@36
    .line 449
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@40
    .line 450
    move-object/from16 v0, p6

    #@42
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    #@44
    .line 451
    move/from16 v0, p12

    #@46
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    #@48
    .line 452
    move/from16 v0, p13

    #@4a
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->rootVoiceInteraction:Z

    #@4c
    .line 453
    move-object/from16 v0, p8

    #@4e
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    #@50
    .line 454
    if-eqz p15, :cond_9

    #@52
    .line 455
    move-object/from16 v0, p15

    #@54
    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@56
    iget-object v6, v6, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@58
    .line 454
    :goto_0
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->stackConfigOverride:Landroid/content/res/Configuration;

    #@5a
    .line 456
    move-object/from16 v0, p9

    #@5c
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@5e
    .line 457
    move-object/from16 v0, p10

    #@60
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    #@62
    .line 458
    move/from16 v0, p11

    #@64
    iput v0, p0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    #@66
    .line 459
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@68
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@6a
    .line 460
    const/4 v6, 0x0

    #@6b
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@6d
    .line 461
    const/4 v6, 0x0

    #@6e
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    #@70
    .line 462
    const/4 v6, 0x0

    #@71
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@73
    .line 463
    const/4 v6, 0x0

    #@74
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    #@76
    .line 464
    const/4 v6, 0x0

    #@77
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@79
    .line 465
    const/4 v6, 0x0

    #@7a
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    #@7c
    .line 466
    const/4 v6, 0x0

    #@7d
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    #@7f
    .line 467
    const/4 v6, 0x0

    #@80
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    #@82
    .line 468
    const/4 v6, 0x1

    #@83
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@85
    .line 469
    const/4 v6, 0x0

    #@86
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@88
    .line 470
    const/4 v6, 0x0

    #@89
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    #@8b
    .line 471
    const/4 v6, 0x0

    #@8c
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    #@8e
    .line 472
    move-object/from16 v0, p14

    #@90
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@92
    .line 473
    move-object/from16 v0, p15

    #@94
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@96
    .line 474
    if-eqz p16, :cond_0

    #@98
    .line 475
    new-instance v6, Landroid/app/ActivityOptions;

    #@9a
    move-object/from16 v0, p16

    #@9c
    invoke-direct {v6, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    #@9f
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@a1
    .line 476
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@a3
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchTaskBehind()Z

    #@a6
    move-result v6

    #@a7
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@a9
    .line 477
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@ab
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getUsageTimeReport()Landroid/app/PendingIntent;

    #@ae
    move-result-object v5

    #@af
    .line 478
    .local v5, "usageReport":Landroid/app/PendingIntent;
    if-eqz v5, :cond_0

    #@b1
    .line 479
    new-instance v6, Lcom/android/server/am/AppTimeTracker;

    #@b3
    invoke-direct {v6, v5}, Lcom/android/server/am/AppTimeTracker;-><init>(Landroid/app/PendingIntent;)V

    #@b6
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@b8
    .line 486
    .end local v5    # "usageReport":Landroid/app/PendingIntent;
    :cond_0
    const/4 v6, 0x1

    #@b9
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    #@bb
    .line 488
    if-eqz p7, :cond_18

    #@bd
    .line 489
    move-object/from16 v0, p7

    #@bf
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@c1
    if-eqz v6, :cond_1

    #@c3
    .line 490
    move-object/from16 v0, p7

    #@c5
    iget v6, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@c7
    if-nez v6, :cond_a

    #@c9
    .line 492
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@cc
    move-result-object v6

    #@cd
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@cf
    .line 497
    :goto_1
    move-object/from16 v0, p7

    #@d1
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@d3
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    #@d5
    .line 498
    move-object/from16 v0, p7

    #@d7
    iget v6, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@d9
    and-int/lit8 v6, v6, 0x10

    #@db
    if-eqz v6, :cond_b

    #@dd
    const/4 v6, 0x1

    #@de
    :goto_2
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    #@e0
    .line 500
    move-object/from16 v0, p7

    #@e2
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@e4
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@e6
    .line 501
    move-object/from16 v0, p7

    #@e8
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@ea
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@ec
    .line 502
    move-object/from16 v0, p7

    #@ee
    iget v6, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    #@f0
    iput v6, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    #@f2
    .line 503
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@f4
    if-nez v6, :cond_2

    #@f6
    iget v6, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    #@f8
    if-nez v6, :cond_2

    #@fa
    .line 504
    move-object/from16 v0, p7

    #@fc
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@fe
    .line 505
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@100
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@102
    .line 506
    iget v6, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    #@104
    iput v6, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    #@106
    .line 508
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_2
    invoke-virtual/range {p7 .. p7}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    #@109
    move-result v6

    #@10a
    iput v6, p0, Lcom/android/server/am/ActivityRecord;->icon:I

    #@10c
    .line 509
    invoke-virtual/range {p7 .. p7}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    #@10f
    move-result v6

    #@110
    iput v6, p0, Lcom/android/server/am/ActivityRecord;->logo:I

    #@112
    .line 510
    invoke-virtual/range {p7 .. p7}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    #@115
    move-result v6

    #@116
    iput v6, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    #@118
    .line 511
    iget v6, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    #@11a
    iput v6, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    #@11c
    .line 512
    iget v6, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    #@11e
    if-nez v6, :cond_3

    #@120
    .line 513
    move-object/from16 v0, p7

    #@122
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@124
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@126
    .line 514
    const/16 v7, 0xb

    #@128
    .line 513
    if-ge v6, v7, :cond_c

    #@12a
    .line 515
    const v6, 0x1030005

    #@12d
    .line 513
    :goto_3
    iput v6, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    #@12f
    .line 518
    :cond_3
    move-object/from16 v0, p7

    #@131
    iget v6, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@133
    and-int/lit16 v6, v6, 0x200

    #@135
    if-eqz v6, :cond_4

    #@137
    .line 519
    iget v6, p0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    #@139
    const/high16 v7, 0x1000000

    #@13b
    or-int/2addr v6, v7

    #@13c
    iput v6, p0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    #@13e
    .line 521
    :cond_4
    move-object/from16 v0, p7

    #@140
    iget v6, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@142
    and-int/lit8 v6, v6, 0x1

    #@144
    if-eqz v6, :cond_d

    #@146
    .line 522
    if-eqz p2, :cond_d

    #@148
    .line 523
    move-object/from16 v0, p7

    #@14a
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@14c
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@14e
    const/16 v7, 0x3e8

    #@150
    if-eq v6, v7, :cond_5

    #@152
    .line 524
    move-object/from16 v0, p7

    #@154
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@156
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@158
    iget-object v7, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@15a
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    #@15c
    if-ne v6, v7, :cond_d

    #@15e
    .line 525
    :cond_5
    iget-object v6, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@160
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    #@162
    .line 530
    :goto_4
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@164
    if-eqz v6, :cond_6

    #@166
    move-object/from16 v0, p7

    #@168
    iget v6, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@16a
    and-int/lit8 v6, v6, 0x20

    #@16c
    if-eqz v6, :cond_6

    #@16e
    .line 531
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@170
    const/high16 v7, 0x800000

    #@172
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@175
    .line 534
    :cond_6
    move-object/from16 v0, p7

    #@177
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@179
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@17b
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@17d
    .line 535
    move-object/from16 v0, p7

    #@17f
    iget v6, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@181
    iput v6, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    #@183
    .line 537
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    #@186
    move-result-object v6

    #@187
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@189
    .line 538
    iget v8, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    #@18b
    sget-object v9, Lcom/android/internal/R$styleable;->Window:[I

    #@18d
    iget v10, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@18f
    .line 537
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    #@192
    move-result-object v3

    #@193
    .line 539
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v3, :cond_10

    #@195
    iget-object v6, v3, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    #@197
    .line 540
    const/4 v7, 0x5

    #@198
    const/4 v8, 0x0

    #@199
    .line 539
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@19c
    move-result v6

    #@19d
    if-nez v6, :cond_e

    #@19f
    .line 541
    iget-object v6, v3, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    #@1a1
    .line 542
    const/4 v7, 0x5

    #@1a2
    .line 541
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@1a5
    move-result v6

    #@1a6
    if-nez v6, :cond_f

    #@1a8
    .line 543
    iget-object v6, v3, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    #@1aa
    .line 544
    const/16 v7, 0x19

    #@1ac
    .line 545
    const/4 v8, 0x0

    #@1ad
    .line 543
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1b0
    move-result v4

    #@1b1
    .line 546
    :goto_5
    if-eqz v3, :cond_7

    #@1b3
    iget-object v6, v3, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    #@1b5
    .line 547
    const/4 v7, 0x4

    #@1b6
    const/4 v8, 0x0

    #@1b7
    .line 546
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1ba
    move-result v6

    #@1bb
    if-eqz v6, :cond_11

    #@1bd
    :cond_7
    const/4 v6, 0x0

    #@1be
    :goto_6
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@1c0
    .line 549
    if-eqz v3, :cond_13

    #@1c2
    iget-object v6, v3, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    #@1c4
    .line 550
    const/16 v7, 0xa

    #@1c6
    const/4 v8, 0x0

    #@1c7
    .line 549
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1ca
    move-result v6

    #@1cb
    :goto_7
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    #@1cd
    .line 552
    if-eqz p12, :cond_8

    #@1cf
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@1d2
    move-result v6

    #@1d3
    if-ne p3, v6, :cond_14

    #@1d5
    .line 554
    :cond_8
    const-string/jumbo v6, "android.intent.action.MAIN"

    #@1d8
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@1db
    move-result-object v7

    #@1dc
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1df
    move-result v6

    #@1e0
    .line 552
    if-eqz v6, :cond_15

    #@1e2
    .line 555
    const-string/jumbo v6, "android.intent.category.HOME"

    #@1e5
    move-object/from16 v0, p5

    #@1e7
    invoke-virtual {v0, v6}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    #@1ea
    move-result v6

    #@1eb
    .line 552
    if-eqz v6, :cond_15

    #@1ed
    .line 556
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@1f0
    move-result-object v6

    #@1f1
    invoke-interface {v6}, Ljava/util/Set;->size()I

    #@1f4
    move-result v6

    #@1f5
    const/4 v7, 0x1

    #@1f6
    if-ne v6, v7, :cond_15

    #@1f8
    .line 557
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@1fb
    move-result-object v6

    #@1fc
    if-nez v6, :cond_15

    #@1fe
    .line 558
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@201
    move-result-object v6

    #@202
    if-nez v6, :cond_15

    #@204
    .line 559
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@206
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    #@209
    move-result v6

    #@20a
    const/high16 v7, 0x10000000

    #@20c
    and-int/2addr v6, v7

    #@20d
    if-eqz v6, :cond_15

    #@20f
    .line 560
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    #@212
    move-result v6

    #@213
    .line 552
    if-eqz v6, :cond_15

    #@215
    .line 562
    const/4 v6, 0x1

    #@216
    iput v6, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@218
    .line 569
    :goto_8
    move-object/from16 v0, p7

    #@21a
    iget v6, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@21c
    and-int/lit16 v6, v6, 0x800

    #@21e
    if-eqz v6, :cond_17

    #@220
    const/4 v6, 0x1

    #@221
    :goto_9
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->immersive:Z

    #@223
    .line 441
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    :goto_a
    return-void

    #@224
    .line 455
    :cond_9
    sget-object v6, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@226
    goto/16 :goto_0

    #@228
    .line 491
    :cond_a
    move-object/from16 v0, p7

    #@22a
    iget v6, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@22c
    const/4 v7, 0x1

    #@22d
    if-eq v6, v7, :cond_1

    #@22f
    .line 494
    new-instance v6, Landroid/content/ComponentName;

    #@231
    move-object/from16 v0, p7

    #@233
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@235
    .line 495
    move-object/from16 v0, p7

    #@237
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@239
    .line 494
    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@23c
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@23e
    goto/16 :goto_1

    #@240
    .line 498
    :cond_b
    const/4 v6, 0x0

    #@241
    goto/16 :goto_2

    #@243
    .line 516
    :cond_c
    const v6, 0x103006b

    #@246
    goto/16 :goto_3

    #@248
    .line 527
    :cond_d
    move-object/from16 v0, p7

    #@24a
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@24c
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    #@24e
    goto/16 :goto_4

    #@250
    .line 539
    .restart local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_e
    const/4 v4, 0x1

    #@251
    .local v4, "translucent":Z
    goto/16 :goto_5

    #@253
    .line 541
    .end local v4    # "translucent":Z
    :cond_f
    const/4 v4, 0x0

    #@254
    .restart local v4    # "translucent":Z
    goto/16 :goto_5

    #@256
    .line 539
    .end local v4    # "translucent":Z
    :cond_10
    const/4 v4, 0x0

    #@257
    .restart local v4    # "translucent":Z
    goto/16 :goto_5

    #@259
    .line 548
    .end local v4    # "translucent":Z
    :cond_11
    if-eqz v4, :cond_12

    #@25b
    const/4 v6, 0x0

    #@25c
    goto/16 :goto_6

    #@25e
    :cond_12
    const/4 v6, 0x1

    #@25f
    goto/16 :goto_6

    #@261
    .line 549
    :cond_13
    const/4 v6, 0x0

    #@262
    goto/16 :goto_7

    #@264
    .line 553
    :cond_14
    if-eqz p3, :cond_8

    #@266
    .line 563
    :cond_15
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@268
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@26b
    move-result-object v6

    #@26c
    const-string/jumbo v7, "com.android.systemui.recents"

    #@26f
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@272
    move-result v6

    #@273
    if-eqz v6, :cond_16

    #@275
    .line 564
    const/4 v6, 0x2

    #@276
    iput v6, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@278
    goto :goto_8

    #@279
    .line 566
    :cond_16
    const/4 v6, 0x0

    #@27a
    iput v6, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@27c
    goto :goto_8

    #@27d
    .line 569
    :cond_17
    const/4 v6, 0x0

    #@27e
    goto :goto_9

    #@27f
    .line 571
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_18
    const/4 v6, 0x0

    #@280
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@282
    .line 572
    const/4 v6, 0x0

    #@283
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    #@285
    .line 573
    const/4 v6, 0x0

    #@286
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    #@288
    .line 574
    const/4 v6, 0x0

    #@289
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@28b
    .line 575
    const/4 v6, 0x0

    #@28c
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    #@28e
    .line 576
    const/4 v6, 0x0

    #@28f
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@291
    .line 577
    const/4 v6, 0x1

    #@292
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@294
    .line 578
    const/4 v6, 0x0

    #@295
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    #@297
    .line 579
    const/4 v6, 0x0

    #@298
    iput v6, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@29a
    .line 580
    const/4 v6, 0x0

    #@29b
    iput-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->immersive:Z

    #@29d
    goto :goto_a
.end method

.method static activityResumedLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p0, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1101
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@3
    move-result-object v0

    #@4
    .line 1103
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    #@5
    iput-object v1, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    #@7
    .line 1104
    const/4 v1, 0x0

    #@8
    iput-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    #@a
    .line 1100
    return-void
.end method

.method private static activityTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 1276
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1280
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 1277
    :pswitch_0
    const-string/jumbo v0, "APPLICATION_ACTIVITY_TYPE"

    #@b
    return-object v0

    #@c
    .line 1278
    :pswitch_1
    const-string/jumbo v0, "HOME_ACTIVITY_TYPE"

    #@f
    return-object v0

    #@10
    .line 1279
    :pswitch_2
    const-string/jumbo v0, "RECENTS_ACTIVITY_TYPE"

    #@13
    return-object v0

    #@14
    .line 1276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static createImageFilename(JI)Ljava/lang/String;
    .locals 2
    .param p0, "createTime"    # J
    .param p2, "taskId"    # I

    #@0
    .prologue
    .line 1152
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
    .line 1153
    const-string/jumbo v1, ".png"

    #@1b
    .line 1152
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

.method static forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 5
    .param p0, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 424
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
    .line 425
    :catch_0
    move-exception v1

    #@a
    .line 426
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "ActivityManager"

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "Bad activity token: "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    .line 427
    const/4 v2, 0x0

    #@25
    return-object v2
.end method

.method static getStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStack;
    .locals 2
    .param p0, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1126
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@4
    move-result-object v0

    #@5
    .line 1127
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    #@7
    .line 1128
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@9
    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@b
    return-object v1

    #@c
    .line 1130
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
    .line 1108
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@4
    move-result-object v1

    #@5
    .line 1109
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_0

    #@7
    .line 1110
    return v4

    #@8
    .line 1112
    :cond_0
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@a
    .line 1113
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@f
    move-result v0

    #@10
    .line 1114
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
    .line 1115
    :cond_1
    return v4

    #@1b
    .line 1117
    :cond_2
    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    #@1d
    return v3
.end method

.method static isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .param p0, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1121
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@4
    move-result-object v0

    #@5
    .line 1122
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
    .line 983
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@2
    iget-object v8, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@4
    .line 984
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v8, :cond_0

    #@6
    .line 985
    return-void

    #@7
    .line 987
    :cond_0
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@9
    sub-long v4, p1, v2

    #@b
    .line 988
    .local v4, "thisTime":J
    iget-wide v2, v8, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    #@d
    const-wide/16 v10, 0x0

    #@f
    cmp-long v1, v2, v10

    #@11
    if-eqz v1, :cond_3

    #@13
    .line 989
    iget-wide v2, v8, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    #@15
    sub-long v6, p1, v2

    #@17
    .line 991
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
    .line 992
    const/4 v1, 0x5

    #@34
    new-array v1, v1, [Ljava/lang/Object;

    #@36
    .line 993
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
    .line 994
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
    .line 992
    const/16 v2, 0x7539

    #@5f
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@62
    .line 995
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@64
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    #@66
    .line 996
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6a
    .line 997
    const-string/jumbo v1, "Displayed "

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 998
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    .line 999
    const-string/jumbo v1, ": "

    #@78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    .line 1000
    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@7e
    .line 1001
    cmp-long v1, v4, v6

    #@80
    if-eqz v1, :cond_1

    #@82
    .line 1002
    const-string/jumbo v1, " (total "

    #@85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    .line 1003
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@8b
    .line 1004
    const-string/jumbo v1, ")"

    #@8e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    .line 1006
    :cond_1
    const-string/jumbo v1, "ActivityManager"

    #@94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v2

    #@98
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9b
    .line 1008
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@9d
    const/4 v2, 0x0

    #@9e
    move-object v3, p0

    #@9f
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    #@a2
    .line 1009
    const-wide/16 v2, 0x0

    #@a4
    cmp-long v1, v6, v2

    #@a6
    if-lez v1, :cond_2

    #@a8
    .line 1012
    :cond_2
    const-wide/16 v2, 0x0

    #@aa
    iput-wide v2, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@ac
    .line 1013
    const-wide/16 v2, 0x0

    #@ae
    iput-wide v2, v8, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    #@b0
    .line 982
    return-void

    #@b1
    .line 989
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "totalTime":J
    :cond_3
    move-wide v6, v4

    #@b2
    .restart local v6    # "totalTime":J
    goto/16 :goto_0
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/ActivityRecord;
    .locals 37
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
    .line 1196
    const/4 v5, 0x0

    #@1
    .line 1197
    .local v5, "intent":Landroid/content/Intent;
    const/16 v35, 0x0

    #@3
    .line 1198
    .local v35, "persistentState":Landroid/os/PersistableBundle;
    const/4 v13, 0x0

    #@4
    .line 1199
    .local v13, "launchedFromUid":I
    const/4 v14, 0x0

    #@5
    .line 1200
    .local v14, "launchedFromPackage":Ljava/lang/String;
    const/4 v6, 0x0

    #@6
    .line 1201
    .local v6, "resolvedType":Ljava/lang/String;
    const/16 v22, 0x0

    #@8
    .line 1202
    .local v22, "componentSpecified":Z
    const/4 v9, 0x0

    #@9
    .line 1203
    .local v9, "userId":I
    const-wide/16 v30, -0x1

    #@b
    .line 1204
    .local v30, "createTime":J
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@e
    move-result v34

    #@f
    .line 1205
    .local v34, "outerDepth":I
    new-instance v36, Landroid/app/ActivityManager$TaskDescription;

    #@11
    invoke-direct/range {v36 .. v36}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    #@14
    .line 1207
    .local v36, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@17
    move-result v4

    #@18
    add-int/lit8 v28, v4, -0x1

    #@1a
    .end local v6    # "resolvedType":Ljava/lang/String;
    .end local v14    # "launchedFromPackage":Ljava/lang/String;
    .end local v22    # "componentSpecified":Z
    .local v28, "attrNdx":I
    :goto_0
    if-ltz v28, :cond_8

    #@1c
    .line 1208
    move-object/from16 v0, p0

    #@1e
    move/from16 v1, v28

    #@20
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@23
    move-result-object v27

    #@24
    .line 1209
    .local v27, "attrName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@26
    move/from16 v1, v28

    #@28
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@2b
    move-result-object v29

    #@2c
    .line 1212
    .local v29, "attrValue":Ljava/lang/String;
    const-string/jumbo v4, "id"

    #@2f
    move-object/from16 v0, v27

    #@31
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_0

    #@37
    .line 1213
    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@3e
    move-result-wide v30

    #@3f
    .line 1207
    :goto_1
    add-int/lit8 v28, v28, -0x1

    #@41
    goto :goto_0

    #@42
    .line 1214
    :cond_0
    const-string/jumbo v4, "launched_from_uid"

    #@45
    move-object/from16 v0, v27

    #@47
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v4

    #@4b
    if-eqz v4, :cond_1

    #@4d
    .line 1215
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@54
    move-result v13

    #@55
    goto :goto_1

    #@56
    .line 1216
    :cond_1
    const-string/jumbo v4, "launched_from_package"

    #@59
    move-object/from16 v0, v27

    #@5b
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v4

    #@5f
    if-eqz v4, :cond_2

    #@61
    .line 1217
    move-object/from16 v14, v29

    #@63
    .local v14, "launchedFromPackage":Ljava/lang/String;
    goto :goto_1

    #@64
    .line 1218
    .end local v14    # "launchedFromPackage":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "resolved_type"

    #@67
    move-object/from16 v0, v27

    #@69
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v4

    #@6d
    if-eqz v4, :cond_3

    #@6f
    .line 1219
    move-object/from16 v6, v29

    #@71
    .local v6, "resolvedType":Ljava/lang/String;
    goto :goto_1

    #@72
    .line 1220
    .end local v6    # "resolvedType":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "component_specified"

    #@75
    move-object/from16 v0, v27

    #@77
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v4

    #@7b
    if-eqz v4, :cond_4

    #@7d
    .line 1221
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    #@84
    move-result v22

    #@85
    .local v22, "componentSpecified":Z
    goto :goto_1

    #@86
    .line 1222
    .end local v22    # "componentSpecified":Z
    :cond_4
    const-string/jumbo v4, "user_id"

    #@89
    move-object/from16 v0, v27

    #@8b
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8e
    move-result v4

    #@8f
    if-eqz v4, :cond_5

    #@91
    .line 1223
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@94
    move-result-object v4

    #@95
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@98
    move-result v9

    #@99
    goto :goto_1

    #@9a
    .line 1224
    :cond_5
    const-string/jumbo v4, "task_description_"

    #@9d
    move-object/from16 v0, v27

    #@9f
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a2
    move-result v4

    #@a3
    if-eqz v4, :cond_6

    #@a5
    .line 1225
    move-object/from16 v0, v36

    #@a7
    move-object/from16 v1, v27

    #@a9
    move-object/from16 v2, v29

    #@ab
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    #@ae
    goto :goto_1

    #@af
    .line 1227
    :cond_6
    const-string/jumbo v4, "ActivityManager"

    #@b2
    new-instance v7, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    const-string/jumbo v8, "Unknown ActivityRecord attribute="

    #@ba
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v7

    #@be
    move-object/from16 v0, v27

    #@c0
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v7

    #@c4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v7

    #@c8
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@cb
    goto/16 :goto_1

    #@cd
    .line 1247
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v27    # "attrName":Ljava/lang/String;
    .end local v29    # "attrValue":Ljava/lang/String;
    .end local v35    # "persistentState":Landroid/os/PersistableBundle;
    .local v32, "event":I
    .local v33, "name":Ljava/lang/String;
    :cond_7
    const-string/jumbo v4, "ActivityManager"

    #@d0
    new-instance v7, Ljava/lang/StringBuilder;

    #@d2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d5
    const-string/jumbo v8, "restoreActivity: unexpected name="

    #@d8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v7

    #@dc
    move-object/from16 v0, v33

    #@de
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v7

    #@e2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v7

    #@e6
    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e9
    .line 1248
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@ec
    .line 1232
    .end local v32    # "event":I
    .end local v33    # "name":Ljava/lang/String;
    :cond_8
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@ef
    move-result v32

    #@f0
    .restart local v32    # "event":I
    const/4 v4, 0x1

    #@f1
    move/from16 v0, v32

    #@f3
    if-eq v0, v4, :cond_b

    #@f5
    .line 1233
    const/4 v4, 0x3

    #@f6
    move/from16 v0, v32

    #@f8
    if-ne v0, v4, :cond_9

    #@fa
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@fd
    move-result v4

    #@fe
    move/from16 v0, v34

    #@100
    if-ge v4, v0, :cond_b

    #@102
    .line 1234
    :cond_9
    const/4 v4, 0x2

    #@103
    move/from16 v0, v32

    #@105
    if-ne v0, v4, :cond_8

    #@107
    .line 1235
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@10a
    move-result-object v33

    #@10b
    .line 1238
    .restart local v33    # "name":Ljava/lang/String;
    const-string/jumbo v4, "intent"

    #@10e
    move-object/from16 v0, v33

    #@110
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@113
    move-result v4

    #@114
    if-eqz v4, :cond_a

    #@116
    .line 1239
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    #@119
    move-result-object v5

    #@11a
    .local v5, "intent":Landroid/content/Intent;
    goto :goto_2

    #@11b
    .line 1242
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_a
    const-string/jumbo v4, "persistable_bundle"

    #@11e
    move-object/from16 v0, v33

    #@120
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@123
    move-result v4

    #@124
    if-eqz v4, :cond_7

    #@126
    .line 1243
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    #@129
    move-result-object v35

    #@12a
    .local v35, "persistentState":Landroid/os/PersistableBundle;
    goto :goto_2

    #@12b
    .line 1253
    .end local v33    # "name":Ljava/lang/String;
    .end local v35    # "persistentState":Landroid/os/PersistableBundle;
    :cond_b
    if-nez v5, :cond_c

    #@12d
    .line 1254
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    #@12f
    new-instance v7, Ljava/lang/StringBuilder;

    #@131
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@134
    const-string/jumbo v8, "restoreActivity error intent="

    #@137
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v7

    #@13b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v7

    #@13f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@142
    move-result-object v7

    #@143
    invoke-direct {v4, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@146
    throw v4

    #@147
    .line 1257
    :cond_c
    move-object/from16 v0, p1

    #@149
    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@14b
    .line 1258
    .local v11, "service":Lcom/android/server/am/ActivityManagerService;
    const/4 v7, 0x0

    #@14c
    const/4 v8, 0x0

    #@14d
    move-object/from16 v4, p1

    #@14f
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    #@152
    move-result-object v17

    #@153
    .line 1260
    .local v17, "aInfo":Landroid/content/pm/ActivityInfo;
    if-nez v17, :cond_d

    #@155
    .line 1261
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    #@157
    new-instance v7, Ljava/lang/StringBuilder;

    #@159
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@15c
    const-string/jumbo v8, "restoreActivity resolver error. Intent="

    #@15f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v7

    #@163
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v7

    #@167
    .line 1262
    const-string/jumbo v8, " resolvedType="

    #@16a
    .line 1261
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v7

    #@16e
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v7

    #@172
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v7

    #@176
    invoke-direct {v4, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@179
    throw v4

    #@17a
    .line 1264
    :cond_d
    new-instance v10, Lcom/android/server/am/ActivityRecord;

    #@17c
    .line 1265
    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->getConfiguration()Landroid/content/res/Configuration;

    #@17f
    move-result-object v18

    #@180
    .line 1264
    const/4 v12, 0x0

    #@181
    .line 1266
    const/16 v19, 0x0

    #@183
    const/16 v20, 0x0

    #@185
    const/16 v21, 0x0

    #@187
    const/16 v23, 0x0

    #@189
    const/16 v25, 0x0

    #@18b
    const/16 v26, 0x0

    #@18d
    move-object v15, v5

    #@18e
    move-object/from16 v16, v6

    #@190
    move-object/from16 v24, p1

    #@192
    .line 1264
    invoke-direct/range {v10 .. v26}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/os/Bundle;)V

    #@195
    .line 1268
    .local v10, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v35

    #@197
    iput-object v0, v10, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    #@199
    .line 1269
    move-object/from16 v0, v36

    #@19b
    iput-object v0, v10, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@19d
    .line 1270
    move-wide/from16 v0, v30

    #@19f
    iput-wide v0, v10, Lcom/android/server/am/ActivityRecord;->createTime:J

    #@1a1
    .line 1272
    return-object v10
.end method


# virtual methods
.method addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V
    .locals 1
    .param p1, "intent"    # Lcom/android/internal/content/ReferrerIntent;

    #@0
    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 707
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@b
    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 705
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
    .line 679
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
    .line 681
    .local v0, "r":Lcom/android/server/am/ActivityResult;
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@c
    if-nez v1, :cond_0

    #@e
    .line 682
    new-instance v1, Ljava/util/ArrayList;

    #@10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@13
    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@15
    .line 684
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    .line 678
    return-void
.end method

.method applyOptionsLocked()V
    .locals 15

    #@0
    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 767
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@6
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x5

    #@b
    if-eq v0, v1, :cond_1

    #@d
    .line 768
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@f
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    #@12
    move-result v14

    #@13
    .line 769
    .local v14, "animationType":I
    packed-switch v14, :pswitch_data_0

    #@16
    .line 832
    :pswitch_0
    const-string/jumbo v0, "ActivityManager"

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "applyOptionsLocked: Unknown animationType="

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 835
    :cond_0
    :goto_0
    const/4 v0, 0x0

    #@31
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@33
    .line 765
    .end local v14    # "animationType":I
    :cond_1
    return-void

    #@34
    .line 771
    .restart local v14    # "animationType":I
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@36
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@38
    .line 772
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@3a
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    .line 773
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@40
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getCustomEnterResId()I

    #@43
    move-result v2

    #@44
    .line 774
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@46
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getCustomExitResId()I

    #@49
    move-result v3

    #@4a
    .line 775
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@4c
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    #@4f
    move-result-object v4

    #@50
    .line 771
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    #@53
    goto :goto_0

    #@54
    .line 778
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@56
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@58
    .line 779
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@5a
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getStartX()I

    #@5d
    move-result v1

    #@5e
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@60
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartY()I

    #@63
    move-result v2

    #@64
    .line 780
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@66
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getWidth()I

    #@69
    move-result v3

    #@6a
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@6c
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getHeight()I

    #@6f
    move-result v4

    #@70
    .line 778
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionClipReveal(IIII)V

    #@73
    .line 781
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@75
    invoke-virtual {v0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    #@78
    move-result-object v0

    #@79
    if-nez v0, :cond_0

    #@7b
    .line 782
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@7d
    new-instance v1, Landroid/graphics/Rect;

    #@7f
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@81
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    #@84
    move-result v2

    #@85
    .line 783
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@87
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    #@8a
    move-result v3

    #@8b
    .line 784
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@8d
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartX()I

    #@90
    move-result v4

    #@91
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@93
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getWidth()I

    #@96
    move-result v6

    #@97
    add-int/2addr v4, v6

    #@98
    .line 785
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@9a
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartY()I

    #@9d
    move-result v6

    #@9e
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@a0
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getHeight()I

    #@a3
    move-result v7

    #@a4
    add-int/2addr v6, v7

    #@a5
    .line 782
    invoke-direct {v1, v2, v3, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    #@a8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@ab
    goto :goto_0

    #@ac
    .line 789
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@ae
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@b0
    .line 790
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@b2
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getStartX()I

    #@b5
    move-result v1

    #@b6
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@b8
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartY()I

    #@bb
    move-result v2

    #@bc
    .line 791
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@be
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getWidth()I

    #@c1
    move-result v3

    #@c2
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@c4
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getHeight()I

    #@c7
    move-result v4

    #@c8
    .line 789
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionScaleUp(IIII)V

    #@cb
    .line 792
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@cd
    invoke-virtual {v0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    #@d0
    move-result-object v0

    #@d1
    if-nez v0, :cond_0

    #@d3
    .line 793
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@d5
    new-instance v1, Landroid/graphics/Rect;

    #@d7
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@d9
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    #@dc
    move-result v2

    #@dd
    .line 794
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@df
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    #@e2
    move-result v3

    #@e3
    .line 795
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@e5
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartX()I

    #@e8
    move-result v4

    #@e9
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@eb
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getWidth()I

    #@ee
    move-result v6

    #@ef
    add-int/2addr v4, v6

    #@f0
    .line 796
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@f2
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartY()I

    #@f5
    move-result v6

    #@f6
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@f8
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getHeight()I

    #@fb
    move-result v7

    #@fc
    add-int/2addr v6, v7

    #@fd
    .line 793
    invoke-direct {v1, v2, v3, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    #@100
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@103
    goto/16 :goto_0

    #@105
    .line 801
    :pswitch_4
    const/4 v0, 0x3

    #@106
    if-ne v14, v0, :cond_2

    #@108
    const/4 v5, 0x1

    #@109
    .line 802
    .local v5, "scaleUp":Z
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@10b
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@10d
    .line 803
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@10f
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    #@112
    move-result-object v1

    #@113
    .line 804
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@115
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    #@118
    move-result v2

    #@119
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@11b
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    #@11e
    move-result v3

    #@11f
    .line 805
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@121
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    #@124
    move-result-object v4

    #@125
    .line 802
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V

    #@128
    .line 807
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@12a
    invoke-virtual {v0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    #@12d
    move-result-object v0

    #@12e
    if-nez v0, :cond_0

    #@130
    .line 808
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@132
    new-instance v1, Landroid/graphics/Rect;

    #@134
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@136
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    #@139
    move-result v2

    #@13a
    .line 809
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@13c
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    #@13f
    move-result v3

    #@140
    .line 810
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@142
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartX()I

    #@145
    move-result v4

    #@146
    .line 811
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@148
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    #@14b
    move-result-object v6

    #@14c
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    #@14f
    move-result v6

    #@150
    .line 810
    add-int/2addr v4, v6

    #@151
    .line 812
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@153
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartY()I

    #@156
    move-result v6

    #@157
    .line 813
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@159
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    #@15c
    move-result-object v7

    #@15d
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    #@160
    move-result v7

    #@161
    .line 812
    add-int/2addr v6, v7

    #@162
    .line 808
    invoke-direct {v1, v2, v3, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    #@165
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@168
    goto/16 :goto_0

    #@16a
    .line 801
    .end local v5    # "scaleUp":Z
    :cond_2
    const/4 v5, 0x0

    #@16b
    .restart local v5    # "scaleUp":Z
    goto :goto_1

    #@16c
    .line 818
    .end local v5    # "scaleUp":Z
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@16e
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@170
    .line 819
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@172
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    #@175
    move-result-object v7

    #@176
    .line 820
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@178
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getStartX()I

    #@17b
    move-result v8

    #@17c
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@17e
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getStartY()I

    #@181
    move-result v9

    #@182
    .line 821
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@184
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getWidth()I

    #@187
    move-result v10

    #@188
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@18a
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getHeight()I

    #@18d
    move-result v11

    #@18e
    .line 822
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@190
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    #@193
    move-result-object v12

    #@194
    .line 823
    const/16 v0, 0x8

    #@196
    if-ne v14, v0, :cond_3

    #@198
    const/4 v13, 0x1

    #@199
    .line 818
    :goto_2
    invoke-virtual/range {v6 .. v13}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V

    #@19c
    .line 824
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@19e
    invoke-virtual {v0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    #@1a1
    move-result-object v0

    #@1a2
    if-nez v0, :cond_0

    #@1a4
    .line 825
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@1a6
    new-instance v1, Landroid/graphics/Rect;

    #@1a8
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@1aa
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    #@1ad
    move-result v2

    #@1ae
    .line 826
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@1b0
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    #@1b3
    move-result v3

    #@1b4
    .line 827
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@1b6
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartX()I

    #@1b9
    move-result v4

    #@1ba
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@1bc
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getWidth()I

    #@1bf
    move-result v6

    #@1c0
    add-int/2addr v4, v6

    #@1c1
    .line 828
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@1c3
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartY()I

    #@1c6
    move-result v6

    #@1c7
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@1c9
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getHeight()I

    #@1cc
    move-result v7

    #@1cd
    add-int/2addr v6, v7

    #@1ce
    .line 825
    invoke-direct {v1, v2, v3, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    #@1d1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@1d4
    goto/16 :goto_0

    #@1d6
    .line 823
    :cond_3
    const/4 v13, 0x0

    #@1d7
    goto :goto_2

    #@1d8
    .line 769
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

.method changeWindowTranslucency(Z)Z
    .locals 4
    .param p1, "toOpaque"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 601
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@3
    if-ne v0, p1, :cond_0

    #@5
    .line 602
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 606
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
    .line 608
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@13
    .line 609
    return v1

    #@14
    .line 606
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
    .line 844
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 845
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@7
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    #@a
    .line 846
    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@c
    .line 843
    :cond_0
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
    .line 900
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    #@5
    const-wide/16 v4, 0x0

    #@7
    cmp-long v2, v2, v4

    #@9
    if-nez v2, :cond_0

    #@b
    .line 901
    return v6

    #@c
    .line 904
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@e
    iget-object v1, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@10
    .line 905
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v1, :cond_1

    #@12
    .line 906
    return v6

    #@13
    .line 909
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@15
    invoke-virtual {v2, v7, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@18
    move-result-object v0

    #@19
    .line 910
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@1b
    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    #@1e
    .line 911
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@20
    const-wide/16 v4, 0x1f4

    #@22
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@25
    .line 912
    const/4 v2, 0x1

    #@26
    return v2
.end method

.method final deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 12
    .param p1, "callingUid"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "referrer"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 718
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@3
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@5
    .line 719
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    #@8
    move-result-object v4

    #@9
    iget v5, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@b
    move v1, p1

    #@c
    move-object v3, p2

    #@d
    .line 718
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    #@10
    .line 725
    new-instance v9, Lcom/android/internal/content/ReferrerIntent;

    #@12
    invoke-direct {v9, p2, p3}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    #@15
    .line 726
    .local v9, "rintent":Lcom/android/internal/content/ReferrerIntent;
    const/4 v10, 0x1

    #@16
    .line 727
    .local v10, "unsent":Z
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@18
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@1a
    if-eq v0, v1, :cond_0

    #@1c
    .line 728
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@1e
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_1

    #@24
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@26
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@28
    if-eqz v0, :cond_1

    #@2a
    .line 729
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@2c
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@2e
    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@31
    move-result-object v0

    #@32
    if-ne v0, p0, :cond_1

    #@34
    .line 730
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@36
    if-eqz v0, :cond_1

    #@38
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@3a
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@3c
    if-eqz v0, :cond_1

    #@3e
    .line 732
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    #@40
    const/4 v0, 0x1

    #@41
    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@44
    .line 733
    .local v6, "ar":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@47
    .line 734
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@49
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@4b
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@4d
    invoke-interface {v0, v6, v1}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    .line 735
    const/4 v10, 0x0

    #@51
    .line 742
    .end local v6    # "ar":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    #@53
    .line 743
    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityRecord;->addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V

    #@56
    .line 716
    :cond_2
    return-void

    #@57
    .line 738
    :catch_0
    move-exception v8

    #@58
    .line 739
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v0, "ActivityManager"

    #@5b
    new-instance v1, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v2, "Exception thrown sending new intent to "

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@72
    goto :goto_0

    #@73
    .line 736
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    #@74
    .line 737
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "ActivityManager"

    #@77
    new-instance v1, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v2, "Exception thrown sending new intent to "

    #@7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8e
    goto :goto_0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 188
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v6

    #@4
    .line 189
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
    .line 190
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
    .line 191
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
    .line 192
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
    .line 193
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
    .line 194
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
    .line 195
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
    .line 196
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
    .line 197
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
    .line 198
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
    .line 199
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bf
    const-string/jumbo v11, "realActivity="

    #@c2
    move-object/from16 v0, p1

    #@c4
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c7
    .line 200
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
    .line 201
    move-object/from16 v0, p0

    #@d6
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@d8
    if-eqz v11, :cond_1

    #@da
    .line 202
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
    .line 203
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
    .line 204
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
    .line 206
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
    .line 208
    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@131
    const-string/jumbo v11, "stateNotNeeded="

    #@134
    move-object/from16 v0, p1

    #@136
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@139
    move-object/from16 v0, p0

    #@13b
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    #@13d
    move-object/from16 v0, p1

    #@13f
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@142
    .line 209
    const-string/jumbo v11, " componentSpecified="

    #@145
    move-object/from16 v0, p1

    #@147
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14a
    move-object/from16 v0, p0

    #@14c
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    #@14e
    move-object/from16 v0, p1

    #@150
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@153
    .line 210
    const-string/jumbo v11, " mActivityType="

    #@156
    move-object/from16 v0, p1

    #@158
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15b
    move-object/from16 v0, p0

    #@15d
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@15f
    move-object/from16 v0, p1

    #@161
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    #@164
    .line 211
    move-object/from16 v0, p0

    #@166
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->rootVoiceInteraction:Z

    #@168
    if-eqz v11, :cond_2

    #@16a
    .line 212
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16d
    const-string/jumbo v11, "rootVoiceInteraction="

    #@170
    move-object/from16 v0, p1

    #@172
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@175
    move-object/from16 v0, p0

    #@177
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->rootVoiceInteraction:Z

    #@179
    move-object/from16 v0, p1

    #@17b
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    #@17e
    .line 214
    :cond_2
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@181
    const-string/jumbo v11, "compat="

    #@184
    move-object/from16 v0, p1

    #@186
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@189
    move-object/from16 v0, p0

    #@18b
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    #@18d
    move-object/from16 v0, p1

    #@18f
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@192
    .line 215
    const-string/jumbo v11, " labelRes=0x"

    #@195
    move-object/from16 v0, p1

    #@197
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19a
    move-object/from16 v0, p0

    #@19c
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    #@19e
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1a1
    move-result-object v11

    #@1a2
    move-object/from16 v0, p1

    #@1a4
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a7
    .line 216
    const-string/jumbo v11, " icon=0x"

    #@1aa
    move-object/from16 v0, p1

    #@1ac
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1af
    move-object/from16 v0, p0

    #@1b1
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    #@1b3
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1b6
    move-result-object v11

    #@1b7
    move-object/from16 v0, p1

    #@1b9
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1bc
    .line 217
    const-string/jumbo v11, " theme=0x"

    #@1bf
    move-object/from16 v0, p1

    #@1c1
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c4
    move-object/from16 v0, p0

    #@1c6
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    #@1c8
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1cb
    move-result-object v11

    #@1cc
    move-object/from16 v0, p1

    #@1ce
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d1
    .line 218
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d4
    const-string/jumbo v11, "config="

    #@1d7
    move-object/from16 v0, p1

    #@1d9
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1dc
    move-object/from16 v0, p0

    #@1de
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    #@1e0
    move-object/from16 v0, p1

    #@1e2
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1e5
    .line 219
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e8
    const-string/jumbo v11, "stackConfigOverride="

    #@1eb
    move-object/from16 v0, p1

    #@1ed
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f0
    move-object/from16 v0, p0

    #@1f2
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->stackConfigOverride:Landroid/content/res/Configuration;

    #@1f4
    move-object/from16 v0, p1

    #@1f6
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1f9
    .line 220
    move-object/from16 v0, p0

    #@1fb
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@1fd
    if-nez v11, :cond_3

    #@1ff
    move-object/from16 v0, p0

    #@201
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    #@203
    if-eqz v11, :cond_4

    #@205
    .line 221
    :cond_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@208
    const-string/jumbo v11, "resultTo="

    #@20b
    move-object/from16 v0, p1

    #@20d
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@210
    move-object/from16 v0, p0

    #@212
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@214
    move-object/from16 v0, p1

    #@216
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@219
    .line 222
    const-string/jumbo v11, " resultWho="

    #@21c
    move-object/from16 v0, p1

    #@21e
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@221
    move-object/from16 v0, p0

    #@223
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    #@225
    move-object/from16 v0, p1

    #@227
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22a
    .line 223
    const-string/jumbo v11, " resultCode="

    #@22d
    move-object/from16 v0, p1

    #@22f
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@232
    move-object/from16 v0, p0

    #@234
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    #@236
    move-object/from16 v0, p1

    #@238
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    #@23b
    .line 225
    :cond_4
    move-object/from16 v0, p0

    #@23d
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@23f
    if-eqz v11, :cond_7

    #@241
    .line 226
    move-object/from16 v0, p0

    #@243
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@245
    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    #@248
    move-result-object v3

    #@249
    .line 227
    .local v3, "iconFilename":Ljava/lang/String;
    if-nez v3, :cond_5

    #@24b
    move-object/from16 v0, p0

    #@24d
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@24f
    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    #@252
    move-result-object v11

    #@253
    if-eqz v11, :cond_9

    #@255
    .line 229
    :cond_5
    :goto_0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@258
    const-string/jumbo v11, "taskDescription:"

    #@25b
    move-object/from16 v0, p1

    #@25d
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@260
    .line 230
    const-string/jumbo v11, " iconFilename="

    #@263
    move-object/from16 v0, p1

    #@265
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@268
    move-object/from16 v0, p0

    #@26a
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@26c
    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    #@26f
    move-result-object v11

    #@270
    move-object/from16 v0, p1

    #@272
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@275
    .line 231
    const-string/jumbo v11, " label=\""

    #@278
    move-object/from16 v0, p1

    #@27a
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27d
    move-object/from16 v0, p0

    #@27f
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@281
    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    #@284
    move-result-object v11

    #@285
    move-object/from16 v0, p1

    #@287
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28a
    .line 232
    const-string/jumbo v11, "\""

    #@28d
    move-object/from16 v0, p1

    #@28f
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@292
    .line 233
    const-string/jumbo v11, " color="

    #@295
    move-object/from16 v0, p1

    #@297
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29a
    .line 234
    move-object/from16 v0, p0

    #@29c
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@29e
    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    #@2a1
    move-result v11

    #@2a2
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2a5
    move-result-object v11

    #@2a6
    move-object/from16 v0, p1

    #@2a8
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2ab
    .line 236
    :cond_6
    if-nez v3, :cond_7

    #@2ad
    move-object/from16 v0, p0

    #@2af
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@2b1
    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    #@2b4
    move-result-object v11

    #@2b5
    if-eqz v11, :cond_7

    #@2b7
    .line 237
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ba
    const-string/jumbo v11, "taskDescription contains Bitmap"

    #@2bd
    move-object/from16 v0, p1

    #@2bf
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c2
    .line 240
    .end local v3    # "iconFilename":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    #@2c4
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@2c6
    if-eqz v11, :cond_8

    #@2c8
    .line 241
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2cb
    const-string/jumbo v11, "results="

    #@2ce
    move-object/from16 v0, p1

    #@2d0
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d3
    move-object/from16 v0, p0

    #@2d5
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@2d7
    move-object/from16 v0, p1

    #@2d9
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2dc
    .line 243
    :cond_8
    move-object/from16 v0, p0

    #@2de
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    #@2e0
    if-eqz v11, :cond_c

    #@2e2
    move-object/from16 v0, p0

    #@2e4
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    #@2e6
    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    #@2e9
    move-result v11

    #@2ea
    if-lez v11, :cond_c

    #@2ec
    .line 244
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ef
    const-string/jumbo v11, "Pending Results:"

    #@2f2
    move-object/from16 v0, p1

    #@2f4
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f7
    .line 245
    move-object/from16 v0, p0

    #@2f9
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    #@2fb
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2fe
    move-result-object v10

    #@2ff
    .local v10, "wpir$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@302
    move-result v11

    #@303
    if-eqz v11, :cond_c

    #@305
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@308
    move-result-object v9

    #@309
    check-cast v9, Ljava/lang/ref/WeakReference;

    #@30b
    .line 246
    .local v9, "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    if-eqz v9, :cond_a

    #@30d
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@310
    move-result-object v5

    #@311
    check-cast v5, Lcom/android/server/am/PendingIntentRecord;

    #@313
    .line 247
    :goto_2
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@316
    const-string/jumbo v11, "  - "

    #@319
    move-object/from16 v0, p1

    #@31b
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31e
    .line 248
    if-nez v5, :cond_b

    #@320
    .line 249
    const-string/jumbo v11, "null"

    #@323
    move-object/from16 v0, p1

    #@325
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@328
    goto :goto_1

    #@329
    .line 228
    .end local v9    # "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v10    # "wpir$iterator":Ljava/util/Iterator;
    .restart local v3    # "iconFilename":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    #@32b
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@32d
    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    #@330
    move-result v11

    #@331
    if-eqz v11, :cond_6

    #@333
    goto/16 :goto_0

    #@335
    .line 246
    .end local v3    # "iconFilename":Ljava/lang/String;
    .restart local v9    # "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .restart local v10    # "wpir$iterator":Ljava/util/Iterator;
    :cond_a
    const/4 v5, 0x0

    #@336
    .local v5, "pir":Lcom/android/server/am/PendingIntentRecord;
    goto :goto_2

    #@337
    .line 251
    .end local v5    # "pir":Lcom/android/server/am/PendingIntentRecord;
    :cond_b
    move-object/from16 v0, p1

    #@339
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@33c
    .line 252
    new-instance v11, Ljava/lang/StringBuilder;

    #@33e
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@341
    move-object/from16 v0, p2

    #@343
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@346
    move-result-object v11

    #@347
    const-string/jumbo v12, "    "

    #@34a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34d
    move-result-object v11

    #@34e
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@351
    move-result-object v11

    #@352
    move-object/from16 v0, p1

    #@354
    invoke-virtual {v5, v0, v11}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@357
    goto :goto_1

    #@358
    .line 256
    .end local v9    # "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v10    # "wpir$iterator":Ljava/util/Iterator;
    :cond_c
    move-object/from16 v0, p0

    #@35a
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@35c
    if-eqz v11, :cond_e

    #@35e
    move-object/from16 v0, p0

    #@360
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@362
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@365
    move-result v11

    #@366
    if-lez v11, :cond_e

    #@368
    .line 257
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36b
    const-string/jumbo v11, "Pending New Intents:"

    #@36e
    move-object/from16 v0, p1

    #@370
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@373
    .line 258
    const/4 v2, 0x0

    #@374
    .local v2, "i":I
    :goto_3
    move-object/from16 v0, p0

    #@376
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@378
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@37b
    move-result v11

    #@37c
    if-ge v2, v11, :cond_e

    #@37e
    .line 259
    move-object/from16 v0, p0

    #@380
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@382
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@385
    move-result-object v4

    #@386
    check-cast v4, Landroid/content/Intent;

    #@388
    .line 260
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38b
    const-string/jumbo v11, "  - "

    #@38e
    move-object/from16 v0, p1

    #@390
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@393
    .line 261
    if-nez v4, :cond_d

    #@395
    .line 262
    const-string/jumbo v11, "null"

    #@398
    move-object/from16 v0, p1

    #@39a
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39d
    .line 258
    :goto_4
    add-int/lit8 v2, v2, 0x1

    #@39f
    goto :goto_3

    #@3a0
    .line 264
    :cond_d
    const/4 v11, 0x0

    #@3a1
    const/4 v12, 0x1

    #@3a2
    const/4 v13, 0x0

    #@3a3
    const/4 v14, 0x1

    #@3a4
    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    #@3a7
    move-result-object v11

    #@3a8
    move-object/from16 v0, p1

    #@3aa
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3ad
    goto :goto_4

    #@3ae
    .line 268
    .end local v2    # "i":I
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_e
    move-object/from16 v0, p0

    #@3b0
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@3b2
    if-eqz v11, :cond_f

    #@3b4
    .line 269
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b7
    const-string/jumbo v11, "pendingOptions="

    #@3ba
    move-object/from16 v0, p1

    #@3bc
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3bf
    move-object/from16 v0, p0

    #@3c1
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@3c3
    move-object/from16 v0, p1

    #@3c5
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@3c8
    .line 271
    :cond_f
    move-object/from16 v0, p0

    #@3ca
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@3cc
    if-eqz v11, :cond_10

    #@3ce
    .line 272
    move-object/from16 v0, p0

    #@3d0
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@3d2
    const/4 v12, 0x0

    #@3d3
    move-object/from16 v0, p1

    #@3d5
    move-object/from16 v1, p2

    #@3d7
    invoke-virtual {v11, v0, v1, v12}, Lcom/android/server/am/AppTimeTracker;->dumpWithHeader(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    #@3da
    .line 274
    :cond_10
    move-object/from16 v0, p0

    #@3dc
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@3de
    if-eqz v11, :cond_11

    #@3e0
    .line 275
    move-object/from16 v0, p0

    #@3e2
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@3e4
    move-object/from16 v0, p1

    #@3e6
    move-object/from16 v1, p2

    #@3e8
    invoke-virtual {v11, v0, v1}, Lcom/android/server/am/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@3eb
    .line 277
    :cond_11
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ee
    const-string/jumbo v11, "launchFailed="

    #@3f1
    move-object/from16 v0, p1

    #@3f3
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f6
    move-object/from16 v0, p0

    #@3f8
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    #@3fa
    move-object/from16 v0, p1

    #@3fc
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@3ff
    .line 278
    const-string/jumbo v11, " launchCount="

    #@402
    move-object/from16 v0, p1

    #@404
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@407
    move-object/from16 v0, p0

    #@409
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    #@40b
    move-object/from16 v0, p1

    #@40d
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    #@410
    .line 279
    const-string/jumbo v11, " lastLaunchTime="

    #@413
    move-object/from16 v0, p1

    #@415
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@418
    .line 280
    move-object/from16 v0, p0

    #@41a
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    #@41c
    const-wide/16 v14, 0x0

    #@41e
    cmp-long v11, v12, v14

    #@420
    if-nez v11, :cond_19

    #@422
    const-string/jumbo v11, "0"

    #@425
    move-object/from16 v0, p1

    #@427
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42a
    .line 282
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@42d
    .line 283
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@430
    const-string/jumbo v11, "haveState="

    #@433
    move-object/from16 v0, p1

    #@435
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@438
    move-object/from16 v0, p0

    #@43a
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    #@43c
    move-object/from16 v0, p1

    #@43e
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@441
    .line 284
    const-string/jumbo v11, " icicle="

    #@444
    move-object/from16 v0, p1

    #@446
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@449
    move-object/from16 v0, p0

    #@44b
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    #@44d
    move-object/from16 v0, p1

    #@44f
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@452
    .line 285
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@455
    const-string/jumbo v11, "state="

    #@458
    move-object/from16 v0, p1

    #@45a
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45d
    move-object/from16 v0, p0

    #@45f
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@461
    move-object/from16 v0, p1

    #@463
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@466
    .line 286
    const-string/jumbo v11, " stopped="

    #@469
    move-object/from16 v0, p1

    #@46b
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46e
    move-object/from16 v0, p0

    #@470
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@472
    move-object/from16 v0, p1

    #@474
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@477
    .line 287
    const-string/jumbo v11, " delayedResume="

    #@47a
    move-object/from16 v0, p1

    #@47c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47f
    move-object/from16 v0, p0

    #@481
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    #@483
    move-object/from16 v0, p1

    #@485
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@488
    .line 288
    const-string/jumbo v11, " finishing="

    #@48b
    move-object/from16 v0, p1

    #@48d
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@490
    move-object/from16 v0, p0

    #@492
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@494
    move-object/from16 v0, p1

    #@496
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    #@499
    .line 289
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49c
    const-string/jumbo v11, "keysPaused="

    #@49f
    move-object/from16 v0, p1

    #@4a1
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a4
    move-object/from16 v0, p0

    #@4a6
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    #@4a8
    move-object/from16 v0, p1

    #@4aa
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@4ad
    .line 290
    const-string/jumbo v11, " inHistory="

    #@4b0
    move-object/from16 v0, p1

    #@4b2
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b5
    move-object/from16 v0, p0

    #@4b7
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    #@4b9
    move-object/from16 v0, p1

    #@4bb
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@4be
    .line 291
    const-string/jumbo v11, " visible="

    #@4c1
    move-object/from16 v0, p1

    #@4c3
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c6
    move-object/from16 v0, p0

    #@4c8
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@4ca
    move-object/from16 v0, p1

    #@4cc
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@4cf
    .line 292
    const-string/jumbo v11, " sleeping="

    #@4d2
    move-object/from16 v0, p1

    #@4d4
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d7
    move-object/from16 v0, p0

    #@4d9
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    #@4db
    move-object/from16 v0, p1

    #@4dd
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@4e0
    .line 293
    const-string/jumbo v11, " idle="

    #@4e3
    move-object/from16 v0, p1

    #@4e5
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e8
    move-object/from16 v0, p0

    #@4ea
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->idle:Z

    #@4ec
    move-object/from16 v0, p1

    #@4ee
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    #@4f1
    .line 294
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f4
    const-string/jumbo v11, "fullscreen="

    #@4f7
    move-object/from16 v0, p1

    #@4f9
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4fc
    move-object/from16 v0, p0

    #@4fe
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@500
    move-object/from16 v0, p1

    #@502
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@505
    .line 295
    const-string/jumbo v11, " noDisplay="

    #@508
    move-object/from16 v0, p1

    #@50a
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50d
    move-object/from16 v0, p0

    #@50f
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    #@511
    move-object/from16 v0, p1

    #@513
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@516
    .line 296
    const-string/jumbo v11, " immersive="

    #@519
    move-object/from16 v0, p1

    #@51b
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51e
    move-object/from16 v0, p0

    #@520
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->immersive:Z

    #@522
    move-object/from16 v0, p1

    #@524
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@527
    .line 297
    const-string/jumbo v11, " launchMode="

    #@52a
    move-object/from16 v0, p1

    #@52c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52f
    move-object/from16 v0, p0

    #@531
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    #@533
    move-object/from16 v0, p1

    #@535
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    #@538
    .line 298
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53b
    const-string/jumbo v11, "frozenBeforeDestroy="

    #@53e
    move-object/from16 v0, p1

    #@540
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@543
    move-object/from16 v0, p0

    #@545
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    #@547
    move-object/from16 v0, p1

    #@549
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@54c
    .line 299
    const-string/jumbo v11, " forceNewConfig="

    #@54f
    move-object/from16 v0, p1

    #@551
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@554
    move-object/from16 v0, p0

    #@556
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    #@558
    move-object/from16 v0, p1

    #@55a
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    #@55d
    .line 300
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@560
    const-string/jumbo v11, "mActivityType="

    #@563
    move-object/from16 v0, p1

    #@565
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@568
    .line 301
    move-object/from16 v0, p0

    #@56a
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@56c
    invoke-static {v11}, Lcom/android/server/am/ActivityRecord;->activityTypeToString(I)Ljava/lang/String;

    #@56f
    move-result-object v11

    #@570
    move-object/from16 v0, p1

    #@572
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@575
    .line 302
    move-object/from16 v0, p0

    #@577
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@579
    const-wide/16 v14, 0x0

    #@57b
    cmp-long v11, v12, v14

    #@57d
    if-nez v11, :cond_12

    #@57f
    move-object/from16 v0, p0

    #@581
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->startTime:J

    #@583
    const-wide/16 v14, 0x0

    #@585
    cmp-long v11, v12, v14

    #@587
    if-eqz v11, :cond_13

    #@589
    .line 303
    :cond_12
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@58c
    const-string/jumbo v11, "displayStartTime="

    #@58f
    move-object/from16 v0, p1

    #@591
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@594
    .line 304
    move-object/from16 v0, p0

    #@596
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@598
    const-wide/16 v14, 0x0

    #@59a
    cmp-long v11, v12, v14

    #@59c
    if-nez v11, :cond_1a

    #@59e
    const-string/jumbo v11, "0"

    #@5a1
    move-object/from16 v0, p1

    #@5a3
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a6
    .line 306
    :goto_6
    const-string/jumbo v11, " startTime="

    #@5a9
    move-object/from16 v0, p1

    #@5ab
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5ae
    .line 307
    move-object/from16 v0, p0

    #@5b0
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->startTime:J

    #@5b2
    const-wide/16 v14, 0x0

    #@5b4
    cmp-long v11, v12, v14

    #@5b6
    if-nez v11, :cond_1b

    #@5b8
    const-string/jumbo v11, "0"

    #@5bb
    move-object/from16 v0, p1

    #@5bd
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c0
    .line 309
    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@5c3
    .line 311
    :cond_13
    move-object/from16 v0, p0

    #@5c5
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@5c7
    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@5c9
    move-object/from16 v0, p0

    #@5cb
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@5ce
    move-result v8

    #@5cf
    .line 312
    .local v8, "waitingVisible":Z
    move-object/from16 v0, p0

    #@5d1
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    #@5d3
    const-wide/16 v14, 0x0

    #@5d5
    cmp-long v11, v12, v14

    #@5d7
    if-nez v11, :cond_14

    #@5d9
    if-nez v8, :cond_14

    #@5db
    move-object/from16 v0, p0

    #@5dd
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@5df
    if-eqz v11, :cond_15

    #@5e1
    .line 313
    :cond_14
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e4
    const-string/jumbo v11, "waitingVisible="

    #@5e7
    move-object/from16 v0, p1

    #@5e9
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5ec
    move-object/from16 v0, p1

    #@5ee
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Z)V

    #@5f1
    .line 314
    const-string/jumbo v11, " nowVisible="

    #@5f4
    move-object/from16 v0, p1

    #@5f6
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f9
    move-object/from16 v0, p0

    #@5fb
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@5fd
    move-object/from16 v0, p1

    #@5ff
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@602
    .line 315
    const-string/jumbo v11, " lastVisibleTime="

    #@605
    move-object/from16 v0, p1

    #@607
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60a
    .line 316
    move-object/from16 v0, p0

    #@60c
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    #@60e
    const-wide/16 v14, 0x0

    #@610
    cmp-long v11, v12, v14

    #@612
    if-nez v11, :cond_1c

    #@614
    const-string/jumbo v11, "0"

    #@617
    move-object/from16 v0, p1

    #@619
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@61c
    .line 318
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@61f
    .line 320
    :cond_15
    move-object/from16 v0, p0

    #@621
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    #@623
    if-nez v11, :cond_16

    #@625
    move-object/from16 v0, p0

    #@627
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@629
    if-eqz v11, :cond_17

    #@62b
    .line 321
    :cond_16
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62e
    const-string/jumbo v11, "configDestroy="

    #@631
    move-object/from16 v0, p1

    #@633
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@636
    move-object/from16 v0, p0

    #@638
    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    #@63a
    move-object/from16 v0, p1

    #@63c
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    #@63f
    .line 322
    const-string/jumbo v11, " configChangeFlags="

    #@642
    move-object/from16 v0, p1

    #@644
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@647
    .line 323
    move-object/from16 v0, p0

    #@649
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@64b
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@64e
    move-result-object v11

    #@64f
    move-object/from16 v0, p1

    #@651
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@654
    .line 325
    :cond_17
    move-object/from16 v0, p0

    #@656
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    #@658
    if-eqz v11, :cond_18

    #@65a
    .line 326
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@65d
    const-string/jumbo v11, "connections="

    #@660
    move-object/from16 v0, p1

    #@662
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@665
    move-object/from16 v0, p0

    #@667
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    #@669
    move-object/from16 v0, p1

    #@66b
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@66e
    .line 187
    :cond_18
    return-void

    #@66f
    .line 281
    .end local v8    # "waitingVisible":Z
    :cond_19
    move-object/from16 v0, p0

    #@671
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    #@673
    move-object/from16 v0, p1

    #@675
    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@678
    goto/16 :goto_5

    #@67a
    .line 305
    :cond_1a
    move-object/from16 v0, p0

    #@67c
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@67e
    move-object/from16 v0, p1

    #@680
    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@683
    goto/16 :goto_6

    #@685
    .line 308
    :cond_1b
    move-object/from16 v0, p0

    #@687
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->startTime:J

    #@689
    move-object/from16 v0, p1

    #@68b
    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@68e
    goto/16 :goto_7

    #@690
    .line 317
    .restart local v8    # "waitingVisible":Z
    :cond_1c
    move-object/from16 v0, p0

    #@692
    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    #@694
    move-object/from16 v0, p1

    #@696
    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@699
    goto :goto_8
.end method

.method finishLaunchTickingLocked()V
    .locals 4

    #@0
    .prologue
    .line 916
    const-wide/16 v2, 0x0

    #@2
    iput-wide v2, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    #@4
    .line 917
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@8
    .line 918
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    #@a
    .line 919
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@c
    const/16 v2, 0x67

    #@e
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@11
    .line 915
    :cond_0
    return-void
.end method

.method getOptionsForTargetActivityLocked()Landroid/app/ActivityOptions;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 840
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
    .line 670
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 671
    new-instance v0, Lcom/android/server/am/UriPermissionOwner;

    #@6
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@8
    invoke-direct {v0, v1, p0}, Lcom/android/server/am/UriPermissionOwner;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Object;)V

    #@b
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@d
    .line 673
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@f
    return-object v0
.end method

.method getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;
    .locals 3

    #@0
    .prologue
    .line 1060
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
    .line 1061
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@10
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@13
    move-result-object v1

    #@14
    .line 1063
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@16
    .line 1064
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_1

    #@18
    .line 1065
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@1a
    .line 1067
    :cond_1
    if-eqz v0, :cond_2

    #@1c
    .line 1068
    return-object v0

    #@1d
    .line 1071
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    return-object p0
.end method

.method isApplicationActivity()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 645
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
    .line 1134
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@3
    if-nez v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@7
    if-nez v0, :cond_1

    #@9
    .line 1137
    :cond_0
    return v2

    #@a
    .line 1134
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@c
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@e
    if-eq v0, v1, :cond_0

    #@10
    .line 1135
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@12
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@14
    if-eq v0, v1, :cond_0

    #@16
    .line 1139
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
    .line 1142
    :cond_2
    return v2

    #@21
    .line 1139
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@23
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@25
    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@27
    if-eq p0, v0, :cond_2

    #@29
    .line 1140
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
    .line 1144
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@3b
    if-eqz v0, :cond_4

    #@3d
    .line 1146
    return v2

    #@3e
    .line 1148
    :cond_4
    const/4 v0, 0x1

    #@3f
    return v0
.end method

.method isHomeActivity()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 637
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
    .line 629
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
    .line 633
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
    .line 1079
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
    .line 1080
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

.method isNotResolverActivity()Z
    .locals 2

    #@0
    .prologue
    .line 432
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
    if-eqz v0, :cond_0

    #@12
    const/4 v0, 0x0

    #@13
    :goto_0
    return v0

    #@14
    :cond_0
    const/4 v0, 0x1

    #@15
    goto :goto_0
.end method

.method isPersistable()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 649
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@4
    iget v2, v2, Landroid/content/pm/ActivityInfo;->persistableMode:I

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 650
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@a
    iget v2, v2, Landroid/content/pm/ActivityInfo;->persistableMode:I

    #@c
    const/4 v3, 0x2

    #@d
    if-ne v2, v3, :cond_2

    #@f
    .line 651
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 652
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
    .line 649
    :cond_2
    return v1

    #@20
    :cond_3
    move v0, v1

    #@21
    .line 652
    goto :goto_0
.end method

.method isRecentsActivity()Z
    .locals 2

    #@0
    .prologue
    .line 641
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

.method makeFinishingLocked()V
    .locals 2

    #@0
    .prologue
    .line 656
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 657
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
    .line 658
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
    .line 660
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1a
    const/4 v1, 0x0

    #@1b
    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    #@1e
    .line 662
    :cond_0
    const/4 v0, 0x1

    #@1f
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@21
    .line 663
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 664
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    #@28
    .line 655
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
    .line 930
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
    .line 864
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 865
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    #@7
    .line 866
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@9
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@b
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->pauseKeyDispatching(Landroid/os/IBinder;)V

    #@10
    .line 863
    :cond_0
    return-void
.end method

.method putInHistory()V
    .locals 1

    #@0
    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 614
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    #@7
    .line 612
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
    .line 689
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@2
    if-eqz v2, :cond_4

    #@4
    .line 690
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
    .line 691
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lcom/android/server/am/ActivityResult;

    #@16
    .line 692
    .local v1, "r":Lcom/android/server/am/ActivityResult;
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mFrom:Lcom/android/server/am/ActivityRecord;

    #@18
    if-eq v2, p1, :cond_1

    #@1a
    .line 690
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 693
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    #@1f
    if-nez v2, :cond_3

    #@21
    .line 694
    if-nez p2, :cond_0

    #@23
    .line 698
    :cond_2
    iget v2, v1, Lcom/android/server/am/ActivityResult;->mRequestCode:I

    #@25
    if-ne v2, p3, :cond_0

    #@27
    .line 700
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2c
    goto :goto_1

    #@2d
    .line 696
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
    .line 688
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
    .line 857
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 858
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@7
    invoke-virtual {v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked()V

    #@a
    .line 859
    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@c
    .line 856
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
    .line 947
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6
    move-result-wide v0

    #@7
    .line 948
    .local v0, "curTime":J
    iget-wide v8, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@9
    cmp-long v8, v8, v12

    #@b
    if-eqz v8, :cond_0

    #@d
    .line 949
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityRecord;->reportLaunchTimeLocked(J)V

    #@10
    .line 951
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@12
    iget-object v3, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@14
    .line 952
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    iget-wide v8, p0, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    #@16
    cmp-long v8, v8, v12

    #@18
    if-eqz v8, :cond_3

    #@1a
    if-eqz v3, :cond_3

    #@1c
    .line 953
    iget-wide v8, p0, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    #@1e
    sub-long v4, v0, v8

    #@20
    .line 954
    .local v4, "thisTime":J
    iget-wide v8, v3, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    #@22
    cmp-long v8, v8, v12

    #@24
    if-eqz v8, :cond_4

    #@26
    .line 955
    iget-wide v8, v3, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    #@28
    sub-long v6, v0, v8

    #@2a
    .line 957
    .local v6, "totalTime":J
    :goto_0
    const-string/jumbo v8, "drawing"

    #@2d
    const-wide/16 v10, 0x40

    #@2f
    invoke-static {v10, v11, v8, v14}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@32
    .line 958
    const/4 v8, 0x5

    #@33
    new-array v8, v8, [Ljava/lang/Object;

    #@35
    .line 959
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
    .line 960
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
    .line 958
    const/16 v9, 0x755a

    #@5d
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@60
    .line 961
    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@62
    iget-object v2, v8, Lcom/android/server/am/ActivityManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    #@64
    .line 962
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    #@67
    .line 963
    const-string/jumbo v8, "Fully drawn "

    #@6a
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    .line 964
    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@6f
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    .line 965
    const-string/jumbo v8, ": "

    #@75
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    .line 966
    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@7b
    .line 967
    cmp-long v8, v4, v6

    #@7d
    if-eqz v8, :cond_1

    #@7f
    .line 968
    const-string/jumbo v8, " (total "

    #@82
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    .line 969
    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@88
    .line 970
    const-string/jumbo v8, ")"

    #@8b
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    .line 972
    :cond_1
    const-string/jumbo v8, "ActivityManager"

    #@91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v9

    #@95
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@98
    .line 974
    cmp-long v8, v6, v12

    #@9a
    if-lez v8, :cond_2

    #@9c
    .line 977
    :cond_2
    iput-wide v12, v3, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    #@9e
    .line 979
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "thisTime":J
    .end local v6    # "totalTime":J
    :cond_3
    iput-wide v12, p0, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    #@a0
    .line 946
    return-void

    #@a1
    .line 955
    .restart local v4    # "thisTime":J
    :cond_4
    move-wide v6, v4

    #@a2
    .restart local v6    # "totalTime":J
    goto :goto_0
.end method

.method resumeKeyDispatchingLocked()V
    .locals 2

    #@0
    .prologue
    .line 871
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 872
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    #@7
    .line 873
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@9
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@b
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->resumeKeyDispatching(Landroid/os/IBinder;)V

    #@10
    .line 870
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
    .line 1168
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
    .line 1169
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
    .line 1170
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 1171
    const-string/jumbo v0, "launched_from_package"

    #@20
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@22
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@25
    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 1174
    const-string/jumbo v0, "resolved_type"

    #@2c
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    #@2e
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@31
    .line 1176
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
    .line 1177
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
    .line 1179
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@4b
    if-eqz v0, :cond_2

    #@4d
    .line 1180
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@4f
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@52
    .line 1183
    :cond_2
    const-string/jumbo v0, "intent"

    #@55
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@58
    .line 1184
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@5a
    invoke-virtual {v0, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@5d
    .line 1185
    const-string/jumbo v0, "intent"

    #@60
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@63
    .line 1187
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
    .line 1188
    const-string/jumbo v0, "persistable_bundle"

    #@70
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@73
    .line 1189
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    #@75
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@78
    .line 1190
    const-string/jumbo v0, "persistable_bundle"

    #@7b
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7e
    .line 1167
    :cond_3
    return-void
.end method

.method public setSleeping(Z)V
    .locals 4
    .param p1, "_sleeping"    # Z

    #@0
    .prologue
    .line 1084
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    #@2
    if-ne v1, p1, :cond_0

    #@4
    .line 1085
    return-void

    #@5
    .line 1087
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
    .line 1089
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@11
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@13
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@15
    invoke-interface {v1, v2, p1}, Landroid/app/IApplicationThread;->scheduleSleeping(Landroid/os/IBinder;Z)V

    #@18
    .line 1090
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
    .line 1093
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    #@26
    .line 1083
    :cond_2
    :goto_1
    return-void

    #@27
    .line 1091
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
    .line 1094
    :catch_0
    move-exception v0

    #@30
    .line 1095
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ActivityManager"

    #@33
    new-instance v2, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v3, "Exception thrown when sleeping: "

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@41
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@50
    goto :goto_1
.end method

.method setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 3
    .param p1, "newTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "taskToAffiliateWith"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 585
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
    .line 586
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
    .line 588
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@24
    .line 589
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    #@27
    .line 584
    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 5
    .param p1, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    #@0
    .prologue
    .line 1158
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1159
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    #@9
    move-result-object v0

    #@a
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    #@c
    .line 1160
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->createTime:J

    #@e
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@10
    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    #@12
    invoke-static {v2, v3, v4}, Lcom/android/server/am/ActivityRecord;->createImageFilename(JI)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 1161
    .local v1, "iconFilename":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@18
    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1a
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    #@1c
    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/TaskPersister;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    #@1f
    .line 1162
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    #@22
    .line 1164
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    .end local v1    # "iconFilename":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@24
    .line 1156
    return-void
.end method

.method setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V
    .locals 2
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 593
    if-eqz p1, :cond_0

    #@2
    .line 594
    iget v0, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    #@4
    const/4 v1, 0x3

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 595
    iget v0, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    #@9
    const/4 v1, 0x2

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 596
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@e
    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    #@11
    .line 592
    :cond_0
    return-void
.end method

.method public startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "configChanges"    # I

    #@0
    .prologue
    .line 934
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 935
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@8
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@a
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@c
    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    #@f
    .line 933
    :cond_0
    return-void
.end method

.method startLaunchTickingLocked()V
    .locals 4

    #@0
    .prologue
    .line 890
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 891
    return-void

    #@5
    .line 893
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    #@7
    const-wide/16 v2, 0x0

    #@9
    cmp-long v0, v0, v2

    #@b
    if-nez v0, :cond_1

    #@d
    .line 894
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@10
    move-result-wide v0

    #@11
    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    #@13
    .line 895
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->continueLaunchTickingLocked()Z

    #@16
    .line 889
    :cond_1
    return-void
.end method

.method public stopFreezingScreenLocked(Z)V
    .locals 2
    .param p1, "force"    # Z

    #@0
    .prologue
    .line 940
    if-nez p1, :cond_0

    #@2
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 941
    :cond_0
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    #@9
    .line 942
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@b
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@d
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@f
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    #@12
    .line 939
    :cond_1
    return-void
.end method

.method takeFromHistory()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 619
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 620
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    #@8
    .line 621
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 624
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    #@13
    .line 618
    :cond_1
    return-void

    #@14
    .line 622
    :cond_2
    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@16
    goto :goto_0
.end method

.method takeOptionsLocked()Landroid/app/ActivityOptions;
    .locals 2

    #@0
    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@2
    .line 852
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x0

    #@3
    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@5
    .line 853
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1286
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_2

    #@4
    .line 1287
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
    .line 1288
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@21
    if-eqz v1, :cond_1

    #@23
    const-string/jumbo v1, " f}"

    #@26
    .line 1287
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
    .line 1288
    :cond_1
    const-string/jumbo v1, "}"

    #@37
    goto :goto_1

    #@38
    .line 1290
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@3a
    const/16 v1, 0x80

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@3f
    .line 1291
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ActivityRecord{"

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 1292
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
    .line 1293
    const-string/jumbo v1, " u"

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 1294
    iget v1, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    .line 1295
    const/16 v1, 0x20

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@60
    .line 1296
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
    .line 1297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    #@73
    .line 1298
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
    .line 757
    if-eqz p1, :cond_1

    #@2
    .line 758
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 759
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@8
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    #@b
    .line 761
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@d
    .line 756
    :cond_1
    return-void
.end method

.method updateOptionsLocked(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 748
    if-eqz p1, :cond_1

    #@2
    .line 749
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 750
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@8
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    #@b
    .line 752
    :cond_0
    new-instance v0, Landroid/app/ActivityOptions;

    #@d
    invoke-direct {v0, p1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    #@10
    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    #@12
    .line 747
    :cond_1
    return-void
.end method

.method updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "newThumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "description"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 878
    if-eqz p1, :cond_0

    #@2
    .line 881
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4
    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskRecord;->setLastThumbnail(Landroid/graphics/Bitmap;)Z

    #@7
    move-result v0

    #@8
    .line 882
    .local v0, "thumbnailUpdated":Z
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 883
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
    .line 886
    .end local v0    # "thumbnailUpdated":Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1c
    iput-object p2, v1, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    #@1e
    .line 877
    return-void
.end method

.method windowsDrawnLocked()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 1017
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1018
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v0

    #@c
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityRecord;->reportLaunchTimeLocked(J)V

    #@f
    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@11
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V

    #@14
    .line 1021
    iput-wide v2, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    #@16
    .line 1022
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    #@19
    .line 1023
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 1024
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1f
    const/4 v1, 0x1

    #@20
    iput-boolean v1, v0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    #@22
    .line 1016
    :cond_1
    return-void
.end method

.method windowsVisibleLocked()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1029
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3
    invoke-virtual {v3, p0}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V

    #@6
    .line 1031
    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@8
    if-nez v3, :cond_1

    #@a
    .line 1032
    const/4 v3, 0x1

    #@b
    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@d
    .line 1033
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@10
    move-result-wide v4

    #@11
    iput-wide v4, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    #@13
    .line 1034
    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    #@15
    if-nez v3, :cond_2

    #@17
    .line 1037
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@19
    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    #@1c
    .line 1052
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@1e
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    #@21
    .line 1028
    :cond_1
    return-void

    #@22
    .line 1042
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@24
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v2

    #@2a
    .line 1043
    .local v2, "size":I
    if-lez v2, :cond_0

    #@2c
    .line 1044
    const/4 v0, 0x0

    #@2d
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    #@2f
    .line 1045
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
    .line 1044
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 1048
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3e
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@43
    .line 1049
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@45
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    #@48
    goto :goto_0
.end method
