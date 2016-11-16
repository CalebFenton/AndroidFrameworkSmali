.class public final Lcom/android/server/am/UidRecord;
.super Ljava/lang/Object;
.source "UidRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UidRecord$ChangeItem;
    }
.end annotation


# static fields
.field static final CHANGE_ACTIVE:I = 0x4

.field static final CHANGE_GONE:I = 0x1

.field static final CHANGE_GONE_IDLE:I = 0x2

.field static final CHANGE_IDLE:I = 0x3

.field static final CHANGE_PROCSTATE:I


# instance fields
.field curProcState:I

.field idle:Z

.field lastBackgroundTime:J

.field numProcs:I

.field pendingChange:Lcom/android/server/am/UidRecord$ChangeItem;

.field setProcState:I

.field final uid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "_uid"    # I

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/server/am/UidRecord;->setProcState:I

    #@6
    .line 51
    iput p1, p0, Lcom/android/server/am/UidRecord;->uid:I

    #@8
    .line 52
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->reset()V

    #@b
    .line 50
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 56
    const/16 v0, 0x10

    #@2
    iput v0, p0, Lcom/android/server/am/UidRecord;->curProcState:I

    #@4
    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const/16 v1, 0x80

    #@6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 61
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "UidRecord{"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 62
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@12
    move-result v1

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 64
    iget v1, p0, Lcom/android/server/am/UidRecord;->uid:I

    #@1f
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    #@22
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 66
    iget v1, p0, Lcom/android/server/am/UidRecord;->curProcState:I

    #@27
    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 67
    iget-wide v2, p0, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    #@30
    const-wide/16 v4, 0x0

    #@32
    cmp-long v1, v2, v4

    #@34
    if-lez v1, :cond_0

    #@36
    .line 68
    const-string/jumbo v1, " bg:"

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3f
    move-result-wide v2

    #@40
    iget-wide v4, p0, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    #@42
    sub-long/2addr v2, v4

    #@43
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@46
    .line 71
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->idle:Z

    #@48
    if-eqz v1, :cond_1

    #@4a
    .line 72
    const-string/jumbo v1, " idle"

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    .line 74
    :cond_1
    const-string/jumbo v1, " procs:"

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 75
    iget v1, p0, Lcom/android/server/am/UidRecord;->numProcs:I

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    .line 76
    const-string/jumbo v1, "}"

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    return-object v1
.end method
