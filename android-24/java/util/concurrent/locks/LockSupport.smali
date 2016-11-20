.class public Ljava/util/concurrent/locks/LockSupport;
.super Ljava/lang/Object;
.source "LockSupport.java"


# static fields
.field private static final PARKBLOCKER:J

.field private static final SECONDARY:J

.field private static final U:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 380
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v1

    #@4
    sput-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    #@6
    .line 385
    :try_start_0
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    #@8
    .line 386
    const-class v2, Ljava/lang/Thread;

    #@a
    const-string/jumbo v3, "parkBlocker"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v2

    #@11
    .line 385
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/locks/LockSupport;->PARKBLOCKER:J

    #@17
    .line 387
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    #@19
    .line 388
    const-class v2, Ljava/lang/Thread;

    #@1b
    const-string/jumbo v3, "threadLocalRandomSecondarySeed"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@21
    move-result-object v2

    #@22
    .line 387
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@25
    move-result-wide v2

    #@26
    sput-wide v2, Ljava/util/concurrent/locks/LockSupport;->SECONDARY:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 106
    return-void

    #@29
    .line 389
    :catch_0
    move-exception v0

    #@2a
    .line 390
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    #@2c
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@2f
    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getBlocker(Ljava/lang/Thread;)Ljava/lang/Object;
    .locals 4
    .param p0, "t"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 259
    if-nez p0, :cond_0

    #@2
    .line 260
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 261
    :cond_0
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    #@a
    sget-wide v2, Ljava/util/concurrent/locks/LockSupport;->PARKBLOCKER:J

    #@c
    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method static final nextSecondarySeed()I
    .locals 6

    #@0
    .prologue
    .line 367
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v1

    #@4
    .line 368
    .local v1, "t":Ljava/lang/Thread;
    sget-object v2, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    #@6
    sget-wide v4, Ljava/util/concurrent/locks/LockSupport;->SECONDARY:J

    #@8
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    #@b
    move-result v0

    #@c
    .local v0, "r":I
    if-eqz v0, :cond_1

    #@e
    .line 369
    shl-int/lit8 v2, v0, 0xd

    #@10
    xor-int/2addr v0, v2

    #@11
    .line 370
    ushr-int/lit8 v2, v0, 0x11

    #@13
    xor-int/2addr v0, v2

    #@14
    .line 371
    shl-int/lit8 v2, v0, 0x5

    #@16
    xor-int/2addr v0, v2

    #@17
    .line 375
    :cond_0
    :goto_0
    sget-object v2, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    #@19
    sget-wide v4, Ljava/util/concurrent/locks/LockSupport;->SECONDARY:J

    #@1b
    invoke-virtual {v2, v1, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    #@1e
    .line 376
    return v0

    #@1f
    .line 373
    :cond_1
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_0

    #@29
    .line 374
    const/4 v0, 0x1

    #@2a
    goto :goto_0
.end method

.method public static park()V
    .locals 4

    #@0
    .prologue
    .line 290
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    #@2
    const/4 v1, 0x0

    #@3
    const-wide/16 v2, 0x0

    #@5
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->park(ZJ)V

    #@8
    .line 289
    return-void
.end method

.method public static park(Ljava/lang/Object;)V
    .locals 6
    .param p0, "blocker"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 159
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    .line 160
    .local v0, "t":Ljava/lang/Thread;
    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    #@7
    .line 161
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    #@9
    const/4 v2, 0x0

    #@a
    const-wide/16 v4, 0x0

    #@c
    invoke-virtual {v1, v2, v4, v5}, Lsun/misc/Unsafe;->park(ZJ)V

    #@f
    .line 162
    const/4 v1, 0x0

    #@10
    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    #@13
    .line 158
    return-void
.end method

.method public static parkNanos(J)V
    .locals 2
    .param p0, "nanos"    # J

    #@0
    .prologue
    .line 323
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 324
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1, p0, p1}, Lsun/misc/Unsafe;->park(ZJ)V

    #@c
    .line 322
    :cond_0
    return-void
.end method

.method public static parkNanos(Ljava/lang/Object;J)V
    .locals 5
    .param p0, "blocker"    # Ljava/lang/Object;
    .param p1, "nanos"    # J

    #@0
    .prologue
    .line 198
    const-wide/16 v2, 0x0

    #@2
    cmp-long v1, p1, v2

    #@4
    if-lez v1, :cond_0

    #@6
    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@9
    move-result-object v0

    #@a
    .line 200
    .local v0, "t":Ljava/lang/Thread;
    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    #@d
    .line 201
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    #@f
    const/4 v2, 0x0

    #@10
    invoke-virtual {v1, v2, p1, p2}, Lsun/misc/Unsafe;->park(ZJ)V

    #@13
    .line 202
    const/4 v1, 0x0

    #@14
    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    #@17
    .line 197
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public static parkUntil(J)V
    .locals 2
    .param p0, "deadline"    # J

    #@0
    .prologue
    .line 358
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1, p0, p1}, Lsun/misc/Unsafe;->park(ZJ)V

    #@6
    .line 357
    return-void
.end method

.method public static parkUntil(Ljava/lang/Object;J)V
    .locals 3
    .param p0, "blocker"    # Ljava/lang/Object;
    .param p1, "deadline"    # J

    #@0
    .prologue
    .line 240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    .line 241
    .local v0, "t":Ljava/lang/Thread;
    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    #@7
    .line 242
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    #@9
    const/4 v2, 0x1

    #@a
    invoke-virtual {v1, v2, p1, p2}, Lsun/misc/Unsafe;->park(ZJ)V

    #@d
    .line 243
    const/4 v1, 0x0

    #@e
    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    #@11
    .line 239
    return-void
.end method

.method private static setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V
    .locals 4
    .param p0, "t"    # Ljava/lang/Thread;
    .param p1, "arg"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 111
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/locks/LockSupport;->PARKBLOCKER:J

    #@4
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@7
    .line 109
    return-void
.end method

.method public static unpark(Ljava/lang/Thread;)V
    .locals 1
    .param p0, "thread"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 126
    if-eqz p0, :cond_0

    #@2
    .line 127
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    #@4
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    #@7
    .line 125
    :cond_0
    return-void
.end method
