.class Lcom/android/server/sip/SipWakeupTimer;
.super Landroid/content/BroadcastReceiver;
.source "SipWakeupTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;,
        Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "SipWakeupTimer"

.field private static final blacklist TRIGGER_TIME:Ljava/lang/String; = "TriggerTime"


# instance fields
.field private blacklist mAlarmManager:Landroid/app/AlarmManager;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEventQueue:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/android/server/sip/SipWakeupTimer$MyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;-><init>(Lcom/android/server/sip/SipWakeupTimer-IA;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    .line 53
    iput-object p1, p0, Lcom/android/server/sip/SipWakeupTimer;->mContext:Landroid/content/Context;

    .line 54
    nop

    .line 55
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mAlarmManager:Landroid/app/AlarmManager;

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "filter":Landroid/content/IntentFilter;
    const/4 v1, 0x2

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 59
    iput-object p2, p0, Lcom/android/server/sip/SipWakeupTimer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 60
    return-void
.end method

.method private blacklist cancelAlarm()V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    .line 87
    return-void
.end method

.method private blacklist execute(J)V
    .registers 9
    .param p1, "triggerTime"    # J

    .line 256
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->stopped()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_3e

    .line 258
    :cond_f
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 259
    .local v1, "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget-wide v2, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_28

    goto :goto_15

    .line 262
    :cond_28
    iput-wide p1, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    .line 263
    iget-wide v2, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    iget v4, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 266
    iget-object v2, p0, Lcom/android/server/sip/SipWakeupTimer;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 267
    .end local v1    # "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    goto :goto_15

    .line 272
    :cond_3a
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->scheduleNext()V

    .line 273
    return-void

    .line 256
    :cond_3e
    :goto_3e
    return-void
.end method

.method private blacklist getAction()Ljava/lang/String;
    .registers 2

    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist insertEvent(Lcom/android/server/sip/SipWakeupTimer$MyEvent;)V
    .registers 12
    .param p1, "event"    # Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 117
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 118
    iget v2, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 119
    iget-object v2, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v2, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 120
    return-void

    .line 122
    :cond_18
    iget-object v2, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 123
    .local v2, "firstEvent":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget v3, v2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    .line 124
    .local v3, "minPeriod":I
    iget v4, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    if-gt v3, v4, :cond_42

    .line 125
    iget v4, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    div-int/2addr v4, v3

    mul-int/2addr v4, v3

    iput v4, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    .line 126
    iget v4, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    .line 127
    .local v4, "interval":I
    iget-wide v5, v2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    sub-long/2addr v5, v0

    long-to-int v5, v5

    sub-int/2addr v4, v5

    .line 128
    div-int v5, v4, v3

    mul-int/2addr v5, v3

    .line 129
    .end local v4    # "interval":I
    .local v5, "interval":I
    iget-wide v6, v2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 130
    iget-object v4, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v4, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v5    # "interval":I
    goto :goto_63

    .line 132
    :cond_42
    iget v4, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    .line 133
    .local v4, "triggerTime":J
    iget-wide v6, v2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_59

    .line 134
    iget-wide v6, v2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    iput-wide v6, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 135
    iget-wide v6, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    iget v8, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    int-to-long v8, v8

    sub-long/2addr v6, v8

    iput-wide v6, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    goto :goto_5b

    .line 137
    :cond_59
    iput-wide v4, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 139
    :goto_5b
    iget-object v6, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v6, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->recalculatePeriods()V

    .line 142
    .end local v4    # "triggerTime":J
    :goto_63
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 334
    const-string v0, "SipWakeupTimer"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void
.end method

.method private blacklist printQueue()V
    .registers 7

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 241
    .local v2, "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": scheduled at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 242
    invoke-direct {p0, v4, v5}, Lcom/android/server/sip/SipWakeupTimer;->showTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": last at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    .line 243
    invoke-direct {p0, v4, v5}, Lcom/android/server/sip/SipWakeupTimer;->showTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-direct {p0, v3}, Lcom/android/server/sip/SipWakeupTimer;->log(Ljava/lang/String;)V

    .line 244
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x5

    if-lt v0, v3, :cond_4f

    goto :goto_50

    .line 245
    .end local v2    # "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    :cond_4f
    goto :goto_7

    .line 246
    :cond_50
    :goto_50
    iget-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-le v1, v0, :cond_5e

    .line 247
    const-string v1, "     ....."

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipWakeupTimer;->log(Ljava/lang/String;)V

    goto :goto_65

    .line 248
    :cond_5e
    if-nez v0, :cond_65

    .line 249
    const-string v1, "     <empty>"

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipWakeupTimer;->log(Ljava/lang/String;)V

    .line 251
    :cond_65
    :goto_65
    return-void
.end method

.method private blacklist recalculatePeriods()V
    .registers 11

    .line 90
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 92
    :cond_9
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 93
    .local v0, "firstEvent":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget v1, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    .line 94
    .local v1, "minPeriod":I
    iget-wide v2, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 95
    .local v2, "minTriggerTime":J
    iget-object v4, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 96
    .local v5, "e":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget v6, v5, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    div-int/2addr v6, v1

    mul-int/2addr v6, v1

    iput v6, v5, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    .line 97
    iget-wide v6, v5, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    iget v8, v5, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    sub-long/2addr v6, v2

    long-to-int v6, v6

    .line 99
    .local v6, "interval":I
    div-int v7, v6, v1

    mul-int/2addr v7, v1

    .line 100
    .end local v6    # "interval":I
    .local v7, "interval":I
    int-to-long v8, v7

    add-long/2addr v8, v2

    iput-wide v8, v5, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 101
    .end local v5    # "e":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .end local v7    # "interval":I
    goto :goto_1b

    .line 102
    :cond_3d
    new-instance v4, Ljava/util/TreeSet;

    iget-object v5, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    .line 103
    invoke-virtual {v5}, Ljava/util/TreeSet;->comparator()Ljava/util/Comparator;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 104
    .local v4, "newQueue":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/sip/SipWakeupTimer$MyEvent;>;"
    iget-object v5, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object v5, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->clear()V

    .line 106
    iput-object v4, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    .line 111
    return-void
.end method

.method private blacklist scheduleNext()V
    .registers 8

    .line 208
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->stopped()Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_47

    .line 210
    :cond_f
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_3f

    .line 214
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 215
    .local v0, "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "TriggerTime"

    iget-wide v3, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 217
    iget-object v2, p0, Lcom/android/server/sip/SipWakeupTimer;->mContext:Landroid/content/Context;

    .line 218
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    .line 220
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    iget-wide v5, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 222
    return-void

    .line 211
    .end local v0    # "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_3f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "pendingIntent is not null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_47
    :goto_47
    return-void
.end method

.method private blacklist showTime(J)Ljava/lang/String;
    .registers 9
    .param p1, "time"    # J

    .line 280
    const-wide/16 v0, 0x3e8

    rem-long v2, p1, v0

    long-to-int v2, v2

    .line 281
    .local v2, "ms":I
    div-long v0, p1, v0

    long-to-int v0, v0

    .line 282
    .local v0, "s":I
    div-int/lit8 v1, v0, 0x3c

    .line 283
    .local v1, "m":I
    rem-int/lit8 v0, v0, 0x3c

    .line 284
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%d.%d.%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private blacklist stopped()Z
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    if-nez v0, :cond_6

    .line 78
    const/4 v0, 0x1

    return v0

    .line 80
    :cond_6
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public declared-synchronized blacklist cancel(Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "callback"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 178
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->stopped()Z

    move-result v0

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_66

    .line 181
    :cond_10
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 182
    .local v0, "firstEvent":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 183
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/sip/SipWakeupTimer$MyEvent;>;"
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 185
    .local v2, "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget-object v3, v2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mCallback:Ljava/lang/Runnable;

    if-ne v3, p1, :cond_31

    .line 186
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 189
    .end local v2    # "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .end local p0    # "this":Lcom/android/server/sip/SipWakeupTimer;
    :cond_31
    goto :goto_1e

    .line 190
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/sip/SipWakeupTimer$MyEvent;>;"
    :cond_32
    iget-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 191
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->cancelAlarm()V

    goto :goto_64

    .line 192
    :cond_3e
    iget-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_64

    .line 193
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->cancelAlarm()V

    .line 194
    iget-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    move-object v0, v1

    .line 195
    iget v1, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    iput v1, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    .line 196
    iget-wide v1, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    iget v3, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 198
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->recalculatePeriods()V

    .line 199
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->scheduleNext()V
    :try_end_64
    .catchall {:try_start_1 .. :try_end_64} :catchall_68

    .line 205
    :cond_64
    :goto_64
    monitor-exit p0

    return-void

    .line 178
    .end local v0    # "firstEvent":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    :cond_66
    :goto_66
    monitor-exit p0

    return-void

    .line 177
    .end local p1    # "callback":Ljava/lang/Runnable;
    :catchall_68
    move-exception p1

    :try_start_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw p1
.end method

.method public declared-synchronized whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    monitor-enter p0

    .line 227
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "action":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 229
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "TriggerTime"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    .line 231
    const-string v1, "TriggerTime"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 232
    .local v1, "triggerTime":J
    invoke-direct {p0, v1, v2}, Lcom/android/server/sip/SipWakeupTimer;->execute(J)V

    .line 233
    .end local v1    # "triggerTime":J
    goto :goto_40

    .line 234
    .end local p0    # "this":Lcom/android/server/sip/SipWakeupTimer;
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: unrecognized intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipWakeupTimer;->log(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    .line 236
    :goto_40
    monitor-exit p0

    return-void

    .line 226
    .end local v0    # "action":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public declared-synchronized blacklist set(ILjava/lang/Runnable;)V
    .registers 8
    .param p1, "period"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 152
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->stopped()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_30

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    .line 154
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 155
    .local v0, "now":J
    new-instance v2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/android/server/sip/SipWakeupTimer$MyEvent;-><init>(ILjava/lang/Runnable;J)V

    .line 156
    .local v2, "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    invoke-direct {p0, v2}, Lcom/android/server/sip/SipWakeupTimer;->insertEvent(Lcom/android/server/sip/SipWakeupTimer$MyEvent;)V

    .line 158
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_2c

    .line 159
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_29

    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->cancelAlarm()V

    .line 160
    .end local p0    # "this":Lcom/android/server/sip/SipWakeupTimer;
    :cond_29
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->scheduleNext()V

    .line 163
    :cond_2c
    iget-wide v3, v2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_30

    .line 170
    .local v3, "triggerTime":J
    monitor-exit p0

    return-void

    .line 151
    .end local v0    # "now":J
    .end local v2    # "event":Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .end local v3    # "triggerTime":J
    .end local p1    # "period":I
    .end local p2    # "callback":Ljava/lang/Runnable;
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public declared-synchronized blacklist stop()V
    .registers 4

    monitor-enter p0

    .line 66
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 68
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 69
    iput-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    .line 71
    .end local p0    # "this":Lcom/android/server/sip/SipWakeupTimer;
    :cond_14
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 72
    iput-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 73
    monitor-exit p0

    return-void

    .line 65
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method
