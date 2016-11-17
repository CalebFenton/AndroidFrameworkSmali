.class Lcom/android/server/sip/SipWakeupTimer;
.super Landroid/content/BroadcastReceiver;
.source "SipWakeupTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sip/SipWakeupTimer$MyEvent;,
        Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "SipWakeupTimer"

.field private static final TRIGGER_TIME:Ljava/lang/String; = "TriggerTime"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mEventQueue:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/android/server/sip/SipWakeupTimer$MyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    .line 46
    new-instance v1, Ljava/util/TreeSet;

    #@5
    new-instance v2, Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;

    #@7
    const/4 v3, 0x0

    #@8
    invoke-direct {v2, v3}, Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;-><init>(Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;)V

    #@b
    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    #@e
    .line 45
    iput-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@10
    .line 53
    iput-object p1, p0, Lcom/android/server/sip/SipWakeupTimer;->mContext:Landroid/content/Context;

    #@12
    .line 55
    const-string/jumbo v1, "alarm"

    #@15
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    .line 54
    check-cast v1, Landroid/app/AlarmManager;

    #@1b
    iput-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mAlarmManager:Landroid/app/AlarmManager;

    #@1d
    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    #@1f
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->getAction()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@26
    .line 58
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@29
    .line 59
    iput-object p2, p0, Lcom/android/server/sip/SipWakeupTimer;->mExecutor:Ljava/util/concurrent/Executor;

    #@2b
    .line 52
    return-void
.end method

.method private cancelAlarm()V
    .locals 2

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mAlarmManager:Landroid/app/AlarmManager;

    #@2
    iget-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    #@4
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@7
    .line 86
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    #@a
    .line 84
    return-void
.end method

.method private execute(J)V
    .locals 7
    .param p1, "triggerTime"    # J

    #@0
    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->stopped()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    iget-object v2, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@8
    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    :cond_0
    return-void

    #@f
    .line 258
    :cond_1
    iget-object v2, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@11
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "event$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_3

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    #@21
    .line 259
    .local v0, "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget-wide v2, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    #@23
    cmp-long v2, v2, p1

    #@25
    if-nez v2, :cond_2

    #@27
    .line 262
    iput-wide p1, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    #@29
    .line 263
    iget-wide v2, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    #@2b
    iget v4, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    #@2d
    int-to-long v4, v4

    #@2e
    add-long/2addr v2, v4

    #@2f
    iput-wide v2, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    #@31
    .line 266
    iget-object v2, p0, Lcom/android/server/sip/SipWakeupTimer;->mExecutor:Ljava/util/concurrent/Executor;

    #@33
    iget-object v3, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mCallback:Ljava/lang/Runnable;

    #@35
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@38
    goto :goto_0

    #@39
    .line 272
    .end local v0    # "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->scheduleNext()V

    #@3c
    .line 253
    return-void
.end method

.method private getAction()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/server/sip/SipWakeupTimer;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private insertEvent(Lcom/android/server/sip/SipWakeupTimer$MyEvent;)V
    .locals 12
    .param p1, "event"    # Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    #@0
    .prologue
    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v4

    #@4
    .line 117
    .local v4, "now":J
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@6
    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 118
    iget v3, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    #@e
    int-to-long v8, v3

    #@f
    add-long/2addr v8, v4

    #@10
    iput-wide v8, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    #@12
    .line 119
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@14
    invoke-virtual {v3, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@17
    .line 120
    return-void

    #@18
    .line 122
    :cond_0
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@1a
    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    #@20
    .line 123
    .local v0, "firstEvent":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget v2, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    #@22
    .line 124
    .local v2, "minPeriod":I
    iget v3, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    #@24
    if-gt v2, v3, :cond_1

    #@26
    .line 125
    iget v3, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    #@28
    div-int/2addr v3, v2

    #@29
    mul-int/2addr v3, v2

    #@2a
    iput v3, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    #@2c
    .line 126
    iget v1, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    #@2e
    .line 127
    .local v1, "interval":I
    iget-wide v8, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    #@30
    sub-long/2addr v8, v4

    #@31
    long-to-int v3, v8

    #@32
    sub-int/2addr v1, v3

    #@33
    .line 128
    div-int v3, v1, v2

    #@35
    mul-int v1, v3, v2

    #@37
    .line 129
    iget-wide v8, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    #@39
    int-to-long v10, v1

    #@3a
    add-long/2addr v8, v10

    #@3b
    iput-wide v8, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    #@3d
    .line 130
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@3f
    invoke-virtual {v3, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@42
    .line 115
    .end local v1    # "interval":I
    :goto_0
    return-void

    #@43
    .line 132
    :cond_1
    iget v3, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    #@45
    int-to-long v8, v3

    #@46
    add-long v6, v4, v8

    #@48
    .line 133
    .local v6, "triggerTime":J
    iget-wide v8, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    #@4a
    cmp-long v3, v8, v6

    #@4c
    if-gez v3, :cond_2

    #@4e
    .line 134
    iget-wide v8, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    #@50
    iput-wide v8, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    #@52
    .line 135
    iget-wide v8, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    #@54
    iget v3, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    #@56
    int-to-long v10, v3

    #@57
    sub-long/2addr v8, v10

    #@58
    iput-wide v8, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    #@5a
    .line 139
    :goto_1
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@5c
    invoke-virtual {v3, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@5f
    .line 140
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->recalculatePeriods()V

    #@62
    goto :goto_0

    #@63
    .line 137
    :cond_2
    iput-wide v6, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    #@65
    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 334
    const-string/jumbo v0, "SipWakeupTimer"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 333
    return-void
.end method

.method private printQueue()V
    .locals 6

    #@0
    .prologue
    .line 239
    const/4 v0, 0x0

    #@1
    .line 240
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v2

    #@7
    .local v2, "event$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_1

    #@d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    #@13
    .line 241
    .local v1, "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "     "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    const-string/jumbo v4, ": scheduled at "

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    .line 242
    iget-wide v4, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    #@2c
    invoke-direct {p0, v4, v5}, Lcom/android/server/sip/SipWakeupTimer;->showTime(J)Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    .line 242
    const-string/jumbo v4, ": last at "

    #@37
    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    .line 243
    iget-wide v4, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    #@3d
    invoke-direct {p0, v4, v5}, Lcom/android/server/sip/SipWakeupTimer;->showTime(J)Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-direct {p0, v3}, Lcom/android/server/sip/SipWakeupTimer;->log(Ljava/lang/String;)V

    #@4c
    .line 244
    add-int/lit8 v0, v0, 0x1

    #@4e
    const/4 v3, 0x5

    #@4f
    if-lt v0, v3, :cond_0

    #@51
    .line 246
    .end local v1    # "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    :cond_1
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@53
    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    #@56
    move-result v3

    #@57
    if-le v3, v0, :cond_3

    #@59
    .line 247
    const-string/jumbo v3, "     ....."

    #@5c
    invoke-direct {p0, v3}, Lcom/android/server/sip/SipWakeupTimer;->log(Ljava/lang/String;)V

    #@5f
    .line 238
    :cond_2
    :goto_0
    return-void

    #@60
    .line 248
    :cond_3
    if-nez v0, :cond_2

    #@62
    .line 249
    const-string/jumbo v3, "     <empty>"

    #@65
    invoke-direct {p0, v3}, Lcom/android/server/sip/SipWakeupTimer;->log(Ljava/lang/String;)V

    #@68
    goto :goto_0
.end method

.method private recalculatePeriods()V
    .locals 12

    #@0
    .prologue
    .line 90
    iget-object v8, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@2
    invoke-virtual {v8}, Ljava/util/TreeSet;->isEmpty()Z

    #@5
    move-result v8

    #@6
    if-eqz v8, :cond_0

    #@8
    return-void

    #@9
    .line 92
    :cond_0
    iget-object v8, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@b
    invoke-virtual {v8}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    #@11
    .line 93
    .local v2, "firstEvent":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget v4, v2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    #@13
    .line 94
    .local v4, "minPeriod":I
    iget-wide v6, v2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    #@15
    .line 95
    .local v6, "minTriggerTime":J
    iget-object v8, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@17
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v1

    #@1b
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v8

    #@1f
    if-eqz v8, :cond_1

    #@21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    #@27
    .line 96
    .local v0, "e":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget v8, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    #@29
    div-int/2addr v8, v4

    #@2a
    mul-int/2addr v8, v4

    #@2b
    iput v8, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    #@2d
    .line 97
    iget-wide v8, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    #@2f
    iget v10, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    #@31
    int-to-long v10, v10

    #@32
    add-long/2addr v8, v10

    #@33
    sub-long/2addr v8, v6

    #@34
    long-to-int v3, v8

    #@35
    .line 99
    .local v3, "interval":I
    div-int v8, v3, v4

    #@37
    mul-int v3, v8, v4

    #@39
    .line 100
    int-to-long v8, v3

    #@3a
    add-long/2addr v8, v6

    #@3b
    iput-wide v8, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    #@3d
    goto :goto_0

    #@3e
    .line 102
    .end local v0    # "e":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .end local v3    # "interval":I
    :cond_1
    new-instance v5, Ljava/util/TreeSet;

    #@40
    .line 103
    iget-object v8, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@42
    invoke-virtual {v8}, Ljava/util/TreeSet;->comparator()Ljava/util/Comparator;

    #@45
    move-result-object v8

    #@46
    .line 102
    invoke-direct {v5, v8}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    #@49
    .line 104
    .local v5, "newQueue":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/sip/SipWakeupTimer$MyEvent;>;"
    iget-object v8, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@4b
    invoke-virtual {v5, v8}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    #@4e
    .line 105
    iget-object v8, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@50
    invoke-virtual {v8}, Ljava/util/TreeSet;->clear()V

    #@53
    .line 106
    iput-object v5, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@55
    .line 89
    return-void
.end method

.method private scheduleNext()V
    .locals 7

    #@0
    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->stopped()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@8
    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    :cond_0
    return-void

    #@f
    .line 210
    :cond_1
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    #@11
    if-eqz v3, :cond_2

    #@13
    .line 211
    new-instance v3, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v4, "pendingIntent is not null!"

    #@18
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v3

    #@1c
    .line 214
    :cond_2
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@1e
    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    #@24
    .line 215
    .local v0, "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    new-instance v1, Landroid/content/Intent;

    #@26
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->getAction()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2d
    .line 216
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "TriggerTime"

    #@30
    iget-wide v4, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    #@32
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@35
    .line 218
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mContext:Landroid/content/Context;

    #@37
    const/4 v4, 0x0

    #@38
    .line 219
    const/high16 v5, 0x8000000

    #@3a
    .line 218
    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@3d
    move-result-object v2

    #@3e
    .line 217
    iput-object v2, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    #@40
    .line 220
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mAlarmManager:Landroid/app/AlarmManager;

    #@42
    .line 221
    iget-wide v4, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    #@44
    .line 220
    const/4 v6, 0x2

    #@45
    invoke-virtual {v3, v6, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@48
    .line 207
    return-void
.end method

.method private showTime(J)Ljava/lang/String;
    .locals 9
    .param p1, "time"    # J

    #@0
    .prologue
    const-wide/16 v6, 0x3e8

    #@2
    .line 280
    rem-long v4, p1, v6

    #@4
    long-to-int v1, v4

    #@5
    .line 281
    .local v1, "ms":I
    div-long v4, p1, v6

    #@7
    long-to-int v2, v4

    #@8
    .line 282
    .local v2, "s":I
    div-int/lit8 v0, v2, 0x3c

    #@a
    .line 283
    .local v0, "m":I
    rem-int/lit8 v2, v2, 0x3c

    #@c
    .line 284
    const-string/jumbo v3, "%d.%d.%d"

    #@f
    const/4 v4, 0x3

    #@10
    new-array v4, v4, [Ljava/lang/Object;

    #@12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v5

    #@16
    const/4 v6, 0x0

    #@17
    aput-object v5, v4, v6

    #@19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v5

    #@1d
    const/4 v6, 0x1

    #@1e
    aput-object v5, v4, v6

    #@20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v5

    #@24
    const/4 v6, 0x2

    #@25
    aput-object v5, v4, v6

    #@27
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    return-object v3
.end method

.method private stopped()Z
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 78
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 80
    :cond_0
    const/4 v0, 0x0

    #@7
    return v0
.end method


# virtual methods
.method public declared-synchronized cancel(Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "callback"    # Ljava/lang/Runnable;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 178
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->stopped()Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@9
    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    :cond_0
    monitor-exit p0

    #@10
    return-void

    #@11
    .line 181
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@13
    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    #@19
    .line 182
    .local v1, "firstEvent":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@1b
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v2

    #@1f
    .line 183
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/sip/SipWakeupTimer$MyEvent;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v3

    #@23
    .line 182
    if-eqz v3, :cond_3

    #@25
    .line 184
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    #@2b
    .line 185
    .local v0, "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget-object v3, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mCallback:Ljava/lang/Runnable;

    #@2d
    if-ne v3, p1, :cond_2

    #@2f
    .line 186
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    goto :goto_0

    #@33
    .end local v0    # "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .end local v1    # "firstEvent":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/sip/SipWakeupTimer$MyEvent;>;"
    :catchall_0
    move-exception v3

    #@34
    monitor-exit p0

    #@35
    throw v3

    #@36
    .line 190
    .restart local v1    # "firstEvent":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/sip/SipWakeupTimer$MyEvent;>;"
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@38
    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    #@3b
    move-result v3

    #@3c
    if-eqz v3, :cond_5

    #@3e
    .line 191
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->cancelAlarm()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@41
    :cond_4
    :goto_1
    monitor-exit p0

    #@42
    .line 177
    return-void

    #@43
    .line 192
    :cond_5
    :try_start_3
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@45
    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    #@48
    move-result-object v3

    #@49
    if-eq v3, v1, :cond_4

    #@4b
    .line 193
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->cancelAlarm()V

    #@4e
    .line 194
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@50
    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    #@53
    move-result-object v1

    #@54
    .end local v1    # "firstEvent":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    check-cast v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    #@56
    .line 195
    .restart local v1    # "firstEvent":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget v3, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    #@58
    iput v3, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    #@5a
    .line 196
    iget-wide v4, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    #@5c
    .line 197
    iget v3, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    #@5e
    int-to-long v6, v3

    #@5f
    .line 196
    add-long/2addr v4, v6

    #@60
    iput-wide v4, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    #@62
    .line 198
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->recalculatePeriods()V

    #@65
    .line 199
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->scheduleNext()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@68
    goto :goto_1
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 227
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 228
    .local v0, "action":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->getAction()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 229
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v4, "TriggerTime"

    #@16
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@19
    move-result v1

    #@1a
    .line 228
    if-eqz v1, :cond_0

    #@1c
    .line 230
    const/4 v1, 0x0

    #@1d
    iput-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    #@1f
    .line 231
    const-string/jumbo v1, "TriggerTime"

    #@22
    const-wide/16 v4, -0x1

    #@24
    invoke-virtual {p2, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    #@27
    move-result-wide v2

    #@28
    .line 232
    .local v2, "triggerTime":J
    invoke-direct {p0, v2, v3}, Lcom/android/server/sip/SipWakeupTimer;->execute(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .end local v2    # "triggerTime":J
    :goto_0
    monitor-exit p0

    #@2c
    .line 225
    return-void

    #@2d
    .line 234
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v4, "onReceive: unrecognized intent: "

    #@35
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipWakeupTimer;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    goto :goto_0

    #@45
    .end local v0    # "action":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@46
    monitor-exit p0

    #@47
    throw v1
.end method

.method public declared-synchronized set(ILjava/lang/Runnable;)V
    .locals 7
    .param p1, "period"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 152
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->stopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    monitor-exit p0

    #@8
    return-void

    #@9
    .line 154
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@c
    move-result-wide v2

    #@d
    .line 155
    .local v2, "now":J
    new-instance v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    #@f
    invoke-direct {v0, p1, p2, v2, v3}, Lcom/android/server/sip/SipWakeupTimer$MyEvent;-><init>(ILjava/lang/Runnable;J)V

    #@12
    .line 156
    .local v0, "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipWakeupTimer;->insertEvent(Lcom/android/server/sip/SipWakeupTimer$MyEvent;)V

    #@15
    .line 158
    iget-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@17
    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    if-ne v1, v0, :cond_2

    #@1d
    .line 159
    iget-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@1f
    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    #@22
    move-result v1

    #@23
    const/4 v6, 0x1

    #@24
    if-le v1, v6, :cond_1

    #@26
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->cancelAlarm()V

    #@29
    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->scheduleNext()V

    #@2c
    .line 163
    :cond_2
    iget-wide v4, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    .local v4, "triggerTime":J
    monitor-exit p0

    #@2f
    .line 151
    return-void

    #@30
    .end local v0    # "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .end local v2    # "now":J
    .end local v4    # "triggerTime":J
    :catchall_0
    move-exception v1

    #@31
    monitor-exit p0

    #@32
    throw v1
.end method

.method public declared-synchronized stop()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@6
    .line 67
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 68
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mAlarmManager:Landroid/app/AlarmManager;

    #@c
    iget-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    #@e
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@11
    .line 69
    const/4 v0, 0x0

    #@12
    iput-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    #@14
    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    #@16
    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    #@19
    .line 72
    const/4 v0, 0x0

    #@1a
    iput-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit p0

    #@1d
    .line 65
    return-void

    #@1e
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0
.end method
