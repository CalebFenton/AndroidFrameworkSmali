.class public Lcom/android/internal/midi/EventScheduler;
.super Ljava/lang/Object;
.source "EventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/midi/EventScheduler$FastEventQueue;,
        Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    }
.end annotation


# static fields
.field private static final NANOS_PER_MILLI:J = 0xf4240L


# instance fields
.field private mClosed:Z

.field private volatile mEventBuffer:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/midi/EventScheduler$FastEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

.field private final mLock:Ljava/lang/Object;

.field private mMaxPoolSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    #@a
    .line 33
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    #@d
    .line 34
    const/16 v0, 0xc8

    #@f
    iput v0, p0, Lcom/android/internal/midi/EventScheduler;->mMaxPoolSize:I

    #@11
    .line 38
    new-instance v0, Ljava/util/TreeMap;

    #@13
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    #@18
    .line 37
    return-void
.end method

.method private removeNextEventLocked(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .locals 5
    .param p1, "lowestTime"    # J

    #@0
    .prologue
    .line 172
    iget-object v2, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    #@2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5
    move-result-object v3

    #@6
    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    #@c
    .line 174
    .local v1, "list":Lcom/android/internal/midi/EventScheduler$FastEventQueue;
    invoke-virtual {v1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->size()I

    #@f
    move-result v2

    #@10
    const/4 v3, 0x1

    #@11
    if-ne v2, v3, :cond_0

    #@13
    .line 175
    iget-object v2, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    #@15
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@18
    move-result-object v3

    #@19
    invoke-interface {v2, v3}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 177
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->remove()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    #@1f
    move-result-object v0

    #@20
    .line 178
    .local v0, "event":Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    return-object v0
.end method


# virtual methods
.method public add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    #@0
    .prologue
    .line 152
    iget-object v4, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    #@5
    invoke-virtual {p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->getTimestamp()J

    #@8
    move-result-wide v6

    #@9
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@c
    move-result-object v5

    #@d
    invoke-interface {v1, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    #@13
    .line 154
    .local v0, "list":Lcom/android/internal/midi/EventScheduler$FastEventQueue;
    if-nez v0, :cond_2

    #@15
    .line 155
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    #@17
    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    const-wide v2, 0x7fffffffffffffffL

    #@22
    .line 157
    .local v2, "lowestTime":J
    :goto_0
    new-instance v0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    #@24
    .end local v0    # "list":Lcom/android/internal/midi/EventScheduler$FastEventQueue;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;-><init>(Lcom/android/internal/midi/EventScheduler;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    #@27
    .line 158
    .restart local v0    # "list":Lcom/android/internal/midi/EventScheduler$FastEventQueue;
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    #@29
    invoke-virtual {p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->getTimestamp()J

    #@2c
    move-result-wide v6

    #@2d
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@30
    move-result-object v5

    #@31
    invoke-interface {v1, v5, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    .line 161
    invoke-virtual {p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->getTimestamp()J

    #@37
    move-result-wide v6

    #@38
    cmp-long v1, v6, v2

    #@3a
    if-gez v1, :cond_0

    #@3c
    .line 162
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    #@3e
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    .end local v2    # "lowestTime":J
    :cond_0
    :goto_1
    monitor-exit v4

    #@42
    .line 151
    return-void

    #@43
    .line 156
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    #@45
    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    check-cast v1, Ljava/lang/Long;

    #@4b
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@4e
    move-result-wide v2

    #@4f
    .restart local v2    # "lowestTime":J
    goto :goto_0

    #@50
    .line 165
    .end local v2    # "lowestTime":J
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    goto :goto_1

    #@54
    .line 152
    .end local v0    # "list":Lcom/android/internal/midi/EventScheduler$FastEventQueue;
    :catchall_0
    move-exception v1

    #@55
    monitor-exit v4

    #@56
    throw v1
.end method

.method public addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 137
    new-instance v0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    #@6
    invoke-direct {v0, p0, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;-><init>(Lcom/android/internal/midi/EventScheduler;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    #@9
    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    #@b
    .line 135
    :cond_0
    :goto_0
    return-void

    #@c
    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    #@e
    invoke-virtual {v0}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->size()I

    #@11
    move-result v0

    #@12
    iget v1, p0, Lcom/android/internal/midi/EventScheduler;->mMaxPoolSize:I

    #@14
    if-ge v0, v1, :cond_0

    #@16
    .line 141
    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    #@18
    invoke-virtual {v0, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    #@1b
    goto :goto_0
.end method

.method public close()V
    .locals 2

    #@0
    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 247
    const/4 v0, 0x1

    #@4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/midi/EventScheduler;->mClosed:Z

    #@6
    .line 248
    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 245
    return-void

    #@d
    .line 246
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method protected flush()V
    .locals 1

    #@0
    .prologue
    .line 242
    new-instance v0, Ljava/util/TreeMap;

    #@2
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@5
    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    #@7
    .line 240
    return-void
.end method

.method public getNextEvent(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .locals 5
    .param p1, "time"    # J

    #@0
    .prologue
    .line 188
    const/4 v0, 0x0

    #@1
    .line 189
    .local v0, "event":Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    iget-object v4, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v4

    #@4
    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    #@6
    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 191
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    #@e
    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/lang/Long;

    #@14
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@17
    move-result-wide v2

    #@18
    .line 193
    .local v2, "lowestTime":J
    cmp-long v1, v2, p1

    #@1a
    if-gtz v1, :cond_0

    #@1c
    .line 194
    invoke-direct {p0, v2, v3}, Lcom/android/internal/midi/EventScheduler;->removeNextEventLocked(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v0

    #@20
    .end local v0    # "event":Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .end local v2    # "lowestTime":J
    :cond_0
    monitor-exit v4

    #@21
    .line 199
    return-object v0

    #@22
    .line 189
    .restart local v0    # "event":Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v4

    #@24
    throw v1
.end method

.method public removeEventfromPool()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .locals 3

    #@0
    .prologue
    .line 123
    const/4 v0, 0x0

    #@1
    .line 124
    .local v0, "event":Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    #@7
    invoke-virtual {v1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->size()I

    #@a
    move-result v1

    #@b
    const/4 v2, 0x1

    #@c
    if-le v1, v2, :cond_0

    #@e
    .line 125
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->remove()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    #@13
    move-result-object v0

    #@14
    .line 127
    .end local v0    # "event":Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    :cond_0
    return-object v0
.end method

.method public waitNextEvent()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 211
    const/4 v2, 0x0

    #@1
    .line 212
    .local v2, "event":Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    move-object/from16 v0, p0

    #@3
    iget-object v12, v0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v12

    #@6
    .line 213
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    #@8
    iget-boolean v3, v0, Lcom/android/internal/midi/EventScheduler;->mClosed:Z

    #@a
    if-nez v3, :cond_0

    #@c
    .line 214
    const-wide/32 v6, 0x7fffffff

    #@f
    .line 215
    .local v6, "millisToWait":J
    move-object/from16 v0, p0

    #@11
    iget-object v3, v0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    #@13
    invoke-interface {v3}, Ljava/util/SortedMap;->isEmpty()Z

    #@16
    move-result v3

    #@17
    if-nez v3, :cond_2

    #@19
    .line 216
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@1c
    move-result-wide v10

    #@1d
    .line 217
    .local v10, "now":J
    move-object/from16 v0, p0

    #@1f
    iget-object v3, v0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    #@21
    invoke-interface {v3}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Ljava/lang/Long;

    #@27
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@2a
    move-result-wide v4

    #@2b
    .line 219
    .local v4, "lowestTime":J
    cmp-long v3, v4, v10

    #@2d
    if-gtz v3, :cond_1

    #@2f
    .line 220
    move-object/from16 v0, p0

    #@31
    invoke-direct {v0, v4, v5}, Lcom/android/internal/midi/EventScheduler;->removeNextEventLocked(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result-object v2

    #@35
    .end local v2    # "event":Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .end local v4    # "lowestTime":J
    .end local v6    # "millisToWait":J
    .end local v10    # "now":J
    :cond_0
    monitor-exit v12

    #@36
    .line 237
    return-object v2

    #@37
    .line 224
    .restart local v2    # "event":Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .restart local v4    # "lowestTime":J
    .restart local v6    # "millisToWait":J
    .restart local v10    # "now":J
    :cond_1
    sub-long v8, v4, v10

    #@39
    .line 227
    .local v8, "nanosToWait":J
    const-wide/32 v14, 0xf4240

    #@3c
    :try_start_1
    div-long v14, v8, v14

    #@3e
    const-wide/16 v16, 0x1

    #@40
    add-long v6, v16, v14

    #@42
    .line 229
    const-wide/32 v14, 0x7fffffff

    #@45
    cmp-long v3, v6, v14

    #@47
    if-lez v3, :cond_2

    #@49
    .line 230
    const-wide/32 v6, 0x7fffffff

    #@4c
    .line 234
    .end local v4    # "lowestTime":J
    .end local v8    # "nanosToWait":J
    .end local v10    # "now":J
    :cond_2
    move-object/from16 v0, p0

    #@4e
    iget-object v3, v0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    #@50
    long-to-int v13, v6

    #@51
    int-to-long v14, v13

    #@52
    invoke-virtual {v3, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    goto :goto_0

    #@56
    .line 212
    .end local v6    # "millisToWait":J
    :catchall_0
    move-exception v3

    #@57
    monitor-exit v12

    #@58
    throw v3
.end method
