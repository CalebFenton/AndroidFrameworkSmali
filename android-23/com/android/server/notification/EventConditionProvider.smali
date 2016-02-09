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
    .line 51
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
    .line 54
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
    .line 53
    sput-object v0, Lcom/android/server/notification/EventConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    #@1a
    .line 56
    const-class v0, Lcom/android/server/notification/EventConditionProvider;

    #@1c
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    sput-object v0, Lcom/android/server/notification/EventConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    #@22
    .line 57
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
    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1, "worker"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/notification/SystemConditionProviderService;-><init>()V

    #@3
    .line 62
    iput-object p0, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    #@5
    .line 63
    new-instance v0, Landroid/util/ArraySet;

    #@7
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@c
    .line 64
    new-instance v0, Landroid/util/SparseArray;

    #@e
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@13
    .line 306
    new-instance v0, Lcom/android/server/notification/EventConditionProvider$1;

    #@15
    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$1;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    #@18
    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackerCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    #@1a
    .line 315
    new-instance v0, Lcom/android/server/notification/EventConditionProvider$2;

    #@1c
    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$2;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    #@1f
    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    #@21
    .line 323
    new-instance v0, Lcom/android/server/notification/EventConditionProvider$3;

    #@23
    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$3;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    #@26
    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    #@28
    .line 73
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
    .line 74
    :cond_0
    new-instance v0, Landroid/os/Handler;

    #@51
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@54
    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    #@56
    .line 72
    return-void
.end method

.method private createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;
    .locals 11
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "state"    # I

    #@0
    .prologue
    .line 277
    const-string/jumbo v10, "..."

    #@3
    .line 278
    .local v10, "summary":Ljava/lang/String;
    const-string/jumbo v8, "..."

    #@6
    .line 279
    .local v8, "line1":Ljava/lang/String;
    const-string/jumbo v9, "..."

    #@9
    .line 280
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
    .line 190
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
    .line 191
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    #@c
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    #@e
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@11
    .line 189
    :cond_0
    return-void
.end method

.method private evaluateSubscriptionsW()V
    .locals 18

    #@0
    .prologue
    .line 196
    sget-boolean v14, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    #@2
    if-eqz v14, :cond_0

    #@4
    const-string/jumbo v14, "ConditionProviders.ECP"

    #@7
    const-string/jumbo v15, "evaluateSubscriptions"

    #@a
    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 197
    :cond_0
    move-object/from16 v0, p0

    #@f
    iget-boolean v14, v0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    #@11
    if-nez v14, :cond_2

    #@13
    .line 198
    sget-boolean v14, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    #@15
    if-eqz v14, :cond_1

    #@17
    const-string/jumbo v14, "ConditionProviders.ECP"

    #@1a
    const-string/jumbo v15, "Skipping evaluate before boot complete"

    #@1d
    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 199
    :cond_1
    return-void

    #@21
    .line 201
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@24
    move-result-wide v6

    #@25
    .line 202
    .local v6, "now":J
    const/4 v5, 0x0

    #@26
    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@28
    iget-object v14, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@2a
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    #@2d
    move-result v14

    #@2e
    if-ge v5, v14, :cond_4

    #@30
    .line 203
    move-object/from16 v0, p0

    #@32
    iget-object v14, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@34
    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@37
    move-result-object v14

    #@38
    check-cast v14, Lcom/android/server/notification/CalendarTracker;

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v15, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@3e
    invoke-virtual {v15}, Landroid/util/ArraySet;->isEmpty()Z

    #@41
    move-result v15

    #@42
    if-eqz v15, :cond_3

    #@44
    const/4 v15, 0x0

    #@45
    :goto_1
    invoke-virtual {v14, v15}, Lcom/android/server/notification/CalendarTracker;->setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V

    #@48
    .line 202
    add-int/lit8 v5, v5, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 203
    :cond_3
    move-object/from16 v0, p0

    #@4d
    iget-object v15, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackerCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    #@4f
    goto :goto_1

    #@50
    .line 205
    :cond_4
    move-object/from16 v0, p0

    #@52
    iget-object v14, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@54
    invoke-virtual {v14}, Landroid/util/ArraySet;->isEmpty()Z

    #@57
    move-result v14

    #@58
    if-eqz v14, :cond_5

    #@5a
    const/4 v14, 0x0

    #@5b
    :goto_2
    move-object/from16 v0, p0

    #@5d
    invoke-direct {v0, v14}, Lcom/android/server/notification/EventConditionProvider;->setRegistered(Z)V

    #@60
    .line 206
    const-wide/16 v10, 0x0

    #@62
    .line 207
    .local v10, "reevaluateAt":J
    move-object/from16 v0, p0

    #@64
    iget-object v14, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@66
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@69
    move-result-object v3

    #@6a
    .local v3, "conditionId$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@6d
    move-result v14

    #@6e
    if-eqz v14, :cond_e

    #@70
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@73
    move-result-object v2

    #@74
    check-cast v2, Landroid/net/Uri;

    #@76
    .line 208
    .local v2, "conditionId":Landroid/net/Uri;
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    #@79
    move-result-object v4

    #@7a
    .line 209
    .local v4, "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    if-nez v4, :cond_6

    #@7c
    .line 210
    const-string/jumbo v14, "badConditionId"

    #@7f
    const/4 v15, 0x0

    #@80
    move-object/from16 v0, p0

    #@82
    invoke-direct {v0, v2, v15, v14}, Lcom/android/server/notification/EventConditionProvider;->notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V

    #@85
    goto :goto_3

    #@86
    .line 205
    .end local v2    # "conditionId":Landroid/net/Uri;
    .end local v3    # "conditionId$iterator":Ljava/util/Iterator;
    .end local v4    # "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    .end local v10    # "reevaluateAt":J
    :cond_5
    const/4 v14, 0x1

    #@87
    goto :goto_2

    #@88
    .line 213
    .restart local v2    # "conditionId":Landroid/net/Uri;
    .restart local v3    # "conditionId$iterator":Ljava/util/Iterator;
    .restart local v4    # "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    .restart local v10    # "reevaluateAt":J
    :cond_6
    const/4 v9, 0x0

    #@89
    .line 214
    .local v9, "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    iget-object v14, v4, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@8b
    if-nez v14, :cond_8

    #@8d
    .line 216
    const/4 v5, 0x0

    #@8e
    .end local v9    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :goto_4
    move-object/from16 v0, p0

    #@90
    iget-object v14, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@92
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    #@95
    move-result v14

    #@96
    if-ge v5, v14, :cond_a

    #@98
    .line 217
    move-object/from16 v0, p0

    #@9a
    iget-object v14, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@9c
    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@9f
    move-result-object v12

    #@a0
    check-cast v12, Lcom/android/server/notification/CalendarTracker;

    #@a2
    .line 218
    .local v12, "tracker":Lcom/android/server/notification/CalendarTracker;
    invoke-virtual {v12, v4, v6, v7}, Lcom/android/server/notification/CalendarTracker;->checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    #@a5
    move-result-object v8

    #@a6
    .line 219
    .local v8, "r":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    if-nez v9, :cond_7

    #@a8
    .line 220
    move-object v9, v8

    #@a9
    .line 216
    :goto_5
    add-int/lit8 v5, v5, 0x1

    #@ab
    goto :goto_4

    #@ac
    .line 222
    :cond_7
    iget-boolean v14, v9, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    #@ae
    iget-boolean v15, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    #@b0
    or-int/2addr v14, v15

    #@b1
    iput-boolean v14, v9, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    #@b3
    .line 223
    iget-wide v14, v9, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    #@b5
    iget-wide v0, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    #@b7
    move-wide/from16 v16, v0

    #@b9
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    #@bc
    move-result-wide v14

    #@bd
    iput-wide v14, v9, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    #@bf
    goto :goto_5

    #@c0
    .line 228
    .end local v8    # "r":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .end local v12    # "tracker":Lcom/android/server/notification/CalendarTracker;
    .restart local v9    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :cond_8
    iget v14, v4, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    #@c2
    invoke-static {v14}, Landroid/service/notification/ZenModeConfig$EventInfo;->resolveUserId(I)I

    #@c5
    move-result v13

    #@c6
    .line 229
    .local v13, "userId":I
    move-object/from16 v0, p0

    #@c8
    iget-object v14, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@ca
    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@cd
    move-result-object v12

    #@ce
    check-cast v12, Lcom/android/server/notification/CalendarTracker;

    #@d0
    .line 230
    .restart local v12    # "tracker":Lcom/android/server/notification/CalendarTracker;
    if-nez v12, :cond_9

    #@d2
    .line 231
    const-string/jumbo v14, "ConditionProviders.ECP"

    #@d5
    new-instance v15, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    const-string/jumbo v16, "No calendar tracker found for user "

    #@dd
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v15

    #@e1
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v15

    #@e5
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e8
    move-result-object v15

    #@e9
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ec
    .line 232
    const-string/jumbo v14, "badUserId"

    #@ef
    const/4 v15, 0x0

    #@f0
    move-object/from16 v0, p0

    #@f2
    invoke-direct {v0, v2, v15, v14}, Lcom/android/server/notification/EventConditionProvider;->notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V

    #@f5
    goto/16 :goto_3

    #@f7
    .line 235
    :cond_9
    invoke-virtual {v12, v4, v6, v7}, Lcom/android/server/notification/CalendarTracker;->checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    #@fa
    move-result-object v9

    #@fb
    .line 237
    .end local v9    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .end local v12    # "tracker":Lcom/android/server/notification/CalendarTracker;
    .end local v13    # "userId":I
    :cond_a
    iget-wide v14, v9, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    #@fd
    const-wide/16 v16, 0x0

    #@ff
    cmp-long v14, v14, v16

    #@101
    if-eqz v14, :cond_c

    #@103
    const-wide/16 v14, 0x0

    #@105
    cmp-long v14, v10, v14

    #@107
    if-eqz v14, :cond_b

    #@109
    iget-wide v14, v9, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    #@10b
    cmp-long v14, v14, v10

    #@10d
    if-gez v14, :cond_c

    #@10f
    .line 238
    :cond_b
    iget-wide v10, v9, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    #@111
    .line 240
    :cond_c
    iget-boolean v14, v9, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    #@113
    if-nez v14, :cond_d

    #@115
    .line 241
    const-string/jumbo v14, "!inEventNow"

    #@118
    const/4 v15, 0x0

    #@119
    move-object/from16 v0, p0

    #@11b
    invoke-direct {v0, v2, v15, v14}, Lcom/android/server/notification/EventConditionProvider;->notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V

    #@11e
    goto/16 :goto_3

    #@120
    .line 244
    :cond_d
    const-string/jumbo v14, "inEventNow"

    #@123
    const/4 v15, 0x1

    #@124
    move-object/from16 v0, p0

    #@126
    invoke-direct {v0, v2, v15, v14}, Lcom/android/server/notification/EventConditionProvider;->notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V

    #@129
    goto/16 :goto_3

    #@12b
    .line 246
    .end local v2    # "conditionId":Landroid/net/Uri;
    .end local v4    # "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    :cond_e
    move-object/from16 v0, p0

    #@12d
    invoke-direct {v0, v6, v7, v10, v11}, Lcom/android/server/notification/EventConditionProvider;->rescheduleAlarm(JJ)V

    #@130
    .line 247
    sget-boolean v14, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    #@132
    if-eqz v14, :cond_f

    #@134
    const-string/jumbo v14, "ConditionProviders.ECP"

    #@137
    new-instance v15, Ljava/lang/StringBuilder;

    #@139
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@13c
    const-string/jumbo v16, "evaluateSubscriptions took "

    #@13f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v15

    #@143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@146
    move-result-wide v16

    #@147
    sub-long v16, v16, v6

    #@149
    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v15

    #@14d
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@150
    move-result-object v15

    #@151
    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@154
    .line 195
    :cond_f
    return-void
.end method

.method private static getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 300
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
    .line 301
    :catch_0
    move-exception v0

    #@b
    .line 302
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    #@c
    return-object v1
.end method

.method private notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 3
    .param p1, "conditionId"    # Landroid/net/Uri;
    .param p2, "state"    # I
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 271
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
    const-string/jumbo v2, "notifyCondition "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, " "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 272
    invoke-static {p2}, Landroid/service/notification/Condition;->stateToString(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 272
    const-string/jumbo v2, " reason="

    #@29
    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 273
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/EventConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {p0, v0}, Lcom/android/server/notification/EventConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    #@3f
    .line 270
    return-void
.end method

.method private reloadTrackers()V
    .locals 8

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 173
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
    .line 174
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
    .line 175
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
    .line 174
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 177
    :cond_1
    iget-object v4, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@27
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    #@2a
    .line 178
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
    .line 179
    .local v2, "user":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->isOwner()Z

    #@47
    move-result v4

    #@48
    if-eqz v4, :cond_2

    #@4a
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    #@4c
    .line 180
    .local v0, "context":Landroid/content/Context;
    :goto_2
    if-nez v0, :cond_3

    #@4e
    .line 181
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
    .line 179
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    iget-object v4, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    #@6f
    invoke-static {v4, v2}, Lcom/android/server/notification/EventConditionProvider;->getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    #@72
    move-result-object v0

    #@73
    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_2

    #@74
    .line 184
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
    .line 186
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "user":Landroid/os/UserHandle;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V

    #@88
    .line 172
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
    .line 251
    iput-wide p3, p0, Lcom/android/server/notification/EventConditionProvider;->mNextAlarmTime:J

    #@6
    .line 252
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
    .line 253
    .local v0, "alarms":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    #@13
    .line 255
    new-instance v3, Landroid/content/Intent;

    #@15
    sget-object v4, Lcom/android/server/notification/EventConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    #@17
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1a
    .line 256
    const/high16 v4, 0x10000000

    #@1c
    .line 255
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1f
    move-result-object v3

    #@20
    .line 257
    const-string/jumbo v4, "time"

    #@23
    .line 255
    invoke-virtual {v3, v4, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@26
    move-result-object v3

    #@27
    .line 258
    const/high16 v4, 0x8000000

    #@29
    .line 253
    invoke-static {v2, v9, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@2c
    move-result-object v1

    #@2d
    .line 259
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@30
    .line 260
    cmp-long v2, p3, v6

    #@32
    if-eqz v2, :cond_0

    #@34
    cmp-long v2, p3, p1

    #@36
    if-gez v2, :cond_3

    #@38
    .line 261
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
    .line 263
    :cond_1
    return-void

    #@5e
    .line 262
    :cond_2
    const-string/jumbo v2, "specified time in the past"

    #@61
    goto :goto_0

    #@62
    .line 265
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
    .line 266
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
    .line 265
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@87
    move-result-object v3

    #@88
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8b
    .line 267
    :cond_4
    invoke-virtual {v0, v8, p3, p4, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    #@8e
    .line 250
    return-void
.end method

.method private setRegistered(Z)V
    .locals 4
    .param p1, "registered"    # Z

    #@0
    .prologue
    .line 284
    iget-boolean v1, p0, Lcom/android/server/notification/EventConditionProvider;->mRegistered:Z

    #@2
    if-ne v1, p1, :cond_0

    #@4
    return-void

    #@5
    .line 285
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
    .line 286
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/notification/EventConditionProvider;->mRegistered:Z

    #@25
    .line 287
    iget-boolean v1, p0, Lcom/android/server/notification/EventConditionProvider;->mRegistered:Z

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 288
    new-instance v0, Landroid/content/IntentFilter;

    #@2b
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@2e
    .line 289
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    #@31
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@34
    .line 290
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    #@37
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3a
    .line 291
    sget-object v1, Lcom/android/server/notification/EventConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    #@3c
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3f
    .line 292
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    #@41
    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/EventConditionProvider;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@44
    .line 283
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    #@45
    .line 294
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
    .line 169
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
    .line 164
    invoke-virtual {p0, p1}, Lcom/android/server/notification/EventConditionProvider;->attachBaseContext(Landroid/content/Context;)V

    #@3
    .line 163
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    .line 89
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
    .line 90
    const-string/jumbo v0, "      mConnected="

    #@14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    iget-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mConnected:Z

    #@19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@1c
    .line 91
    const-string/jumbo v0, "      mRegistered="

    #@1f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    iget-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mRegistered:Z

    #@24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@27
    .line 92
    const-string/jumbo v0, "      mBootComplete="

    #@2a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d
    iget-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    #@2f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@32
    .line 93
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
    .line 94
    const-string/jumbo v0, "      mSubscriptions="

    #@42
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@45
    .line 95
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@47
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4a
    move-result-object v7

    #@4b
    .local v7, "conditionId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@4e
    move-result v0

    #@4f
    if-eqz v0, :cond_0

    #@51
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@54
    move-result-object v6

    #@55
    check-cast v6, Landroid/net/Uri;

    #@57
    .line 96
    .local v6, "conditionId":Landroid/net/Uri;
    const-string/jumbo v0, "        "

    #@5a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d
    .line 97
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@60
    goto :goto_0

    #@61
    .line 99
    .end local v6    # "conditionId":Landroid/net/Uri;
    :cond_0
    const-string/jumbo v0, "      mTrackers="

    #@64
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@67
    .line 100
    const/4 v8, 0x0

    #@68
    .local v8, "i":I
    :goto_1
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@6a
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@6d
    move-result v0

    #@6e
    if-ge v8, v0, :cond_1

    #@70
    .line 101
    const-string/jumbo v0, "        user="

    #@73
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@76
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@78
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    #@7b
    move-result v0

    #@7c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@7f
    .line 102
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    #@81
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@84
    move-result-object v0

    #@85
    check-cast v0, Lcom/android/server/notification/CalendarTracker;

    #@87
    const-string/jumbo v1, "          "

    #@8a
    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/CalendarTracker;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@8d
    .line 100
    add-int/lit8 v8, v8, 0x1

    #@8f
    goto :goto_1

    #@90
    .line 88
    :cond_1
    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 79
    sget-object v0, Lcom/android/server/notification/EventConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public isValidConditionId(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "id"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 84
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
    .line 108
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
    .line 109
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    #@f
    if-eqz v1, :cond_1

    #@11
    return-void

    #@12
    .line 110
    :cond_1
    const/4 v1, 0x1

    #@13
    iput-boolean v1, p0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    #@15
    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    #@17
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@1a
    .line 112
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    #@1d
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@20
    .line 113
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    #@23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@26
    .line 114
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    #@28
    new-instance v2, Lcom/android/server/notification/EventConditionProvider$4;

    #@2a
    invoke-direct {v2, p0}, Lcom/android/server/notification/EventConditionProvider$4;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    #@2d
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@30
    .line 120
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->reloadTrackers()V

    #@33
    .line 107
    return-void
.end method

.method public onConnected()V
    .locals 2

    #@0
    .prologue
    .line 125
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
    .line 126
    :cond_0
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mConnected:Z

    #@10
    .line 124
    return-void
.end method

.method public onDestroy()V
    .locals 2

    #@0
    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/server/notification/SystemConditionProviderService;->onDestroy()V

    #@3
    .line 132
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
    .line 133
    :cond_0
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mConnected:Z

    #@13
    .line 130
    return-void
.end method

.method public onRequestConditions(I)V
    .locals 3
    .param p1, "relevance"    # I

    #@0
    .prologue
    .line 138
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
    const-string/jumbo v2, "onRequestConditions relevance="

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 137
    :cond_0
    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .locals 3
    .param p1, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 144
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
    .line 145
    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_1

    #@24
    .line 146
    const-string/jumbo v0, "badCondition"

    #@27
    const/4 v1, 0x0

    #@28
    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/notification/EventConditionProvider;->notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V

    #@2b
    .line 147
    return-void

    #@2c
    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@2e
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_2

    #@34
    .line 150
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V

    #@37
    .line 143
    :cond_2
    return-void
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .locals 3
    .param p1, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 156
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
    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@20
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_1

    #@26
    .line 158
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V

    #@29
    .line 155
    :cond_1
    return-void
.end method
