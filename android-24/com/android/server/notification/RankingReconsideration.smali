.class public abstract Lcom/android/server/notification/RankingReconsideration;
.super Ljava/lang/Object;
.source "RankingReconsideration.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final CANCELLED:I = 0x3

.field private static final DONE:I = 0x2

.field private static final IMMEDIATE:J = 0x0L

.field private static final RUNNING:I = 0x1

.field private static final START:I


# instance fields
.field private mDelay:J

.field protected mKey:Ljava/lang/String;

.field private mState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    const-wide/16 v0, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/notification/RankingReconsideration;-><init>(Ljava/lang/String;J)V

    #@5
    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "delay"    # J

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iput-wide p2, p0, Lcom/android/server/notification/RankingReconsideration;->mDelay:J

    #@5
    .line 43
    iput-object p1, p0, Lcom/android/server/notification/RankingReconsideration;->mKey:Ljava/lang/String;

    #@7
    .line 44
    const/4 v0, 0x0

    #@8
    iput v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    #@a
    .line 41
    return-void
.end method


# virtual methods
.method public abstract applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
.end method

.method public cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 69
    iget v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 70
    const/4 v0, 0x3

    #@6
    iput v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    #@8
    .line 71
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 73
    :cond_0
    return v1
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/server/notification/RankingReconsideration;->mDelay:J

    #@2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@4
    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/notification/RankingReconsideration;->mKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isCancelled()Z
    .locals 2

    #@0
    .prologue
    .line 77
    iget v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    #@2
    const/4 v1, 0x3

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

.method public isDone()Z
    .locals 2

    #@0
    .prologue
    .line 81
    iget v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

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

.method public run()V
    .locals 1

    #@0
    .prologue
    .line 52
    iget v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 53
    const/4 v0, 0x1

    #@5
    iput v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    #@7
    .line 55
    invoke-virtual {p0}, Lcom/android/server/notification/RankingReconsideration;->work()V

    #@a
    .line 57
    const/4 v0, 0x2

    #@b
    iput v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    #@d
    .line 58
    monitor-enter p0

    #@e
    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/RankingReconsideration;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    .line 51
    :cond_0
    return-void

    #@13
    .line 58
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public abstract work()V
.end method
