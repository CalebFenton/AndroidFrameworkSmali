.class public Lcom/android/server/notification/CountdownConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "CountdownConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/CountdownConditionProvider$Receiver;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String;

.field public static final COMPONENT:Landroid/content/ComponentName;

.field private static final DEBUG:Z

.field private static final EXTRA_CONDITION_ID:Ljava/lang/String; = "condition_id"

.field private static final REQUEST_CODE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ConditionProviders.CCP"


# instance fields
.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

.field private mTime:J


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    #@2
    return v0
.end method

.method static synthetic -wrap0(JI)Landroid/service/notification/Condition;
    .locals 2
    .param p0, "time"    # J
    .param p2, "state"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/notification/CountdownConditionProvider;->newCondition(JI)Landroid/service/notification/Condition;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 41
    const-string/jumbo v0, "ConditionProviders"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    #@a
    .line 44
    new-instance v0, Landroid/content/ComponentName;

    #@c
    const-string/jumbo v1, "android"

    #@f
    const-class v2, Lcom/android/server/notification/CountdownConditionProvider;

    #@11
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 43
    sput-object v0, Lcom/android/server/notification/CountdownConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    #@1a
    .line 46
    const-class v0, Lcom/android/server/notification/CountdownConditionProvider;

    #@1c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    sput-object v0, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    #@22
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/notification/SystemConditionProviderService;-><init>()V

    #@3
    .line 50
    iput-object p0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Landroid/content/Context;

    #@5
    .line 51
    new-instance v0, Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/CountdownConditionProvider$Receiver;-><init>(Lcom/android/server/notification/CountdownConditionProvider;Lcom/android/server/notification/CountdownConditionProvider$Receiver;)V

    #@b
    iput-object v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    #@d
    .line 57
    sget-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    #@f
    if-eqz v0, :cond_0

    #@11
    const-string/jumbo v0, "ConditionProviders.CCP"

    #@14
    const-string/jumbo v1, "new CountdownConditionProvider()"

    #@17
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 56
    :cond_0
    return-void
.end method

.method private static final newCondition(JI)Landroid/service/notification/Condition;
    .locals 8
    .param p0, "time"    # J
    .param p2, "state"    # I

    #@0
    .prologue
    .line 163
    new-instance v0, Landroid/service/notification/Condition;

    #@2
    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(J)Landroid/net/Uri;

    #@5
    move-result-object v1

    #@6
    .line 164
    const-string/jumbo v2, ""

    #@9
    const-string/jumbo v3, ""

    #@c
    const-string/jumbo v4, ""

    #@f
    const/4 v5, 0x0

    #@10
    const/4 v7, 0x1

    #@11
    move v6, p2

    #@12
    .line 163
    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    #@15
    return-object v0
.end method

.method public static tryParseDescription(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "conditionUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 168
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    #@3
    move-result-wide v0

    #@4
    .line 169
    .local v0, "time":J
    const-wide/16 v4, 0x0

    #@6
    cmp-long v4, v0, v4

    #@8
    if-nez v4, :cond_0

    #@a
    const/4 v4, 0x0

    #@b
    return-object v4

    #@c
    .line 170
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@f
    move-result-wide v2

    #@10
    .line 172
    .local v2, "now":J
    const-wide/32 v4, 0xea60

    #@13
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    #@16
    move-result-object v6

    #@17
    .line 173
    .local v6, "span":Ljava/lang/CharSequence;
    const-string/jumbo v4, "Scheduled for %s, %s in the future (%s), now=%s"

    #@1a
    const/4 v5, 0x4

    #@1b
    new-array v5, v5, [Ljava/lang/Object;

    #@1d
    .line 174
    invoke-static {v0, v1}, Lcom/android/server/notification/CountdownConditionProvider;->ts(J)Ljava/lang/String;

    #@20
    move-result-object v7

    #@21
    const/4 v8, 0x0

    #@22
    aput-object v7, v5, v8

    #@24
    sub-long v8, v0, v2

    #@26
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@29
    move-result-object v7

    #@2a
    const/4 v8, 0x1

    #@2b
    aput-object v7, v5, v8

    #@2d
    const/4 v7, 0x2

    #@2e
    aput-object v6, v5, v7

    #@30
    invoke-static {v2, v3}, Lcom/android/server/notification/CountdownConditionProvider;->ts(J)Ljava/lang/String;

    #@33
    move-result-object v7

    #@34
    const/4 v8, 0x3

    #@35
    aput-object v7, v5, v8

    #@37
    .line 173
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    return-object v4
.end method


# virtual methods
.method public asInterface()Landroid/service/notification/IConditionProvider;
    .locals 1

    #@0
    .prologue
    .line 82
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/notification/CountdownConditionProvider;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

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
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/server/notification/CountdownConditionProvider;->attachBaseContext(Landroid/content/Context;)V

    #@3
    .line 71
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    .line 87
    const-string/jumbo v0, "    CountdownConditionProvider:"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 88
    const-string/jumbo v0, "      mConnected="

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    iget-boolean v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mConnected:Z

    #@e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@11
    .line 89
    const-string/jumbo v0, "      mTime="

    #@14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    iget-wide v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    #@19
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    #@1c
    .line 86
    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 62
    sget-object v0, Lcom/android/server/notification/CountdownConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public isValidConditionId(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "id"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 67
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public onBootComplete()V
    .locals 0

    #@0
    .prologue
    .line 76
    return-void
.end method

.method public onConnected()V
    .locals 4

    #@0
    .prologue
    .line 94
    sget-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "ConditionProviders.CCP"

    #@7
    const-string/jumbo v1, "onConnected"

    #@a
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Landroid/content/Context;

    #@f
    iget-object v1, p0, Lcom/android/server/notification/CountdownConditionProvider;->mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    #@11
    new-instance v2, Landroid/content/IntentFilter;

    #@13
    sget-object v3, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    #@15
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@18
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@1b
    .line 96
    const/4 v0, 0x1

    #@1c
    iput-boolean v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mConnected:Z

    #@1e
    .line 93
    return-void
.end method

.method public onDestroy()V
    .locals 2

    #@0
    .prologue
    .line 101
    invoke-super {p0}, Lcom/android/server/notification/SystemConditionProviderService;->onDestroy()V

    #@3
    .line 102
    sget-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    const-string/jumbo v0, "ConditionProviders.CCP"

    #@a
    const-string/jumbo v1, "onDestroy"

    #@d
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mConnected:Z

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 104
    iget-object v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Landroid/content/Context;

    #@16
    iget-object v1, p0, Lcom/android/server/notification/CountdownConditionProvider;->mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    #@18
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@1b
    .line 106
    :cond_1
    const/4 v0, 0x0

    #@1c
    iput-boolean v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mConnected:Z

    #@1e
    .line 100
    return-void
.end method

.method public onRequestConditions(I)V
    .locals 0
    .param p1, "relevance"    # I

    #@0
    .prologue
    .line 110
    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .locals 13
    .param p1, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 116
    sget-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "ConditionProviders.CCP"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "onSubscribe "

    #@10
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 117
    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    #@22
    move-result-wide v0

    #@23
    iput-wide v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    #@25
    .line 119
    iget-object v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Landroid/content/Context;

    #@27
    const-string/jumbo v1, "alarm"

    #@2a
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2d
    move-result-object v6

    #@2e
    .line 118
    check-cast v6, Landroid/app/AlarmManager;

    #@30
    .line 120
    .local v6, "alarms":Landroid/app/AlarmManager;
    new-instance v0, Landroid/content/Intent;

    #@32
    sget-object v1, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    #@34
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@37
    const-string/jumbo v1, "condition_id"

    #@3a
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@3d
    move-result-object v0

    #@3e
    .line 121
    const/high16 v1, 0x40000000    # 2.0f

    #@40
    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@43
    move-result-object v7

    #@44
    .line 122
    .local v7, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Landroid/content/Context;

    #@46
    const/16 v1, 0x64

    #@48
    .line 123
    const/high16 v4, 0x8000000

    #@4a
    .line 122
    invoke-static {v0, v1, v7, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@4d
    move-result-object v8

    #@4e
    .line 124
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v6, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@51
    .line 125
    iget-wide v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    #@53
    const-wide/16 v4, 0x0

    #@55
    cmp-long v0, v0, v4

    #@57
    if-lez v0, :cond_1

    #@59
    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5c
    move-result-wide v2

    #@5d
    .line 128
    .local v2, "now":J
    iget-wide v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    #@5f
    const-wide/32 v4, 0xea60

    #@62
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    #@65
    move-result-object v9

    #@66
    .line 129
    .local v9, "span":Ljava/lang/CharSequence;
    iget-wide v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    #@68
    cmp-long v0, v0, v2

    #@6a
    if-gtz v0, :cond_2

    #@6c
    .line 131
    iget-wide v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    #@6e
    invoke-static {v0, v1, v12}, Lcom/android/server/notification/CountdownConditionProvider;->newCondition(JI)Landroid/service/notification/Condition;

    #@71
    move-result-object v0

    #@72
    invoke-virtual {p0, v0}, Lcom/android/server/notification/CountdownConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    #@75
    .line 136
    :goto_0
    sget-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    #@77
    if-eqz v0, :cond_1

    #@79
    const-string/jumbo v1, "ConditionProviders.CCP"

    #@7c
    .line 137
    const-string/jumbo v4, "%s %s for %s, %s in the future (%s), now=%s"

    #@7f
    .line 136
    const/4 v0, 0x6

    #@80
    new-array v5, v0, [Ljava/lang/Object;

    #@82
    .line 138
    iget-wide v10, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    #@84
    cmp-long v0, v10, v2

    #@86
    if-gtz v0, :cond_3

    #@88
    const-string/jumbo v0, "Not scheduling"

    #@8b
    :goto_1
    aput-object v0, v5, v12

    #@8d
    .line 139
    sget-object v0, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    #@8f
    const/4 v10, 0x1

    #@90
    aput-object v0, v5, v10

    #@92
    iget-wide v10, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    #@94
    invoke-static {v10, v11}, Lcom/android/server/notification/CountdownConditionProvider;->ts(J)Ljava/lang/String;

    #@97
    move-result-object v0

    #@98
    const/4 v10, 0x2

    #@99
    aput-object v0, v5, v10

    #@9b
    iget-wide v10, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    #@9d
    sub-long/2addr v10, v2

    #@9e
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@a1
    move-result-object v0

    #@a2
    const/4 v10, 0x3

    #@a3
    aput-object v0, v5, v10

    #@a5
    const/4 v0, 0x4

    #@a6
    aput-object v9, v5, v0

    #@a8
    invoke-static {v2, v3}, Lcom/android/server/notification/CountdownConditionProvider;->ts(J)Ljava/lang/String;

    #@ab
    move-result-object v0

    #@ac
    const/4 v10, 0x5

    #@ad
    aput-object v0, v5, v10

    #@af
    .line 136
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b2
    move-result-object v0

    #@b3
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b6
    .line 115
    .end local v2    # "now":J
    .end local v9    # "span":Ljava/lang/CharSequence;
    :cond_1
    return-void

    #@b7
    .line 134
    .restart local v2    # "now":J
    .restart local v9    # "span":Ljava/lang/CharSequence;
    :cond_2
    iget-wide v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    #@b9
    invoke-virtual {v6, v12, v0, v1, v8}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    #@bc
    goto :goto_0

    #@bd
    .line 138
    :cond_3
    const-string/jumbo v0, "Scheduling"

    #@c0
    goto :goto_1
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .locals 0
    .param p1, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 144
    return-void
.end method
