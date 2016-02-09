.class public final Lcom/android/server/am/UidRecord;
.super Ljava/lang/Object;
.source "UidRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UidRecord$ChangeItem;
    }
.end annotation


# instance fields
.field curProcState:I

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
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/server/am/UidRecord;->setProcState:I

    #@6
    .line 41
    iput p1, p0, Lcom/android/server/am/UidRecord;->uid:I

    #@8
    .line 42
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->reset()V

    #@b
    .line 40
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 46
    const/16 v0, 0x10

    #@2
    iput v0, p0, Lcom/android/server/am/UidRecord;->curProcState:I

    #@4
    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const/16 v1, 0x80

    #@6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 51
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "UidRecord{"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 52
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
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 54
    iget v1, p0, Lcom/android/server/am/UidRecord;->uid:I

    #@1f
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    #@22
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 56
    iget v1, p0, Lcom/android/server/am/UidRecord;->curProcState:I

    #@27
    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 57
    const-string/jumbo v1, " / "

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 58
    iget v1, p0, Lcom/android/server/am/UidRecord;->numProcs:I

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    .line 59
    const-string/jumbo v1, " procs}"

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    return-object v1
.end method
