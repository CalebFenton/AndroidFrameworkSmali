.class public Ljava/util/concurrent/locks/LockSupport;
.super Ljava/lang/Object;
.source "LockSupport.java"


# static fields
.field private static final greylist-max-o PARKBLOCKER:J

.field private static final blacklist U:Ljdk/internal/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 461
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Ljdk/internal/misc/Unsafe;

    .line 462
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/lang/Thread;

    .line 463
    const-string v2, "parkBlocker"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/locks/LockSupport;->PARKBLOCKER:J

    .line 462
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api getBlocker(Ljava/lang/Thread;)Ljava/lang/Object;
    .registers 4
    .param p0, "t"    # Ljava/lang/Thread;

    .line 337
    if-eqz p0, :cond_b

    .line 339
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/locks/LockSupport;->PARKBLOCKER:J

    invoke-virtual {v0, p0, v1, v2}, Ljdk/internal/misc/Unsafe;->getReferenceOpaque(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 338
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static final blacklist getThreadId(Ljava/lang/Thread;)J
    .registers 3
    .param p0, "thread"    # Ljava/lang/Thread;

    .line 457
    invoke-virtual {p0}, Ljava/lang/Thread;->threadId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api park()V
    .registers 4

    .line 368
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 369
    invoke-static {}, Ljdk/internal/misc/VirtualThreads;->park()V

    goto :goto_16

    .line 371
    :cond_e
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Ljdk/internal/misc/Unsafe;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljdk/internal/misc/Unsafe;->park(ZJ)V

    .line 373
    :goto_16
    return-void
.end method

.method public static whitelist test-api park(Ljava/lang/Object;)V
    .registers 7
    .param p0, "blocker"    # Ljava/lang/Object;

    .line 215
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 216
    .local v0, "t":Ljava/lang/Thread;
    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 218
    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Thread;->isVirtual()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 219
    invoke-static {}, Ljdk/internal/misc/VirtualThreads;->park()V

    goto :goto_1a

    .line 221
    :cond_12
    sget-object v2, Ljava/util/concurrent/locks/LockSupport;->U:Ljdk/internal/misc/Unsafe;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljdk/internal/misc/Unsafe;->park(ZJ)V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 224
    :goto_1a
    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 225
    nop

    .line 226
    return-void

    .line 224
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 225
    throw v2
.end method

.method public static whitelist test-api parkNanos(J)V
    .registers 4
    .param p0, "nanos"    # J

    .line 406
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_1a

    .line 407
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 408
    invoke-static {p0, p1}, Ljdk/internal/misc/VirtualThreads;->park(J)V

    goto :goto_1a

    .line 410
    :cond_14
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Ljdk/internal/misc/Unsafe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Ljdk/internal/misc/Unsafe;->park(ZJ)V

    .line 413
    :cond_1a
    :goto_1a
    return-void
.end method

.method public static whitelist test-api parkNanos(Ljava/lang/Object;J)V
    .registers 7
    .param p0, "blocker"    # Ljava/lang/Object;
    .param p1, "nanos"    # J

    .line 262
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_27

    .line 263
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 264
    .local v0, "t":Ljava/lang/Thread;
    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 266
    const/4 v1, 0x0

    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Thread;->isVirtual()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 267
    invoke-static {p1, p2}, Ljdk/internal/misc/VirtualThreads;->park(J)V

    goto :goto_1e

    .line 269
    :cond_18
    sget-object v2, Ljava/util/concurrent/locks/LockSupport;->U:Ljdk/internal/misc/Unsafe;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1, p2}, Ljdk/internal/misc/Unsafe;->park(ZJ)V
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_22

    .line 272
    :goto_1e
    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 273
    goto :goto_27

    .line 272
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 273
    throw v2

    .line 275
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_27
    :goto_27
    return-void
.end method

.method public static whitelist test-api parkUntil(J)V
    .registers 4
    .param p0, "deadline"    # J

    .line 446
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 447
    invoke-static {p0, p1}, Ljdk/internal/misc/VirtualThreads;->parkUntil(J)V

    goto :goto_14

    .line 449
    :cond_e
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Ljdk/internal/misc/Unsafe;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Ljdk/internal/misc/Unsafe;->park(ZJ)V

    .line 451
    :goto_14
    return-void
.end method

.method public static whitelist test-api parkUntil(Ljava/lang/Object;J)V
    .registers 7
    .param p0, "blocker"    # Ljava/lang/Object;
    .param p1, "deadline"    # J

    .line 311
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 312
    .local v0, "t":Ljava/lang/Thread;
    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 314
    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Thread;->isVirtual()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 315
    invoke-static {p1, p2}, Ljdk/internal/misc/VirtualThreads;->parkUntil(J)V

    goto :goto_18

    .line 317
    :cond_12
    sget-object v2, Ljava/util/concurrent/locks/LockSupport;->U:Ljdk/internal/misc/Unsafe;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, p2}, Ljdk/internal/misc/Unsafe;->park(ZJ)V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 320
    :goto_18
    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 321
    nop

    .line 322
    return-void

    .line 320
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 321
    throw v2
.end method

.method private static greylist-max-o setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V
    .registers 5
    .param p0, "t"    # Ljava/lang/Thread;
    .param p1, "arg"    # Ljava/lang/Object;

    .line 144
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/locks/LockSupport;->PARKBLOCKER:J

    invoke-virtual {v0, p0, v1, v2, p1}, Ljdk/internal/misc/Unsafe;->putReferenceOpaque(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 145
    return-void
.end method

.method public static whitelist test-api setCurrentBlocker(Ljava/lang/Object;)V
    .registers 5
    .param p0, "blocker"    # Ljava/lang/Object;

    .line 162
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Ljdk/internal/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-wide v2, Ljava/util/concurrent/locks/LockSupport;->PARKBLOCKER:J

    invoke-virtual {v0, v1, v2, v3, p0}, Ljdk/internal/misc/Unsafe;->putReferenceOpaque(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 163
    return-void
.end method

.method public static whitelist test-api unpark(Ljava/lang/Thread;)V
    .registers 2
    .param p0, "thread"    # Ljava/lang/Thread;

    .line 177
    if-eqz p0, :cond_11

    .line 178
    invoke-virtual {p0}, Ljava/lang/Thread;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 179
    invoke-static {p0}, Ljdk/internal/misc/VirtualThreads;->unpark(Ljava/lang/Thread;)V

    goto :goto_11

    .line 181
    :cond_c
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0, p0}, Ljdk/internal/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 184
    :cond_11
    :goto_11
    return-void
.end method
