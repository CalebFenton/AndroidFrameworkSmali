.class public Lcom/android/server/notification/ScheduleConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "ScheduleConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ScheduleConditionProvider$1;
    }
.end annotation


# static fields
.field private static final ACTION_EVALUATE:Ljava/lang/String;

.field public static final COMPONENT:Landroid/content/ComponentName;

.field private static final DEBUG:Z

.field private static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final NOT_SHOWN:Ljava/lang/String; = "..."

.field private static final REQUEST_CODE_EVALUATE:I = 0x1

.field private static final SIMPLE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ConditionProviders.SCP"


# instance fields
.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private mNextAlarmTime:J

.field private mReceiver:Landroid/content/BroadcastReceiver;

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


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    #@2
    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/ScheduleConditionProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptions()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 45
    const-string/jumbo v0, "ConditionProviders"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    #@a
    .line 48
    new-instance v0, Landroid/content/ComponentName;

    #@c
    const-string/jumbo v1, "android"

    #@f
    const-class v2, Lcom/android/server/notification/ScheduleConditionProvider;

    #@11
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 47
    sput-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    #@1a
    .line 50
    const-class v0, Lcom/android/server/notification/ScheduleConditionProvider;

    #@1c
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    sput-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    #@22
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    sget-object v1, Lcom/android/server/notification/ScheduleConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

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
    sput-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    #@3a
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/notification/SystemConditionProviderService;-><init>()V

    #@3
    .line 55
    iput-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    #@5
    .line 56
    new-instance v0, Landroid/util/ArraySet;

    #@7
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@c
    .line 227
    new-instance v0, Lcom/android/server/notification/ScheduleConditionProvider$1;

    #@e
    invoke-direct {v0, p0}, Lcom/android/server/notification/ScheduleConditionProvider$1;-><init>(Lcom/android/server/notification/ScheduleConditionProvider;)V

    #@11
    iput-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    #@13
    .line 63
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    #@15
    if-eqz v0, :cond_0

    #@17
    const-string/jumbo v0, "ConditionProviders.SCP"

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "new "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    sget-object v2, Lcom/android/server/notification/ScheduleConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    const-string/jumbo v2, "()"

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 62
    :cond_0
    return-void
.end method

.method private createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;
    .locals 11
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "state"    # I

    #@0
    .prologue
    .line 221
    const-string/jumbo v10, "..."

    #@3
    .line 222
    .local v10, "summary":Ljava/lang/String;
    const-string/jumbo v8, "..."

    #@6
    .line 223
    .local v8, "line1":Ljava/lang/String;
    const-string/jumbo v9, "..."

    #@9
    .line 224
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
    .locals 14

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    const-wide/16 v12, 0x0

    #@4
    .line 144
    iget-object v3, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@6
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_2

    #@c
    move v3, v8

    #@d
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/server/notification/ScheduleConditionProvider;->setRegistered(Z)V

    #@10
    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@13
    move-result-wide v6

    #@14
    .line 146
    .local v6, "now":J
    iput-wide v12, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    #@16
    .line 147
    iget-object v3, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@18
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v2

    #@1c
    .local v2, "conditionId$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_4

    #@22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroid/net/Uri;

    #@28
    .line 148
    .local v1, "conditionId":Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/server/notification/ScheduleConditionProvider;->toScheduleCalendar(Landroid/net/Uri;)Lcom/android/server/notification/ScheduleCalendar;

    #@2b
    move-result-object v0

    #@2c
    .line 149
    .local v0, "cal":Lcom/android/server/notification/ScheduleCalendar;
    if-eqz v0, :cond_3

    #@2e
    invoke-virtual {v0, v6, v7}, Lcom/android/server/notification/ScheduleCalendar;->isInSchedule(J)Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_3

    #@34
    .line 150
    const-string/jumbo v3, "meetsSchedule"

    #@37
    invoke-direct {p0, v1, v9, v3}, Lcom/android/server/notification/ScheduleConditionProvider;->notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V

    #@3a
    .line 154
    :goto_2
    if-eqz v0, :cond_0

    #@3c
    .line 155
    invoke-virtual {v0, v6, v7}, Lcom/android/server/notification/ScheduleCalendar;->getNextChangeTime(J)J

    #@3f
    move-result-wide v4

    #@40
    .line 156
    .local v4, "nextChangeTime":J
    cmp-long v3, v4, v12

    #@42
    if-lez v3, :cond_0

    #@44
    cmp-long v3, v4, v6

    #@46
    if-lez v3, :cond_0

    #@48
    .line 157
    iget-wide v10, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    #@4a
    cmp-long v3, v10, v12

    #@4c
    if-eqz v3, :cond_1

    #@4e
    iget-wide v10, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    #@50
    cmp-long v3, v4, v10

    #@52
    if-gez v3, :cond_0

    #@54
    .line 158
    :cond_1
    iput-wide v4, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    #@56
    goto :goto_1

    #@57
    .end local v0    # "cal":Lcom/android/server/notification/ScheduleCalendar;
    .end local v1    # "conditionId":Landroid/net/Uri;
    .end local v2    # "conditionId$iterator":Ljava/util/Iterator;
    .end local v4    # "nextChangeTime":J
    .end local v6    # "now":J
    :cond_2
    move v3, v9

    #@58
    .line 144
    goto :goto_0

    #@59
    .line 152
    .restart local v0    # "cal":Lcom/android/server/notification/ScheduleCalendar;
    .restart local v1    # "conditionId":Landroid/net/Uri;
    .restart local v2    # "conditionId$iterator":Ljava/util/Iterator;
    .restart local v6    # "now":J
    :cond_3
    const-string/jumbo v3, "!meetsSchedule"

    #@5c
    invoke-direct {p0, v1, v8, v3}, Lcom/android/server/notification/ScheduleConditionProvider;->notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V

    #@5f
    goto :goto_2

    #@60
    .line 163
    .end local v0    # "cal":Lcom/android/server/notification/ScheduleCalendar;
    .end local v1    # "conditionId":Landroid/net/Uri;
    :cond_4
    iget-wide v8, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    #@62
    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/server/notification/ScheduleConditionProvider;->updateAlarm(JJ)V

    #@65
    .line 143
    return-void
.end method

.method private static meetsSchedule(Landroid/net/Uri;J)Z
    .locals 3
    .param p0, "conditionId"    # Landroid/net/Uri;
    .param p1, "time"    # J

    #@0
    .prologue
    .line 185
    invoke-static {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->toScheduleCalendar(Landroid/net/Uri;)Lcom/android/server/notification/ScheduleCalendar;

    #@3
    move-result-object v0

    #@4
    .line 186
    .local v0, "cal":Lcom/android/server/notification/ScheduleCalendar;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ScheduleCalendar;->isInSchedule(J)Z

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

.method private notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 3
    .param p1, "conditionId"    # Landroid/net/Uri;
    .param p2, "state"    # I
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 214
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "ConditionProviders.SCP"

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
    .line 215
    const-string/jumbo v2, " "

    #@1a
    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 215
    invoke-static {p2}, Landroid/service/notification/Condition;->stateToString(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 216
    const-string/jumbo v2, " reason="

    #@29
    .line 214
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
    .line 217
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    #@3f
    .line 213
    return-void
.end method

.method private setRegistered(Z)V
    .locals 4
    .param p1, "registered"    # Z

    #@0
    .prologue
    .line 199
    iget-boolean v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mRegistered:Z

    #@2
    if-ne v1, p1, :cond_0

    #@4
    return-void

    #@5
    .line 200
    :cond_0
    sget-boolean v1, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    const-string/jumbo v1, "ConditionProviders.SCP"

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
    .line 201
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mRegistered:Z

    #@25
    .line 202
    iget-boolean v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mRegistered:Z

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    #@2b
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@2e
    .line 204
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    #@31
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@34
    .line 205
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    #@37
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3a
    .line 206
    sget-object v1, Lcom/android/server/notification/ScheduleConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    #@3c
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3f
    .line 207
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    #@41
    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@44
    .line 198
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    #@45
    .line 209
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    #@47
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ScheduleConditionProvider;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@4a
    goto :goto_0
.end method

.method private static toScheduleCalendar(Landroid/net/Uri;)Lcom/android/server/notification/ScheduleCalendar;
    .locals 4
    .param p0, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 190
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@4
    move-result-object v1

    #@5
    .line 191
    .local v1, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    if-eqz v1, :cond_0

    #@7
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@9
    if-nez v2, :cond_1

    #@b
    :cond_0
    return-object v3

    #@c
    :cond_1
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@e
    array-length v2, v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 192
    new-instance v0, Lcom/android/server/notification/ScheduleCalendar;

    #@13
    invoke-direct {v0}, Lcom/android/server/notification/ScheduleCalendar;-><init>()V

    #@16
    .line 193
    .local v0, "sc":Lcom/android/server/notification/ScheduleCalendar;
    invoke-virtual {v0, v1}, Lcom/android/server/notification/ScheduleCalendar;->setSchedule(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V

    #@19
    .line 194
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v0, v2}, Lcom/android/server/notification/ScheduleCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@20
    .line 195
    return-object v0
.end method

.method private updateAlarm(JJ)V
    .locals 11
    .param p1, "now"    # J
    .param p3, "time"    # J

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 167
    iget-object v2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v3, "alarm"

    #@7
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/app/AlarmManager;

    #@d
    .line 168
    .local v0, "alarms":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    #@f
    .line 170
    new-instance v3, Landroid/content/Intent;

    #@11
    sget-object v4, Lcom/android/server/notification/ScheduleConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    #@13
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@16
    .line 171
    const/high16 v4, 0x10000000

    #@18
    .line 170
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1b
    move-result-object v3

    #@1c
    .line 172
    const-string/jumbo v4, "time"

    #@1f
    .line 170
    invoke-virtual {v3, v4, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@22
    move-result-object v3

    #@23
    .line 173
    const/high16 v4, 0x8000000

    #@25
    .line 168
    invoke-static {v2, v9, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@28
    move-result-object v1

    #@29
    .line 174
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@2c
    .line 175
    cmp-long v2, p3, p1

    #@2e
    if-lez v2, :cond_2

    #@30
    .line 176
    sget-boolean v2, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    #@32
    if-eqz v2, :cond_0

    #@34
    const-string/jumbo v2, "ConditionProviders.SCP"

    #@37
    const-string/jumbo v3, "Scheduling evaluate for %s, in %s, now=%s"

    #@3a
    const/4 v4, 0x3

    #@3b
    new-array v4, v4, [Ljava/lang/Object;

    #@3d
    .line 177
    invoke-static {p3, p4}, Lcom/android/server/notification/ScheduleConditionProvider;->ts(J)Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    aput-object v5, v4, v8

    #@43
    sub-long v6, p3, p1

    #@45
    invoke-static {v6, v7}, Lcom/android/server/notification/ScheduleConditionProvider;->formatDuration(J)Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    aput-object v5, v4, v9

    #@4b
    invoke-static {p1, p2}, Lcom/android/server/notification/ScheduleConditionProvider;->ts(J)Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    const/4 v6, 0x2

    #@50
    aput-object v5, v4, v6

    #@52
    .line 176
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    .line 178
    :cond_0
    invoke-virtual {v0, v8, p3, p4, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    #@5c
    .line 166
    :cond_1
    :goto_0
    return-void

    #@5d
    .line 180
    :cond_2
    sget-boolean v2, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    #@5f
    if-eqz v2, :cond_1

    #@61
    const-string/jumbo v2, "ConditionProviders.SCP"

    #@64
    const-string/jumbo v3, "Not scheduling evaluate"

    #@67
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    goto :goto_0
.end method


# virtual methods
.method public asInterface()Landroid/service/notification/IConditionProvider;
    .locals 1

    #@0
    .prologue
    .line 140
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

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
    .line 135
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ScheduleConditionProvider;->attachBaseContext(Landroid/content/Context;)V

    #@3
    .line 134
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    .line 78
    const-string/jumbo v0, "    "

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    sget-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    #@8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    const-string/jumbo v0, ":"

    #@e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11
    .line 79
    const-string/jumbo v0, "      mConnected="

    #@14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    iget-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mConnected:Z

    #@19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@1c
    .line 80
    const-string/jumbo v0, "      mRegistered="

    #@1f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    iget-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mRegistered:Z

    #@24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@27
    .line 81
    const-string/jumbo v0, "      mSubscriptions="

    #@2a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2d
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@30
    move-result-wide v4

    #@31
    .line 83
    .local v4, "now":J
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@33
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v7

    #@37
    .local v7, "conditionId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_1

    #@3d
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v6

    #@41
    check-cast v6, Landroid/net/Uri;

    #@43
    .line 84
    .local v6, "conditionId":Landroid/net/Uri;
    const-string/jumbo v0, "        "

    #@46
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49
    .line 85
    invoke-static {v6, v4, v5}, Lcom/android/server/notification/ScheduleConditionProvider;->meetsSchedule(Landroid/net/Uri;J)Z

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_0

    #@4f
    const-string/jumbo v0, "* "

    #@52
    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55
    .line 86
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@58
    goto :goto_0

    #@59
    .line 85
    :cond_0
    const-string/jumbo v0, "  "

    #@5c
    goto :goto_1

    #@5d
    .line 88
    .end local v6    # "conditionId":Landroid/net/Uri;
    :cond_1
    const-string/jumbo v1, "mNextAlarmTime"

    #@60
    iget-wide v2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    #@62
    move-object v0, p1

    #@63
    invoke-static/range {v0 .. v5}, Lcom/android/server/notification/ScheduleConditionProvider;->dumpUpcomingTime(Ljava/io/PrintWriter;Ljava/lang/String;JJ)V

    #@66
    .line 77
    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 68
    sget-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public isValidConditionId(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "id"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 73
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public onBootComplete()V
    .locals 0

    #@0
    .prologue
    .line 98
    return-void
.end method

.method public onConnected()V
    .locals 2

    #@0
    .prologue
    .line 93
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "ConditionProviders.SCP"

    #@7
    const-string/jumbo v1, "onConnected"

    #@a
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 94
    :cond_0
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mConnected:Z

    #@10
    .line 92
    return-void
.end method

.method public onDestroy()V
    .locals 2

    #@0
    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/server/notification/SystemConditionProviderService;->onDestroy()V

    #@3
    .line 105
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    const-string/jumbo v0, "ConditionProviders.SCP"

    #@a
    const-string/jumbo v1, "onDestroy"

    #@d
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 106
    :cond_0
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mConnected:Z

    #@13
    .line 103
    return-void
.end method

.method public onRequestConditions(I)V
    .locals 3
    .param p1, "relevance"    # I

    #@0
    .prologue
    .line 111
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "ConditionProviders.SCP"

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
    .line 110
    :cond_0
    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .locals 3
    .param p1, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 117
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "ConditionProviders.SCP"

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
    .line 118
    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_1

    #@24
    .line 119
    const-string/jumbo v0, "badCondition"

    #@27
    const/4 v1, 0x0

    #@28
    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V

    #@2b
    .line 120
    return-void

    #@2c
    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@2e
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@31
    .line 123
    invoke-direct {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptions()V

    #@34
    .line 116
    return-void
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .locals 3
    .param p1, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 128
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "ConditionProviders.SCP"

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
    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    #@20
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@23
    .line 130
    invoke-direct {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptions()V

    #@26
    .line 127
    return-void
.end method
