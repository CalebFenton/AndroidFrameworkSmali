.class public Ljava/util/concurrent/locks/LockSupport;
.super Ljava/lang/Object;
.source "LockSupport.java"


# static fields
.field private static final parkBlockerOffset:J

.field private static final unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 96
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v1

    #@4
    sput-object v1, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    #@6
    .line 101
    :try_start_0
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    #@8
    .line 102
    const-class v2, Ljava/lang/Thread;

    #@a
    const-string/jumbo v3, "parkBlocker"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v2

    #@11
    .line 101
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/locks/LockSupport;->parkBlockerOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 92
    return-void

    #@18
    .line 103
    :catch_0
    move-exception v0

    #@19
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    #@1b
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@1e
    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getBlocker(Ljava/lang/Thread;)Ljava/lang/Object;
    .locals 4
    .param p0, "t"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 256
    if-nez p0, :cond_0

    #@2
    .line 257
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 258
    :cond_0
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    #@a
    sget-wide v2, Ljava/util/concurrent/locks/LockSupport;->parkBlockerOffset:J

    #@c
    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public static park()V
    .locals 4

    #@0
    .prologue
    .line 287
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    #@2
    const/4 v1, 0x0

    #@3
    const-wide/16 v2, 0x0

    #@5
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->park(ZJ)V

    #@8
    .line 286
    return-void
.end method

.method public static park(Ljava/lang/Object;)V
    .locals 6
    .param p0, "blocker"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 156
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    .line 157
    .local v0, "t":Ljava/lang/Thread;
    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    #@7
    .line 158
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    #@9
    const/4 v2, 0x0

    #@a
    const-wide/16 v4, 0x0

    #@c
    invoke-virtual {v1, v2, v4, v5}, Lsun/misc/Unsafe;->park(ZJ)V

    #@f
    .line 159
    const/4 v1, 0x0

    #@10
    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    #@13
    .line 155
    return-void
.end method

.method public static parkNanos(J)V
    .locals 2
    .param p0, "nanos"    # J

    #@0
    .prologue
    .line 320
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 321
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1, p0, p1}, Lsun/misc/Unsafe;->park(ZJ)V

    #@c
    .line 319
    :cond_0
    return-void
.end method

.method public static parkNanos(Ljava/lang/Object;J)V
    .locals 5
    .param p0, "blocker"    # Ljava/lang/Object;
    .param p1, "nanos"    # J

    #@0
    .prologue
    .line 195
    const-wide/16 v2, 0x0

    #@2
    cmp-long v1, p1, v2

    #@4
    if-lez v1, :cond_0

    #@6
    .line 196
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@9
    move-result-object v0

    #@a
    .line 197
    .local v0, "t":Ljava/lang/Thread;
    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    #@d
    .line 198
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    #@f
    const/4 v2, 0x0

    #@10
    invoke-virtual {v1, v2, p1, p2}, Lsun/misc/Unsafe;->park(ZJ)V

    #@13
    .line 199
    const/4 v1, 0x0

    #@14
    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    #@17
    .line 194
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public static parkUntil(J)V
    .locals 2
    .param p0, "deadline"    # J

    #@0
    .prologue
    .line 355
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1, p0, p1}, Lsun/misc/Unsafe;->park(ZJ)V

    #@6
    .line 354
    return-void
.end method

.method public static parkUntil(Ljava/lang/Object;J)V
    .locals 3
    .param p0, "blocker"    # Ljava/lang/Object;
    .param p1, "deadline"    # J

    #@0
    .prologue
    .line 237
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    .line 238
    .local v0, "t":Ljava/lang/Thread;
    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    #@7
    .line 239
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    #@9
    const/4 v2, 0x1

    #@a
    invoke-virtual {v1, v2, p1, p2}, Lsun/misc/Unsafe;->park(ZJ)V

    #@d
    .line 240
    const/4 v1, 0x0

    #@e
    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    #@11
    .line 236
    return-void
.end method

.method private static setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V
    .locals 4
    .param p0, "t"    # Ljava/lang/Thread;
    .param p1, "arg"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 108
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/locks/LockSupport;->parkBlockerOffset:J

    #@4
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@7
    .line 106
    return-void
.end method

.method public static unpark(Ljava/lang/Thread;)V
    .locals 1
    .param p0, "thread"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 123
    if-eqz p0, :cond_0

    #@2
    .line 124
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    #@4
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    #@7
    .line 122
    :cond_0
    return-void
.end method
