.class public Lcom/android/server/notification/ZenModeHelper;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;,
        Lcom/android/server/notification/ZenModeHelper$SettingsObserver;,
        Lcom/android/server/notification/ZenModeHelper$Metrics;,
        Lcom/android/server/notification/ZenModeHelper$H;,
        Lcom/android/server/notification/ZenModeHelper$Callback;,
        Lcom/android/server/notification/ZenModeHelper$1;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioManager:Landroid/media/AudioManagerInternal;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/ZenModeHelper$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConditions:Lcom/android/server/notification/ZenModeConditions;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mConfigMigration:Landroid/service/notification/ZenModeConfig$Migration;

.field private final mConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultConfig:Landroid/service/notification/ZenModeConfig;

.field private mEffectsSuppressed:Z

.field private final mFiltering:Lcom/android/server/notification/ZenModeFiltering;

.field private final mHandler:Lcom/android/server/notification/ZenModeHelper$H;

.field private final mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

.field private final mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

.field private final mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

.field private mUser:I

.field private mZenMode:I


# direct methods
.method static synthetic -get0(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$H;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/notification/ZenModeHelper;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/ZenModeHelper;)I
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeSetting()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;)V
    .locals 0
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->appendDefaultEventRules(Landroid/service/notification/ZenModeConfig;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;)V
    .locals 0
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->appendDefaultScheduleRules(Landroid/service/notification/ZenModeConfig;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnZenModeChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "setRingerMode"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "previousRingerLevel"    # Ljava/lang/Integer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/notification/ZenModeHelper;I)V
    .locals 0
    .param p1, "zen"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->setZenModeSetting(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 73
    const-string/jumbo v0, "ZenModeHelper"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    #@a
    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "conditionProviders"    # Lcom/android/server/notification/ConditionProviders;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    #@c
    .line 82
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    #@e
    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;)V

    #@11
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    #@13
    .line 84
    new-instance v0, Landroid/util/SparseArray;

    #@15
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    #@1a
    .line 85
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$Metrics;

    #@1c
    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$Metrics;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$Metrics;)V

    #@1f
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    #@21
    .line 88
    iput v2, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    #@23
    .line 545
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$1;

    #@25
    invoke-direct {v0, p0}, Lcom/android/server/notification/ZenModeHelper$1;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    #@28
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigMigration:Landroid/service/notification/ZenModeConfig$Migration;

    #@2a
    .line 94
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@2c
    .line 95
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$H;

    #@2e
    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$H;)V

    #@31
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    #@33
    .line 96
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    #@35
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    #@38
    .line 97
    const-string/jumbo v0, "appops"

    #@3b
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Landroid/app/AppOpsManager;

    #@41
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    #@43
    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@46
    move-result-object v0

    #@47
    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;

    #@4a
    move-result-object v0

    #@4b
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    #@4d
    .line 99
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    #@4f
    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->appendDefaultScheduleRules(Landroid/service/notification/ZenModeConfig;)V

    #@52
    .line 100
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    #@54
    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->appendDefaultEventRules(Landroid/service/notification/ZenModeConfig;)V

    #@57
    .line 101
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    #@59
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@5b
    .line 102
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    #@5d
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@5f
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@62
    .line 103
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    #@64
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    #@66
    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V

    #@69
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    #@6b
    .line 104
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    #@6d
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->observe()V

    #@70
    .line 105
    new-instance v0, Lcom/android/server/notification/ZenModeFiltering;

    #@72
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@74
    invoke-direct {v0, v1}, Lcom/android/server/notification/ZenModeFiltering;-><init>(Landroid/content/Context;)V

    #@77
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    #@79
    .line 106
    new-instance v0, Lcom/android/server/notification/ZenModeConditions;

    #@7b
    invoke-direct {v0, p0, p3}, Lcom/android/server/notification/ZenModeConditions;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V

    #@7e
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    #@80
    .line 93
    return-void
.end method

.method private appendDefaultEventRules(Landroid/service/notification/ZenModeConfig;)V
    .locals 4
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 523
    if-nez p1, :cond_0

    #@3
    return-void

    #@4
    .line 525
    :cond_0
    new-instance v0, Landroid/service/notification/ZenModeConfig$EventInfo;

    #@6
    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    #@9
    .line 526
    .local v0, "events":Landroid/service/notification/ZenModeConfig$EventInfo;
    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@b
    .line 527
    const/4 v2, 0x1

    #@c
    iput v2, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    #@e
    .line 528
    new-instance v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@10
    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    #@13
    .line 529
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v2, 0x0

    #@14
    iput-boolean v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@16
    .line 530
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@18
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1b
    move-result-object v2

    #@1c
    const v3, 0x104057a

    #@1f
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@25
    .line 531
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    #@28
    move-result-object v2

    #@29
    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@2b
    .line 532
    const/4 v2, 0x3

    #@2c
    iput v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@2e
    .line 533
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@30
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    .line 522
    return-void
.end method

.method private appendDefaultScheduleRules(Landroid/service/notification/ZenModeConfig;)V
    .locals 8
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x0

    #@2
    .line 494
    if-nez p1, :cond_0

    #@4
    return-void

    #@5
    .line 496
    :cond_0
    new-instance v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@7
    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    #@a
    .line 497
    .local v3, "weeknights":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    sget-object v4, Landroid/service/notification/ZenModeConfig;->WEEKNIGHT_DAYS:[I

    #@c
    iput-object v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@e
    .line 498
    const/16 v4, 0x16

    #@10
    iput v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    #@12
    .line 499
    const/4 v4, 0x7

    #@13
    iput v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    #@15
    .line 500
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@17
    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    #@1a
    .line 501
    .local v0, "rule1":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-boolean v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@1c
    .line 502
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@1e
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@21
    move-result-object v4

    #@22
    .line 503
    const v5, 0x1040578

    #@25
    .line 502
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@2b
    .line 504
    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    #@2e
    move-result-object v4

    #@2f
    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@31
    .line 505
    iput v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@33
    .line 506
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@35
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 508
    new-instance v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@3e
    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    #@41
    .line 509
    .local v2, "weekends":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    sget-object v4, Landroid/service/notification/ZenModeConfig;->WEEKEND_DAYS:[I

    #@43
    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@45
    .line 510
    const/16 v4, 0x17

    #@47
    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    #@49
    .line 511
    const/16 v4, 0x1e

    #@4b
    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    #@4d
    .line 512
    const/16 v4, 0xa

    #@4f
    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    #@51
    .line 513
    new-instance v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@53
    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    #@56
    .line 514
    .local v1, "rule2":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-boolean v6, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@58
    .line 515
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@5a
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5d
    move-result-object v4

    #@5e
    .line 516
    const v5, 0x1040579

    #@61
    .line 515
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    iput-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@67
    .line 517
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    #@6a
    move-result-object v4

    #@6b
    iput-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@6d
    .line 518
    iput v7, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@6f
    .line 519
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@71
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    #@74
    move-result-object v5

    #@75
    invoke-virtual {v4, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@78
    .line 493
    return-void
.end method

.method private applyRestrictions()V
    .locals 6

    #@0
    .prologue
    .line 407
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@2
    if-eqz v4, :cond_1

    #@4
    const/4 v3, 0x1

    #@5
    .line 410
    .local v3, "zen":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    #@7
    .line 411
    .local v2, "muteNotifications":Z
    const/4 v4, 0x5

    #@8
    invoke-direct {p0, v2, v4}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZI)V

    #@b
    .line 414
    if-eqz v3, :cond_0

    #@d
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@f
    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@11
    if-eqz v4, :cond_2

    #@13
    .line 415
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    #@15
    .line 416
    :goto_1
    const/4 v4, 0x6

    #@16
    invoke-direct {p0, v1, v4}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZI)V

    #@19
    .line 419
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@1b
    const/4 v5, 0x2

    #@1c
    if-ne v4, v5, :cond_3

    #@1e
    const/4 v0, 0x1

    #@1f
    .line 420
    .local v0, "muteAlarms":Z
    :goto_2
    const/4 v4, 0x4

    #@20
    invoke-direct {p0, v0, v4}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZI)V

    #@23
    .line 406
    return-void

    #@24
    .line 407
    .end local v0    # "muteAlarms":Z
    .end local v2    # "muteNotifications":Z
    .end local v3    # "zen":Z
    :cond_1
    const/4 v3, 0x0

    #@25
    .restart local v3    # "zen":Z
    goto :goto_0

    #@26
    .line 414
    .restart local v2    # "muteNotifications":Z
    :cond_2
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@28
    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@2a
    if-nez v4, :cond_0

    #@2c
    const/4 v1, 0x1

    #@2d
    .local v1, "muteCalls":Z
    goto :goto_1

    #@2e
    .line 419
    .end local v1    # "muteCalls":Z
    :cond_3
    const/4 v0, 0x0

    #@2f
    .restart local v0    # "muteAlarms":Z
    goto :goto_2
.end method

.method private applyRestrictions(ZI)V
    .locals 6
    .param p1, "mute"    # Z
    .param p2, "usage"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 424
    const/4 v0, 0x0

    #@3
    .line 425
    .local v0, "exceptionPackages":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    #@5
    .line 426
    if-eqz p1, :cond_0

    #@7
    move v1, v2

    #@8
    .line 425
    :goto_0
    const/4 v5, 0x3

    #@9
    invoke-virtual {v4, v5, p2, v1, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    #@c
    .line 428
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    #@e
    .line 429
    if-eqz p1, :cond_1

    #@10
    .line 428
    :goto_1
    const/16 v3, 0x1c

    #@12
    invoke-virtual {v1, v3, p2, v2, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    #@15
    .line 423
    return-void

    #@16
    :cond_0
    move v1, v3

    #@17
    .line 426
    goto :goto_0

    #@18
    :cond_1
    move v2, v3

    #@19
    .line 429
    goto :goto_1
.end method

.method private applyZenToRingerMode()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 434
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    #@3
    if-nez v2, :cond_0

    #@5
    return-void

    #@6
    .line 436
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    #@8
    invoke-virtual {v2}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    #@b
    move-result v1

    #@c
    .line 437
    .local v1, "ringerModeInternal":I
    move v0, v1

    #@d
    .line 438
    .local v0, "newRingerModeInternal":I
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@f
    packed-switch v2, :pswitch_data_0

    #@12
    .line 454
    :cond_1
    :goto_0
    const/4 v2, -0x1

    #@13
    if-eq v0, v2, :cond_2

    #@15
    .line 455
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    #@17
    const-string/jumbo v3, "ZenModeHelper"

    #@1a
    invoke-virtual {v2, v0, v3}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    #@1d
    .line 433
    :cond_2
    return-void

    #@1e
    .line 441
    :pswitch_0
    if-eqz v1, :cond_1

    #@20
    .line 442
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v2

    #@24
    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    #@27
    .line 443
    const/4 v0, 0x0

    #@28
    goto :goto_0

    #@29
    .line 448
    :pswitch_1
    if-nez v1, :cond_1

    #@2b
    .line 449
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->getPreviousRingerModeSetting()I

    #@2e
    move-result v0

    #@2f
    .line 450
    invoke-direct {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    #@32
    goto :goto_0

    #@33
    .line 438
    nop

    #@34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private computeZenMode(Landroid/util/ArraySet;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 393
    .local p1, "automaticRulesOut":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@2
    if-nez v3, :cond_0

    #@4
    const/4 v3, 0x0

    #@5
    return v3

    #@6
    .line 394
    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@8
    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@a
    if-eqz v3, :cond_1

    #@c
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@e
    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@10
    iget v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@12
    return v3

    #@13
    .line 395
    :cond_1
    const/4 v2, 0x0

    #@14
    .line 396
    .local v2, "zen":I
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@16
    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@18
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@1b
    move-result-object v3

    #@1c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v1

    #@20
    .local v1, "automaticRule$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_3

    #@26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@2c
    .line 397
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_2

    #@32
    .line 398
    iget v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@34
    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    #@37
    move-result v3

    #@38
    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    #@3b
    move-result v4

    #@3c
    if-le v3, v4, :cond_2

    #@3e
    .line 399
    iget v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@40
    goto :goto_0

    #@41
    .line 403
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_3
    return v2
.end method

.method private dispatchOnConfigChanged()V
    .locals 3

    #@0
    .prologue
    .line 460
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    #@12
    .line 461
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConfigChanged()V

    #@15
    goto :goto_0

    #@16
    .line 459
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_0
    return-void
.end method

.method private dispatchOnPolicyChanged()V
    .locals 3

    #@0
    .prologue
    .line 466
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    #@12
    .line 467
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onPolicyChanged()V

    #@15
    goto :goto_0

    #@16
    .line 465
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_0
    return-void
.end method

.method private dispatchOnZenModeChanged()V
    .locals 3

    #@0
    .prologue
    .line 472
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    #@12
    .line 473
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onZenModeChanged()V

    #@15
    goto :goto_0

    #@16
    .line 471
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_0
    return-void
.end method

.method private static dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V
    .locals 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "var"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/service/notification/ZenModeConfig;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 244
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7
    const/16 v2, 0x3d

    #@9
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(C)V

    #@c
    .line 245
    if-nez p3, :cond_0

    #@e
    .line 246
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@11
    .line 247
    return-void

    #@12
    .line 249
    :cond_0
    const-string/jumbo v2, "allow(calls=%s,callsFrom=%s,repeatCallers=%s,messages=%s,messagesFrom=%s,events=%s,reminders=%s)\n"

    #@15
    const/4 v3, 0x7

    #@16
    new-array v3, v3, [Ljava/lang/Object;

    #@18
    .line 251
    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@1a
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1d
    move-result-object v4

    #@1e
    aput-object v4, v3, v5

    #@20
    iget v4, p3, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v4

    #@26
    const/4 v5, 0x1

    #@27
    aput-object v4, v3, v5

    #@29
    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@2b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2e
    move-result-object v4

    #@2f
    const/4 v5, 0x2

    #@30
    aput-object v4, v3, v5

    #@32
    .line 252
    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@34
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@37
    move-result-object v4

    #@38
    const/4 v5, 0x3

    #@39
    aput-object v4, v3, v5

    #@3b
    iget v4, p3, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@3d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@40
    move-result-object v4

    #@41
    const/4 v5, 0x4

    #@42
    aput-object v4, v3, v5

    #@44
    .line 253
    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@46
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@49
    move-result-object v4

    #@4a
    const/4 v5, 0x5

    #@4b
    aput-object v4, v3, v5

    #@4d
    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@4f
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@52
    move-result-object v4

    #@53
    const/4 v5, 0x6

    #@54
    aput-object v4, v3, v5

    #@56
    .line 249
    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@59
    .line 254
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c
    const-string/jumbo v2, "  manualRule="

    #@5f
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@64
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@67
    .line 255
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@69
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    #@6c
    move-result v2

    #@6d
    if-eqz v2, :cond_1

    #@6f
    return-void

    #@70
    .line 256
    :cond_1
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@72
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@75
    move-result v0

    #@76
    .line 257
    .local v0, "N":I
    const/4 v1, 0x0

    #@77
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@79
    .line 258
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7c
    if-nez v1, :cond_2

    #@7e
    const-string/jumbo v2, "  automaticRules="

    #@81
    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@84
    .line 259
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@86
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@89
    move-result-object v2

    #@8a
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@8d
    .line 257
    add-int/lit8 v1, v1, 0x1

    #@8f
    goto :goto_0

    #@90
    .line 258
    :cond_2
    const-string/jumbo v2, "                 "

    #@93
    goto :goto_1

    #@94
    .line 243
    :cond_3
    return-void
.end method

.method private evaluateZenMode(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "setRingerMode"    # Z

    #@0
    .prologue
    .line 370
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    const-string/jumbo v2, "ZenModeHelper"

    #@7
    const-string/jumbo v3, "evaluateZenMode"

    #@a
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 371
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    #@f
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@12
    .line 372
    .local v0, "automaticRules":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->computeZenMode(Landroid/util/ArraySet;)I

    #@15
    move-result v1

    #@16
    .line 373
    .local v1, "zen":I
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@18
    if-ne v1, v2, :cond_1

    #@1a
    const/4 v2, 0x0

    #@1b
    return v2

    #@1c
    .line 374
    :cond_1
    invoke-static {v1, p1}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    #@1f
    .line 375
    iput v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@21
    .line 376
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->updateRingerModeAffectedStreams()V

    #@24
    .line 377
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@26
    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->setZenModeSetting(I)V

    #@29
    .line 378
    if-eqz p2, :cond_2

    #@2b
    .line 379
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyZenToRingerMode()V

    #@2e
    .line 381
    :cond_2
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    #@31
    .line 382
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    #@33
    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper$H;->-wrap0(Lcom/android/server/notification/ZenModeHelper$H;)V

    #@36
    .line 383
    const/4 v2, 0x1

    #@37
    return v2
.end method

.method private static getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;
    .locals 1
    .param p0, "config"    # Landroid/service/notification/ZenModeConfig;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 300
    if-nez p0, :cond_0

    #@3
    :goto_0
    return-object v0

    #@4
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    #@7
    move-result-object v0

    #@8
    goto :goto_0
.end method

.method private getPreviousRingerModeSetting()I
    .locals 3

    #@0
    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 360
    const-string/jumbo v1, "zen_mode_ringer_level"

    #@9
    const/4 v2, 0x2

    #@a
    .line 359
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method private getZenModeSetting()I
    .locals 3

    #@0
    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "zen_mode"

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method private readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;
    .locals 5
    .param p1, "resources"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 478
    const/4 v2, 0x0

    #@1
    .line 480
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const v3, 0x1110004

    #@4
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@7
    move-result-object v2

    #@8
    .line 481
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    #@b
    move-result v3

    #@c
    const/4 v4, 0x1

    #@d
    if-eq v3, v4, :cond_1

    #@f
    .line 482
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigMigration:Landroid/service/notification/ZenModeConfig$Migration;

    #@11
    invoke-static {v2, v3}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/notification/ZenModeConfig$Migration;)Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v0

    #@15
    .line 483
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_0

    #@17
    .line 488
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1a
    .line 483
    return-object v0

    #@1b
    .line 488
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1e
    .line 490
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_0
    new-instance v3, Landroid/service/notification/ZenModeConfig;

    #@20
    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig;-><init>()V

    #@23
    return-object v3

    #@24
    .line 485
    :catch_0
    move-exception v1

    #@25
    .line 486
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "ZenModeHelper"

    #@28
    const-string/jumbo v4, "Error reading default zen mode config from resource"

    #@2b
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    .line 488
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@31
    goto :goto_0

    #@32
    .line 487
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@33
    .line 488
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@36
    .line 487
    throw v3
.end method

.method private setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "setRingerMode"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 319
    if-eqz p1, :cond_1

    #@4
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isValid()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 323
    iget v2, p1, Landroid/service/notification/ZenModeConfig;->user:I

    #@c
    iget v3, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    #@e
    if-eq v2, v3, :cond_2

    #@10
    .line 325
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    #@12
    iget v3, p1, Landroid/service/notification/ZenModeConfig;->user:I

    #@14
    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@17
    .line 326
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    #@19
    if-eqz v2, :cond_0

    #@1b
    const-string/jumbo v2, "ZenModeHelper"

    #@1e
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v4, "setConfig: store config for user "

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    iget v4, p1, Landroid/service/notification/ZenModeConfig;->user:I

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 327
    :cond_0
    return v5

    #@38
    .line 320
    :cond_1
    const-string/jumbo v2, "ZenModeHelper"

    #@3b
    new-instance v3, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v4, "Invalid config in setConfig; "

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 321
    return v6

    #@53
    .line 329
    :cond_2
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    #@55
    invoke-virtual {v2, p1, v6}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Z)V

    #@58
    .line 330
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    #@5a
    iget v3, p1, Landroid/service/notification/ZenModeConfig;->user:I

    #@5c
    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@5f
    .line 331
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@61
    invoke-virtual {p1, v2}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v2

    #@65
    if-eqz v2, :cond_3

    #@67
    return v5

    #@68
    .line 332
    :cond_3
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    #@6a
    if-eqz v2, :cond_4

    #@6c
    const-string/jumbo v2, "ZenModeHelper"

    #@6f
    new-instance v3, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v4, "setConfig reason="

    #@77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v3

    #@7b
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v3

    #@7f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v3

    #@83
    new-instance v4, Ljava/lang/Throwable;

    #@85
    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    #@88
    invoke-static {v2, v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8b
    .line 333
    :cond_4
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@8d
    invoke-static {p2, v2, p1}, Lcom/android/server/notification/ZenLog;->traceConfig(Ljava/lang/String;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    #@90
    .line 334
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@92
    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    #@95
    move-result-object v2

    #@96
    .line 335
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    #@99
    move-result-object v3

    #@9a
    .line 334
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@9d
    move-result v2

    #@9e
    if-eqz v2, :cond_7

    #@a0
    const/4 v0, 0x0

    #@a1
    .line 336
    .local v0, "policyChanged":Z
    :goto_0
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@a3
    .line 337
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConfigChanged()V

    #@a6
    .line 338
    if-eqz v0, :cond_5

    #@a8
    .line 339
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnPolicyChanged()V

    #@ab
    .line 341
    :cond_5
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@ad
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->hashCode()I

    #@b0
    move-result v2

    #@b1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@b4
    move-result-object v1

    #@b5
    .line 342
    .local v1, "val":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@b7
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@ba
    move-result-object v2

    #@bb
    const-string/jumbo v3, "zen_mode_config_etag"

    #@be
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@c1
    .line 343
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)Z

    #@c4
    move-result v2

    #@c5
    if-nez v2, :cond_6

    #@c7
    .line 344
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    #@ca
    .line 346
    :cond_6
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    #@cc
    invoke-virtual {v2, p1, v5}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Z)V

    #@cf
    .line 347
    return v5

    #@d0
    .line 334
    .end local v0    # "policyChanged":Z
    .end local v1    # "val":Ljava/lang/String;
    :cond_7
    const/4 v0, 0x1

    #@d1
    .restart local v0    # "policyChanged":Z
    goto :goto_0
.end method

.method private setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "setRingerMode"    # Z

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 205
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@4
    if-nez v4, :cond_0

    #@6
    return-void

    #@7
    .line 206
    :cond_0
    invoke-static {p1}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    #@a
    move-result v4

    #@b
    if-nez v4, :cond_1

    #@d
    return-void

    #@e
    .line 207
    :cond_1
    sget-boolean v4, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    #@10
    if-eqz v4, :cond_2

    #@12
    const-string/jumbo v4, "ZenModeHelper"

    #@15
    new-instance v5, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v6, "setManualZenMode "

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-static {p1}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    #@24
    move-result-object v6

    #@25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    .line 208
    const-string/jumbo v6, " conditionId="

    #@2c
    .line 207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    .line 208
    const-string/jumbo v6, " reason="

    #@37
    .line 207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    .line 209
    const-string/jumbo v6, " setRingerMode="

    #@42
    .line 207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 210
    :cond_2
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@53
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    #@56
    move-result-object v2

    #@57
    .line 211
    .local v2, "newConfig":Landroid/service/notification/ZenModeConfig;
    if-nez p1, :cond_4

    #@59
    .line 212
    iput-object v8, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@5b
    .line 213
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@5d
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@60
    move-result-object v4

    #@61
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@64
    move-result-object v1

    #@65
    .local v1, "automaticRule$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@68
    move-result v4

    #@69
    if-eqz v4, :cond_5

    #@6b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6e
    move-result-object v0

    #@6f
    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@71
    .line 214
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    #@74
    move-result v4

    #@75
    if-eqz v4, :cond_3

    #@77
    .line 215
    iput-boolean v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    #@79
    goto :goto_0

    #@7a
    .line 219
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v1    # "automaticRule$iterator":Ljava/util/Iterator;
    :cond_4
    new-instance v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@7c
    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    #@7f
    .line 220
    .local v3, "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-boolean v7, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@81
    .line 221
    iput p1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@83
    .line 222
    iput-object p2, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@85
    .line 223
    iput-object v3, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@87
    .line 225
    .end local v3    # "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_5
    invoke-direct {p0, v2, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z

    #@8a
    .line 204
    return-void
.end method

.method private setPreviousRingerModeSetting(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "previousRingerLevel"    # Ljava/lang/Integer;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 365
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    const-string/jumbo v2, "zen_mode_ringer_level"

    #@a
    .line 366
    if-nez p1, :cond_0

    #@c
    .line 364
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@f
    .line 363
    return-void

    #@10
    .line 366
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@13
    move-result v0

    #@14
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    goto :goto_0
.end method

.method private setZenModeSetting(I)V
    .locals 2
    .param p1, "zen"    # I

    #@0
    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "zen_mode"

    #@9
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@c
    .line 354
    return-void
.end method

.method private updateRingerModeAffectedStreams()V
    .locals 1

    #@0
    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 388
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    #@6
    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->updateRingerModeAffectedStreamsInternal()V

    #@9
    .line 386
    :cond_0
    return-void
.end method

.method private static zenSeverity(I)I
    .locals 1
    .param p0, "zen"    # I

    #@0
    .prologue
    .line 537
    packed-switch p0, :pswitch_data_0

    #@3
    .line 541
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 538
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 539
    :pswitch_1
    const/4 v0, 0x2

    #@8
    return v0

    #@9
    .line 540
    :pswitch_2
    const/4 v0, 0x3

    #@a
    return v0

    #@b
    .line 537
    nop

    #@c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 132
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 229
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v2, "mZenMode="

    #@6
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 230
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@b
    invoke-static {v2}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12
    .line 231
    const-string/jumbo v2, "mDefaultConfig"

    #@15
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    #@17
    invoke-static {p1, p2, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    #@1a
    .line 232
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    #@1c
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@1f
    move-result v0

    #@20
    .line 233
    .local v0, "N":I
    const/4 v1, 0x0

    #@21
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@23
    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v3, "mConfigs[u="

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    #@31
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@34
    move-result v3

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    const-string/jumbo v3, "]"

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    #@46
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@49
    move-result-object v2

    #@4a
    check-cast v2, Landroid/service/notification/ZenModeConfig;

    #@4c
    invoke-static {p1, p2, v3, v2}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    #@4f
    .line 233
    add-int/lit8 v1, v1, 0x1

    #@51
    goto :goto_0

    #@52
    .line 236
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55
    const-string/jumbo v2, "mUser="

    #@58
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    #@5d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    #@60
    .line 237
    const-string/jumbo v2, "mConfig"

    #@63
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@65
    invoke-static {p1, p2, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    #@68
    .line 238
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6b
    const-string/jumbo v2, "mEffectsSuppressed="

    #@6e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    iget-boolean v2, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    #@73
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@76
    .line 239
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    #@78
    invoke-virtual {v2, p1, p2}, Lcom/android/server/notification/ZenModeFiltering;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@7b
    .line 240
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    #@7d
    invoke-virtual {v2, p1, p2}, Lcom/android/server/notification/ZenModeConditions;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@80
    .line 228
    return-void
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@2
    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    #@2
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$H;->getLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 1

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@2
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getZenMode()I
    .locals 1

    #@0
    .prologue
    .line 196
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@2
    return v0
.end method

.method public getZenModeListenerInterruptionFilter()I
    .locals 1

    #@0
    .prologue
    .line 178
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@2
    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public initZenMode()V
    .locals 2

    #@0
    .prologue
    .line 141
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "ZenModeHelper"

    #@7
    const-string/jumbo v1, "initZenMode"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 142
    :cond_0
    const-string/jumbo v0, "init"

    #@10
    const/4 v1, 0x1

    #@11
    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)Z

    #@14
    .line 140
    return-void
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .locals 8
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p4, "contactsTimeoutMs"    # I
    .param p5, "timeoutAffinity"    # F

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@2
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@4
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@6
    move-object v3, p1

    #@7
    move-object v4, p2

    #@8
    move-object v5, p3

    #@9
    move v6, p4

    #@a
    move v7, p5

    #@b
    invoke-static/range {v0 .. v7}, Lcom/android/server/notification/ZenModeFiltering;->matchesCallFilter(Landroid/content/Context;ILandroid/service/notification/ZenModeConfig;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public onSystemReady()V
    .locals 2

    #@0
    .prologue
    .line 146
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "ZenModeHelper"

    #@7
    const-string/jumbo v1, "onSystemReady"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 147
    :cond_0
    const-class v0, Landroid/media/AudioManagerInternal;

    #@f
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/media/AudioManagerInternal;

    #@15
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    #@17
    .line 148
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 149
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    #@1d
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    #@1f
    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V

    #@22
    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    #@24
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$H;->-wrap1(Lcom/android/server/notification/ZenModeHelper$H;)V

    #@27
    .line 145
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 3
    .param p1, "user"    # I

    #@0
    .prologue
    .line 168
    if-gez p1, :cond_0

    #@2
    return-void

    #@3
    .line 169
    :cond_0
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    #@5
    if-eqz v0, :cond_1

    #@7
    const-string/jumbo v0, "ZenModeHelper"

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "onUserRemoved u="

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    #@23
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@26
    .line 167
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 4
    .param p1, "user"    # I

    #@0
    .prologue
    .line 155
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    #@2
    if-eq v1, p1, :cond_0

    #@4
    if-gez p1, :cond_1

    #@6
    :cond_0
    return-void

    #@7
    .line 156
    :cond_1
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    #@9
    .line 157
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    #@b
    if-eqz v1, :cond_2

    #@d
    const-string/jumbo v1, "ZenModeHelper"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "onUserSwitched u="

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 158
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    #@29
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Landroid/service/notification/ZenModeConfig;

    #@2f
    .line 159
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_4

    #@31
    .line 160
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    #@33
    if-eqz v1, :cond_3

    #@35
    const-string/jumbo v1, "ZenModeHelper"

    #@38
    new-instance v2, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v3, "onUserSwitched: generating default config for user "

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 161
    :cond_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    #@51
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    #@54
    move-result-object v0

    #@55
    .line 162
    iput p1, v0, Landroid/service/notification/ZenModeConfig;->user:I

    #@57
    .line 164
    :cond_4
    const-string/jumbo v1, "onUserSwitched"

    #@5a
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    #@5d
    .line 154
    return-void
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "forRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 265
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigMigration:Landroid/service/notification/ZenModeConfig$Migration;

    #@4
    invoke-static {p1, v3}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/notification/ZenModeConfig$Migration;)Landroid/service/notification/ZenModeConfig;

    #@7
    move-result-object v2

    #@8
    .line 266
    .local v2, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v2, :cond_3

    #@a
    .line 267
    if-eqz p2, :cond_1

    #@c
    .line 268
    iget v3, v2, Landroid/service/notification/ZenModeConfig;->user:I

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 269
    return-void

    #@11
    .line 271
    :cond_0
    iput-object v4, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@13
    .line 272
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 273
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@19
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@1c
    move-result-object v3

    #@1d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v1

    #@21
    .local v1, "automaticRule$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_1

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@2d
    .line 275
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-boolean v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    #@2f
    .line 276
    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@31
    goto :goto_0

    #@32
    .line 280
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v1    # "automaticRule$iterator":Ljava/util/Iterator;
    :cond_1
    sget-boolean v3, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    #@34
    if-eqz v3, :cond_2

    #@36
    const-string/jumbo v3, "ZenModeHelper"

    #@39
    const-string/jumbo v4, "readXml"

    #@3c
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 281
    :cond_2
    const-string/jumbo v3, "readXml"

    #@42
    invoke-virtual {p0, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    #@45
    .line 264
    :cond_3
    return-void
.end method

.method public removeCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 136
    return-void
.end method

.method public requestFromListener(Landroid/content/ComponentName;I)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "filter"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 182
    invoke-static {p2, v1}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    #@5
    move-result v0

    #@6
    .line 183
    .local v0, "newZen":I
    if-eq v0, v1, :cond_0

    #@8
    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "listener:"

    #@10
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    if-eqz p1, :cond_1

    #@16
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    .line 184
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    #@25
    .line 181
    :cond_0
    return-void

    #@26
    :cond_1
    move-object v1, v2

    #@27
    .line 185
    goto :goto_0
.end method

.method public requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    .locals 1
    .param p1, "callback"    # Landroid/service/notification/IConditionListener;
    .param p2, "relevance"    # I

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ZenModeConditions;->requestConditions(Landroid/service/notification/IConditionListener;I)V

    #@5
    .line 173
    return-void
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    .locals 1
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 315
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public setEffectsSuppressed(Z)V
    .locals 1
    .param p1, "effectsSuppressed"    # Z

    #@0
    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    #@2
    if-ne v0, p1, :cond_0

    #@4
    return-void

    #@5
    .line 191
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    #@7
    .line 192
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    #@a
    .line 189
    return-void
.end method

.method public setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 200
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    #@4
    .line 199
    return-void
.end method

.method public setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .locals 2
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    #@0
    .prologue
    .line 304
    if-eqz p1, :cond_0

    #@2
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@4
    if-nez v1, :cond_1

    #@6
    :cond_0
    return-void

    #@7
    .line 305
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@9
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    #@c
    move-result-object v0

    #@d
    .line 306
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    invoke-virtual {v0, p1}, Landroid/service/notification/ZenModeConfig;->applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    #@10
    .line 307
    const-string/jumbo v1, "setNotificationPolicy"

    #@13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    #@16
    .line 303
    return-void
.end method

.method public shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    #@2
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@4
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@6
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/notification/ZenModeFiltering;->shouldIntercept(ILandroid/service/notification/ZenModeConfig;Lcom/android/server/notification/NotificationRecord;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 115
    const-string/jumbo v0, "ZenModeHelper"

    #@3
    return-object v0
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 286
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v0

    #@6
    .line 287
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 288
    if-eqz p2, :cond_0

    #@b
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 287
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 291
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    #@18
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Landroid/service/notification/ZenModeConfig;

    #@1e
    invoke-virtual {v2, p1}, Landroid/service/notification/ZenModeConfig;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@21
    goto :goto_1

    #@22
    .line 285
    :cond_1
    return-void
.end method
