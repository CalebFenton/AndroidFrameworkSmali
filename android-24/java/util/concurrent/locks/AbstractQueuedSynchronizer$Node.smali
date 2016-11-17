.class final Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
.super Ljava/lang/Object;
.source "AbstractQueuedSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# static fields
.field static final CANCELLED:I = 0x1

.field static final CONDITION:I = -0x2

.field static final EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node; = null

.field private static final NEXT:J

.field static final PREV:J

.field static final PROPAGATE:I = -0x3

.field static final SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field static final SIGNAL:I = -0x1

.field private static final THREAD:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final WAITSTATUS:J


# instance fields
.field volatile next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field volatile prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field volatile thread:Ljava/lang/Thread;

.field volatile waitStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 354
    new-instance v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    invoke-direct {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;-><init>()V

    #@5
    sput-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    .line 499
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@a
    move-result-object v1

    #@b
    sput-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->U:Lsun/misc/Unsafe;

    #@d
    .line 506
    :try_start_0
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->U:Lsun/misc/Unsafe;

    #@f
    .line 507
    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@11
    const-string/jumbo v3, "next"

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@17
    move-result-object v2

    #@18
    .line 506
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@1b
    move-result-wide v2

    #@1c
    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->NEXT:J

    #@1e
    .line 508
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->U:Lsun/misc/Unsafe;

    #@20
    .line 509
    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@22
    const-string/jumbo v3, "prev"

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@28
    move-result-object v2

    #@29
    .line 508
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@2c
    move-result-wide v2

    #@2d
    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->PREV:J

    #@2f
    .line 510
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->U:Lsun/misc/Unsafe;

    #@31
    .line 511
    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@33
    const-string/jumbo v3, "thread"

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@39
    move-result-object v2

    #@3a
    .line 510
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@3d
    move-result-wide v2

    #@3e
    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->THREAD:J

    #@40
    .line 512
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->U:Lsun/misc/Unsafe;

    #@42
    .line 513
    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@44
    const-string/jumbo v3, "waitStatus"

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@4a
    move-result-object v2

    #@4b
    .line 512
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@4e
    move-result-wide v2

    #@4f
    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->WAITSTATUS:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@51
    .line 352
    return-void

    #@52
    .line 514
    :catch_0
    move-exception v0

    #@53
    .line 515
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    #@55
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@58
    throw v1
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method constructor <init>(I)V
    .locals 4
    .param p1, "waitStatus"    # I

    #@0
    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 485
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->U:Lsun/misc/Unsafe;

    #@5
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->WAITSTATUS:J

    #@7
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    #@a
    .line 486
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->U:Lsun/misc/Unsafe;

    #@c
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->THREAD:J

    #@e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@15
    .line 484
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .locals 4
    .param p1, "nextWaiter"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 479
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@5
    .line 480
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->U:Lsun/misc/Unsafe;

    #@7
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->THREAD:J

    #@9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@10
    .line 478
    return-void
.end method


# virtual methods
.method final compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 6
    .param p1, "expect"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "update"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    .line 496
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->NEXT:J

    #@4
    move-object v1, p0

    #@5
    move-object v4, p1

    #@6
    move-object v5, p2

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method final compareAndSetWaitStatus(II)Z
    .locals 6
    .param p1, "expect"    # I
    .param p2, "update"    # I

    #@0
    .prologue
    .line 491
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->WAITSTATUS:J

    #@4
    move-object v1, p0

    #@5
    move v4, p1

    #@6
    move v5, p2

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method final isShared()Z
    .locals 2

    #@0
    .prologue
    .line 456
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method final predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    #@0
    .prologue
    .line 467
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    .line 468
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-nez v0, :cond_0

    #@4
    .line 469
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v1

    #@a
    .line 471
    :cond_0
    return-object v0
.end method
