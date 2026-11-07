.class public Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;
.super Ljava/lang/Object;
.source "AbstractQueuedLongSynchronizer.java"

# interfaces
.implements Ljava/util/concurrent/locks/Condition;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConditionObject"
.end annotation


# static fields
.field static final blacklist OOME_COND_WAIT_DELAY:J = 0x989680L

.field private static final whitelist serialVersionUID:J = 0x104ad505855c6aebL


# instance fields
.field private transient blacklist firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

.field private transient blacklist lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

.field final synthetic blacklist this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1122
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist canReacquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;)Z
    .registers 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    .line 1209
    if-eqz p1, :cond_15

    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_15

    iget-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eq v0, p1, :cond_13

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    .line 1210
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isEnqueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    goto :goto_16

    .end local v1    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_15
    const/4 v0, 0x0

    .line 1209
    :goto_16
    return v0
.end method

.method private blacklist doSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;Z)V
    .registers 6
    .param p1, "first"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    .param p2, "all"    # Z

    .line 1130
    nop

    :goto_1
    if-eqz p1, :cond_1e

    .line 1131
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    .line 1132
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    if-nez v0, :cond_c

    .line 1133
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    .line 1134
    :cond_c
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->getAndUnsetStatus(I)I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1c

    .line 1135
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->enqueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;)V

    .line 1136
    if-nez p2, :cond_1c

    .line 1137
    goto :goto_1e

    .line 1139
    :cond_1c
    move-object p1, v0

    .line 1140
    .end local v0    # "next":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    goto :goto_1

    .line 1141
    :cond_1e
    :goto_1e
    return-void
.end method

.method private blacklist enableWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;)J
    .registers 6
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    .line 1183
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1184
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->waiter:Ljava/lang/Thread;

    .line 1185
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->setStatusRelaxed(I)V

    .line 1186
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    .line 1187
    .local v0, "last":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    if-nez v0, :cond_19

    .line 1188
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    goto :goto_1b

    .line 1190
    :cond_19
    iput-object p1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    .line 1191
    :goto_1b
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    .line 1192
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->getState()J

    move-result-wide v1

    .line 1193
    .local v1, "savedState":J
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->release(J)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1194
    return-wide v1

    .line 1196
    .end local v0    # "last":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    .end local v1    # "savedState":J
    :cond_2c
    const/high16 v0, -0x80000000

    iput v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->status:I

    .line 1197
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method private blacklist newConditionNode()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    .registers 7

    .line 1243
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-static {v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->-$$Nest$mtryInitializeHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1245
    :try_start_8
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    invoke-direct {v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;-><init>()V
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_d} :catch_e

    return-object v0

    .line 1246
    :catch_e
    move-exception v0

    .line 1250
    :cond_f
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->getState()J

    move-result-wide v1

    move-wide v3, v1

    .local v3, "savedState":J
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->release(J)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1252
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    const-wide/32 v1, 0x989680

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1, v2}, Ljdk/internal/misc/Unsafe;->park(ZJ)V

    .line 1253
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-static {v0, v5, v3, v4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->-$$Nest$macquireOnOOME(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;ZJ)I

    .line 1254
    const/4 v0, 0x0

    return-object v0

    .line 1251
    .end local v3    # "savedState":J
    :cond_38
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method private blacklist unlinkCancelledWaiters(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;)V
    .registers 6
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    .line 1218
    if-eqz p1, :cond_a

    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    if-nez v0, :cond_a

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    if-ne p1, v0, :cond_29

    .line 1219
    :cond_a
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    .local v0, "w":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    const/4 v1, 0x0

    .line 1220
    .local v1, "trail":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    :goto_d
    if-eqz v0, :cond_29

    .line 1221
    iget-object v2, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    .line 1222
    .local v2, "next":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    iget v3, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->status:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_26

    .line 1223
    const/4 v3, 0x0

    iput-object v3, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    .line 1224
    if-nez v1, :cond_1f

    .line 1225
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    goto :goto_21

    .line 1227
    :cond_1f
    iput-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    .line 1228
    :goto_21
    if-nez v2, :cond_27

    .line 1229
    iput-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    goto :goto_27

    .line 1231
    :cond_26
    move-object v1, v0

    .line 1232
    :cond_27
    :goto_27
    move-object v0, v2

    .line 1233
    .end local v2    # "next":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    goto :goto_d

    .line 1235
    .end local v0    # "w":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    .end local v1    # "trail":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    :cond_29
    return-void
.end method


# virtual methods
.method public final whitelist test-api await()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1313
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 1315
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->newConditionNode()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    move-result-object v2

    .line 1316
    .local v2, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    if-nez v2, :cond_d

    .line 1317
    return-void

    .line 1318
    :cond_d
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->enableWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;)J

    move-result-wide v3

    .line 1319
    .local v3, "savedState":J
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->setCurrentBlocker(Ljava/lang/Object;)V

    .line 1320
    const/4 v0, 0x0

    .local v0, "interrupted":Z
    const/4 v1, 0x0

    .local v1, "cancelled":Z
    const/4 v5, 0x0

    move v10, v5

    .line 1321
    .local v10, "rejected":Z
    :goto_18
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->canReacquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;)Z

    move-result v5

    if-nez v5, :cond_54

    .line 1322
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    or-int/2addr v5, v0

    move v6, v5

    .end local v0    # "interrupted":Z
    .local v6, "interrupted":Z
    const/4 v0, 0x2

    if-eqz v5, :cond_39

    .line 1323
    invoke-virtual {v2, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->getAndUnsetStatus(I)I

    move-result v5

    and-int/2addr v0, v5

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    move v1, v0

    if-eqz v0, :cond_37

    .line 1324
    move v0, v6

    move v11, v1

    goto :goto_55

    .line 1323
    :cond_37
    move v0, v6

    goto :goto_18

    .line 1325
    :cond_39
    iget v5, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->status:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_4f

    .line 1327
    if-eqz v10, :cond_44

    .line 1328
    :try_start_40
    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->block()Z

    goto :goto_47

    .line 1330
    :cond_44
    invoke-static {v2}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_47
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_40 .. :try_end_47} :catch_4b
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_47} :catch_48

    .line 1335
    :goto_47
    goto :goto_52

    .line 1333
    :catch_48
    move-exception v0

    .line 1334
    .local v0, "ie":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 1335
    .end local v6    # "interrupted":Z
    .local v0, "interrupted":Z
    goto :goto_18

    .line 1331
    .end local v0    # "interrupted":Z
    .restart local v6    # "interrupted":Z
    :catch_4b
    move-exception v0

    .line 1332
    .local v0, "ex":Ljava/util/concurrent/RejectedExecutionException;
    const/4 v10, 0x1

    .line 1335
    .end local v0    # "ex":Ljava/util/concurrent/RejectedExecutionException;
    move v0, v6

    goto :goto_18

    .line 1337
    :cond_4f
    invoke-static {}, Ljava/lang/Thread;->onSpinWait()V

    .line 1321
    :goto_52
    move v0, v6

    goto :goto_18

    .end local v6    # "interrupted":Z
    .local v0, "interrupted":Z
    :cond_54
    move v11, v1

    .line 1339
    .end local v1    # "cancelled":Z
    .local v11, "cancelled":Z
    :goto_55
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->setCurrentBlocker(Ljava/lang/Object;)V

    .line 1340
    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->clearStatus()V

    .line 1341
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v9}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;JZZZJ)I

    .line 1342
    if-eqz v0, :cond_7b

    .line 1343
    if-nez v11, :cond_72

    .line 1347
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_7b

    .line 1344
    :cond_72
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;)V

    .line 1345
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 1349
    :cond_7b
    :goto_7b
    return-void

    .line 1314
    .end local v0    # "interrupted":Z
    .end local v2    # "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    .end local v3    # "savedState":J
    .end local v10    # "rejected":Z
    .end local v11    # "cancelled":Z
    :cond_7c
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api await(JLjava/util/concurrent/TimeUnit;)Z
    .registers 27
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1454
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 1455
    .local v4, "nanosTimeout":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_99

    .line 1457
    invoke-direct {v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->newConditionNode()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    move-result-object v8

    .line 1458
    .local v8, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    const/4 v6, 0x0

    if-nez v8, :cond_18

    .line 1459
    return v6

    .line 1460
    :cond_18
    invoke-direct {v0, v8}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->enableWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;)J

    move-result-wide v9

    .line 1461
    .local v9, "savedState":J
    const-wide/16 v11, 0x0

    cmp-long v7, v4, v11

    if-gez v7, :cond_24

    move-wide v13, v11

    goto :goto_25

    :cond_24
    move-wide v13, v4

    .line 1462
    .local v13, "nanos":J
    :goto_25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    add-long v16, v15, v13

    .line 1463
    .local v16, "deadline":J
    const/4 v7, 0x0

    .local v7, "cancelled":Z
    const/4 v15, 0x0

    .line 1464
    .local v15, "interrupted":Z
    :goto_2d
    invoke-direct {v0, v8}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->canReacquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;)Z

    move-result v18

    const/16 v19, 0x1

    if-nez v18, :cond_68

    .line 1465
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v18

    or-int v18, v15, v18

    move/from16 v15, v18

    if-nez v18, :cond_50

    .line 1466
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    sub-long v20, v16, v20

    move-wide/from16 v13, v20

    cmp-long v18, v20, v11

    if-gtz v18, :cond_4c

    goto :goto_50

    .line 1470
    :cond_4c
    invoke-static {v0, v13, v14}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_2d

    .line 1467
    :cond_50
    :goto_50
    const/4 v6, 0x2

    invoke-virtual {v8, v6}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->getAndUnsetStatus(I)I

    move-result v20

    and-int/lit8 v6, v20, 0x2

    if-eqz v6, :cond_5c

    move/from16 v6, v19

    goto :goto_5d

    :cond_5c
    const/4 v6, 0x0

    :goto_5d
    move v7, v6

    if-eqz v6, :cond_66

    .line 1468
    move v6, v7

    move-wide/from16 v20, v13

    move/from16 v22, v15

    goto :goto_6d

    .line 1467
    :cond_66
    const/4 v6, 0x0

    goto :goto_2d

    .line 1464
    :cond_68
    move v6, v7

    move-wide/from16 v20, v13

    move/from16 v22, v15

    .line 1472
    .end local v7    # "cancelled":Z
    .end local v13    # "nanos":J
    .end local v15    # "interrupted":Z
    .local v6, "cancelled":Z
    .local v20, "nanos":J
    .local v22, "interrupted":Z
    :goto_6d
    invoke-virtual {v8}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->clearStatus()V

    .line 1473
    iget-object v7, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v15}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;JZZZJ)I

    .line 1474
    if-eqz v6, :cond_88

    .line 1475
    invoke-direct {v0, v8}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;)V

    .line 1476
    if-nez v22, :cond_82

    goto :goto_91

    .line 1477
    :cond_82
    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7

    .line 1478
    :cond_88
    if-eqz v22, :cond_91

    .line 1479
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 1480
    :cond_91
    :goto_91
    if-nez v6, :cond_96

    move/from16 v18, v19

    goto :goto_98

    :cond_96
    const/16 v18, 0x0

    :goto_98
    return v18

    .line 1456
    .end local v6    # "cancelled":Z
    .end local v8    # "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    .end local v9    # "savedState":J
    .end local v16    # "deadline":J
    .end local v20    # "nanos":J
    .end local v22    # "interrupted":Z
    :cond_99
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6
.end method

.method public final whitelist test-api awaitNanos(J)J
    .registers 19
    .param p1, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1366
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_90

    .line 1368
    invoke-direct {v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->newConditionNode()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    move-result-object v3

    .line 1369
    .local v3, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    if-nez v3, :cond_14

    .line 1370
    const-wide/32 v1, 0x989680

    sub-long v1, p1, v1

    return-wide v1

    .line 1371
    :cond_14
    invoke-direct {v0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->enableWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;)J

    move-result-wide v4

    .line 1372
    .local v4, "savedState":J
    const-wide/16 v1, 0x0

    cmp-long v6, p1, v1

    if-gez v6, :cond_20

    move-wide v6, v1

    goto :goto_22

    :cond_20
    move-wide/from16 v6, p1

    .line 1373
    .local v6, "nanos":J
    :goto_22
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    add-long v11, v8, v6

    .line 1374
    .local v11, "deadline":J
    const/4 v8, 0x0

    .local v8, "cancelled":Z
    const/4 v9, 0x0

    .line 1375
    .local v9, "interrupted":Z
    :cond_2a
    :goto_2a
    invoke-direct {v0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->canReacquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;)Z

    move-result v10

    if-nez v10, :cond_5a

    .line 1376
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v10

    or-int/2addr v10, v9

    move v9, v10

    if-nez v10, :cond_48

    .line 1377
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long v13, v11, v13

    move-wide v6, v13

    cmp-long v10, v13, v1

    if-gtz v10, :cond_44

    goto :goto_48

    .line 1381
    :cond_44
    invoke-static {v0, v6, v7}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_2a

    .line 1378
    :cond_48
    :goto_48
    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->getAndUnsetStatus(I)I

    move-result v13

    and-int/2addr v10, v13

    if-eqz v10, :cond_52

    const/4 v10, 0x1

    goto :goto_53

    :cond_52
    const/4 v10, 0x0

    :goto_53
    move v8, v10

    if-eqz v10, :cond_2a

    .line 1379
    move-wide v13, v6

    move v1, v8

    move v15, v9

    goto :goto_5d

    .line 1375
    :cond_5a
    move-wide v13, v6

    move v1, v8

    move v15, v9

    .line 1383
    .end local v6    # "nanos":J
    .end local v8    # "cancelled":Z
    .end local v9    # "interrupted":Z
    .local v1, "cancelled":Z
    .local v13, "nanos":J
    .local v15, "interrupted":Z
    :goto_5d
    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->clearStatus()V

    .line 1384
    iget-object v2, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v10}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;JZZZJ)I

    .line 1385
    if-eqz v1, :cond_78

    .line 1386
    invoke-direct {v0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;)V

    .line 1387
    if-nez v15, :cond_72

    goto :goto_81

    .line 1388
    :cond_72
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 1389
    :cond_78
    if-eqz v15, :cond_81

    .line 1390
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1391
    :cond_81
    :goto_81
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v11, v6

    .line 1392
    .local v6, "remaining":J
    cmp-long v2, v6, p1

    if-gtz v2, :cond_8d

    move-wide v8, v6

    goto :goto_8f

    :cond_8d
    const-wide/high16 v8, -0x8000000000000000L

    :goto_8f
    return-wide v8

    .line 1367
    .end local v1    # "cancelled":Z
    .end local v3    # "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    .end local v4    # "savedState":J
    .end local v6    # "remaining":J
    .end local v11    # "deadline":J
    .end local v13    # "nanos":J
    .end local v15    # "interrupted":Z
    :cond_90
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public final whitelist test-api awaitUninterruptibly()V
    .registers 12

    .line 1269
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->newConditionNode()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    move-result-object v1

    .line 1270
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    if-nez v1, :cond_7

    .line 1271
    return-void

    .line 1272
    :cond_7
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->enableWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;)J

    move-result-wide v2

    .line 1273
    .local v2, "savedState":J
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->setCurrentBlocker(Ljava/lang/Object;)V

    .line 1274
    const/4 v0, 0x0

    .local v0, "interrupted":Z
    const/4 v4, 0x0

    move v9, v0

    move v10, v4

    .line 1275
    .end local v0    # "interrupted":Z
    .local v9, "interrupted":Z
    .local v10, "rejected":Z
    :goto_12
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->canReacquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1276
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1277
    const/4 v9, 0x1

    goto :goto_12

    .line 1278
    :cond_20
    iget v0, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->status:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_36

    .line 1280
    if-eqz v10, :cond_2c

    .line 1281
    :try_start_28
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->block()Z

    goto :goto_35

    .line 1283
    :cond_2c
    invoke-static {v1}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_2f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_28 .. :try_end_2f} :catch_33
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2f} :catch_30

    goto :goto_35

    .line 1286
    :catch_30
    move-exception v0

    .line 1287
    .local v0, "ie":Ljava/lang/InterruptedException;
    const/4 v9, 0x1

    .end local v0    # "ie":Ljava/lang/InterruptedException;
    goto :goto_35

    .line 1284
    :catch_33
    move-exception v0

    .line 1285
    .local v0, "ex":Ljava/util/concurrent/RejectedExecutionException;
    const/4 v10, 0x1

    .line 1288
    .end local v0    # "ex":Ljava/util/concurrent/RejectedExecutionException;
    :goto_35
    goto :goto_12

    .line 1290
    :cond_36
    invoke-static {}, Ljava/lang/Thread;->onSpinWait()V

    goto :goto_12

    .line 1292
    :cond_3a
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->setCurrentBlocker(Ljava/lang/Object;)V

    .line 1293
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->clearStatus()V

    .line 1294
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v8}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;JZZZJ)I

    .line 1295
    if-eqz v9, :cond_54

    .line 1296
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1297
    :cond_54
    return-void
.end method

.method public final whitelist test-api awaitUntil(Ljava/util/Date;)Z
    .registers 18
    .param p1, "deadline"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1411
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 1412
    .local v1, "abstime":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_71

    .line 1414
    invoke-direct {v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->newConditionNode()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    move-result-object v5

    .line 1415
    .local v5, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    const/4 v3, 0x0

    if-nez v5, :cond_14

    .line 1416
    return v3

    .line 1417
    :cond_14
    invoke-direct {v0, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->enableWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;)J

    move-result-wide v6

    .line 1418
    .local v6, "savedState":J
    const/4 v4, 0x0

    .local v4, "cancelled":Z
    const/4 v8, 0x0

    .line 1419
    .local v8, "interrupted":Z
    :cond_1a
    :goto_1a
    invoke-direct {v0, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->canReacquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;)Z

    move-result v9

    const/4 v13, 0x1

    if-nez v9, :cond_47

    .line 1420
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    or-int/2addr v9, v8

    move v8, v9

    if-nez v9, :cond_36

    .line 1421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v9, v9, v1

    if-ltz v9, :cond_32

    goto :goto_36

    .line 1425
    :cond_32
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/locks/LockSupport;->parkUntil(Ljava/lang/Object;J)V

    goto :goto_1a

    .line 1422
    :cond_36
    :goto_36
    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->getAndUnsetStatus(I)I

    move-result v10

    and-int/2addr v9, v10

    if-eqz v9, :cond_40

    move v9, v13

    goto :goto_41

    :cond_40
    move v9, v3

    :goto_41
    move v4, v9

    if-eqz v9, :cond_1a

    .line 1423
    move v14, v4

    move v15, v8

    goto :goto_49

    .line 1419
    :cond_47
    move v14, v4

    move v15, v8

    .line 1427
    .end local v4    # "cancelled":Z
    .end local v8    # "interrupted":Z
    .local v14, "cancelled":Z
    .local v15, "interrupted":Z
    :goto_49
    invoke-virtual {v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->clearStatus()V

    .line 1428
    iget-object v4, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v12}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;JZZZJ)I

    .line 1429
    if-eqz v14, :cond_64

    .line 1430
    invoke-direct {v0, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;)V

    .line 1431
    if-nez v15, :cond_5e

    goto :goto_6d

    .line 1432
    :cond_5e
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 1433
    :cond_64
    if-eqz v15, :cond_6d

    .line 1434
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1435
    :cond_6d
    :goto_6d
    if-nez v14, :cond_70

    move v3, v13

    :cond_70
    return v3

    .line 1413
    .end local v5    # "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    .end local v6    # "savedState":J
    .end local v14    # "cancelled":Z
    .end local v15    # "interrupted":Z
    :cond_71
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
.end method

.method protected final whitelist test-api getWaitQueueLength()I
    .registers 4

    .line 1523
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1525
    const/4 v0, 0x0

    .line 1526
    .local v0, "n":I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    .local v1, "w":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    :goto_b
    if-eqz v1, :cond_18

    .line 1527
    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->status:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_15

    .line 1528
    add-int/lit8 v0, v0, 0x1

    .line 1526
    :cond_15
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    goto :goto_b

    .line 1530
    .end local v1    # "w":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    :cond_18
    return v0

    .line 1524
    .end local v0    # "n":I
    :cond_19
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method protected final whitelist test-api getWaitingThreads()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 1543
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1546
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    .local v1, "w":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    :goto_f
    if-eqz v1, :cond_21

    .line 1547
    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->status:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1e

    .line 1548
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->waiter:Ljava/lang/Thread;

    .line 1549
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_1e

    .line 1550
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1546
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_1e
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    goto :goto_f

    .line 1553
    .end local v1    # "w":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    :cond_21
    return-object v0

    .line 1544
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    :cond_22
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method protected final whitelist test-api hasWaiters()Z
    .registers 3

    .line 1504
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1506
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    .local v0, "w":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    :goto_a
    if-eqz v0, :cond_17

    .line 1507
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->status:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_14

    .line 1508
    const/4 v1, 0x1

    return v1

    .line 1506
    :cond_14
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    goto :goto_a

    .line 1510
    .end local v0    # "w":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    :cond_17
    const/4 v0, 0x0

    return v0

    .line 1505
    :cond_19
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method final greylist-max-o isOwnedBy(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;)Z
    .registers 3
    .param p1, "sync"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    .line 1492
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final whitelist test-api signal()V
    .registers 3

    .line 1152
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    .line 1153
    .local v0, "first":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1155
    if-eqz v0, :cond_10

    .line 1156
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->doSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;Z)V

    .line 1157
    :cond_10
    return-void

    .line 1154
    :cond_11
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1
.end method

.method public final whitelist test-api signalAll()V
    .registers 3

    .line 1167
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;

    .line 1168
    .local v0, "first":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1170
    if-eqz v0, :cond_10

    .line 1171
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->doSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionNode;Z)V

    .line 1172
    :cond_10
    return-void

    .line 1169
    :cond_11
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1
.end method
