.class final Ljava/util/concurrent/Phaser$QNode;
.super Ljava/lang/Object;
.source "Phaser.java"

# interfaces
.implements Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Phaser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QNode"
.end annotation


# instance fields
.field final deadline:J

.field final interruptible:Z

.field nanos:J

.field next:Ljava/util/concurrent/Phaser$QNode;

.field final phase:I

.field final phaser:Ljava/util/concurrent/Phaser;

.field volatile thread:Ljava/lang/Thread;

.field final timed:Z

.field wasInterrupted:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/Phaser;IZZJ)V
    .locals 3
    .param p1, "phaser"    # Ljava/util/concurrent/Phaser;
    .param p2, "phase"    # I
    .param p3, "interruptible"    # Z
    .param p4, "timed"    # Z
    .param p5, "nanos"    # J

    #@0
    .prologue
    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1071
    iput-object p1, p0, Ljava/util/concurrent/Phaser$QNode;->phaser:Ljava/util/concurrent/Phaser;

    #@5
    .line 1072
    iput p2, p0, Ljava/util/concurrent/Phaser$QNode;->phase:I

    #@7
    .line 1073
    iput-boolean p3, p0, Ljava/util/concurrent/Phaser$QNode;->interruptible:Z

    #@9
    .line 1074
    iput-wide p5, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    #@b
    .line 1075
    iput-boolean p4, p0, Ljava/util/concurrent/Phaser$QNode;->timed:Z

    #@d
    .line 1076
    if-eqz p4, :cond_0

    #@f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@12
    move-result-wide v0

    #@13
    add-long/2addr v0, p5

    #@14
    :goto_0
    iput-wide v0, p0, Ljava/util/concurrent/Phaser$QNode;->deadline:J

    #@16
    .line 1077
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    #@1c
    .line 1070
    return-void

    #@1d
    .line 1076
    :cond_0
    const-wide/16 v0, 0x0

    #@1f
    goto :goto_0
.end method


# virtual methods
.method public block()Z
    .locals 4

    #@0
    .prologue
    .line 1106
    invoke-virtual {p0}, Ljava/util/concurrent/Phaser$QNode;->isReleasable()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1107
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 1108
    :cond_0
    iget-boolean v0, p0, Ljava/util/concurrent/Phaser$QNode;->timed:Z

    #@a
    if-nez v0, :cond_2

    #@c
    .line 1109
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    #@f
    .line 1112
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/Phaser$QNode;->isReleasable()Z

    #@12
    move-result v0

    #@13
    return v0

    #@14
    .line 1110
    :cond_2
    iget-wide v0, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    #@16
    const-wide/16 v2, 0x0

    #@18
    cmp-long v0, v0, v2

    #@1a
    if-lez v0, :cond_1

    #@1c
    .line 1111
    iget-wide v0, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    #@1e
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@21
    goto :goto_0
.end method

.method public isReleasable()Z
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x1

    #@4
    .line 1081
    iget-object v0, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1082
    return v4

    #@9
    .line 1083
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/Phaser$QNode;->phaser:Ljava/util/concurrent/Phaser;

    #@b
    invoke-virtual {v0}, Ljava/util/concurrent/Phaser;->getPhase()I

    #@e
    move-result v0

    #@f
    iget v1, p0, Ljava/util/concurrent/Phaser$QNode;->phase:I

    #@11
    if-eq v0, v1, :cond_1

    #@13
    .line 1084
    iput-object v5, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    #@15
    .line 1085
    return v4

    #@16
    .line 1087
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 1088
    iput-boolean v4, p0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    #@1e
    .line 1089
    :cond_2
    iget-boolean v0, p0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    #@20
    if-eqz v0, :cond_3

    #@22
    iget-boolean v0, p0, Ljava/util/concurrent/Phaser$QNode;->interruptible:Z

    #@24
    if-eqz v0, :cond_3

    #@26
    .line 1090
    iput-object v5, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    #@28
    .line 1091
    return v4

    #@29
    .line 1093
    :cond_3
    iget-boolean v0, p0, Ljava/util/concurrent/Phaser$QNode;->timed:Z

    #@2b
    if-eqz v0, :cond_5

    #@2d
    .line 1094
    iget-wide v0, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    #@2f
    cmp-long v0, v0, v6

    #@31
    if-lez v0, :cond_4

    #@33
    .line 1095
    iget-wide v0, p0, Ljava/util/concurrent/Phaser$QNode;->deadline:J

    #@35
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@38
    move-result-wide v2

    #@39
    sub-long/2addr v0, v2

    #@3a
    iput-wide v0, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    #@3c
    .line 1097
    :cond_4
    iget-wide v0, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    #@3e
    cmp-long v0, v0, v6

    #@40
    if-gtz v0, :cond_5

    #@42
    .line 1098
    iput-object v5, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    #@44
    .line 1099
    return v4

    #@45
    .line 1102
    :cond_5
    const/4 v0, 0x0

    #@46
    return v0
.end method
