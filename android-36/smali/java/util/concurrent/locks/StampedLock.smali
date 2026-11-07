.class public Ljava/util/concurrent/locks/StampedLock;
.super Ljava/lang/Object;
.source "StampedLock.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/StampedLock$Node;,
        Ljava/util/concurrent/locks/StampedLock$ReadLockView;,
        Ljava/util/concurrent/locks/StampedLock$WriteLockView;,
        Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;,
        Ljava/util/concurrent/locks/StampedLock$ReaderNode;,
        Ljava/util/concurrent/locks/StampedLock$WriterNode;
    }
.end annotation


# static fields
.field private static final greylist-max-o ABITS:J = 0xffL

.field static final greylist-max-o CANCELLED:I = -0x80000000

.field private static final blacklist HEAD:J

.field private static final greylist-max-o INTERRUPTED:J = 0x1L

.field private static final greylist-max-o LG_READERS:I = 0x7

.field private static final greylist-max-o ORIGIN:J = 0x100L

.field private static final greylist-max-o RBITS:J = 0x7fL

.field private static final greylist-max-o RFULL:J = 0x7eL

.field private static final blacklist RSAFE:J = -0xc1L

.field private static final greylist-max-o RUNIT:J = 0x1L

.field private static final greylist-max-o SBITS:J = -0x80L

.field private static final greylist-max-o STATE:J

.field private static final blacklist TAIL:J

.field private static final blacklist U:Ljdk/internal/misc/Unsafe;

.field static final greylist-max-o WAITING:I = 0x1

.field private static final greylist-max-o WBIT:J = 0x80L

.field private static final whitelist serialVersionUID:J = -0x5349f9cce5385003L


# instance fields
.field private volatile transient blacklist head:Ljava/util/concurrent/locks/StampedLock$Node;

.field transient greylist-max-o readLockView:Ljava/util/concurrent/locks/StampedLock$ReadLockView;

.field transient greylist-max-o readWriteLockView:Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;

.field private transient greylist-max-o readerOverflow:I

.field private volatile transient greylist-max-o state:J

.field private volatile transient blacklist tail:Ljava/util/concurrent/locks/StampedLock$Node;

.field transient greylist-max-o writeLockView:Ljava/util/concurrent/locks/StampedLock$WriteLockView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;
    .registers 1

    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Ljdk/internal/misc/Unsafe;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 1487
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Ljdk/internal/misc/Unsafe;

    .line 1488
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Ljdk/internal/misc/Unsafe;

    .line 1489
    const-class v1, Ljava/util/concurrent/locks/StampedLock;

    const-string v2, "state"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    .line 1490
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Ljdk/internal/misc/Unsafe;

    .line 1491
    const-string v2, "head"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/StampedLock;->HEAD:J

    .line 1492
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Ljdk/internal/misc/Unsafe;

    .line 1493
    const-string v2, "tail"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/locks/StampedLock;->TAIL:J

    .line 1496
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 1497
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    const-wide/16 v0, 0x100

    iput-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .line 418
    return-void
.end method

.method private blacklist acquireRead(ZZJ)J
    .registers 19
    .param p1, "interruptible"    # Z
    .param p2, "timed"    # Z
    .param p3, "time"    # J

    .line 1274
    const/4 v0, 0x0

    .line 1275
    .local v0, "interrupted":Z
    const/4 v1, 0x0

    .line 1284
    .local v1, "node":Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    :goto_2
    const/4 v2, 0x0

    .local v2, "tailPred":Ljava/util/concurrent/locks/StampedLock$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/StampedLock;->tail:Ljava/util/concurrent/locks/StampedLock$Node;

    .line 1285
    .local v3, "t":Ljava/util/concurrent/locks/StampedLock$Node;
    const-wide/16 v4, 0x0

    if-eqz v3, :cond_e

    iget-object v6, v3, Ljava/util/concurrent/locks/StampedLock$Node;->prev:Ljava/util/concurrent/locks/StampedLock$Node;

    move-object v2, v6

    if-nez v6, :cond_18

    .line 1286
    :cond_e
    invoke-direct {p0}, Ljava/util/concurrent/locks/StampedLock;->tryAcquireRead()J

    move-result-wide v6

    move-wide v8, v6

    .local v8, "nextState":J
    cmp-long v6, v6, v4

    if-eqz v6, :cond_18

    .line 1287
    return-wide v8

    .line 1288
    .end local v8    # "nextState":J
    :cond_18
    if-nez v3, :cond_1f

    .line 1289
    invoke-direct {p0}, Ljava/util/concurrent/locks/StampedLock;->tryInitializeHead()V

    goto/16 :goto_154

    .line 1290
    :cond_1f
    const/4 v6, 0x0

    if-eqz v2, :cond_a6

    instance-of v7, v3, Ljava/util/concurrent/locks/StampedLock$ReaderNode;

    if-nez v7, :cond_28

    goto/16 :goto_a6

    .line 1301
    :cond_28
    move-object v7, v3

    check-cast v7, Ljava/util/concurrent/locks/StampedLock$ReaderNode;

    move-object v8, v7

    .local v8, "leader":Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    iget-object v9, p0, Ljava/util/concurrent/locks/StampedLock;->tail:Ljava/util/concurrent/locks/StampedLock$Node;

    if-ne v7, v9, :cond_154

    .line 1302
    const/4 v7, 0x0

    .line 1303
    .local v7, "attached":Z
    :goto_31
    iget v9, v8, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->status:I

    if-ltz v9, :cond_8a

    iget-object v9, v8, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->prev:Ljava/util/concurrent/locks/StampedLock$Node;

    if-nez v9, :cond_3a

    .line 1304
    goto :goto_8a

    .line 1305
    :cond_3a
    if-nez v1, :cond_43

    .line 1306
    new-instance v9, Ljava/util/concurrent/locks/StampedLock$ReaderNode;

    invoke-direct {v9}, Ljava/util/concurrent/locks/StampedLock$ReaderNode;-><init>()V

    move-object v1, v9

    goto :goto_31

    .line 1307
    :cond_43
    iget-object v9, v1, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->waiter:Ljava/lang/Thread;

    if-nez v9, :cond_4e

    .line 1308
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    iput-object v9, v1, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->waiter:Ljava/lang/Thread;

    goto :goto_31

    .line 1309
    :cond_4e
    if-nez v7, :cond_5f

    .line 1310
    iget-object v9, v8, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->cowaiters:Ljava/util/concurrent/locks/StampedLock$ReaderNode;

    .line 1311
    .local v9, "c":Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    invoke-virtual {v1, v9}, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->setCowaitersRelaxed(Ljava/util/concurrent/locks/StampedLock$ReaderNode;)V

    .line 1312
    invoke-virtual {v8, v9, v1}, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->casCowaiters(Ljava/util/concurrent/locks/StampedLock$ReaderNode;Ljava/util/concurrent/locks/StampedLock$ReaderNode;)Z

    move-result v7

    .line 1313
    if-nez v7, :cond_5e

    .line 1314
    invoke-virtual {v1, v6}, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->setCowaitersRelaxed(Ljava/util/concurrent/locks/StampedLock$ReaderNode;)V

    .line 1315
    .end local v9    # "c":Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    :cond_5e
    goto :goto_31

    .line 1316
    :cond_5f
    const-wide/16 v9, 0x0

    .line 1317
    .local v9, "nanos":J
    if-nez p2, :cond_67

    .line 1318
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_75

    .line 1319
    :cond_67
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long v11, p3, v11

    move-wide v9, v11

    cmp-long v11, v11, v4

    if-lez v11, :cond_75

    .line 1320
    invoke-static {p0, v9, v10}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 1321
    :cond_75
    :goto_75
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v11

    or-int/2addr v0, v11

    .line 1322
    if-eqz v0, :cond_7e

    if-nez p1, :cond_84

    :cond_7e
    if-eqz p2, :cond_89

    cmp-long v11, v9, v4

    if-gtz v11, :cond_89

    .line 1324
    :cond_84
    invoke-direct {p0, v1, v8, v0}, Ljava/util/concurrent/locks/StampedLock;->cancelCowaiter(Ljava/util/concurrent/locks/StampedLock$ReaderNode;Ljava/util/concurrent/locks/StampedLock$ReaderNode;Z)J

    move-result-wide v4

    return-wide v4

    .line 1325
    .end local v9    # "nanos":J
    :cond_89
    goto :goto_31

    .line 1327
    .end local v7    # "attached":Z
    :cond_8a
    :goto_8a
    if-eqz v1, :cond_8e

    .line 1328
    iput-object v6, v1, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->waiter:Ljava/lang/Thread;

    .line 1329
    :cond_8e
    invoke-direct {p0}, Ljava/util/concurrent/locks/StampedLock;->tryAcquireRead()J

    move-result-wide v6

    .line 1330
    .local v6, "ns":J
    invoke-static {v8}, Ljava/util/concurrent/locks/StampedLock;->signalCowaiters(Ljava/util/concurrent/locks/StampedLock$ReaderNode;)V

    .line 1331
    if-eqz v0, :cond_9e

    .line 1332
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    .line 1333
    :cond_9e
    cmp-long v4, v6, v4

    if-eqz v4, :cond_a3

    .line 1334
    return-wide v6

    .line 1336
    :cond_a3
    const/4 v1, 0x0

    goto/16 :goto_154

    .line 1291
    .end local v6    # "ns":J
    .end local v8    # "leader":Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    :cond_a6
    :goto_a6
    if-nez v1, :cond_ae

    .line 1292
    new-instance v7, Ljava/util/concurrent/locks/StampedLock$ReaderNode;

    invoke-direct {v7}, Ljava/util/concurrent/locks/StampedLock$ReaderNode;-><init>()V

    move-object v1, v7

    .line 1293
    :cond_ae
    iget-object v7, p0, Ljava/util/concurrent/locks/StampedLock;->tail:Ljava/util/concurrent/locks/StampedLock$Node;

    if-ne v7, v3, :cond_154

    .line 1294
    invoke-virtual {v1, v3}, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->setPrevRelaxed(Ljava/util/concurrent/locks/StampedLock$Node;)V

    .line 1295
    invoke-direct {p0, v3, v1}, Ljava/util/concurrent/locks/StampedLock;->casTail(Ljava/util/concurrent/locks/StampedLock$Node;Ljava/util/concurrent/locks/StampedLock$Node;)Z

    move-result v7

    if-eqz v7, :cond_151

    .line 1296
    iput-object v1, v3, Ljava/util/concurrent/locks/StampedLock$Node;->next:Ljava/util/concurrent/locks/StampedLock$Node;

    .line 1297
    nop

    .line 1341
    .end local v2    # "tailPred":Ljava/util/concurrent/locks/StampedLock$Node;
    .end local v3    # "t":Ljava/util/concurrent/locks/StampedLock$Node;
    const/4 v2, 0x0

    .local v2, "spins":B
    const/4 v3, 0x0

    .line 1342
    .local v3, "postSpins":B
    const/4 v7, 0x0

    .line 1343
    .local v7, "first":Z
    const/4 v8, 0x0

    .line 1345
    .local v8, "pred":Ljava/util/concurrent/locks/StampedLock$Node;
    :cond_c2
    :goto_c2
    const/4 v9, 0x1

    if-nez v7, :cond_e4

    iget-object v10, v1, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->prev:Ljava/util/concurrent/locks/StampedLock$Node;

    move-object v8, v10

    if-eqz v10, :cond_e4

    iget-object v10, p0, Ljava/util/concurrent/locks/StampedLock;->head:Ljava/util/concurrent/locks/StampedLock$Node;

    if-ne v10, v8, :cond_d0

    move v10, v9

    goto :goto_d1

    :cond_d0
    const/4 v10, 0x0

    :goto_d1
    move v7, v10

    if-nez v10, :cond_e4

    .line 1347
    iget v10, v8, Ljava/util/concurrent/locks/StampedLock$Node;->status:I

    if-gez v10, :cond_dc

    .line 1348
    invoke-direct {p0}, Ljava/util/concurrent/locks/StampedLock;->cleanQueue()V

    .line 1349
    goto :goto_c2

    .line 1350
    :cond_dc
    iget-object v10, v8, Ljava/util/concurrent/locks/StampedLock$Node;->prev:Ljava/util/concurrent/locks/StampedLock$Node;

    if-nez v10, :cond_e4

    .line 1351
    invoke-static {}, Ljava/lang/Thread;->onSpinWait()V

    .line 1352
    goto :goto_c2

    .line 1355
    :cond_e4
    if-nez v7, :cond_e8

    if-nez v8, :cond_108

    .line 1356
    :cond_e8
    invoke-direct {p0}, Ljava/util/concurrent/locks/StampedLock;->tryAcquireRead()J

    move-result-wide v10

    move-wide v12, v10

    .local v12, "nextState":J
    cmp-long v10, v10, v4

    if-eqz v10, :cond_108

    .line 1357
    if-eqz v7, :cond_fb

    .line 1358
    iput-object v6, v1, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->prev:Ljava/util/concurrent/locks/StampedLock$Node;

    .line 1359
    iput-object v1, p0, Ljava/util/concurrent/locks/StampedLock;->head:Ljava/util/concurrent/locks/StampedLock$Node;

    .line 1360
    iput-object v6, v8, Ljava/util/concurrent/locks/StampedLock$Node;->next:Ljava/util/concurrent/locks/StampedLock$Node;

    .line 1361
    iput-object v6, v1, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->waiter:Ljava/lang/Thread;

    .line 1363
    :cond_fb
    invoke-static {v1}, Ljava/util/concurrent/locks/StampedLock;->signalCowaiters(Ljava/util/concurrent/locks/StampedLock$ReaderNode;)V

    .line 1364
    if-eqz v0, :cond_107

    .line 1365
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1366
    :cond_107
    return-wide v12

    .line 1367
    .end local v12    # "nextState":J
    :cond_108
    if-eqz v7, :cond_113

    if-eqz v2, :cond_113

    .line 1368
    add-int/lit8 v9, v2, -0x1

    int-to-byte v2, v9

    .line 1369
    invoke-static {}, Ljava/lang/Thread;->onSpinWait()V

    goto :goto_c2

    .line 1370
    :cond_113
    iget v10, v1, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->status:I

    if-nez v10, :cond_124

    .line 1371
    iget-object v10, v1, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->waiter:Ljava/lang/Thread;

    if-nez v10, :cond_121

    .line 1372
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    iput-object v10, v1, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->waiter:Ljava/lang/Thread;

    .line 1373
    :cond_121
    iput v9, v1, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->status:I

    goto :goto_c2

    .line 1376
    :cond_124
    shl-int/lit8 v10, v3, 0x1

    or-int/2addr v9, v10

    int-to-byte v9, v9

    move v3, v9

    move v2, v9

    .line 1377
    if-nez p2, :cond_130

    .line 1378
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_13e

    .line 1379
    :cond_130
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v9, p3, v9

    move-wide v11, v9

    .local v11, "nanos":J
    cmp-long v9, v9, v4

    if-lez v9, :cond_14c

    .line 1380
    invoke-static {p0, v11, v12}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 1383
    .end local v11    # "nanos":J
    :goto_13e
    invoke-virtual {v1}, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->clearStatus()V

    .line 1384
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    or-int/2addr v9, v0

    move v0, v9

    if-eqz v9, :cond_c2

    if-eqz p1, :cond_c2

    .line 1385
    nop

    .line 1388
    :cond_14c
    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/locks/StampedLock;->cancelAcquire(Ljava/util/concurrent/locks/StampedLock$Node;Z)J

    move-result-wide v4

    return-wide v4

    .line 1299
    .end local v7    # "first":Z
    .end local v8    # "pred":Ljava/util/concurrent/locks/StampedLock$Node;
    .local v2, "tailPred":Ljava/util/concurrent/locks/StampedLock$Node;
    .local v3, "t":Ljava/util/concurrent/locks/StampedLock$Node;
    :cond_151
    invoke-virtual {v1, v6}, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->setPrevRelaxed(Ljava/util/concurrent/locks/StampedLock$Node;)V

    .line 1338
    .end local v2    # "tailPred":Ljava/util/concurrent/locks/StampedLock$Node;
    .end local v3    # "t":Ljava/util/concurrent/locks/StampedLock$Node;
    :cond_154
    :goto_154
    goto/16 :goto_2
.end method

.method private blacklist acquireWrite(ZZJ)J
    .registers 22
    .param p1, "interruptible"    # Z
    .param p2, "timed"    # Z
    .param p3, "time"    # J

    .line 1202
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "spins":B
    const/4 v2, 0x0

    .line 1203
    .local v2, "postSpins":B
    const/4 v3, 0x0

    .local v3, "interrupted":Z
    const/4 v4, 0x0

    .line 1204
    .local v4, "first":Z
    const/4 v5, 0x0

    .line 1205
    .local v5, "node":Ljava/util/concurrent/locks/StampedLock$WriterNode;
    const/4 v6, 0x0

    .line 1207
    .local v6, "pred":Ljava/util/concurrent/locks/StampedLock$Node;
    :cond_8
    :goto_8
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v4, :cond_2f

    if-nez v5, :cond_10

    move-object v9, v8

    goto :goto_12

    :cond_10
    iget-object v9, v5, Ljava/util/concurrent/locks/StampedLock$WriterNode;->prev:Ljava/util/concurrent/locks/StampedLock$Node;

    :goto_12
    move-object v6, v9

    if-eqz v9, :cond_2f

    iget-object v9, v0, Ljava/util/concurrent/locks/StampedLock;->head:Ljava/util/concurrent/locks/StampedLock$Node;

    if-ne v9, v6, :cond_1b

    move v9, v7

    goto :goto_1c

    :cond_1b
    const/4 v9, 0x0

    :goto_1c
    move v4, v9

    if-nez v9, :cond_2f

    .line 1209
    iget v9, v6, Ljava/util/concurrent/locks/StampedLock$Node;->status:I

    if-gez v9, :cond_27

    .line 1210
    invoke-direct {v0}, Ljava/util/concurrent/locks/StampedLock;->cleanQueue()V

    .line 1211
    goto :goto_8

    .line 1212
    :cond_27
    iget-object v9, v6, Ljava/util/concurrent/locks/StampedLock$Node;->prev:Ljava/util/concurrent/locks/StampedLock$Node;

    if-nez v9, :cond_2f

    .line 1213
    invoke-static {}, Ljava/lang/Thread;->onSpinWait()V

    .line 1214
    goto :goto_8

    .line 1217
    :cond_2f
    const-wide/16 v9, 0x0

    if-nez v4, :cond_35

    if-nez v6, :cond_62

    :cond_35
    iget-wide v11, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v13, v11

    .local v13, "s":J
    const-wide/16 v15, 0xff

    and-long/2addr v11, v15

    cmp-long v11, v11, v9

    if-nez v11, :cond_62

    const-wide/16 v11, 0x80

    or-long/2addr v11, v13

    move-wide v15, v11

    .line 1218
    .local v15, "nextState":J
    invoke-direct {v0, v13, v14, v11, v12}, Ljava/util/concurrent/locks/StampedLock;->casState(JJ)Z

    move-result v11

    if-eqz v11, :cond_62

    .line 1219
    sget-object v7, Ljava/util/concurrent/locks/StampedLock;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v7}, Ljdk/internal/misc/Unsafe;->storeStoreFence()V

    .line 1220
    if-eqz v4, :cond_61

    .line 1221
    iput-object v8, v5, Ljava/util/concurrent/locks/StampedLock$WriterNode;->prev:Ljava/util/concurrent/locks/StampedLock$Node;

    .line 1222
    iput-object v5, v0, Ljava/util/concurrent/locks/StampedLock;->head:Ljava/util/concurrent/locks/StampedLock$Node;

    .line 1223
    iput-object v8, v6, Ljava/util/concurrent/locks/StampedLock$Node;->next:Ljava/util/concurrent/locks/StampedLock$Node;

    .line 1224
    iput-object v8, v5, Ljava/util/concurrent/locks/StampedLock$WriterNode;->waiter:Ljava/lang/Thread;

    .line 1225
    if-eqz v3, :cond_61

    .line 1226
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 1228
    :cond_61
    return-wide v15

    .line 1229
    .end local v13    # "s":J
    .end local v15    # "nextState":J
    :cond_62
    if-nez v5, :cond_6b

    .line 1230
    new-instance v7, Ljava/util/concurrent/locks/StampedLock$WriterNode;

    invoke-direct {v7}, Ljava/util/concurrent/locks/StampedLock$WriterNode;-><init>()V

    move-object v5, v7

    goto :goto_8

    .line 1231
    :cond_6b
    if-nez v6, :cond_85

    .line 1232
    iget-object v7, v0, Ljava/util/concurrent/locks/StampedLock;->tail:Ljava/util/concurrent/locks/StampedLock$Node;

    .line 1233
    .local v7, "t":Ljava/util/concurrent/locks/StampedLock$Node;
    invoke-virtual {v5, v7}, Ljava/util/concurrent/locks/StampedLock$WriterNode;->setPrevRelaxed(Ljava/util/concurrent/locks/StampedLock$Node;)V

    .line 1234
    if-nez v7, :cond_78

    .line 1235
    invoke-direct {v0}, Ljava/util/concurrent/locks/StampedLock;->tryInitializeHead()V

    goto :goto_84

    .line 1236
    :cond_78
    invoke-direct {v0, v7, v5}, Ljava/util/concurrent/locks/StampedLock;->casTail(Ljava/util/concurrent/locks/StampedLock$Node;Ljava/util/concurrent/locks/StampedLock$Node;)Z

    move-result v9

    if-nez v9, :cond_82

    .line 1237
    invoke-virtual {v5, v8}, Ljava/util/concurrent/locks/StampedLock$WriterNode;->setPrevRelaxed(Ljava/util/concurrent/locks/StampedLock$Node;)V

    goto :goto_84

    .line 1239
    :cond_82
    iput-object v5, v7, Ljava/util/concurrent/locks/StampedLock$Node;->next:Ljava/util/concurrent/locks/StampedLock$Node;

    .line 1240
    .end local v7    # "t":Ljava/util/concurrent/locks/StampedLock$Node;
    :goto_84
    goto :goto_8

    :cond_85
    if-eqz v4, :cond_91

    if-eqz v1, :cond_91

    .line 1241
    add-int/lit8 v7, v1, -0x1

    int-to-byte v1, v7

    .line 1242
    invoke-static {}, Ljava/lang/Thread;->onSpinWait()V

    goto/16 :goto_8

    .line 1243
    :cond_91
    iget v8, v5, Ljava/util/concurrent/locks/StampedLock$WriterNode;->status:I

    if-nez v8, :cond_a3

    .line 1244
    iget-object v8, v5, Ljava/util/concurrent/locks/StampedLock$WriterNode;->waiter:Ljava/lang/Thread;

    if-nez v8, :cond_9f

    .line 1245
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    iput-object v8, v5, Ljava/util/concurrent/locks/StampedLock$WriterNode;->waiter:Ljava/lang/Thread;

    .line 1246
    :cond_9f
    iput v7, v5, Ljava/util/concurrent/locks/StampedLock$WriterNode;->status:I

    goto/16 :goto_8

    .line 1249
    :cond_a3
    shl-int/lit8 v8, v2, 0x1

    or-int/2addr v7, v8

    int-to-byte v7, v7

    move v2, v7

    move v1, v7

    .line 1250
    if-nez p2, :cond_af

    .line 1251
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_bd

    .line 1252
    :cond_af
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long v7, p3, v7

    move-wide v11, v7

    .local v11, "nanos":J
    cmp-long v7, v7, v9

    if-lez v7, :cond_cb

    .line 1253
    invoke-static {v0, v11, v12}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 1256
    .end local v11    # "nanos":J
    :goto_bd
    invoke-virtual {v5}, Ljava/util/concurrent/locks/StampedLock$WriterNode;->clearStatus()V

    .line 1257
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    or-int/2addr v7, v3

    move v3, v7

    if-eqz v7, :cond_8

    if-eqz p1, :cond_8

    .line 1258
    nop

    .line 1261
    :cond_cb
    invoke-direct {v0, v5, v3}, Ljava/util/concurrent/locks/StampedLock;->cancelAcquire(Ljava/util/concurrent/locks/StampedLock$Node;Z)J

    move-result-wide v7

    return-wide v7
.end method

.method private blacklist cancelAcquire(Ljava/util/concurrent/locks/StampedLock$Node;Z)J
    .registers 5
    .param p1, "node"    # Ljava/util/concurrent/locks/StampedLock$Node;
    .param p2, "interrupted"    # Z

    .line 1457
    if-eqz p1, :cond_16

    .line 1458
    const/4 v0, 0x0

    iput-object v0, p1, Ljava/util/concurrent/locks/StampedLock$Node;->waiter:Ljava/lang/Thread;

    .line 1459
    const/high16 v0, -0x80000000

    iput v0, p1, Ljava/util/concurrent/locks/StampedLock$Node;->status:I

    .line 1460
    invoke-direct {p0}, Ljava/util/concurrent/locks/StampedLock;->cleanQueue()V

    .line 1461
    instance-of v0, p1, Ljava/util/concurrent/locks/StampedLock$ReaderNode;

    if-eqz v0, :cond_16

    .line 1462
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/locks/StampedLock$ReaderNode;

    invoke-static {v0}, Ljava/util/concurrent/locks/StampedLock;->signalCowaiters(Ljava/util/concurrent/locks/StampedLock$ReaderNode;)V

    .line 1464
    :cond_16
    if-nez p2, :cond_22

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_22

    :cond_1f
    const-wide/16 v0, 0x0

    goto :goto_24

    :cond_22
    :goto_22
    const-wide/16 v0, 0x1

    :goto_24
    return-wide v0
.end method

.method private blacklist cancelCowaiter(Ljava/util/concurrent/locks/StampedLock$ReaderNode;Ljava/util/concurrent/locks/StampedLock$ReaderNode;Z)J
    .registers 6
    .param p1, "node"    # Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    .param p2, "leader"    # Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    .param p3, "interrupted"    # Z

    .line 1478
    if-eqz p1, :cond_c

    .line 1479
    const/4 v0, 0x0

    iput-object v0, p1, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->waiter:Ljava/lang/Thread;

    .line 1480
    const/high16 v0, -0x80000000

    iput v0, p1, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->status:I

    .line 1481
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/locks/StampedLock;->unlinkCowaiter(Ljava/util/concurrent/locks/StampedLock$ReaderNode;Ljava/util/concurrent/locks/StampedLock$ReaderNode;)V

    .line 1483
    :cond_c
    if-nez p3, :cond_18

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_18

    :cond_15
    const-wide/16 v0, 0x0

    goto :goto_1a

    :cond_18
    :goto_18
    const-wide/16 v0, 0x1

    :goto_1a
    return-wide v0
.end method

.method private blacklist casState(JJ)Z
    .registers 13
    .param p1, "expect"    # J
    .param p3, "update"    # J

    .line 423
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    .end local p1    # "expect":J
    .end local p3    # "update":J
    .local v4, "expect":J
    .local v6, "update":J
    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/Unsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method

.method private blacklist casTail(Ljava/util/concurrent/locks/StampedLock$Node;Ljava/util/concurrent/locks/StampedLock$Node;)Z
    .registers 9
    .param p1, "c"    # Ljava/util/concurrent/locks/StampedLock$Node;
    .param p2, "v"    # Ljava/util/concurrent/locks/StampedLock$Node;

    .line 1181
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/StampedLock;->TAIL:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "c":Ljava/util/concurrent/locks/StampedLock$Node;
    .end local p2    # "v":Ljava/util/concurrent/locks/StampedLock$Node;
    .local v4, "c":Ljava/util/concurrent/locks/StampedLock$Node;
    .local v5, "v":Ljava/util/concurrent/locks/StampedLock$Node;
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private blacklist cleanQueue()V
    .registers 6

    .line 1400
    nop

    :goto_1
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->tail:Ljava/util/concurrent/locks/StampedLock$Node;

    .local v0, "q":Ljava/util/concurrent/locks/StampedLock$Node;
    const/4 v1, 0x0

    .line 1401
    .local v1, "s":Ljava/util/concurrent/locks/StampedLock$Node;
    :goto_4
    if-eqz v0, :cond_5d

    iget-object v2, v0, Ljava/util/concurrent/locks/StampedLock$Node;->prev:Ljava/util/concurrent/locks/StampedLock$Node;

    move-object v3, v2

    .local v3, "p":Ljava/util/concurrent/locks/StampedLock$Node;
    if-nez v2, :cond_c

    goto :goto_5d

    .line 1403
    :cond_c
    if-nez v1, :cond_13

    iget-object v2, p0, Ljava/util/concurrent/locks/StampedLock;->tail:Ljava/util/concurrent/locks/StampedLock$Node;

    if-eq v2, v0, :cond_1c

    goto :goto_5c

    :cond_13
    iget-object v2, v1, Ljava/util/concurrent/locks/StampedLock$Node;->prev:Ljava/util/concurrent/locks/StampedLock$Node;

    if-ne v2, v0, :cond_5c

    iget v2, v1, Ljava/util/concurrent/locks/StampedLock$Node;->status:I

    if-gez v2, :cond_1c

    .line 1404
    goto :goto_5c

    .line 1405
    :cond_1c
    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$Node;->status:I

    if-gez v2, :cond_3e

    .line 1406
    if-nez v1, :cond_29

    invoke-direct {p0, v0, v3}, Ljava/util/concurrent/locks/StampedLock;->casTail(Ljava/util/concurrent/locks/StampedLock$Node;Ljava/util/concurrent/locks/StampedLock$Node;)Z

    move-result v2

    if-eqz v2, :cond_5c

    goto :goto_2f

    :cond_29
    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/locks/StampedLock$Node;->casPrev(Ljava/util/concurrent/locks/StampedLock$Node;Ljava/util/concurrent/locks/StampedLock$Node;)Z

    move-result v2

    if-eqz v2, :cond_5c

    :goto_2f
    iget-object v2, v0, Ljava/util/concurrent/locks/StampedLock$Node;->prev:Ljava/util/concurrent/locks/StampedLock$Node;

    if-ne v2, v3, :cond_5c

    .line 1408
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/locks/StampedLock$Node;->casNext(Ljava/util/concurrent/locks/StampedLock$Node;Ljava/util/concurrent/locks/StampedLock$Node;)Z

    .line 1409
    iget-object v2, v3, Ljava/util/concurrent/locks/StampedLock$Node;->prev:Ljava/util/concurrent/locks/StampedLock$Node;

    if-nez v2, :cond_5c

    .line 1410
    invoke-static {v3}, Ljava/util/concurrent/locks/StampedLock;->signalNext(Ljava/util/concurrent/locks/StampedLock$Node;)V

    goto :goto_5c

    .line 1414
    :cond_3e
    iget-object v2, v3, Ljava/util/concurrent/locks/StampedLock$Node;->next:Ljava/util/concurrent/locks/StampedLock$Node;

    move-object v4, v2

    .local v4, "n":Ljava/util/concurrent/locks/StampedLock$Node;
    if-eq v2, v0, :cond_58

    .line 1415
    if-eqz v4, :cond_5c

    iget-object v2, v0, Ljava/util/concurrent/locks/StampedLock$Node;->prev:Ljava/util/concurrent/locks/StampedLock$Node;

    if-ne v2, v3, :cond_5c

    iget v2, v0, Ljava/util/concurrent/locks/StampedLock$Node;->status:I

    if-ltz v2, :cond_5c

    .line 1416
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/locks/StampedLock$Node;->casNext(Ljava/util/concurrent/locks/StampedLock$Node;Ljava/util/concurrent/locks/StampedLock$Node;)Z

    .line 1417
    iget-object v2, v3, Ljava/util/concurrent/locks/StampedLock$Node;->prev:Ljava/util/concurrent/locks/StampedLock$Node;

    if-nez v2, :cond_5c

    .line 1418
    invoke-static {v3}, Ljava/util/concurrent/locks/StampedLock;->signalNext(Ljava/util/concurrent/locks/StampedLock$Node;)V

    goto :goto_5c

    .line 1422
    :cond_58
    move-object v1, v0

    .line 1423
    iget-object v0, v0, Ljava/util/concurrent/locks/StampedLock$Node;->prev:Ljava/util/concurrent/locks/StampedLock$Node;

    goto :goto_4

    .end local v0    # "q":Ljava/util/concurrent/locks/StampedLock$Node;
    .end local v1    # "s":Ljava/util/concurrent/locks/StampedLock$Node;
    .end local v3    # "p":Ljava/util/concurrent/locks/StampedLock$Node;
    .end local v4    # "n":Ljava/util/concurrent/locks/StampedLock$Node;
    :cond_5c
    :goto_5c
    goto :goto_1

    .line 1402
    .restart local v0    # "q":Ljava/util/concurrent/locks/StampedLock$Node;
    .restart local v1    # "s":Ljava/util/concurrent/locks/StampedLock$Node;
    :cond_5d
    :goto_5d
    return-void
.end method

.method private greylist-max-o getReadLockCount(J)I
    .registers 9
    .param p1, "s"    # J

    .line 854
    const-wide/16 v0, 0x7f

    and-long/2addr v0, p1

    move-wide v2, v0

    .local v2, "readers":J
    const-wide/16 v4, 0x7e

    cmp-long v0, v0, v4

    if-ltz v0, :cond_f

    .line 855
    iget v0, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    int-to-long v0, v0

    add-long v2, v0, v4

    .line 856
    :cond_f
    long-to-int v0, v2

    return v0
.end method

.method public static whitelist test-api isLockStamp(J)Z
    .registers 6
    .param p0, "stamp"    # J

    .line 946
    const-wide/16 v0, 0xff

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static whitelist test-api isOptimisticReadStamp(J)Z
    .registers 6
    .param p0, "stamp"    # J

    .line 960
    const-wide/16 v0, 0xff

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    cmp-long v0, p0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static whitelist test-api isReadLockStamp(J)Z
    .registers 6
    .param p0, "stamp"    # J

    .line 920
    const-wide/16 v0, 0x7f

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static whitelist test-api isWriteLockStamp(J)Z
    .registers 6
    .param p0, "stamp"    # J

    .line 897
    const-wide/16 v0, 0xff

    and-long/2addr v0, p0

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1103
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1104
    const-wide/16 v0, 0x100

    iput-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .line 1105
    return-void
.end method

.method private blacklist releaseWrite(J)J
    .registers 6
    .param p1, "s"    # J

    .line 461
    invoke-static {p1, p2}, Ljava/util/concurrent/locks/StampedLock;->unlockWriteState(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .line 462
    .local v0, "nextState":J
    iget-object v2, p0, Ljava/util/concurrent/locks/StampedLock;->head:Ljava/util/concurrent/locks/StampedLock$Node;

    invoke-static {v2}, Ljava/util/concurrent/locks/StampedLock;->signalNext(Ljava/util/concurrent/locks/StampedLock$Node;)V

    .line 463
    return-wide v0
.end method

.method private static blacklist signalCowaiters(Ljava/util/concurrent/locks/StampedLock$ReaderNode;)V
    .registers 3
    .param p0, "node"    # Ljava/util/concurrent/locks/StampedLock$ReaderNode;

    .line 1171
    if-eqz p0, :cond_15

    .line 1172
    :cond_2
    :goto_2
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->cowaiters:Ljava/util/concurrent/locks/StampedLock$ReaderNode;

    move-object v1, v0

    .local v1, "c":Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    if-eqz v0, :cond_15

    .line 1173
    iget-object v0, v1, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->cowaiters:Ljava/util/concurrent/locks/StampedLock$ReaderNode;

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->casCowaiters(Ljava/util/concurrent/locks/StampedLock$ReaderNode;Ljava/util/concurrent/locks/StampedLock$ReaderNode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1174
    iget-object v0, v1, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->waiter:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_2

    .line 1177
    .end local v1    # "c":Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    :cond_15
    return-void
.end method

.method static final blacklist signalNext(Ljava/util/concurrent/locks/StampedLock$Node;)V
    .registers 3
    .param p0, "h"    # Ljava/util/concurrent/locks/StampedLock$Node;

    .line 1161
    if-eqz p0, :cond_14

    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$Node;->next:Ljava/util/concurrent/locks/StampedLock$Node;

    move-object v1, v0

    .local v1, "s":Ljava/util/concurrent/locks/StampedLock$Node;
    if-eqz v0, :cond_14

    iget v0, v1, Ljava/util/concurrent/locks/StampedLock$Node;->status:I

    if-lez v0, :cond_14

    .line 1162
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/locks/StampedLock$Node;->getAndUnsetStatus(I)I

    .line 1163
    iget-object v0, v1, Ljava/util/concurrent/locks/StampedLock$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1165
    .end local v1    # "s":Ljava/util/concurrent/locks/StampedLock$Node;
    :cond_14
    return-void
.end method

.method private blacklist tryAcquireRead()J
    .registers 11

    .line 439
    nop

    :cond_1
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v2, v0

    .local v2, "s":J
    const-wide/16 v4, 0xff

    and-long/2addr v0, v4

    move-wide v4, v0

    .local v4, "m":J
    const-wide/16 v6, 0x7e

    cmp-long v0, v0, v6

    if-gez v0, :cond_19

    .line 440
    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    move-wide v6, v0

    .local v6, "nextState":J
    invoke-direct {p0, v2, v3, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->casState(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    return-wide v6

    .line 443
    .end local v6    # "nextState":J
    :cond_19
    const-wide/16 v0, 0x80

    cmp-long v0, v4, v0

    const-wide/16 v6, 0x0

    if-nez v0, :cond_22

    .line 444
    return-wide v6

    .line 445
    :cond_22
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    move-result-wide v0

    move-wide v8, v0

    .local v8, "nextState":J
    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    .line 446
    return-wide v8
.end method

.method private blacklist tryAcquireWrite()J
    .registers 9

    .line 429
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v2, v0

    .local v2, "s":J
    const-wide/16 v4, 0xff

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1c

    const-wide/16 v0, 0x80

    or-long/2addr v0, v2

    move-wide v6, v0

    .local v6, "nextState":J
    invoke-direct {p0, v2, v3, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->casState(JJ)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 430
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0}, Ljdk/internal/misc/Unsafe;->storeStoreFence()V

    .line 431
    return-wide v6

    .line 433
    .end local v6    # "nextState":J
    :cond_1c
    return-wide v4
.end method

.method private greylist-max-o tryDecReaderOverflow(J)J
    .registers 7
    .param p1, "s"    # J

    .line 1136
    const-wide/16 v0, 0xff

    and-long/2addr v0, p1

    const-wide/16 v2, 0x7e

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 1137
    invoke-static {}, Ljava/lang/Thread;->onSpinWait()V

    goto :goto_28

    .line 1138
    :cond_d
    const-wide/16 v0, 0x7f

    or-long/2addr v0, p1

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->casState(JJ)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1140
    iget v0, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    move v1, v0

    .local v1, "r":I
    if-lez v0, :cond_21

    .line 1141
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    .line 1142
    move-wide v2, p1

    .local v2, "nextState":J
    goto :goto_25

    .line 1145
    .end local v2    # "nextState":J
    :cond_21
    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    .line 1146
    .restart local v2    # "nextState":J
    :goto_25
    iput-wide v2, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    return-wide v2

    .line 1148
    .end local v1    # "r":I
    .end local v2    # "nextState":J
    :cond_28
    :goto_28
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private greylist-max-o tryIncReaderOverflow(J)J
    .registers 7
    .param p1, "s"    # J

    .line 1119
    const-wide/16 v0, 0xff

    and-long/2addr v0, p1

    const-wide/16 v2, 0x7e

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 1120
    invoke-static {}, Ljava/lang/Thread;->onSpinWait()V

    goto :goto_1f

    .line 1121
    :cond_d
    const-wide/16 v0, 0x7f

    or-long/2addr v0, p1

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->casState(JJ)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1122
    iget v0, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/concurrent/locks/StampedLock;->readerOverflow:I

    .line 1123
    iput-wide p1, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    return-wide p1

    .line 1125
    :cond_1f
    :goto_1f
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private blacklist tryInitializeHead()V
    .registers 8

    .line 1186
    new-instance v0, Ljava/util/concurrent/locks/StampedLock$WriterNode;

    invoke-direct {v0}, Ljava/util/concurrent/locks/StampedLock$WriterNode;-><init>()V

    move-object v6, v0

    .line 1187
    .local v6, "h":Ljava/util/concurrent/locks/StampedLock$Node;
    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/locks/StampedLock;->HEAD:J

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljdk/internal/misc/Unsafe;->compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1188
    iput-object v6, v2, Ljava/util/concurrent/locks/StampedLock;->tail:Ljava/util/concurrent/locks/StampedLock$Node;

    .line 1189
    :cond_14
    return-void
.end method

.method private blacklist unlinkCowaiter(Ljava/util/concurrent/locks/StampedLock$ReaderNode;Ljava/util/concurrent/locks/StampedLock$ReaderNode;)V
    .registers 6
    .param p1, "node"    # Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    .param p2, "leader"    # Ljava/util/concurrent/locks/StampedLock$ReaderNode;

    .line 1433
    if-eqz p2, :cond_1c

    .line 1434
    :goto_2
    iget-object v0, p2, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->prev:Ljava/util/concurrent/locks/StampedLock$Node;

    if-eqz v0, :cond_1c

    iget v0, p2, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->status:I

    if-ltz v0, :cond_1c

    .line 1435
    move-object v0, p2

    .line 1436
    .local v0, "p":Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    :goto_b
    iget-object v1, v0, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->cowaiters:Ljava/util/concurrent/locks/StampedLock$ReaderNode;

    move-object v2, v1

    .local v2, "q":Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    if-nez v1, :cond_11

    .line 1437
    return-void

    .line 1438
    :cond_11
    if-ne v2, p1, :cond_1a

    .line 1439
    iget-object v1, v2, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->cowaiters:Ljava/util/concurrent/locks/StampedLock$ReaderNode;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/locks/StampedLock$ReaderNode;->casCowaiters(Ljava/util/concurrent/locks/StampedLock$ReaderNode;Ljava/util/concurrent/locks/StampedLock$ReaderNode;)Z

    .line 1440
    nop

    .line 1435
    .end local v0    # "p":Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    .end local v2    # "q":Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    goto :goto_2

    .restart local v0    # "p":Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    .restart local v2    # "q":Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    :cond_1a
    move-object v0, v2

    goto :goto_b

    .line 1445
    .end local v0    # "p":Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    .end local v2    # "q":Ljava/util/concurrent/locks/StampedLock$ReaderNode;
    :cond_1c
    return-void
.end method

.method private static blacklist unlockWriteState(J)J
    .registers 6
    .param p0, "s"    # J

    .line 457
    const-wide/16 v0, 0x80

    add-long/2addr v0, p0

    move-wide p0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const-wide/16 v0, 0x100

    goto :goto_e

    :cond_d
    move-wide v0, p0

    :goto_e
    return-wide v0
.end method


# virtual methods
.method public whitelist test-api asReadLock()Ljava/util/concurrent/locks/Lock;
    .registers 3

    .line 1003
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->readLockView:Ljava/util/concurrent/locks/StampedLock$ReadLockView;

    move-object v1, v0

    .local v1, "v":Ljava/util/concurrent/locks/StampedLock$ReadLockView;
    if-eqz v0, :cond_6

    return-object v1

    .line 1004
    :cond_6
    new-instance v0, Ljava/util/concurrent/locks/StampedLock$ReadLockView;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/StampedLock$ReadLockView;-><init>(Ljava/util/concurrent/locks/StampedLock;)V

    iput-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->readLockView:Ljava/util/concurrent/locks/StampedLock$ReadLockView;

    return-object v0
.end method

.method public whitelist test-api asReadWriteLock()Ljava/util/concurrent/locks/ReadWriteLock;
    .registers 3

    .line 1032
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->readWriteLockView:Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;

    move-object v1, v0

    .local v1, "v":Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;
    if-eqz v0, :cond_6

    return-object v1

    .line 1033
    :cond_6
    new-instance v0, Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;-><init>(Ljava/util/concurrent/locks/StampedLock;)V

    iput-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->readWriteLockView:Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;

    return-object v0
.end method

.method public whitelist test-api asWriteLock()Ljava/util/concurrent/locks/Lock;
    .registers 3

    .line 1018
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->writeLockView:Ljava/util/concurrent/locks/StampedLock$WriteLockView;

    move-object v1, v0

    .local v1, "v":Ljava/util/concurrent/locks/StampedLock$WriteLockView;
    if-eqz v0, :cond_6

    return-object v1

    .line 1019
    :cond_6
    new-instance v0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/StampedLock$WriteLockView;-><init>(Ljava/util/concurrent/locks/StampedLock;)V

    iput-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->writeLockView:Ljava/util/concurrent/locks/StampedLock$WriteLockView;

    return-object v0
.end method

.method public whitelist test-api getReadLockCount()I
    .registers 3

    .line 970
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->getReadLockCount(J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api isReadLocked()Z
    .registers 5

    .line 874
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v2, 0x7f

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist test-api isWriteLocked()Z
    .registers 5

    .line 865
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist test-api readLock()J
    .registers 8

    .line 550
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    invoke-virtual {v0, p0, v1, v2}, Ljdk/internal/misc/Unsafe;->getLongOpaque(Ljava/lang/Object;J)J

    move-result-wide v0

    const-wide/16 v2, -0xc1

    and-long/2addr v0, v2

    .line 551
    .local v0, "s":J
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    move-wide v4, v2

    .local v4, "nextState":J
    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/concurrent/locks/StampedLock;->casState(JJ)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 552
    return-wide v4

    .line 554
    :cond_16
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v6, v6, v2, v3}, Ljava/util/concurrent/locks/StampedLock;->acquireRead(ZZJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public whitelist test-api readLockInterruptibly()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 608
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 609
    invoke-direct {p0}, Ljava/util/concurrent/locks/StampedLock;->tryAcquireRead()J

    move-result-wide v0

    move-wide v2, v0

    .local v2, "nextState":J
    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1e

    .line 610
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->acquireRead(ZZJ)J

    move-result-wide v0

    move-wide v2, v0

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1f

    .line 611
    :cond_1e
    return-wide v2

    .line 612
    .end local v2    # "nextState":J
    :cond_1f
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 983
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .line 984
    .local v0, "s":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 985
    const-wide/16 v3, 0xff

    and-long/2addr v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1b

    const-string v3, "[Unlocked]"

    goto :goto_42

    .line 986
    :cond_1b
    const-wide/16 v3, 0x80

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_25

    const-string v3, "[Write-locked]"

    goto :goto_42

    .line 987
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Read-locks:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->getReadLockCount(J)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 984
    return-object v2
.end method

.method public whitelist test-api tryConvertToOptimisticRead(J)J
    .registers 17
    .param p1, "stamp"    # J

    .line 783
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0}, Ljdk/internal/misc/Unsafe;->loadFence()V

    .line 784
    :cond_5
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v2, v0

    .local v2, "s":J
    const-wide/16 v4, -0x80

    and-long/2addr v0, v4

    and-long v6, p1, v4

    cmp-long v0, v0, v6

    const-wide/16 v6, 0x0

    if-nez v0, :cond_5d

    .line 785
    const-wide/16 v0, 0xff

    and-long v8, p1, v0

    move-wide v10, v8

    .local v10, "a":J
    const-wide/16 v12, 0x80

    cmp-long v8, v8, v12

    if-ltz v8, :cond_28

    .line 786
    cmp-long v0, v2, p1

    if-eqz v0, :cond_23

    .line 787
    goto :goto_5d

    .line 788
    :cond_23
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/locks/StampedLock;->releaseWrite(J)J

    move-result-wide v0

    return-wide v0

    .line 789
    :cond_28
    cmp-long v8, v10, v6

    if-nez v8, :cond_2d

    .line 790
    return-wide p1

    .line 791
    :cond_2d
    and-long/2addr v0, v2

    move-wide v8, v0

    .local v8, "m":J
    cmp-long v0, v0, v6

    if-nez v0, :cond_34

    .line 792
    goto :goto_5d

    .line 793
    :cond_34
    const-wide/16 v0, 0x7e

    cmp-long v0, v8, v0

    if-gez v0, :cond_51

    .line 794
    const-wide/16 v0, 0x1

    sub-long v6, v2, v0

    move-wide v12, v6

    .local v12, "nextState":J
    invoke-direct {p0, v2, v3, v6, v7}, Ljava/util/concurrent/locks/StampedLock;->casState(JJ)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 795
    cmp-long v0, v8, v0

    if-nez v0, :cond_4e

    .line 796
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->head:Ljava/util/concurrent/locks/StampedLock$Node;

    invoke-static {v0}, Ljava/util/concurrent/locks/StampedLock;->signalNext(Ljava/util/concurrent/locks/StampedLock$Node;)V

    .line 797
    :cond_4e
    and-long v0, v12, v4

    return-wide v0

    .line 799
    .end local v12    # "nextState":J
    :cond_51
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    move-result-wide v0

    move-wide v12, v0

    .restart local v12    # "nextState":J
    cmp-long v0, v0, v6

    if-eqz v0, :cond_5

    .line 800
    and-long v0, v12, v4

    return-wide v0

    .line 802
    .end local v8    # "m":J
    .end local v10    # "a":J
    .end local v12    # "nextState":J
    :cond_5d
    :goto_5d
    return-wide v6
.end method

.method public whitelist test-api tryConvertToReadLock(J)J
    .registers 15
    .param p1, "stamp"    # J

    .line 749
    nop

    :cond_1
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v2, v0

    .local v2, "s":J
    const-wide/16 v4, -0x80

    and-long/2addr v0, v4

    and-long/2addr v4, p1

    cmp-long v0, v0, v4

    const-wide/16 v4, 0x0

    if-nez v0, :cond_52

    .line 750
    const-wide/16 v0, 0xff

    and-long v6, p1, v0

    move-wide v8, v6

    .local v8, "a":J
    const-wide/16 v10, 0x80

    cmp-long v6, v6, v10

    const-wide/16 v10, 0x1

    if-ltz v6, :cond_2d

    .line 751
    cmp-long v0, v2, p1

    if-eqz v0, :cond_20

    .line 752
    goto :goto_52

    .line 753
    :cond_20
    invoke-static {v2, v3}, Ljava/util/concurrent/locks/StampedLock;->unlockWriteState(J)J

    move-result-wide v0

    add-long/2addr v0, v10

    iput-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    .line 754
    .local v0, "nextState":J
    iget-object v4, p0, Ljava/util/concurrent/locks/StampedLock;->head:Ljava/util/concurrent/locks/StampedLock$Node;

    invoke-static {v4}, Ljava/util/concurrent/locks/StampedLock;->signalNext(Ljava/util/concurrent/locks/StampedLock$Node;)V

    .line 755
    return-wide v0

    .line 756
    .end local v0    # "nextState":J
    :cond_2d
    cmp-long v6, v8, v4

    if-nez v6, :cond_4b

    .line 757
    and-long/2addr v0, v2

    const-wide/16 v6, 0x7e

    cmp-long v0, v0, v6

    if-gez v0, :cond_41

    .line 758
    add-long/2addr v10, v2

    move-wide v0, v10

    .restart local v0    # "nextState":J
    invoke-direct {p0, v2, v3, v10, v11}, Ljava/util/concurrent/locks/StampedLock;->casState(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 759
    return-wide v0

    .line 760
    .end local v0    # "nextState":J
    :cond_41
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/locks/StampedLock;->tryIncReaderOverflow(J)J

    move-result-wide v0

    move-wide v6, v0

    .local v6, "nextState":J
    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 761
    return-wide v6

    .line 763
    .end local v6    # "nextState":J
    :cond_4b
    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_51

    .line 764
    goto :goto_52

    .line 765
    :cond_51
    return-wide p1

    .line 768
    .end local v8    # "a":J
    :cond_52
    :goto_52
    return-wide v4
.end method

.method public whitelist test-api tryConvertToWriteLock(J)J
    .registers 19
    .param p1, "stamp"    # J

    .line 714
    move-object/from16 v0, p0

    const-wide/16 v1, 0xff

    and-long v3, p1, v1

    .line 715
    .local v3, "a":J
    :cond_6
    iget-wide v5, v0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v7, v5

    .local v7, "s":J
    const-wide/16 v9, -0x80

    and-long/2addr v5, v9

    and-long v9, p1, v9

    cmp-long v5, v5, v9

    const-wide/16 v9, 0x0

    if-nez v5, :cond_50

    .line 716
    and-long v5, v7, v1

    move-wide v11, v5

    .local v11, "m":J
    cmp-long v5, v5, v9

    const-wide/16 v13, 0x80

    if-nez v5, :cond_31

    .line 717
    cmp-long v5, v3, v9

    if-eqz v5, :cond_22

    .line 718
    goto :goto_50

    .line 719
    :cond_22
    or-long v5, v7, v13

    move-wide v9, v5

    .local v9, "nextState":J
    invoke-direct {v0, v7, v8, v5, v6}, Ljava/util/concurrent/locks/StampedLock;->casState(JJ)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 720
    sget-object v1, Ljava/util/concurrent/locks/StampedLock;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v1}, Ljdk/internal/misc/Unsafe;->storeStoreFence()V

    .line 721
    return-wide v9

    .line 723
    .end local v9    # "nextState":J
    :cond_31
    cmp-long v5, v11, v13

    if-nez v5, :cond_3b

    .line 724
    cmp-long v1, v3, v11

    if-eqz v1, :cond_3a

    .line 725
    goto :goto_50

    .line 726
    :cond_3a
    return-wide p1

    .line 727
    :cond_3b
    const-wide/16 v5, 0x1

    cmp-long v15, v11, v5

    if-nez v15, :cond_50

    cmp-long v15, v3, v9

    if-eqz v15, :cond_50

    .line 728
    sub-long v5, v7, v5

    add-long/2addr v5, v13

    move-wide v9, v5

    .restart local v9    # "nextState":J
    invoke-direct {v0, v7, v8, v5, v6}, Ljava/util/concurrent/locks/StampedLock;->casState(JJ)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 729
    return-wide v9

    .line 733
    .end local v9    # "nextState":J
    .end local v11    # "m":J
    :cond_50
    :goto_50
    return-wide v9
.end method

.method public whitelist test-api tryOptimisticRead()J
    .registers 7

    .line 623
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v2, v0

    .local v2, "s":J
    const-wide/16 v4, 0x80

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_10

    const-wide/16 v0, -0x80

    and-long v4, v2, v0

    :cond_10
    return-wide v4
.end method

.method public whitelist test-api tryReadLock()J
    .registers 3

    .line 564
    invoke-direct {p0}, Ljava/util/concurrent/locks/StampedLock;->tryAcquireRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api tryReadLock(JLjava/util/concurrent/TimeUnit;)J
    .registers 12
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 582
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 583
    .local v0, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_32

    .line 585
    iget-object v2, p0, Ljava/util/concurrent/locks/StampedLock;->tail:Ljava/util/concurrent/locks/StampedLock$Node;

    iget-object v3, p0, Ljava/util/concurrent/locks/StampedLock;->head:Ljava/util/concurrent/locks/StampedLock$Node;

    const-wide/16 v4, 0x0

    if-ne v2, v3, :cond_1c

    invoke-direct {p0}, Ljava/util/concurrent/locks/StampedLock;->tryAcquireRead()J

    move-result-wide v2

    move-wide v6, v2

    .local v6, "nextState":J
    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    .line 586
    return-wide v6

    .line 587
    .end local v6    # "nextState":J
    :cond_1c
    cmp-long v2, v0, v4

    if-gtz v2, :cond_21

    .line 588
    return-wide v4

    .line 589
    :cond_21
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long/2addr v2, v0

    const/4 v4, 0x1

    invoke-direct {p0, v4, v4, v2, v3}, Ljava/util/concurrent/locks/StampedLock;->acquireRead(ZZJ)J

    move-result-wide v2

    .line 590
    .local v2, "nextState":J
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_32

    .line 591
    return-wide v2

    .line 593
    .end local v2    # "nextState":J
    :cond_32
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2
.end method

.method public whitelist test-api tryUnlockRead()Z
    .registers 11

    .line 832
    nop

    :cond_1
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v2, v0

    .local v2, "s":J
    const-wide/16 v4, 0xff

    and-long/2addr v0, v4

    move-wide v4, v0

    .local v4, "m":J
    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_38

    const-wide/16 v0, 0x80

    cmp-long v0, v4, v0

    if-gez v0, :cond_38

    .line 833
    const-wide/16 v0, 0x7e

    cmp-long v0, v4, v0

    const/4 v1, 0x1

    if-gez v0, :cond_2f

    .line 834
    const-wide/16 v6, 0x1

    sub-long v8, v2, v6

    invoke-direct {p0, v2, v3, v8, v9}, Ljava/util/concurrent/locks/StampedLock;->casState(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 835
    cmp-long v0, v4, v6

    if-nez v0, :cond_2e

    .line 836
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->head:Ljava/util/concurrent/locks/StampedLock$Node;

    invoke-static {v0}, Ljava/util/concurrent/locks/StampedLock;->signalNext(Ljava/util/concurrent/locks/StampedLock$Node;)V

    .line 837
    :cond_2e
    return v1

    .line 840
    :cond_2f
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-eqz v0, :cond_1

    .line 841
    return v1

    .line 843
    :cond_38
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api tryUnlockWrite()Z
    .registers 7

    .line 815
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v2, v0

    .local v2, "s":J
    const-wide/16 v4, 0x80

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_11

    .line 816
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/locks/StampedLock;->releaseWrite(J)J

    .line 817
    const/4 v0, 0x1

    return v0

    .line 819
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api tryWriteLock()J
    .registers 3

    .line 490
    invoke-direct {p0}, Ljava/util/concurrent/locks/StampedLock;->tryAcquireWrite()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api tryWriteLock(JLjava/util/concurrent/TimeUnit;)J
    .registers 12
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 508
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 509
    .local v0, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 511
    invoke-direct {p0}, Ljava/util/concurrent/locks/StampedLock;->tryAcquireWrite()J

    move-result-wide v2

    move-wide v4, v2

    .local v4, "nextState":J
    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_16

    .line 512
    return-wide v4

    .line 513
    :cond_16
    cmp-long v2, v0, v6

    if-gtz v2, :cond_1b

    .line 514
    return-wide v6

    .line 515
    :cond_1b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long/2addr v2, v0

    const/4 v6, 0x1

    invoke-direct {p0, v6, v6, v2, v3}, Ljava/util/concurrent/locks/StampedLock;->acquireWrite(ZZJ)J

    move-result-wide v2

    .line 516
    .end local v4    # "nextState":J
    .local v2, "nextState":J
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2c

    .line 517
    return-wide v2

    .line 519
    .end local v2    # "nextState":J
    :cond_2c
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2
.end method

.method public whitelist test-api unlock(J)V
    .registers 7
    .param p1, "stamp"    # J

    .line 695
    const-wide/16 v0, 0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 696
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    goto :goto_10

    .line 698
    :cond_d
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    .line 699
    :goto_10
    return-void
.end method

.method public whitelist test-api unlockRead(J)V
    .registers 15
    .param p1, "stamp"    # J

    .line 669
    const-wide/16 v0, 0x7f

    and-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3f

    .line 670
    :cond_a
    iget-wide v2, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v6, v2

    .local v6, "s":J
    const-wide/16 v8, -0x80

    and-long/2addr v2, v8

    and-long/2addr v8, p1

    cmp-long v2, v2, v8

    if-nez v2, :cond_3f

    and-long v2, v6, v0

    move-wide v8, v2

    .local v8, "m":J
    cmp-long v2, v2, v4

    if-eqz v2, :cond_3f

    .line 672
    const-wide/16 v2, 0x7e

    cmp-long v2, v8, v2

    if-gez v2, :cond_36

    .line 673
    const-wide/16 v2, 0x1

    sub-long v10, v6, v2

    invoke-direct {p0, v6, v7, v10, v11}, Ljava/util/concurrent/locks/StampedLock;->casState(JJ)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 674
    cmp-long v0, v8, v2

    if-nez v0, :cond_35

    .line 675
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->head:Ljava/util/concurrent/locks/StampedLock$Node;

    invoke-static {v0}, Ljava/util/concurrent/locks/StampedLock;->signalNext(Ljava/util/concurrent/locks/StampedLock$Node;)V

    .line 676
    :cond_35
    return-void

    .line 679
    :cond_36
    invoke-direct {p0, v6, v7}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    .line 680
    return-void

    .line 683
    .end local v6    # "s":J
    .end local v8    # "m":J
    :cond_3f
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api unlockWrite(J)V
    .registers 7
    .param p1, "stamp"    # J

    .line 653
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_13

    const-wide/16 v0, 0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 655
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/locks/StampedLock;->releaseWrite(J)J

    .line 656
    return-void

    .line 654
    :cond_13
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method final greylist-max-o unstampedUnlockRead()V
    .registers 9

    .line 1087
    nop

    :cond_1
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v2, v0

    .local v2, "s":J
    const-wide/16 v4, 0x7f

    and-long/2addr v0, v4

    move-wide v4, v0

    .local v4, "m":J
    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_31

    .line 1088
    const-wide/16 v0, 0x7e

    cmp-long v0, v4, v0

    if-gez v0, :cond_28

    .line 1089
    const-wide/16 v0, 0x1

    sub-long v6, v2, v0

    invoke-direct {p0, v2, v3, v6, v7}, Ljava/util/concurrent/locks/StampedLock;->casState(JJ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1090
    cmp-long v0, v4, v0

    if-nez v0, :cond_27

    .line 1091
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock;->head:Ljava/util/concurrent/locks/StampedLock$Node;

    invoke-static {v0}, Ljava/util/concurrent/locks/StampedLock;->signalNext(Ljava/util/concurrent/locks/StampedLock$Node;)V

    .line 1092
    :cond_27
    return-void

    .line 1095
    :cond_28
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/locks/StampedLock;->tryDecReaderOverflow(J)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    .line 1096
    return-void

    .line 1098
    :cond_31
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method final greylist-max-o unstampedUnlockWrite()V
    .registers 7

    .line 1080
    iget-wide v0, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    move-wide v2, v0

    .local v2, "s":J
    const-wide/16 v4, 0x80

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_10

    .line 1082
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/locks/StampedLock;->releaseWrite(J)J

    .line 1083
    return-void

    .line 1081
    :cond_10
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api validate(J)Z
    .registers 9
    .param p1, "stamp"    # J

    .line 639
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0}, Ljdk/internal/misc/Unsafe;->loadFence()V

    .line 640
    const-wide/16 v0, -0x80

    and-long v2, p1, v0

    iget-wide v4, p0, Ljava/util/concurrent/locks/StampedLock;->state:J

    and-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist test-api writeLock()J
    .registers 8

    .line 475
    sget-object v0, Ljava/util/concurrent/locks/StampedLock;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/locks/StampedLock;->STATE:J

    invoke-virtual {v0, p0, v1, v2}, Ljdk/internal/misc/Unsafe;->getLongOpaque(Ljava/lang/Object;J)J

    move-result-wide v0

    const-wide/16 v2, -0x100

    and-long/2addr v0, v2

    .line 476
    .local v0, "s":J
    const-wide/16 v2, 0x80

    or-long/2addr v2, v0

    move-wide v4, v2

    .local v4, "nextState":J
    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/concurrent/locks/StampedLock;->casState(JJ)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 477
    sget-object v2, Ljava/util/concurrent/locks/StampedLock;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2}, Ljdk/internal/misc/Unsafe;->storeStoreFence()V

    .line 478
    return-wide v4

    .line 480
    :cond_1b
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v6, v6, v2, v3}, Ljava/util/concurrent/locks/StampedLock;->acquireWrite(ZZJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public whitelist test-api writeLockInterruptibly()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 534
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 535
    invoke-direct {p0}, Ljava/util/concurrent/locks/StampedLock;->tryAcquireWrite()J

    move-result-wide v0

    move-wide v2, v0

    .local v2, "nextState":J
    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1e

    .line 536
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v4, v5}, Ljava/util/concurrent/locks/StampedLock;->acquireWrite(ZZJ)J

    move-result-wide v0

    move-wide v2, v0

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1f

    .line 537
    :cond_1e
    return-wide v2

    .line 538
    .end local v2    # "nextState":J
    :cond_1f
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method
