.class public Lcom/android/server/notification/ZenModeHelper;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$1;,
        Lcom/android/server/notification/ZenModeHelper$Callback;,
        Lcom/android/server/notification/ZenModeHelper$H;,
        Lcom/android/server/notification/ZenModeHelper$Metrics;,
        Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;,
        Lcom/android/server/notification/ZenModeHelper$SettingsObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final RULE_INSTANCE_GRACE_PERIOD:I = 0xf731400

.field public static final SUPPRESSED_EFFECT_ALL:J = 0x3L

.field public static final SUPPRESSED_EFFECT_CALLS:J = 0x2L

.field public static final SUPPRESSED_EFFECT_NOTIFICATIONS:J = 0x1L

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

.field private final mFiltering:Lcom/android/server/notification/ZenModeFiltering;

.field private final mHandler:Lcom/android/server/notification/ZenModeHelper$H;

.field private final mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

.field private final mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

.field private final mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

.field private mSuppressedEffects:J

.field private mUser:I

.field private mZenMode:I


# direct methods
.method static synthetic -get0(Lcom/android/server/notification/ZenModeHelper;)Landroid/service/notification/ZenModeConfig;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$H;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/notification/ZenModeHelper;)I
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

.method static synthetic -wrap3(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "setRingerMode"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->applyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnZenModeChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "caller"    # Ljava/lang/String;
    .param p5, "setRingerMode"    # Z

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "previousRingerLevel"    # Ljava/lang/Integer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/notification/ZenModeHelper;I)V
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
    .line 83
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
    .line 81
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
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    #@c
    .line 95
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    #@e
    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;)V

    #@11
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    #@13
    .line 97
    new-instance v0, Landroid/util/SparseArray;

    #@15
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    #@1a
    .line 98
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$Metrics;

    #@1c
    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$Metrics;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$Metrics;)V

    #@1f
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    #@21
    .line 102
    iput v2, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    #@23
    .line 883
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$1;

    #@25
    invoke-direct {v0, p0}, Lcom/android/server/notification/ZenModeHelper$1;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    #@28
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigMigration:Landroid/service/notification/ZenModeConfig$Migration;

    #@2a
    .line 114
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@2c
    .line 115
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$H;

    #@2e
    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$H;)V

    #@31
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    #@33
    .line 116
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    #@35
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    #@38
    .line 117
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
    .line 118
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
    .line 119
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    #@4f
    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->appendDefaultScheduleRules(Landroid/service/notification/ZenModeConfig;)V

    #@52
    .line 120
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    #@54
    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->appendDefaultEventRules(Landroid/service/notification/ZenModeConfig;)V

    #@57
    .line 121
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    #@59
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@5b
    .line 122
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    #@5d
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@5f
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@62
    .line 123
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    #@64
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    #@66
    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V

    #@69
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    #@6b
    .line 124
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    #@6d
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->observe()V

    #@70
    .line 125
    new-instance v0, Lcom/android/server/notification/ZenModeFiltering;

    #@72
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@74
    invoke-direct {v0, v1}, Lcom/android/server/notification/ZenModeFiltering;-><init>(Landroid/content/Context;)V

    #@77
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    #@79
    .line 126
    new-instance v0, Lcom/android/server/notification/ZenModeConditions;

    #@7b
    invoke-direct {v0, p0, p3}, Lcom/android/server/notification/ZenModeConditions;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V

    #@7e
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    #@80
    .line 127
    invoke-virtual {p3}, Lcom/android/server/notification/ConditionProviders;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    #@83
    move-result-object v0

    #@84
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@86
    .line 113
    return-void
.end method

.method private appendDefaultEventRules(Landroid/service/notification/ZenModeConfig;)V
    .locals 4
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 858
    if-nez p1, :cond_0

    #@3
    return-void

    #@4
    .line 860
    :cond_0
    new-instance v0, Landroid/service/notification/ZenModeConfig$EventInfo;

    #@6
    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    #@9
    .line 861
    .local v0, "events":Landroid/service/notification/ZenModeConfig$EventInfo;
    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@b
    .line 862
    const/4 v2, 0x1

    #@c
    iput v2, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    #@e
    .line 863
    new-instance v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@10
    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    #@13
    .line 864
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v2, 0x0

    #@14
    iput-boolean v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@16
    .line 865
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@18
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1b
    move-result-object v2

    #@1c
    const v3, 0x10405c7

    #@1f
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@25
    .line 866
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    #@28
    move-result-object v2

    #@29
    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@2b
    .line 867
    const/4 v2, 0x3

    #@2c
    iput v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@2e
    .line 868
    sget-object v2, Lcom/android/server/notification/EventConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    #@30
    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@32
    .line 869
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    #@38
    .line 870
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3b
    move-result-wide v2

    #@3c
    iput-wide v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    #@3e
    .line 871
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@40
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    #@42
    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    .line 857
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
    .line 823
    if-nez p1, :cond_0

    #@4
    return-void

    #@5
    .line 825
    :cond_0
    new-instance v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@7
    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    #@a
    .line 826
    .local v3, "weeknights":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    sget-object v4, Landroid/service/notification/ZenModeConfig;->WEEKNIGHT_DAYS:[I

    #@c
    iput-object v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@e
    .line 827
    const/16 v4, 0x16

    #@10
    iput v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    #@12
    .line 828
    const/4 v4, 0x7

    #@13
    iput v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    #@15
    .line 829
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@17
    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    #@1a
    .line 830
    .local v0, "rule1":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-boolean v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@1c
    .line 831
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@1e
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@21
    move-result-object v4

    #@22
    .line 832
    const v5, 0x10405c5

    #@25
    .line 831
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@2b
    .line 833
    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    #@2e
    move-result-object v4

    #@2f
    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@31
    .line 834
    iput v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@33
    .line 835
    sget-object v4, Lcom/android/server/notification/ScheduleConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    #@35
    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@37
    .line 836
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    #@3d
    .line 837
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@40
    move-result-wide v4

    #@41
    iput-wide v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    #@43
    .line 838
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@45
    iget-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    #@47
    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    .line 840
    new-instance v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@4c
    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    #@4f
    .line 841
    .local v2, "weekends":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    sget-object v4, Landroid/service/notification/ZenModeConfig;->WEEKEND_DAYS:[I

    #@51
    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@53
    .line 842
    const/16 v4, 0x17

    #@55
    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    #@57
    .line 843
    const/16 v4, 0x1e

    #@59
    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    #@5b
    .line 844
    const/16 v4, 0xa

    #@5d
    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    #@5f
    .line 845
    new-instance v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@61
    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    #@64
    .line 846
    .local v1, "rule2":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-boolean v6, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@66
    .line 847
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@68
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6b
    move-result-object v4

    #@6c
    .line 848
    const v5, 0x10405c6

    #@6f
    .line 847
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@72
    move-result-object v4

    #@73
    iput-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@75
    .line 849
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    #@78
    move-result-object v4

    #@79
    iput-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@7b
    .line 850
    iput v7, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@7d
    .line 851
    sget-object v4, Lcom/android/server/notification/ScheduleConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    #@7f
    iput-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@81
    .line 852
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    iput-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    #@87
    .line 853
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@8a
    move-result-wide v4

    #@8b
    iput-wide v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    #@8d
    .line 854
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@8f
    iget-object v5, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    #@91
    invoke-virtual {v4, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@94
    .line 822
    return-void
.end method

.method private applyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "setRingerMode"    # Z

    #@0
    .prologue
    .line 661
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->hashCode()I

    #@3
    move-result v1

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 662
    .local v0, "val":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, "zen_mode_config_etag"

    #@11
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@14
    .line 663
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 664
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    #@1d
    .line 666
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    #@1f
    const/4 v2, 0x1

    #@20
    invoke-virtual {v1, p1, v2}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Z)V

    #@23
    .line 660
    return-void
.end method

.method private applyRestrictions()V
    .locals 10

    #@0
    .prologue
    .line 729
    iget v6, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@2
    if-eqz v6, :cond_1

    #@4
    const/4 v5, 0x1

    #@5
    .line 733
    .local v5, "zen":Z
    :goto_0
    iget-wide v6, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    #@7
    const-wide/16 v8, 0x1

    #@9
    and-long/2addr v6, v8

    #@a
    const-wide/16 v8, 0x0

    #@c
    cmp-long v6, v6, v8

    #@e
    if-eqz v6, :cond_2

    #@10
    const/4 v2, 0x1

    #@11
    .line 735
    .local v2, "muteNotifications":Z
    :goto_1
    if-eqz v5, :cond_0

    #@13
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@15
    iget-boolean v6, v6, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@17
    if-eqz v6, :cond_3

    #@19
    .line 736
    :cond_0
    iget-wide v6, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    #@1b
    const-wide/16 v8, 0x2

    #@1d
    and-long/2addr v6, v8

    #@1e
    const-wide/16 v8, 0x0

    #@20
    cmp-long v6, v6, v8

    #@22
    if-eqz v6, :cond_4

    #@24
    const/4 v0, 0x1

    #@25
    .line 738
    .local v0, "muteCalls":Z
    :goto_2
    iget v6, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@27
    const/4 v7, 0x2

    #@28
    if-ne v6, v7, :cond_5

    #@2a
    const/4 v1, 0x1

    #@2b
    .line 740
    .local v1, "muteEverything":Z
    :goto_3
    sget-object v8, Landroid/media/AudioAttributes;->SDK_USAGES:[I

    #@2d
    const/4 v6, 0x0

    #@2e
    array-length v9, v8

    #@2f
    move v7, v6

    #@30
    :goto_4
    if-ge v7, v9, :cond_a

    #@32
    aget v4, v8, v7

    #@34
    .line 741
    .local v4, "usage":I
    sget-object v6, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    #@36
    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->get(I)I

    #@39
    move-result v3

    #@3a
    .line 742
    .local v3, "suppressionBehavior":I
    const/4 v6, 0x1

    #@3b
    if-ne v3, v6, :cond_7

    #@3d
    .line 743
    if-nez v2, :cond_6

    #@3f
    move v6, v1

    #@40
    :goto_5
    invoke-direct {p0, v6, v4}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZI)V

    #@43
    .line 740
    :goto_6
    add-int/lit8 v6, v7, 0x1

    #@45
    move v7, v6

    #@46
    goto :goto_4

    #@47
    .line 729
    .end local v0    # "muteCalls":Z
    .end local v1    # "muteEverything":Z
    .end local v2    # "muteNotifications":Z
    .end local v3    # "suppressionBehavior":I
    .end local v4    # "usage":I
    .end local v5    # "zen":Z
    :cond_1
    const/4 v5, 0x0

    #@48
    .restart local v5    # "zen":Z
    goto :goto_0

    #@49
    .line 733
    :cond_2
    const/4 v2, 0x0

    #@4a
    .restart local v2    # "muteNotifications":Z
    goto :goto_1

    #@4b
    .line 735
    :cond_3
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@4d
    iget-boolean v6, v6, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@4f
    if-nez v6, :cond_0

    #@51
    const/4 v0, 0x1

    #@52
    .restart local v0    # "muteCalls":Z
    goto :goto_2

    #@53
    .line 736
    .end local v0    # "muteCalls":Z
    :cond_4
    const/4 v0, 0x0

    #@54
    .restart local v0    # "muteCalls":Z
    goto :goto_2

    #@55
    .line 738
    :cond_5
    const/4 v1, 0x0

    #@56
    .restart local v1    # "muteEverything":Z
    goto :goto_3

    #@57
    .line 743
    .restart local v3    # "suppressionBehavior":I
    .restart local v4    # "usage":I
    :cond_6
    const/4 v6, 0x1

    #@58
    goto :goto_5

    #@59
    .line 744
    :cond_7
    const/4 v6, 0x2

    #@5a
    if-ne v3, v6, :cond_9

    #@5c
    .line 745
    if-nez v0, :cond_8

    #@5e
    move v6, v1

    #@5f
    :goto_7
    invoke-direct {p0, v6, v4}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZI)V

    #@62
    goto :goto_6

    #@63
    :cond_8
    const/4 v6, 0x1

    #@64
    goto :goto_7

    #@65
    .line 747
    :cond_9
    invoke-direct {p0, v1, v4}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZI)V

    #@68
    goto :goto_6

    #@69
    .line 728
    .end local v3    # "suppressionBehavior":I
    .end local v4    # "usage":I
    :cond_a
    return-void
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
    .line 753
    const/4 v0, 0x0

    #@3
    .line 754
    .local v0, "exceptionPackages":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    #@5
    .line 755
    if-eqz p1, :cond_0

    #@7
    move v1, v2

    #@8
    .line 754
    :goto_0
    const/4 v5, 0x3

    #@9
    invoke-virtual {v4, v5, p2, v1, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    #@c
    .line 757
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    #@e
    .line 758
    if-eqz p1, :cond_1

    #@10
    .line 757
    :goto_1
    const/16 v3, 0x1c

    #@12
    invoke-virtual {v1, v3, p2, v2, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    #@15
    .line 752
    return-void

    #@16
    :cond_0
    move v1, v3

    #@17
    .line 755
    goto :goto_0

    #@18
    :cond_1
    move v2, v3

    #@19
    .line 758
    goto :goto_1
.end method

.method private applyZenToRingerMode()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 763
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    #@3
    if-nez v2, :cond_0

    #@5
    return-void

    #@6
    .line 765
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    #@8
    invoke-virtual {v2}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    #@b
    move-result v1

    #@c
    .line 766
    .local v1, "ringerModeInternal":I
    move v0, v1

    #@d
    .line 767
    .local v0, "newRingerModeInternal":I
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@f
    packed-switch v2, :pswitch_data_0

    #@12
    .line 783
    :cond_1
    :goto_0
    const/4 v2, -0x1

    #@13
    if-eq v0, v2, :cond_2

    #@15
    .line 784
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    #@17
    const-string/jumbo v3, "ZenModeHelper"

    #@1a
    invoke-virtual {v2, v0, v3}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    #@1d
    .line 762
    :cond_2
    return-void

    #@1e
    .line 770
    :pswitch_0
    if-eqz v1, :cond_1

    #@20
    .line 771
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v2

    #@24
    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    #@27
    .line 772
    const/4 v0, 0x0

    #@28
    goto :goto_0

    #@29
    .line 777
    :pswitch_1
    if-nez v1, :cond_1

    #@2b
    .line 778
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->getPreviousRingerModeSetting()I

    #@2e
    move-result v0

    #@2f
    .line 779
    invoke-direct {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    #@32
    goto :goto_0

    #@33
    .line 767
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

.method private cleanUpZenRules()V
    .locals 12

    #@0
    .prologue
    .line 590
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 591
    .local v0, "currentTime":J
    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@6
    monitor-enter v7

    #@7
    .line 592
    :try_start_0
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@9
    invoke-virtual {v6}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    #@c
    move-result-object v4

    #@d
    .line 593
    .local v4, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v6, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@f
    if-eqz v6, :cond_1

    #@11
    .line 594
    iget-object v6, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@16
    move-result v6

    #@17
    add-int/lit8 v3, v6, -0x1

    #@19
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    #@1b
    .line 595
    iget-object v6, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@1d
    iget-object v8, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@1f
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@22
    move-result-object v8

    #@23
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v5

    #@27
    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@29
    .line 596
    .local v5, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-wide v8, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    sub-long v8, v0, v8

    #@2d
    const-wide/32 v10, 0xf731400

    #@30
    cmp-long v6, v10, v8

    #@32
    if-gez v6, :cond_0

    #@34
    .line 598
    :try_start_1
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    #@36
    iget-object v8, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@38
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@3b
    move-result-object v8

    #@3c
    .line 599
    const/16 v9, 0x2000

    #@3e
    .line 598
    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    .line 594
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    #@43
    goto :goto_0

    #@44
    .line 600
    :catch_0
    move-exception v2

    #@45
    .line 601
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    iget-object v6, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@47
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4a
    goto :goto_1

    #@4b
    .line 591
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "i":I
    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .end local v5    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :catchall_0
    move-exception v6

    #@4c
    monitor-exit v7

    #@4d
    throw v6

    #@4e
    .line 606
    .restart local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :cond_1
    :try_start_3
    const-string/jumbo v6, "cleanUpZenRules"

    #@51
    invoke-virtual {p0, v4, v6}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@54
    monitor-exit v7

    #@55
    .line 589
    return-void
.end method

.method private computeZenMode()I
    .locals 6

    #@0
    .prologue
    .line 713
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@2
    monitor-enter v4

    #@3
    .line 714
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v3, :cond_0

    #@7
    const/4 v3, 0x0

    #@8
    monitor-exit v4

    #@9
    return v3

    #@a
    .line 715
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@c
    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@e
    if-eqz v3, :cond_1

    #@10
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@12
    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@14
    iget v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    monitor-exit v4

    #@17
    return v3

    #@18
    .line 716
    :cond_1
    const/4 v2, 0x0

    #@19
    .line 717
    .local v2, "zen":I
    :try_start_2
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@1b
    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@1d
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@20
    move-result-object v3

    #@21
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v1

    #@25
    .local v1, "automaticRule$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_3

    #@2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@31
    .line 718
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_2

    #@37
    .line 719
    iget v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@39
    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    #@3c
    move-result v3

    #@3d
    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    #@40
    move-result v5

    #@41
    if-le v3, v5, :cond_2

    #@43
    .line 720
    iget v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    goto :goto_0

    #@46
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_3
    monitor-exit v4

    #@47
    .line 724
    return v2

    #@48
    .line 713
    .end local v1    # "automaticRule$iterator":Ljava/util/Iterator;
    .end local v2    # "zen":I
    :catchall_0
    move-exception v3

    #@49
    monitor-exit v4

    #@4a
    throw v3
.end method

.method private createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;
    .locals 8
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    #@0
    .prologue
    .line 453
    new-instance v0, Landroid/app/AutomaticZenRule;

    #@2
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@4
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@6
    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@8
    .line 454
    iget v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@a
    invoke-static {v4}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    #@d
    move-result v4

    #@e
    iget-boolean v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@10
    .line 455
    iget-wide v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    #@12
    .line 453
    invoke-direct/range {v0 .. v7}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZJ)V

    #@15
    return-object v0
.end method

.method private dispatchOnConfigChanged()V
    .locals 3

    #@0
    .prologue
    .line 789
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
    .line 790
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConfigChanged()V

    #@15
    goto :goto_0

    #@16
    .line 788
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_0
    return-void
.end method

.method private dispatchOnPolicyChanged()V
    .locals 3

    #@0
    .prologue
    .line 795
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
    .line 796
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onPolicyChanged()V

    #@15
    goto :goto_0

    #@16
    .line 794
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_0
    return-void
.end method

.method private dispatchOnZenModeChanged()V
    .locals 3

    #@0
    .prologue
    .line 801
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
    .line 802
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onZenModeChanged()V

    #@15
    goto :goto_0

    #@16
    .line 800
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
    .line 510
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7
    const/16 v2, 0x3d

    #@9
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(C)V

    #@c
    .line 511
    if-nez p3, :cond_0

    #@e
    .line 512
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@11
    .line 513
    return-void

    #@12
    .line 515
    :cond_0
    const-string/jumbo v2, "allow(calls=%s,callsFrom=%s,repeatCallers=%s,messages=%s,messagesFrom=%s,events=%s,reminders=%s,whenScreenOff,whenScreenOn=%s)\n"

    #@15
    const/16 v3, 0x9

    #@17
    new-array v3, v3, [Ljava/lang/Object;

    #@19
    .line 517
    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@1b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1e
    move-result-object v4

    #@1f
    aput-object v4, v3, v5

    #@21
    iget v4, p3, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@23
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    const/4 v5, 0x1

    #@28
    aput-object v4, v3, v5

    #@2a
    .line 518
    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@2c
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2f
    move-result-object v4

    #@30
    const/4 v5, 0x2

    #@31
    aput-object v4, v3, v5

    #@33
    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@35
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@38
    move-result-object v4

    #@39
    const/4 v5, 0x3

    #@3a
    aput-object v4, v3, v5

    #@3c
    .line 519
    iget v4, p3, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@3e
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    const/4 v5, 0x4

    #@43
    aput-object v4, v3, v5

    #@45
    .line 520
    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@47
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4a
    move-result-object v4

    #@4b
    const/4 v5, 0x5

    #@4c
    aput-object v4, v3, v5

    #@4e
    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@50
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@53
    move-result-object v4

    #@54
    const/4 v5, 0x6

    #@55
    aput-object v4, v3, v5

    #@57
    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    #@59
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5c
    move-result-object v4

    #@5d
    const/4 v5, 0x7

    #@5e
    aput-object v4, v3, v5

    #@60
    .line 521
    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    #@62
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@65
    move-result-object v4

    #@66
    const/16 v5, 0x8

    #@68
    aput-object v4, v3, v5

    #@6a
    .line 515
    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@6d
    .line 522
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@70
    const-string/jumbo v2, "  manualRule="

    #@73
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@76
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@78
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@7b
    .line 523
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@7d
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    #@80
    move-result v2

    #@81
    if-eqz v2, :cond_1

    #@83
    return-void

    #@84
    .line 524
    :cond_1
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@86
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@89
    move-result v0

    #@8a
    .line 525
    .local v0, "N":I
    const/4 v1, 0x0

    #@8b
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@8d
    .line 526
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@90
    if-nez v1, :cond_2

    #@92
    const-string/jumbo v2, "  automaticRules="

    #@95
    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98
    .line 527
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@9a
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@9d
    move-result-object v2

    #@9e
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@a1
    .line 525
    add-int/lit8 v1, v1, 0x1

    #@a3
    goto :goto_0

    #@a4
    .line 526
    :cond_2
    const-string/jumbo v2, "                 "

    #@a7
    goto :goto_1

    #@a8
    .line 509
    :cond_3
    return-void
.end method

.method private evaluateZenMode(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "setRingerMode"    # Z

    #@0
    .prologue
    .line 689
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
    .line 690
    :cond_0
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@f
    .line 691
    .local v1, "zenBefore":I
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->computeZenMode()I

    #@12
    move-result v0

    #@13
    .line 692
    .local v0, "zen":I
    invoke-static {v0, p1}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    #@16
    .line 693
    iput v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@18
    .line 694
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->updateRingerModeAffectedStreams()V

    #@1b
    .line 695
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@1d
    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->setZenModeSetting(I)V

    #@20
    .line 696
    if-eqz p2, :cond_1

    #@22
    .line 697
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyZenToRingerMode()V

    #@25
    .line 699
    :cond_1
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    #@28
    .line 700
    if-eq v0, v1, :cond_2

    #@2a
    .line 701
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    #@2c
    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper$H;->-wrap1(Lcom/android/server/notification/ZenModeHelper$H;)V

    #@2f
    .line 703
    :cond_2
    const/4 v2, 0x1

    #@30
    return v2
.end method

.method private static getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;
    .locals 1
    .param p0, "config"    # Landroid/service/notification/ZenModeConfig;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 574
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
    .line 678
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 679
    const-string/jumbo v1, "zen_mode_ringer_level"

    #@9
    const/4 v2, 0x2

    #@a
    .line 678
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method private getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 10
    .param p1, "owner"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 416
    new-instance v4, Landroid/content/Intent;

    #@3
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    #@6
    .line 417
    .local v4, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@9
    .line 418
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    #@b
    .line 421
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v7

    #@f
    .line 420
    const/16 v8, 0x84

    #@11
    .line 418
    invoke-virtual {v6, v4, v8, v7}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@14
    move-result-object v3

    #@15
    .line 422
    .local v3, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    #@17
    .line 423
    const/4 v1, 0x0

    #@18
    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@1b
    move-result v0

    #@1c
    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@1e
    .line 424
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v5

    #@22
    check-cast v5, Landroid/content/pm/ResolveInfo;

    #@24
    .line 425
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@26
    .line 426
    .local v2, "info":Landroid/content/pm/ServiceInfo;
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    #@28
    iget-object v6, v6, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    #@2a
    iget-object v7, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@2c
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v6

    #@30
    if-eqz v6, :cond_0

    #@32
    .line 427
    return-object v2

    #@33
    .line 423
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0

    #@36
    .line 431
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/content/pm/ServiceInfo;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v9
.end method

.method private getZenModeSetting()I
    .locals 3

    #@0
    .prologue
    .line 670
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

.method private isSystemRule(Landroid/app/AutomaticZenRule;)Z
    .locals 2
    .param p1, "rule"    # Landroid/app/AutomaticZenRule;

    #@0
    .prologue
    .line 412
    const-string/jumbo v0, "android"

    #@3
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method private loadConfigForUser(ILjava/lang/String;)V
    .locals 4
    .param p1, "user"    # I
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 213
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    #@2
    if-eq v1, p1, :cond_0

    #@4
    if-gez p1, :cond_1

    #@6
    :cond_0
    return-void

    #@7
    .line 214
    :cond_1
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    #@9
    .line 215
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
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    const-string/jumbo v3, " u="

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 216
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    #@2d
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/service/notification/ZenModeConfig;

    #@33
    .line 217
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_4

    #@35
    .line 218
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    #@37
    if-eqz v1, :cond_3

    #@39
    const-string/jumbo v1, "ZenModeHelper"

    #@3c
    new-instance v2, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    const-string/jumbo v3, " generating default config for user "

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 219
    :cond_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    #@59
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    #@5c
    move-result-object v0

    #@5d
    .line 220
    iput p1, v0, Landroid/service/notification/ZenModeConfig;->user:I

    #@5f
    .line 222
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@61
    monitor-enter v1

    #@62
    .line 223
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@65
    monitor-exit v1

    #@66
    .line 225
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->cleanUpZenRules()V

    #@69
    .line 212
    return-void

    #@6a
    .line 222
    :catchall_0
    move-exception v2

    #@6b
    monitor-exit v1

    #@6c
    throw v2
.end method

.method private populateZenRule(Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V
    .locals 3
    .param p1, "automaticZenRule"    # Landroid/app/AutomaticZenRule;
    .param p2, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p3, "isNew"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 435
    if-eqz p3, :cond_0

    #@3
    .line 436
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    #@9
    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    #@f
    .line 438
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@15
    .line 441
    :cond_0
    iget-boolean v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@17
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    #@1a
    move-result v1

    #@1b
    if-eq v0, v1, :cond_1

    #@1d
    .line 442
    iput-boolean v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    #@1f
    .line 444
    :cond_1
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@25
    .line 445
    const/4 v0, 0x0

    #@26
    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@28
    .line 446
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@2e
    .line 447
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    #@31
    move-result v0

    #@32
    iput-boolean v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@34
    .line 449
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    #@37
    move-result v0

    #@38
    .line 448
    invoke-static {v0, v2}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    #@3b
    move-result v0

    #@3c
    iput v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@3e
    .line 434
    return-void
.end method

.method private readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;
    .locals 5
    .param p1, "resources"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 807
    const/4 v2, 0x0

    #@1
    .line 809
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const v3, 0x1110005

    #@4
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@7
    move-result-object v2

    #@8
    .line 810
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
    .line 811
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigMigration:Landroid/service/notification/ZenModeConfig$Migration;

    #@11
    invoke-static {v2, v3}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/notification/ZenModeConfig$Migration;)Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v0

    #@15
    .line 812
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_0

    #@17
    .line 817
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1a
    .line 812
    return-object v0

    #@1b
    .line 817
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1e
    .line 819
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_0
    new-instance v3, Landroid/service/notification/ZenModeConfig;

    #@20
    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig;-><init>()V

    #@23
    return-object v3

    #@24
    .line 814
    :catch_0
    move-exception v1

    #@25
    .line 815
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
    .line 817
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@31
    goto :goto_0

    #@32
    .line 816
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@33
    .line 817
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@36
    .line 816
    throw v3
.end method

.method private setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z
    .locals 8
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "setRingerMode"    # Z

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 628
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@5
    move-result-wide v0

    #@6
    .line 630
    .local v0, "identity":J
    if-eqz p1, :cond_1

    #@8
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isValid()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 634
    iget v3, p1, Landroid/service/notification/ZenModeConfig;->user:I

    #@10
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    #@12
    if-eq v3, v4, :cond_2

    #@14
    .line 636
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    #@16
    iget v4, p1, Landroid/service/notification/ZenModeConfig;->user:I

    #@18
    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1b
    .line 637
    sget-boolean v3, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const-string/jumbo v3, "ZenModeHelper"

    #@22
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "setConfigLocked: store config for user "

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    iget v5, p1, Landroid/service/notification/ZenModeConfig;->user:I

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    .line 656
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3e
    .line 638
    return v7

    #@3f
    .line 631
    :cond_1
    :try_start_1
    const-string/jumbo v3, "ZenModeHelper"

    #@42
    new-instance v4, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v5, "Invalid config in setConfigLocked; "

    #@4a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@59
    .line 656
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5c
    .line 632
    return v6

    #@5d
    .line 640
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    #@5f
    const/4 v4, 0x0

    #@60
    invoke-virtual {v3, p1, v4}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Z)V

    #@63
    .line 641
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    #@65
    iget v4, p1, Landroid/service/notification/ZenModeConfig;->user:I

    #@67
    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@6a
    .line 642
    sget-boolean v3, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    #@6c
    if-eqz v3, :cond_3

    #@6e
    const-string/jumbo v3, "ZenModeHelper"

    #@71
    new-instance v4, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v5, "setConfigLocked reason="

    #@79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    new-instance v5, Ljava/lang/Throwable;

    #@87
    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    #@8a
    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8d
    .line 643
    :cond_3
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@8f
    invoke-static {p2, v3, p1}, Lcom/android/server/notification/ZenLog;->traceConfig(Ljava/lang/String;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    #@92
    .line 644
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@94
    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    #@97
    move-result-object v3

    #@98
    .line 645
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    #@9b
    move-result-object v4

    #@9c
    .line 644
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@9f
    move-result v3

    #@a0
    if-eqz v3, :cond_6

    #@a2
    const/4 v2, 0x0

    #@a3
    .line 646
    .local v2, "policyChanged":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@a5
    invoke-virtual {p1, v3}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    #@a8
    move-result v3

    #@a9
    if-nez v3, :cond_4

    #@ab
    .line 647
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConfigChanged()V

    #@ae
    .line 649
    :cond_4
    if-eqz v2, :cond_5

    #@b0
    .line 650
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnPolicyChanged()V

    #@b3
    .line 652
    :cond_5
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@b5
    .line 653
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    #@b7
    invoke-static {v3, p1, p2, p3}, Lcom/android/server/notification/ZenModeHelper$H;->-wrap0(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ba
    .line 656
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@bd
    .line 654
    return v7

    #@be
    .line 644
    .end local v2    # "policyChanged":Z
    :cond_6
    const/4 v2, 0x1

    #@bf
    .restart local v2    # "policyChanged":Z
    goto :goto_0

    #@c0
    .line 655
    .end local v2    # "policyChanged":Z
    :catchall_0
    move-exception v3

    #@c1
    .line 656
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c4
    .line 655
    throw v3
.end method

.method private setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "caller"    # Ljava/lang/String;
    .param p5, "setRingerMode"    # Z

    #@0
    .prologue
    .line 465
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@2
    monitor-enter v5

    #@3
    .line 466
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v4, :cond_0

    #@7
    monitor-exit v5

    #@8
    return-void

    #@9
    .line 467
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    move-result v4

    #@d
    if-nez v4, :cond_1

    #@f
    monitor-exit v5

    #@10
    return-void

    #@11
    .line 468
    :cond_1
    :try_start_2
    sget-boolean v4, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    #@13
    if-eqz v4, :cond_2

    #@15
    const-string/jumbo v4, "ZenModeHelper"

    #@18
    new-instance v6, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v7, "setManualZenMode "

    #@20
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v6

    #@24
    invoke-static {p1}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v6

    #@2c
    .line 469
    const-string/jumbo v7, " conditionId="

    #@2f
    .line 468
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    .line 469
    const-string/jumbo v7, " reason="

    #@3a
    .line 468
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    .line 470
    const-string/jumbo v7, " setRingerMode="

    #@45
    .line 468
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v6

    #@51
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 471
    :cond_2
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@56
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    #@59
    move-result-object v2

    #@5a
    .line 472
    .local v2, "newConfig":Landroid/service/notification/ZenModeConfig;
    if-nez p1, :cond_4

    #@5c
    .line 473
    const/4 v4, 0x0

    #@5d
    iput-object v4, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@5f
    .line 474
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@61
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@64
    move-result-object v4

    #@65
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@68
    move-result-object v1

    #@69
    .local v1, "automaticRule$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@6c
    move-result v4

    #@6d
    if-eqz v4, :cond_5

    #@6f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@72
    move-result-object v0

    #@73
    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@75
    .line 475
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    #@78
    move-result v4

    #@79
    if-eqz v4, :cond_3

    #@7b
    .line 476
    const/4 v4, 0x1

    #@7c
    iput-boolean v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7e
    goto :goto_0

    #@7f
    .line 465
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v1    # "automaticRule$iterator":Ljava/util/Iterator;
    .end local v2    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v4

    #@80
    monitor-exit v5

    #@81
    throw v4

    #@82
    .line 480
    .restart local v2    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :cond_4
    :try_start_3
    new-instance v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@84
    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    #@87
    .line 481
    .local v3, "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v4, 0x1

    #@88
    iput-boolean v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@8a
    .line 482
    iput p1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@8c
    .line 483
    iput-object p2, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@8e
    .line 484
    iput-object p4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    #@90
    .line 485
    iput-object v3, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@92
    .line 487
    .end local v3    # "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_5
    invoke-direct {p0, v2, p3, p5}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@95
    monitor-exit v5

    #@96
    .line 463
    return-void
.end method

.method private setPreviousRingerModeSetting(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "previousRingerLevel"    # Ljava/lang/Integer;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 684
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    const-string/jumbo v2, "zen_mode_ringer_level"

    #@a
    .line 685
    if-nez p1, :cond_0

    #@c
    .line 683
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@f
    .line 682
    return-void

    #@10
    .line 685
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
    .line 674
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
    .line 673
    return-void
.end method

.method private updateRingerModeAffectedStreams()V
    .locals 1

    #@0
    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 708
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    #@6
    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->updateRingerModeAffectedStreamsInternal()V

    #@9
    .line 706
    :cond_0
    return-void
.end method

.method private static zenSeverity(I)I
    .locals 1
    .param p0, "zen"    # I

    #@0
    .prologue
    .line 875
    packed-switch p0, :pswitch_data_0

    #@3
    .line 879
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 876
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 877
    :pswitch_1
    const/4 v0, 0x2

    #@8
    return v0

    #@9
    .line 878
    :pswitch_2
    const/4 v0, 0x3

    #@a
    return v0

    #@b
    .line 875
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
.method public addAutomaticZenRule(Landroid/app/AutomaticZenRule;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "automaticZenRule"    # Landroid/app/AutomaticZenRule;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isSystemRule(Landroid/app/AutomaticZenRule;)Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_2

    #@6
    .line 282
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    #@9
    move-result-object v4

    #@a
    invoke-direct {p0, v4}, Lcom/android/server/notification/ZenModeHelper;->getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    #@d
    move-result-object v1

    #@e
    .line 283
    .local v1, "owner":Landroid/content/pm/ServiceInfo;
    if-nez v1, :cond_0

    #@10
    .line 284
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v5, "Owner is not a condition provider service"

    #@15
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v4

    #@19
    .line 287
    :cond_0
    const/4 v3, -0x1

    #@1a
    .line 288
    .local v3, "ruleInstanceLimit":I
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    #@1c
    if-eqz v4, :cond_1

    #@1e
    .line 289
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    #@20
    .line 290
    const-string/jumbo v5, "android.service.zen.automatic.ruleInstanceLimit"

    #@23
    const/4 v6, -0x1

    #@24
    .line 289
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@27
    move-result v3

    #@28
    .line 292
    :cond_1
    if-lez v3, :cond_2

    #@2a
    .line 293
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {p0, v4}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/content/ComponentName;)I

    #@31
    move-result v4

    #@32
    add-int/lit8 v4, v4, 0x1

    #@34
    .line 292
    if-ge v3, v4, :cond_2

    #@36
    .line 294
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@38
    const-string/jumbo v5, "Rule instance limit exceeded"

    #@3b
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v4

    #@3f
    .line 299
    .end local v1    # "owner":Landroid/content/pm/ServiceInfo;
    .end local v3    # "ruleInstanceLimit":I
    :cond_2
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@41
    monitor-enter v5

    #@42
    .line 300
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@44
    if-nez v4, :cond_3

    #@46
    .line 301
    new-instance v4, Landroid/util/AndroidRuntimeException;

    #@48
    const-string/jumbo v6, "Could not create rule"

    #@4b
    invoke-direct {v4, v6}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    .line 299
    :catchall_0
    move-exception v4

    #@50
    monitor-exit v5

    #@51
    throw v4

    #@52
    .line 303
    :cond_3
    :try_start_1
    sget-boolean v4, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    #@54
    if-eqz v4, :cond_4

    #@56
    .line 304
    const-string/jumbo v4, "ZenModeHelper"

    #@59
    new-instance v6, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v7, "addAutomaticZenRule rule= "

    #@61
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v6

    #@65
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    const-string/jumbo v7, " reason="

    #@6c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v6

    #@70
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v6

    #@74
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v6

    #@78
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    .line 306
    :cond_4
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@7d
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    #@80
    move-result-object v0

    #@81
    .line 307
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    new-instance v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@83
    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    #@86
    .line 308
    .local v2, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v4, 0x1

    #@87
    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    #@8a
    .line 309
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@8c
    iget-object v6, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    #@8e
    invoke-virtual {v4, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@91
    .line 310
    const/4 v4, 0x1

    #@92
    invoke-direct {p0, v0, p2, v4}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z

    #@95
    move-result v4

    #@96
    if-eqz v4, :cond_5

    #@98
    .line 311
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9a
    monitor-exit v5

    #@9b
    return-object v4

    #@9c
    .line 313
    :cond_5
    :try_start_2
    new-instance v4, Landroid/util/AndroidRuntimeException;

    #@9e
    const-string/jumbo v6, "Could not create rule"

    #@a1
    invoke-direct {v4, v6}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@a4
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 173
    return-void
.end method

.method public canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 8
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 391
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v0

    #@6
    .line 392
    .local v0, "callingUid":I
    if-eqz v0, :cond_0

    #@8
    const/16 v4, 0x3e8

    #@a
    if-ne v0, v4, :cond_1

    #@c
    .line 393
    :cond_0
    return v7

    #@d
    .line 394
    :cond_1
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@f
    const-string/jumbo v5, "android.permission.MANAGE_NOTIFICATIONS"

    #@12
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@15
    move-result v4

    #@16
    if-nez v4, :cond_2

    #@18
    .line 396
    return v7

    #@19
    .line 398
    :cond_2
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    #@1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1e
    move-result v5

    #@1f
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    .line 399
    .local v3, "packages":[Ljava/lang/String;
    if-eqz v3, :cond_4

    #@25
    .line 400
    array-length v2, v3

    #@26
    .line 401
    .local v2, "packageCount":I
    const/4 v1, 0x0

    #@27
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    #@29
    .line 402
    aget-object v4, v3, v1

    #@2b
    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@2d
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_3

    #@37
    .line 403
    return v7

    #@38
    .line 401
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 407
    .end local v1    # "i":I
    .end local v2    # "packageCount":I
    :cond_4
    return v6
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 492
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v2, "mZenMode="

    #@6
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 493
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@b
    invoke-static {v2}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12
    .line 494
    const-string/jumbo v2, "mDefaultConfig"

    #@15
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    #@17
    invoke-static {p1, p2, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    #@1a
    .line 495
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    #@1c
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@1f
    move-result v0

    #@20
    .line 496
    .local v0, "N":I
    const/4 v1, 0x0

    #@21
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@23
    .line 497
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
    .line 496
    add-int/lit8 v1, v1, 0x1

    #@51
    goto :goto_0

    #@52
    .line 499
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
    .line 500
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@62
    monitor-enter v3

    #@63
    .line 501
    :try_start_0
    const-string/jumbo v2, "mConfig"

    #@66
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@68
    invoke-static {p1, p2, v2, v4}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6b
    monitor-exit v3

    #@6c
    .line 504
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6f
    const-string/jumbo v2, "mSuppressedEffects="

    #@72
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@75
    iget-wide v2, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    #@77
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    #@7a
    .line 505
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    #@7c
    invoke-virtual {v2, p1, p2}, Lcom/android/server/notification/ZenModeFiltering;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@7f
    .line 506
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    #@81
    invoke-virtual {v2, p1, p2}, Lcom/android/server/notification/ZenModeConditions;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@84
    .line 491
    return-void

    #@85
    .line 500
    :catchall_0
    move-exception v2

    #@86
    monitor-exit v3

    #@87
    throw v2
.end method

.method public getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 269
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@3
    monitor-enter v2

    #@4
    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-nez v1, :cond_0

    #@8
    monitor-exit v2

    #@9
    return-object v3

    #@a
    .line 271
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@c
    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    .local v0, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    monitor-exit v2

    #@15
    .line 273
    if-nez v0, :cond_1

    #@17
    return-object v3

    #@18
    .line 269
    .end local v0    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1

    #@1b
    .line 274
    .restart local v0    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 275
    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;

    #@24
    move-result-object v1

    #@25
    return-object v1

    #@26
    .line 277
    :cond_2
    return-object v3
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .locals 2

    #@0
    .prologue
    .line 614
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@2
    monitor-enter v1

    #@3
    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@5
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 614
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public getCurrentInstanceCount(Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "owner"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 379
    const/4 v0, 0x0

    #@1
    .line 380
    .local v0, "count":I
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@3
    monitor-enter v4

    #@4
    .line 381
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@6
    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v2

    #@10
    .local v2, "rule$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1

    #@16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@1c
    .line 382
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@1e
    if-eqz v3, :cond_0

    #@20
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@22
    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    .line 383
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .end local v1    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1
    monitor-exit v4

    #@2c
    .line 387
    return v0

    #@2d
    .line 380
    .end local v2    # "rule$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@2e
    monitor-exit v4

    #@2f
    throw v3
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    #@0
    .prologue
    .line 131
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
    .line 570
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@2
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSuppressedEffects()J
    .locals 2

    #@0
    .prologue
    .line 247
    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    #@2
    return-wide v0
.end method

.method public getZenMode()I
    .locals 1

    #@0
    .prologue
    .line 251
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@2
    return v0
.end method

.method public getZenModeListenerInterruptionFilter()I
    .locals 1

    #@0
    .prologue
    .line 229
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@2
    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getZenRules()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 255
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 256
    .local v2, "rules":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@7
    monitor-enter v4

    #@8
    .line 257
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    if-nez v3, :cond_0

    #@c
    monitor-exit v4

    #@d
    return-object v2

    #@e
    .line 258
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@10
    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@15
    move-result-object v3

    #@16
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .local v1, "rule$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_2

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@26
    .line 259
    .local v0, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_1

    #@2c
    .line 260
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 256
    .end local v0    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v1    # "rule$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@31
    monitor-exit v4

    #@32
    throw v3

    #@33
    .restart local v1    # "rule$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v4

    #@34
    .line 264
    return-object v2
.end method

.method public initZenMode()V
    .locals 2

    #@0
    .prologue
    .line 182
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
    .line 183
    :cond_0
    const-string/jumbo v0, "init"

    #@10
    const/4 v1, 0x1

    #@11
    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)Z

    #@14
    .line 181
    return-void
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .locals 9
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p4, "contactsTimeoutMs"    # I
    .param p5, "timeoutAffinity"    # F

    #@0
    .prologue
    .line 141
    iget-object v8, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@2
    monitor-enter v8

    #@3
    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@5
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@7
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@9
    move-object v3, p1

    #@a
    move-object v4, p2

    #@b
    move-object v5, p3

    #@c
    move v6, p4

    #@d
    move v7, p5

    #@e
    invoke-static/range {v0 .. v7}, Lcom/android/server/notification/ZenModeFiltering;->matchesCallFilter(Landroid/content/Context;ILandroid/service/notification/ZenModeConfig;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v0

    #@12
    monitor-exit v8

    #@13
    return v0

    #@14
    .line 141
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v8

    #@16
    throw v0
.end method

.method public onSystemReady()V
    .locals 2

    #@0
    .prologue
    .line 187
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
    .line 188
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
    .line 189
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 190
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    #@1d
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    #@1f
    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V

    #@22
    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    #@24
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    #@2a
    .line 193
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    #@2c
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$H;->-wrap2(Lcom/android/server/notification/ZenModeHelper$H;)V

    #@2f
    .line 194
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->cleanUpZenRules()V

    #@32
    .line 195
    const-string/jumbo v0, "onSystemReady"

    #@35
    const/4 v1, 0x1

    #@36
    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)Z

    #@39
    .line 186
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 3
    .param p1, "user"    # I

    #@0
    .prologue
    .line 203
    if-gez p1, :cond_0

    #@2
    return-void

    #@3
    .line 204
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
    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    #@23
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@26
    .line 202
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 1
    .param p1, "user"    # I

    #@0
    .prologue
    .line 199
    const-string/jumbo v0, "onUserSwitched"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->loadConfigForUser(ILjava/lang/String;)V

    #@6
    .line 198
    return-void
.end method

.method public onUserUnlocked(I)V
    .locals 1
    .param p1, "user"    # I

    #@0
    .prologue
    .line 209
    const-string/jumbo v0, "onUserUnlocked"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->loadConfigForUser(ILjava/lang/String;)V

    #@6
    .line 208
    return-void
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 8
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
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 533
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigMigration:Landroid/service/notification/ZenModeConfig$Migration;

    #@4
    invoke-static {p1, v3}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/notification/ZenModeConfig$Migration;)Landroid/service/notification/ZenModeConfig;

    #@7
    move-result-object v2

    #@8
    .line 534
    .local v2, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v2, :cond_3

    #@a
    .line 535
    if-eqz p2, :cond_1

    #@c
    .line 537
    iget v3, v2, Landroid/service/notification/ZenModeConfig;->user:I

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 538
    return-void

    #@11
    .line 540
    :cond_0
    iput-object v6, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@13
    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@16
    move-result-wide v4

    #@17
    .line 542
    .local v4, "time":J
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 543
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@1d
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@20
    move-result-object v3

    #@21
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v1

    #@25
    .local v1, "automaticRule$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@31
    .line 545
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-boolean v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    #@33
    .line 546
    iput-object v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@35
    .line 547
    iput-wide v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    #@37
    goto :goto_0

    #@38
    .line 551
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v1    # "automaticRule$iterator":Ljava/util/Iterator;
    .end local v4    # "time":J
    :cond_1
    sget-boolean v3, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    #@3a
    if-eqz v3, :cond_2

    #@3c
    const-string/jumbo v3, "ZenModeHelper"

    #@3f
    const-string/jumbo v6, "readXml"

    #@42
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 552
    :cond_2
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@47
    monitor-enter v6

    #@48
    .line 553
    :try_start_0
    const-string/jumbo v3, "readXml"

    #@4b
    invoke-virtual {p0, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    monitor-exit v6

    #@4f
    .line 532
    :cond_3
    return-void

    #@50
    .line 552
    :catchall_0
    move-exception v3

    #@51
    monitor-exit v6

    #@52
    throw v3
.end method

.method public recordCaller(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->recordCall(Lcom/android/server/notification/NotificationRecord;)V

    #@5
    .line 151
    return-void
.end method

.method public removeAutomaticZenRule(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 346
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@3
    monitor-enter v3

    #@4
    .line 347
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-nez v2, :cond_0

    #@8
    monitor-exit v3

    #@9
    return v4

    #@a
    .line 348
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@c
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    #@f
    move-result-object v0

    #@10
    .line 349
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    .line 350
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-nez v1, :cond_1

    #@1a
    monitor-exit v3

    #@1b
    return v4

    #@1c
    .line 351
    :cond_1
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_3

    #@22
    .line 352
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@24
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 353
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    #@29
    if-eqz v2, :cond_2

    #@2b
    const-string/jumbo v2, "ZenModeHelper"

    #@2e
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v5, "removeZenRule zenRule="

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    const-string/jumbo v5, " reason="

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 358
    :cond_2
    const/4 v2, 0x1

    #@51
    invoke-direct {p0, v0, p2, v2}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@54
    move-result v2

    #@55
    monitor-exit v3

    #@56
    return v2

    #@57
    .line 355
    :cond_3
    :try_start_3
    new-instance v2, Ljava/lang/SecurityException;

    #@59
    .line 356
    const-string/jumbo v4, "Cannot delete rules not owned by your condition provider"

    #@5c
    .line 355
    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@60
    .line 346
    .end local v0    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .end local v1    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :catchall_0
    move-exception v2

    #@61
    monitor-exit v3

    #@62
    throw v2
.end method

.method public removeAutomaticZenRules(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 364
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@3
    monitor-enter v4

    #@4
    .line 365
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-nez v3, :cond_0

    #@8
    monitor-exit v4

    #@9
    return v5

    #@a
    .line 366
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@c
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    #@f
    move-result-object v1

    #@10
    .line 367
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@15
    move-result v3

    #@16
    add-int/lit8 v0, v3, -0x1

    #@18
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@1a
    .line 368
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@1c
    iget-object v5, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@1e
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@28
    .line 369
    .local v2, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@2a
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_1

    #@34
    .line 370
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    #@37
    move-result v3

    #@38
    .line 369
    if-eqz v3, :cond_1

    #@3a
    .line 371
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@3c
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@3f
    .line 367
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@41
    goto :goto_0

    #@42
    .line 374
    .end local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_2
    const/4 v3, 0x1

    #@43
    invoke-direct {p0, v1, p2, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    move-result v3

    #@47
    monitor-exit v4

    #@48
    return v3

    #@49
    .line 364
    .end local v0    # "i":I
    .end local v1    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v3

    #@4a
    monitor-exit v4

    #@4b
    throw v3
.end method

.method public removeCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 177
    return-void
.end method

.method public requestFromListener(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "filter"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 233
    invoke-static {p2, v1}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    #@5
    move-result v0

    #@6
    .line 234
    .local v0, "newZen":I
    if-eq v0, v1, :cond_0

    #@8
    .line 235
    if-eqz p1, :cond_1

    #@a
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 236
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "listener:"

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    if-eqz p1, :cond_2

    #@1c
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    .line 235
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    .line 232
    :cond_0
    return-void

    #@2c
    :cond_1
    move-object v1, v2

    #@2d
    .line 235
    goto :goto_0

    #@2e
    :cond_2
    move-object v3, v2

    #@2f
    .line 236
    goto :goto_1
.end method

.method public setConfigAsync(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V
    .locals 1
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    #@2
    invoke-static {v0, p1, p2}, Lcom/android/server/notification/ZenModeHelper$H;->-wrap3(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V

    #@5
    .line 623
    return-void
.end method

.method public setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    .locals 1
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 620
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 459
    const/4 v5, 0x1

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p4

    #@5
    move-object v4, p3

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    #@9
    .line 458
    return-void
.end method

.method public setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .locals 3
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    #@0
    .prologue
    .line 578
    if-eqz p1, :cond_0

    #@2
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@4
    if-nez v1, :cond_1

    #@6
    :cond_0
    return-void

    #@7
    .line 579
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@9
    monitor-enter v2

    #@a
    .line 580
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@c
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    #@f
    move-result-object v0

    #@10
    .line 581
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    invoke-virtual {v0, p1}, Landroid/service/notification/ZenModeConfig;->applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    #@13
    .line 582
    const-string/jumbo v1, "setNotificationPolicy"

    #@16
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v2

    #@1a
    .line 577
    return-void

    #@1b
    .line 579
    .end local v0    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
.end method

.method public setSuppressedEffects(J)V
    .locals 3
    .param p1, "suppressedEffects"    # J

    #@0
    .prologue
    .line 241
    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    #@2
    cmp-long v0, v0, p1

    #@4
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 242
    :cond_0
    iput-wide p1, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    #@9
    .line 243
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    #@c
    .line 240
    return-void
.end method

.method public shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@2
    monitor-enter v1

    #@3
    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    #@5
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    #@7
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@9
    invoke-virtual {v0, v2, v3, p1}, Lcom/android/server/notification/ZenModeFiltering;->shouldIntercept(ILandroid/service/notification/ZenModeConfig;Lcom/android/server/notification/NotificationRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 156
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public shouldSuppressWhenScreenOff()Z
    .locals 2

    #@0
    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@2
    monitor-enter v1

    #@3
    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@5
    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_0
    monitor-exit v1

    #@b
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 162
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public shouldSuppressWhenScreenOn()Z
    .locals 2

    #@0
    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@2
    monitor-enter v1

    #@3
    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@5
    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_0
    monitor-exit v1

    #@b
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 168
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 136
    const-string/jumbo v0, "ZenModeHelper"

    #@3
    return-object v0
.end method

.method public updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ruleId"    # Ljava/lang/String;
    .param p2, "automaticZenRule"    # Landroid/app/AutomaticZenRule;
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 321
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@3
    monitor-enter v3

    #@4
    .line 322
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-nez v2, :cond_0

    #@8
    monitor-exit v3

    #@9
    return v4

    #@a
    .line 323
    :cond_0
    :try_start_1
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 324
    const-string/jumbo v2, "ZenModeHelper"

    #@11
    new-instance v4, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "updateAutomaticZenRule zenRule="

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    .line 325
    const-string/jumbo v5, " reason="

    #@24
    .line 324
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 327
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    #@35
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    #@38
    move-result-object v0

    #@39
    .line 329
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    if-nez p1, :cond_2

    #@3b
    .line 330
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3d
    const-string/jumbo v4, "Rule doesn\'t exist"

    #@40
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    .line 321
    .end local v0    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v2

    #@45
    monitor-exit v3

    #@46
    throw v2

    #@47
    .line 332
    .restart local v0    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :cond_2
    :try_start_2
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@49
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4c
    move-result-object v1

    #@4d
    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@4f
    .line 333
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v1, :cond_3

    #@51
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_3

    #@57
    .line 338
    const/4 v2, 0x0

    #@58
    invoke-direct {p0, p2, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    #@5b
    .line 339
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@5d
    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    .line 340
    const/4 v2, 0x1

    #@61
    invoke-direct {p0, v0, p3, v2}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@64
    move-result v2

    #@65
    monitor-exit v3

    #@66
    return v2

    #@67
    .line 334
    :cond_3
    :try_start_3
    new-instance v2, Ljava/lang/SecurityException;

    #@69
    .line 335
    const-string/jumbo v4, "Cannot update rules not owned by your condition provider"

    #@6c
    .line 334
    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
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
    .line 559
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v0

    #@6
    .line 560
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 562
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
    .line 560
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 565
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
    .line 558
    :cond_1
    return-void
.end method
