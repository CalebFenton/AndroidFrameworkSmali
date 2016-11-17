.class public Lcom/android/server/notification/EventConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "EventConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/EventConditionProvider$1;,
        Lcom/android/server/notification/EventConditionProvider$2;,
        Lcom/android/server/notification/EventConditionProvider$3;
    }
.end annotation


# static fields
.field private static final ACTION_EVALUATE:Ljava/lang/String;

.field private static final CHANGE_DELAY:J = 0x7d0L

.field public static final COMPONENT:Landroid/content/ComponentName;

.field private static final DEBUG:Z

.field private static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final NOT_SHOWN:Ljava/lang/String; = "..."

.field private static final REQUEST_CODE_EVALUATE:I = 0x1

.field private static final SIMPLE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ConditionProviders.ECP"


# instance fields
.field private mBootComplete:Z

.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private final mEvaluateSubscriptionsW:Ljava/lang/Runnable;

.field private mNextAlarmTime:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private final mSubscriptions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mThread:Landroid/os/HandlerThread;

.field private final mTrackerCallback:Lcom/android/server/notification/CalendarTracker$Callback;

.field private final mTrackers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/notification/CalendarTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorker:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/notification/EventConditionProvider;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/notification/EventConditionProvider;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/EventConditionProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptionsW()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/notification/EventConditionProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/notification/EventConditionProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->reloadTrackers()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 55
    const-string/jumbo v0, "ConditionProviders"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    #@a
    .line 58
    new-instance v0, Landroid/content/ComponentName;

    #@c
    const-string/jumbo v1, "android"

    #@f
    const-class v2, Lcom/android/server/notification/EventConditionProvider;

    #@11
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 57
    sput-object v0, Lcom/android/server/notification/EventConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    #@1a
    .line 60
    const-class v0, Lcom/android/server/notification/EventConditionProvider;

    #@1c
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    sput-object v0, Lcom/android/server/notification/EventConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    #@22
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    sget-object v1, Lcom/android/server/notification/EventConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    const-string/jumbo v1, ".EVALUATE"

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    sput-object v0, Lcom/android/server/notification/EventConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    #@3a
    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/notification/SystemConditionProviderService;-><init>()V

    #@3
    .line 66
    iput-object p0, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    #@5
    .line 67
    new-instance v0, Landroid/util/ArraySet;

    #@7
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@c
    .line 68
    new-instance v0, Landroid/util/SparseArray;

    #@e
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@13
    .line 317
    new-instance v0, Lcom/android/server/notification/EventConditionProvider$1;

    #@15
    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$1;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    #@18
    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackerCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    #@1a
    .line 326
    new-instance v0, Lcom/android/server/notification/EventConditionProvider$2;

    #@1c
    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$2;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    #@1f
    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    #@21
    .line 334
    new-instance v0, Lcom/android/server/notification/EventConditionProvider$3;

    #@23
    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$3;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    #@26
    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    #@28
    .line 78
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    #@2a
    if-eqz v0, :cond_0

    #@2c
    const-string/jumbo v0, "ConditionProviders.ECP"

    #@2f
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v2, "new "

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    sget-object v2, Lcom/android/server/notification/EventConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    const-string/jumbo v2, "()"

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 79
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    #@51
    const-string/jumbo v1, "ConditionProviders.ECP"

    #@54
    const/16 v2, 0xa

    #@56
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    #@59
    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mThread:Landroid/os/HandlerThread;

    #@5b
    .line 80
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mThread:Landroid/os/HandlerThread;

    #@5d
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@60
    .line 81
    new-instance v0, Landroid/os/Handler;

    #@62
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mThread:Landroid/os/HandlerThread;

    #@64
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@67
    move-result-object v1

    #@68
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@6b
    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    #@6d
    .line 77
    return-void
.end method

.method private createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;
    .locals 11
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "state"    # I

    #@0
    .prologue
    .line 288
    const-string/jumbo v10, "..."

    #@3
    .line 289
    .local v10, "summary":Ljava/lang/String;
    const-string/jumbo v8, "..."

    #@6
    .line 290
    .local v8, "line1":Ljava/lang/String;
    const-string/jumbo v9, "..."

    #@9
    .line 291
    .local v9, "line2":Ljava/lang/String;
    new-instance v0, Landroid/service/notification/Condition;

    #@b
    const-string/jumbo v2, "..."

    #@e
    const-string/jumbo v3, "..."

    #@11
    const-string/jumbo v4, "..."

    #@14
    const/4 v5, 0x0

    #@15
    const/4 v7, 0x2

    #@16
    move-object v1, p1

    #@17
    move v6, p2

    #@18
    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    #@1b
    return-object v0
.end method

.method private evaluateSubscriptions()V
    .locals 2

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 198
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    #@c
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    #@e
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@11
    .line 196
    :cond_0
    return-void
.end method

.method private evaluateSubscriptionsW()V
    .locals 26

    #@0
    .prologue
    .line 203
    sget-boolean v19, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    #@2
    if-eqz v19, :cond_0

    #@4
    const-string/jumbo v19, "ConditionProviders.ECP"

    #@7
    const-string/jumbo v20, "evaluateSubscriptions"

    #@a
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 204
    :cond_0
    move-object/from16 v0, p0

    #@f
    iget-boolean v0, v0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    #@11
    move/from16 v19, v0

    #@13
    if-nez v19, :cond_2

    #@15
    .line 205
    sget-boolean v19, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    #@17
    if-eqz v19, :cond_1

    #@19
    const-string/jumbo v19, "ConditionProviders.ECP"

    #@1c
    const-string/jumbo v20, "Skipping evaluate before boot complete"

    #@1f
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 206
    :cond_1
    return-void

    #@23
    .line 208
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@26
    move-result-wide v12

    #@27
    .line 209
    .local v12, "now":J
    new-instance v8, Ljava/util/ArrayList;

    #@29
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@2c
    .line 210
    .local v8, "conditionsToNotify":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Condition;>;"
    move-object/from16 v0, p0

    #@2e
    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@30
    move-object/from16 v21, v0

    #@32
    monitor-enter v21

    #@33
    .line 211
    const/4 v10, 0x0

    #@34
    .local v10, "i":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    #@36
    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@38
    move-object/from16 v19, v0

    #@3a
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    #@3d
    move-result v19

    #@3e
    move/from16 v0, v19

    #@40
    if-ge v10, v0, :cond_4

    #@42
    .line 212
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@46
    move-object/from16 v19, v0

    #@48
    move-object/from16 v0, v19

    #@4a
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@4d
    move-result-object v19

    #@4e
    check-cast v19, Lcom/android/server/notification/CalendarTracker;

    #@50
    .line 213
    move-object/from16 v0, p0

    #@52
    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@54
    move-object/from16 v20, v0

    #@56
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArraySet;->isEmpty()Z

    #@59
    move-result v20

    #@5a
    if-eqz v20, :cond_3

    #@5c
    const/16 v20, 0x0

    #@5e
    .line 212
    :goto_1
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/notification/CalendarTracker;->setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V

    #@61
    .line 211
    add-int/lit8 v10, v10, 0x1

    #@63
    goto :goto_0

    #@64
    .line 213
    :cond_3
    move-object/from16 v0, p0

    #@66
    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackerCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    #@68
    move-object/from16 v20, v0

    #@6a
    goto :goto_1

    #@6b
    .line 215
    :cond_4
    move-object/from16 v0, p0

    #@6d
    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@6f
    move-object/from16 v19, v0

    #@71
    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->isEmpty()Z

    #@74
    move-result v19

    #@75
    if-eqz v19, :cond_5

    #@77
    const/16 v19, 0x0

    #@79
    :goto_2
    move-object/from16 v0, p0

    #@7b
    move/from16 v1, v19

    #@7d
    invoke-direct {v0, v1}, Lcom/android/server/notification/EventConditionProvider;->setRegistered(Z)V

    #@80
    .line 216
    const-wide/16 v14, 0x0

    #@82
    .line 217
    .local v14, "reevaluateAt":J
    move-object/from16 v0, p0

    #@84
    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@86
    move-object/from16 v19, v0

    #@88
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8b
    move-result-object v7

    #@8c
    .local v7, "conditionId$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@8f
    move-result v19

    #@90
    if-eqz v19, :cond_e

    #@92
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@95
    move-result-object v6

    #@96
    check-cast v6, Landroid/net/Uri;

    #@98
    .line 218
    .local v6, "conditionId":Landroid/net/Uri;
    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    #@9b
    move-result-object v9

    #@9c
    .line 219
    .local v9, "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    if-nez v9, :cond_6

    #@9e
    .line 220
    const/16 v19, 0x0

    #@a0
    move-object/from16 v0, p0

    #@a2
    move/from16 v1, v19

    #@a4
    invoke-direct {v0, v6, v1}, Lcom/android/server/notification/EventConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    #@a7
    move-result-object v19

    #@a8
    move-object/from16 v0, v19

    #@aa
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ad
    goto :goto_3

    #@ae
    .line 210
    .end local v6    # "conditionId":Landroid/net/Uri;
    .end local v7    # "conditionId$iterator":Ljava/util/Iterator;
    .end local v9    # "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    .end local v14    # "reevaluateAt":J
    :catchall_0
    move-exception v19

    #@af
    monitor-exit v21

    #@b0
    throw v19

    #@b1
    .line 215
    :cond_5
    const/16 v19, 0x1

    #@b3
    goto :goto_2

    #@b4
    .line 223
    .restart local v6    # "conditionId":Landroid/net/Uri;
    .restart local v7    # "conditionId$iterator":Ljava/util/Iterator;
    .restart local v9    # "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    .restart local v14    # "reevaluateAt":J
    :cond_6
    const/16 v16, 0x0

    #@b6
    .line 224
    .local v16, "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :try_start_1
    iget-object v0, v9, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@b8
    move-object/from16 v19, v0

    #@ba
    if-nez v19, :cond_8

    #@bc
    .line 226
    const/4 v10, 0x0

    #@bd
    .end local v16    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :goto_4
    move-object/from16 v0, p0

    #@bf
    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@c1
    move-object/from16 v19, v0

    #@c3
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    #@c6
    move-result v19

    #@c7
    move/from16 v0, v19

    #@c9
    if-ge v10, v0, :cond_a

    #@cb
    .line 227
    move-object/from16 v0, p0

    #@cd
    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@cf
    move-object/from16 v19, v0

    #@d1
    move-object/from16 v0, v19

    #@d3
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@d6
    move-result-object v17

    #@d7
    check-cast v17, Lcom/android/server/notification/CalendarTracker;

    #@d9
    .line 228
    .local v17, "tracker":Lcom/android/server/notification/CalendarTracker;
    move-object/from16 v0, v17

    #@db
    invoke-virtual {v0, v9, v12, v13}, Lcom/android/server/notification/CalendarTracker;->checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    #@de
    move-result-object v11

    #@df
    .line 229
    .local v11, "r":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    if-nez v16, :cond_7

    #@e1
    .line 230
    move-object/from16 v16, v11

    #@e3
    .line 226
    :goto_5
    add-int/lit8 v10, v10, 0x1

    #@e5
    goto :goto_4

    #@e6
    .line 232
    :cond_7
    move-object/from16 v0, v16

    #@e8
    iget-boolean v0, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    #@ea
    move/from16 v19, v0

    #@ec
    iget-boolean v0, v11, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    #@ee
    move/from16 v20, v0

    #@f0
    or-int v19, v19, v20

    #@f2
    move/from16 v0, v19

    #@f4
    move-object/from16 v1, v16

    #@f6
    iput-boolean v0, v1, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    #@f8
    .line 233
    move-object/from16 v0, v16

    #@fa
    iget-wide v0, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    #@fc
    move-wide/from16 v22, v0

    #@fe
    iget-wide v0, v11, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    #@100
    move-wide/from16 v24, v0

    #@102
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(JJ)J

    #@105
    move-result-wide v22

    #@106
    move-wide/from16 v0, v22

    #@108
    move-object/from16 v2, v16

    #@10a
    iput-wide v0, v2, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    #@10c
    goto :goto_5

    #@10d
    .line 238
    .end local v11    # "r":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .end local v17    # "tracker":Lcom/android/server/notification/CalendarTracker;
    .restart local v16    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :cond_8
    iget v0, v9, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    #@10f
    move/from16 v19, v0

    #@111
    invoke-static/range {v19 .. v19}, Landroid/service/notification/ZenModeConfig$EventInfo;->resolveUserId(I)I

    #@114
    move-result v18

    #@115
    .line 239
    .local v18, "userId":I
    move-object/from16 v0, p0

    #@117
    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@119
    move-object/from16 v19, v0

    #@11b
    move-object/from16 v0, v19

    #@11d
    move/from16 v1, v18

    #@11f
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@122
    move-result-object v17

    #@123
    check-cast v17, Lcom/android/server/notification/CalendarTracker;

    #@125
    .line 240
    .restart local v17    # "tracker":Lcom/android/server/notification/CalendarTracker;
    if-nez v17, :cond_9

    #@127
    .line 241
    const-string/jumbo v19, "ConditionProviders.ECP"

    #@12a
    new-instance v20, Ljava/lang/StringBuilder;

    #@12c
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@12f
    const-string/jumbo v22, "No calendar tracker found for user "

    #@132
    move-object/from16 v0, v20

    #@134
    move-object/from16 v1, v22

    #@136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v20

    #@13a
    move-object/from16 v0, v20

    #@13c
    move/from16 v1, v18

    #@13e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@141
    move-result-object v20

    #@142
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@145
    move-result-object v20

    #@146
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@149
    .line 242
    const/16 v19, 0x0

    #@14b
    move-object/from16 v0, p0

    #@14d
    move/from16 v1, v19

    #@14f
    invoke-direct {v0, v6, v1}, Lcom/android/server/notification/EventConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    #@152
    move-result-object v19

    #@153
    move-object/from16 v0, v19

    #@155
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@158
    goto/16 :goto_3

    #@15a
    .line 245
    :cond_9
    move-object/from16 v0, v17

    #@15c
    invoke-virtual {v0, v9, v12, v13}, Lcom/android/server/notification/CalendarTracker;->checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    #@15f
    move-result-object v16

    #@160
    .line 247
    .end local v16    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .end local v17    # "tracker":Lcom/android/server/notification/CalendarTracker;
    .end local v18    # "userId":I
    :cond_a
    move-object/from16 v0, v16

    #@162
    iget-wide v0, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    #@164
    move-wide/from16 v22, v0

    #@166
    const-wide/16 v24, 0x0

    #@168
    cmp-long v19, v22, v24

    #@16a
    if-eqz v19, :cond_c

    #@16c
    .line 248
    const-wide/16 v22, 0x0

    #@16e
    cmp-long v19, v14, v22

    #@170
    if-eqz v19, :cond_b

    #@172
    move-object/from16 v0, v16

    #@174
    iget-wide v0, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    #@176
    move-wide/from16 v22, v0

    #@178
    cmp-long v19, v22, v14

    #@17a
    if-gez v19, :cond_c

    #@17c
    .line 249
    :cond_b
    move-object/from16 v0, v16

    #@17e
    iget-wide v14, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    #@180
    .line 251
    :cond_c
    move-object/from16 v0, v16

    #@182
    iget-boolean v0, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    #@184
    move/from16 v19, v0

    #@186
    if-nez v19, :cond_d

    #@188
    .line 252
    const/16 v19, 0x0

    #@18a
    move-object/from16 v0, p0

    #@18c
    move/from16 v1, v19

    #@18e
    invoke-direct {v0, v6, v1}, Lcom/android/server/notification/EventConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    #@191
    move-result-object v19

    #@192
    move-object/from16 v0, v19

    #@194
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@197
    goto/16 :goto_3

    #@199
    .line 255
    :cond_d
    const/16 v19, 0x1

    #@19b
    move-object/from16 v0, p0

    #@19d
    move/from16 v1, v19

    #@19f
    invoke-direct {v0, v6, v1}, Lcom/android/server/notification/EventConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    #@1a2
    move-result-object v19

    #@1a3
    move-object/from16 v0, v19

    #@1a5
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1a8
    goto/16 :goto_3

    #@1aa
    .line 257
    .end local v6    # "conditionId":Landroid/net/Uri;
    .end local v9    # "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    :cond_e
    move-object/from16 v0, p0

    #@1ac
    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/server/notification/EventConditionProvider;->rescheduleAlarm(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1af
    monitor-exit v21

    #@1b0
    .line 259
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b3
    move-result-object v5

    #@1b4
    .local v5, "condition$iterator":Ljava/util/Iterator;
    :cond_f
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@1b7
    move-result v19

    #@1b8
    if-eqz v19, :cond_10

    #@1ba
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1bd
    move-result-object v4

    #@1be
    check-cast v4, Landroid/service/notification/Condition;

    #@1c0
    .line 260
    .local v4, "condition":Landroid/service/notification/Condition;
    if-eqz v4, :cond_f

    #@1c2
    .line 261
    move-object/from16 v0, p0

    #@1c4
    invoke-virtual {v0, v4}, Lcom/android/server/notification/EventConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    #@1c7
    goto :goto_6

    #@1c8
    .line 264
    .end local v4    # "condition":Landroid/service/notification/Condition;
    :cond_10
    sget-boolean v19, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    #@1ca
    if-eqz v19, :cond_11

    #@1cc
    const-string/jumbo v19, "ConditionProviders.ECP"

    #@1cf
    new-instance v20, Ljava/lang/StringBuilder;

    #@1d1
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@1d4
    const-string/jumbo v21, "evaluateSubscriptions took "

    #@1d7
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v20

    #@1db
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1de
    move-result-wide v22

    #@1df
    sub-long v22, v22, v12

    #@1e1
    move-object/from16 v0, v20

    #@1e3
    move-wide/from16 v1, v22

    #@1e5
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1e8
    move-result-object v20

    #@1e9
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ec
    move-result-object v20

    #@1ed
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f0
    .line 202
    :cond_11
    return-void
.end method

.method private static getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 311
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {p0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 312
    :catch_0
    move-exception v0

    #@b
    .line 313
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    #@c
    return-object v1
.end method

.method private reloadTrackers()V
    .locals 8

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 180
    sget-boolean v4, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    const-string/jumbo v4, "ConditionProviders.ECP"

    #@8
    const-string/jumbo v5, "reloadTrackers"

    #@b
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 181
    :cond_0
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@14
    move-result v4

    #@15
    if-ge v1, v4, :cond_1

    #@17
    .line 182
    iget-object v4, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    check-cast v4, Lcom/android/server/notification/CalendarTracker;

    #@1f
    invoke-virtual {v4, v6}, Lcom/android/server/notification/CalendarTracker;->setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V

    #@22
    .line 181
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 184
    :cond_1
    iget-object v4, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@27
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    #@2a
    .line 185
    iget-object v4, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    #@2c
    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    #@33
    move-result-object v4

    #@34
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v3

    #@38
    .local v3, "user$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_4

    #@3e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v2

    #@42
    check-cast v2, Landroid/os/UserHandle;

    #@44
    .line 186
    .local v2, "user":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->isSystem()Z

    #@47
    move-result v4

    #@48
    if-eqz v4, :cond_2

    #@4a
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    #@4c
    .line 187
    .local v0, "context":Landroid/content/Context;
    :goto_2
    if-nez v0, :cond_3

    #@4e
    .line 188
    const-string/jumbo v4, "ConditionProviders.ECP"

    #@51
    new-instance v5, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v6, "Unable to create context for user "

    #@59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    #@60
    move-result v6

    #@61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    goto :goto_1

    #@6d
    .line 186
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    iget-object v4, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    #@6f
    invoke-static {v4, v2}, Lcom/android/server/notification/EventConditionProvider;->getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    #@72
    move-result-object v0

    #@73
    goto :goto_2

    #@74
    .line 191
    .restart local v0    # "context":Landroid/content/Context;
    :cond_3
    iget-object v4, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@76
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    #@79
    move-result v5

    #@7a
    new-instance v6, Lcom/android/server/notification/CalendarTracker;

    #@7c
    iget-object v7, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    #@7e
    invoke-direct {v6, v7, v0}, Lcom/android/server/notification/CalendarTracker;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    #@81
    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@84
    goto :goto_1

    #@85
    .line 193
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "user":Landroid/os/UserHandle;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V

    #@88
    .line 179
    return-void
.end method

.method private rescheduleAlarm(JJ)V
    .locals 11
    .param p1, "now"    # J
    .param p3, "time"    # J

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v8, 0x0

    #@4
    .line 268
    iput-wide p3, p0, Lcom/android/server/notification/EventConditionProvider;->mNextAlarmTime:J

    #@6
    .line 269
    iget-object v2, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    #@8
    const-string/jumbo v3, "alarm"

    #@b
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/app/AlarmManager;

    #@11
    .line 270
    .local v0, "alarms":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    #@13
    .line 272
    new-instance v3, Landroid/content/Intent;

    #@15
    sget-object v4, Lcom/android/server/notification/EventConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    #@17
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1a
    .line 273
    const/high16 v4, 0x10000000

    #@1c
    .line 272
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1f
    move-result-object v3

    #@20
    .line 274
    const-string/jumbo v4, "time"

    #@23
    .line 272
    invoke-virtual {v3, v4, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@26
    move-result-object v3

    #@27
    .line 275
    const/high16 v4, 0x8000000

    #@29
    .line 270
    invoke-static {v2, v9, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@2c
    move-result-object v1

    #@2d
    .line 276
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@30
    .line 277
    cmp-long v2, p3, v6

    #@32
    if-eqz v2, :cond_0

    #@34
    cmp-long v2, p3, p1

    #@36
    if-gez v2, :cond_3

    #@38
    .line 278
    :cond_0
    sget-boolean v2, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    #@3a
    if-eqz v2, :cond_1

    #@3c
    const-string/jumbo v3, "ConditionProviders.ECP"

    #@3f
    new-instance v2, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v4, "Not scheduling evaluate: "

    #@47
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    cmp-long v2, p3, v6

    #@4d
    if-nez v2, :cond_2

    #@4f
    const-string/jumbo v2, "no time specified"

    #@52
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 280
    :cond_1
    return-void

    #@5e
    .line 279
    :cond_2
    const-string/jumbo v2, "specified time in the past"

    #@61
    goto :goto_0

    #@62
    .line 282
    :cond_3
    sget-boolean v2, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    #@64
    if-eqz v2, :cond_4

    #@66
    const-string/jumbo v2, "ConditionProviders.ECP"

    #@69
    const-string/jumbo v3, "Scheduling evaluate for %s, in %s, now=%s"

    #@6c
    const/4 v4, 0x3

    #@6d
    new-array v4, v4, [Ljava/lang/Object;

    #@6f
    .line 283
    invoke-static {p3, p4}, Lcom/android/server/notification/EventConditionProvider;->ts(J)Ljava/lang/String;

    #@72
    move-result-object v5

    #@73
    aput-object v5, v4, v8

    #@75
    sub-long v6, p3, p1

    #@77
    invoke-static {v6, v7}, Lcom/android/server/notification/EventConditionProvider;->formatDuration(J)Ljava/lang/String;

    #@7a
    move-result-object v5

    #@7b
    aput-object v5, v4, v9

    #@7d
    invoke-static {p1, p2}, Lcom/android/server/notification/EventConditionProvider;->ts(J)Ljava/lang/String;

    #@80
    move-result-object v5

    #@81
    const/4 v6, 0x2

    #@82
    aput-object v5, v4, v6

    #@84
    .line 282
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@87
    move-result-object v3

    #@88
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8b
    .line 284
    :cond_4
    invoke-virtual {v0, v8, p3, p4, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    #@8e
    .line 267
    return-void
.end method

.method private setRegistered(Z)V
    .locals 4
    .param p1, "registered"    # Z

    #@0
    .prologue
    .line 295
    iget-boolean v1, p0, Lcom/android/server/notification/EventConditionProvider;->mRegistered:Z

    #@2
    if-ne v1, p1, :cond_0

    #@4
    return-void

    #@5
    .line 296
    :cond_0
    sget-boolean v1, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    const-string/jumbo v1, "ConditionProviders.ECP"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "setRegistered "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 297
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/notification/EventConditionProvider;->mRegistered:Z

    #@25
    .line 298
    iget-boolean v1, p0, Lcom/android/server/notification/EventConditionProvider;->mRegistered:Z

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 299
    new-instance v0, Landroid/content/IntentFilter;

    #@2b
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@2e
    .line 300
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    #@31
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@34
    .line 301
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    #@37
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3a
    .line 302
    sget-object v1, Lcom/android/server/notification/EventConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    #@3c
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3f
    .line 303
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    #@41
    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/EventConditionProvider;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@44
    .line 294
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    #@45
    .line 305
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    #@47
    invoke-virtual {p0, v1}, Lcom/android/server/notification/EventConditionProvider;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@4a
    goto :goto_0
.end method


# virtual methods
.method public asInterface()Landroid/service/notification/IConditionProvider;
    .locals 1

    #@0
    .prologue
    .line 176
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/notification/EventConditionProvider;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/service/notification/IConditionProvider;

    #@7
    return-object v0
.end method

.method public attachBase(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    #@0
    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/android/server/notification/EventConditionProvider;->attachBaseContext(Landroid/content/Context;)V

    #@3
    .line 170
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    .line 96
    const-string/jumbo v0, "    "

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    sget-object v0, Lcom/android/server/notification/EventConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    #@8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    const-string/jumbo v0, ":"

    #@e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11
    .line 97
    const-string/jumbo v0, "      mConnected="

    #@14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    iget-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mConnected:Z

    #@19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@1c
    .line 98
    const-string/jumbo v0, "      mRegistered="

    #@1f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    iget-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mRegistered:Z

    #@24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@27
    .line 99
    const-string/jumbo v0, "      mBootComplete="

    #@2a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d
    iget-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    #@2f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@32
    .line 100
    const-string/jumbo v1, "mNextAlarmTime"

    #@35
    iget-wide v2, p0, Lcom/android/server/notification/EventConditionProvider;->mNextAlarmTime:J

    #@37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3a
    move-result-wide v4

    #@3b
    move-object v0, p1

    #@3c
    invoke-static/range {v0 .. v5}, Lcom/android/server/notification/EventConditionProvider;->dumpUpcomingTime(Ljava/io/PrintWriter;Ljava/lang/String;JJ)V

    #@3f
    .line 101
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@41
    monitor-enter v1

    #@42
    .line 102
    :try_start_0
    const-string/jumbo v0, "      mSubscriptions="

    #@45
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@48
    .line 103
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@4a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4d
    move-result-object v7

    #@4e
    .local v7, "conditionId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@51
    move-result v0

    #@52
    if-eqz v0, :cond_0

    #@54
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v6

    #@58
    check-cast v6, Landroid/net/Uri;

    #@5a
    .line 104
    .local v6, "conditionId":Landroid/net/Uri;
    const-string/jumbo v0, "        "

    #@5d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    .line 105
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@63
    goto :goto_0

    #@64
    .line 101
    .end local v6    # "conditionId":Landroid/net/Uri;
    .end local v7    # "conditionId$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    #@65
    monitor-exit v1

    #@66
    throw v0

    #@67
    .restart local v7    # "conditionId$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v1

    #@68
    .line 108
    const-string/jumbo v0, "      mTrackers="

    #@6b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6e
    .line 109
    const/4 v8, 0x0

    #@6f
    .local v8, "i":I
    :goto_1
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@71
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@74
    move-result v0

    #@75
    if-ge v8, v0, :cond_1

    #@77
    .line 110
    const-string/jumbo v0, "        user="

    #@7a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7d
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@7f
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    #@82
    move-result v0

    #@83
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@86
    .line 111
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@88
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@8b
    move-result-object v0

    #@8c
    check-cast v0, Lcom/android/server/notification/CalendarTracker;

    #@8e
    const-string/jumbo v1, "          "

    #@91
    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/CalendarTracker;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@94
    .line 109
    add-int/lit8 v8, v8, 0x1

    #@96
    goto :goto_1

    #@97
    .line 95
    :cond_1
    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 86
    sget-object v0, Lcom/android/server/notification/EventConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public isValidConditionId(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "id"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 91
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public onBootComplete()V
    .locals 3

    #@0
    .prologue
    .line 117
    sget-boolean v1, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    const-string/jumbo v1, "ConditionProviders.ECP"

    #@7
    const-string/jumbo v2, "onBootComplete"

    #@a
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 118
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    #@f
    if-eqz v1, :cond_1

    #@11
    return-void

    #@12
    .line 119
    :cond_1
    const/4 v1, 0x1

    #@13
    iput-boolean v1, p0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    #@15
    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    #@17
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@1a
    .line 121
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    #@1d
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@20
    .line 122
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    #@23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@26
    .line 123
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    #@28
    new-instance v2, Lcom/android/server/notification/EventConditionProvider$4;

    #@2a
    invoke-direct {v2, p0}, Lcom/android/server/notification/EventConditionProvider$4;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    #@2d
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@30
    .line 129
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->reloadTrackers()V

    #@33
    .line 116
    return-void
.end method

.method public onConnected()V
    .locals 2

    #@0
    .prologue
    .line 134
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "ConditionProviders.ECP"

    #@7
    const-string/jumbo v1, "onConnected"

    #@a
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 135
    :cond_0
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mConnected:Z

    #@10
    .line 133
    return-void
.end method

.method public onDestroy()V
    .locals 2

    #@0
    .prologue
    .line 140
    invoke-super {p0}, Lcom/android/server/notification/SystemConditionProviderService;->onDestroy()V

    #@3
    .line 141
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    const-string/jumbo v0, "ConditionProviders.ECP"

    #@a
    const-string/jumbo v1, "onDestroy"

    #@d
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 142
    :cond_0
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mConnected:Z

    #@13
    .line 139
    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .locals 3
    .param p1, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 147
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "ConditionProviders.ECP"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "onSubscribe "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 148
    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_1

    #@24
    .line 149
    const/4 v0, 0x0

    #@25
    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/EventConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {p0, v0}, Lcom/android/server/notification/EventConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    #@2c
    .line 150
    return-void

    #@2d
    .line 152
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@2f
    monitor-enter v1

    #@30
    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@32
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_2

    #@38
    .line 154
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    :cond_2
    monitor-exit v1

    #@3c
    .line 146
    return-void

    #@3d
    .line 152
    :catchall_0
    move-exception v0

    #@3e
    monitor-exit v1

    #@3f
    throw v0
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .locals 3
    .param p1, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 161
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "ConditionProviders.ECP"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "onUnsubscribe "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@20
    monitor-enter v1

    #@21
    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@23
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 164
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    :cond_1
    monitor-exit v1

    #@2d
    .line 160
    return-void

    #@2e
    .line 162
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    throw v0
.end method
