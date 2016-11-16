.class public Ljava/lang/Thread;
.super Ljava/lang/Object;
.source "Thread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Thread$Caches;,
        Ljava/lang/Thread$ParkState;,
        Ljava/lang/Thread$State;,
        Ljava/lang/Thread$UncaughtExceptionHandler;,
        Ljava/lang/Thread$WeakClassKey;
    }
.end annotation


# static fields
.field private static final EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

.field public static final MAX_PRIORITY:I = 0xa

.field public static final MIN_PRIORITY:I = 0x1

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field public static final NORM_PRIORITY:I = 0x5

.field private static final SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/lang/RuntimePermission;

.field private static volatile defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static threadInitNumber:I

.field private static threadSeqNumber:J


# instance fields
.field private volatile blocker:Lsun/nio/ch/Interruptible;

.field private final blockerLock:Ljava/lang/Object;

.field private contextClassLoader:Ljava/lang/ClassLoader;

.field private daemon:Z

.field private eetop:J

.field private group:Ljava/lang/ThreadGroup;

.field inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

.field private inheritedAccessControlContext:Ljava/security/AccessControlContext;

.field private final lock:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field private nativeParkEventPointer:J

.field private volatile nativePeer:J

.field volatile parkBlocker:Ljava/lang/Object;

.field private parkState:I

.field private priority:I

.field private single_step:Z

.field private stackSize:J

.field started:Z

.field private stillborn:Z

.field private target:Ljava/lang/Runnable;

.field threadLocalRandomProbe:I

.field threadLocalRandomSecondarySeed:I

.field threadLocalRandomSeed:J

.field threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

.field private threadQ:Ljava/lang/Thread;

.field private volatile threadStatus:I

.field private tid:J

.field private volatile uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 1527
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/StackTraceElement;

    #@3
    .line 1526
    sput-object v0, Ljava/lang/Thread;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    #@5
    .line 1624
    new-instance v0, Ljava/lang/RuntimePermission;

    #@7
    const-string/jumbo v1, "enableContextClassLoaderOverride"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@d
    .line 1623
    sput-object v0, Ljava/lang/Thread;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/lang/RuntimePermission;

    #@f
    .line 143
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 149
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@c
    .line 153
    iput-boolean v2, p0, Ljava/lang/Thread;->started:Z

    #@e
    .line 165
    iput-boolean v2, p0, Ljava/lang/Thread;->daemon:Z

    #@10
    .line 168
    iput-boolean v2, p0, Ljava/lang/Thread;->stillborn:Z

    #@12
    .line 190
    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@14
    .line 196
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@16
    .line 222
    iput v2, p0, Ljava/lang/Thread;->threadStatus:I

    #@18
    .line 242
    new-instance v0, Ljava/lang/Object;

    #@1a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1d
    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    #@1f
    .line 2054
    const/4 v0, 0x1

    #@20
    iput v0, p0, Ljava/lang/Thread;->parkState:I

    #@22
    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v2, "Thread-"

    #@2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    #@31
    move-result v2

    #@32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    const-wide/16 v4, 0x0

    #@3c
    move-object v0, p0

    #@3d
    move-object v2, v1

    #@3e
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    #@41
    .line 437
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "target"    # Ljava/lang/Runnable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 149
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@c
    .line 153
    iput-boolean v2, p0, Ljava/lang/Thread;->started:Z

    #@e
    .line 165
    iput-boolean v2, p0, Ljava/lang/Thread;->daemon:Z

    #@10
    .line 168
    iput-boolean v2, p0, Ljava/lang/Thread;->stillborn:Z

    #@12
    .line 190
    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@14
    .line 196
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@16
    .line 222
    iput v2, p0, Ljava/lang/Thread;->threadStatus:I

    #@18
    .line 242
    new-instance v0, Ljava/lang/Object;

    #@1a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1d
    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    #@1f
    .line 2054
    const/4 v0, 0x1

    #@20
    iput v0, p0, Ljava/lang/Thread;->parkState:I

    #@22
    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v2, "Thread-"

    #@2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    #@31
    move-result v2

    #@32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    const-wide/16 v4, 0x0

    #@3c
    move-object v0, p0

    #@3d
    move-object v2, p1

    #@3e
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    #@41
    .line 453
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 6
    .param p1, "target"    # Ljava/lang/Runnable;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 149
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@c
    .line 153
    iput-boolean v2, p0, Ljava/lang/Thread;->started:Z

    #@e
    .line 165
    iput-boolean v2, p0, Ljava/lang/Thread;->daemon:Z

    #@10
    .line 168
    iput-boolean v2, p0, Ljava/lang/Thread;->stillborn:Z

    #@12
    .line 190
    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@14
    .line 196
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@16
    .line 222
    iput v2, p0, Ljava/lang/Thread;->threadStatus:I

    #@18
    .line 242
    new-instance v0, Ljava/lang/Object;

    #@1a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1d
    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    #@1f
    .line 2054
    const/4 v0, 0x1

    #@20
    iput v0, p0, Ljava/lang/Thread;->parkState:I

    #@22
    .line 564
    const-wide/16 v4, 0x0

    #@24
    move-object v0, p0

    #@25
    move-object v2, p1

    #@26
    move-object v3, p2

    #@27
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    #@2a
    .line 563
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 149
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@c
    .line 153
    iput-boolean v2, p0, Ljava/lang/Thread;->started:Z

    #@e
    .line 165
    iput-boolean v2, p0, Ljava/lang/Thread;->daemon:Z

    #@10
    .line 168
    iput-boolean v2, p0, Ljava/lang/Thread;->stillborn:Z

    #@12
    .line 190
    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@14
    .line 196
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@16
    .line 222
    iput v2, p0, Ljava/lang/Thread;->threadStatus:I

    #@18
    .line 242
    new-instance v0, Ljava/lang/Object;

    #@1a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1d
    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    #@1f
    .line 2054
    const/4 v0, 0x1

    #@20
    iput v0, p0, Ljava/lang/Thread;->parkState:I

    #@22
    .line 493
    const-wide/16 v4, 0x0

    #@24
    move-object v0, p0

    #@25
    move-object v2, v1

    #@26
    move-object v3, p1

    #@27
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    #@2a
    .line 492
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 149
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@c
    .line 153
    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z

    #@e
    .line 165
    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    #@10
    .line 168
    iput-boolean v1, p0, Ljava/lang/Thread;->stillborn:Z

    #@12
    .line 190
    iput-object v2, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@14
    .line 196
    iput-object v2, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@16
    .line 222
    iput v1, p0, Ljava/lang/Thread;->threadStatus:I

    #@18
    .line 242
    new-instance v0, Ljava/lang/Object;

    #@1a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1d
    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    #@1f
    .line 2054
    const/4 v0, 0x1

    #@20
    iput v0, p0, Ljava/lang/Thread;->parkState:I

    #@22
    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v1, "Thread-"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    #@31
    move-result v1

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    const-wide/16 v4, 0x0

    #@3c
    move-object v0, p0

    #@3d
    move-object v1, p1

    #@3e
    move-object v2, p2

    #@3f
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    #@42
    .line 480
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 6
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 149
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@c
    .line 153
    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z

    #@e
    .line 165
    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    #@10
    .line 168
    iput-boolean v1, p0, Ljava/lang/Thread;->stillborn:Z

    #@12
    .line 190
    iput-object v2, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@14
    .line 196
    iput-object v2, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@16
    .line 222
    iput v1, p0, Ljava/lang/Thread;->threadStatus:I

    #@18
    .line 242
    new-instance v0, Ljava/lang/Object;

    #@1a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1d
    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    #@1f
    .line 2054
    const/4 v0, 0x1

    #@20
    iput v0, p0, Ljava/lang/Thread;->parkState:I

    #@22
    .line 612
    const-wide/16 v4, 0x0

    #@24
    move-object v0, p0

    #@25
    move-object v1, p1

    #@26
    move-object v2, p2

    #@27
    move-object v3, p3

    #@28
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    #@2b
    .line 611
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 4
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "stackSize"    # J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 149
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@c
    .line 153
    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z

    #@e
    .line 165
    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    #@10
    .line 168
    iput-boolean v1, p0, Ljava/lang/Thread;->stillborn:Z

    #@12
    .line 190
    iput-object v2, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@14
    .line 196
    iput-object v2, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@16
    .line 222
    iput v1, p0, Ljava/lang/Thread;->threadStatus:I

    #@18
    .line 242
    new-instance v0, Ljava/lang/Object;

    #@1a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1d
    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    #@1f
    .line 2054
    const/4 v0, 0x1

    #@20
    iput v0, p0, Ljava/lang/Thread;->parkState:I

    #@22
    .line 691
    invoke-direct/range {p0 .. p5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    #@25
    .line 690
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 6
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 149
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@c
    .line 153
    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z

    #@e
    .line 165
    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    #@10
    .line 168
    iput-boolean v1, p0, Ljava/lang/Thread;->stillborn:Z

    #@12
    .line 190
    iput-object v2, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@14
    .line 196
    iput-object v2, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@16
    .line 222
    iput v1, p0, Ljava/lang/Thread;->threadStatus:I

    #@18
    .line 242
    new-instance v0, Ljava/lang/Object;

    #@1a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1d
    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    #@1f
    .line 2054
    const/4 v0, 0x1

    #@20
    iput v0, p0, Ljava/lang/Thread;->parkState:I

    #@22
    .line 517
    const-wide/16 v4, 0x0

    #@24
    move-object v0, p0

    #@25
    move-object v1, p1

    #@26
    move-object v3, p2

    #@27
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    #@2a
    .line 516
    return-void
.end method

.method constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "daemon"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 149
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@c
    .line 153
    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z

    #@e
    .line 165
    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    #@10
    .line 168
    iput-boolean v1, p0, Ljava/lang/Thread;->stillborn:Z

    #@12
    .line 190
    iput-object v2, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@14
    .line 196
    iput-object v2, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@16
    .line 222
    iput v1, p0, Ljava/lang/Thread;->threadStatus:I

    #@18
    .line 242
    new-instance v0, Ljava/lang/Object;

    #@1a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1d
    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    #@1f
    .line 2054
    const/4 v0, 0x1

    #@20
    iput v0, p0, Ljava/lang/Thread;->parkState:I

    #@22
    .line 524
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    #@24
    .line 525
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    #@26
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->addUnstarted()V

    #@29
    .line 527
    if-nez p2, :cond_0

    #@2b
    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v1, "Thread-"

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    #@3a
    move-result v1

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object p2

    #@43
    .line 534
    :cond_0
    iput-object p2, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    #@45
    .line 536
    iput p3, p0, Ljava/lang/Thread;->priority:I

    #@47
    .line 537
    iput-boolean p4, p0, Ljava/lang/Thread;->daemon:Z

    #@49
    .line 538
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4c
    move-result-object v0

    #@4d
    invoke-direct {p0, v0}, Ljava/lang/Thread;->init2(Ljava/lang/Thread;)V

    #@50
    .line 539
    invoke-static {}, Ljava/lang/Thread;->nextThreadID()J

    #@53
    move-result-wide v0

    #@54
    iput-wide v0, p0, Ljava/lang/Thread;->tid:J

    #@56
    .line 523
    return-void
.end method

.method public static activeCount()I
    .locals 1

    #@0
    .prologue
    .line 1209
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private static auditSubclass(Ljava/lang/Class;)Z
    .locals 2
    .param p0, "subcl"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 1667
    new-instance v1, Ljava/lang/Thread$1;

    #@2
    invoke-direct {v1, p0}, Ljava/lang/Thread$1;-><init>(Ljava/lang/Class;)V

    #@5
    .line 1666
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Boolean;

    #@b
    .line 1689
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@e
    move-result v1

    #@f
    return v1
.end method

.method public static native currentThread()Ljava/lang/Thread;
.end method

.method private dispatchUncaughtException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1946
    invoke-virtual {p0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    #@7
    .line 1945
    return-void
.end method

.method public static dumpStack()V
    .locals 2

    #@0
    .prologue
    .line 1376
    new-instance v0, Ljava/lang/Exception;

    #@2
    const-string/jumbo v1, "Stack trace"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@b
    .line 1375
    return-void
.end method

.method public static enumerate([Ljava/lang/Thread;)I
    .locals 1
    .param p0, "tarray"    # [Ljava/lang/Thread;

    #@0
    .prologue
    .line 1239
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private exit()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 770
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 771
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    #@7
    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->threadTerminated(Ljava/lang/Thread;)V

    #@a
    .line 772
    iput-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    #@c
    .line 775
    :cond_0
    iput-object v1, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    #@e
    .line 777
    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@10
    .line 778
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@12
    .line 779
    iput-object v1, p0, Ljava/lang/Thread;->inheritedAccessControlContext:Ljava/security/AccessControlContext;

    #@14
    .line 780
    iput-object v1, p0, Ljava/lang/Thread;->blocker:Lsun/nio/ch/Interruptible;

    #@16
    .line 781
    iput-object v1, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@18
    .line 769
    return-void
.end method

.method public static getAllStackTraces()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1606
    new-instance v2, Ljava/util/HashMap;

    #@2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 1610
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    sget-object v4, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    #@7
    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->activeCount()I

    #@a
    move-result v0

    #@b
    .line 1611
    .local v0, "count":I
    div-int/lit8 v4, v0, 0x2

    #@d
    add-int/2addr v4, v0

    #@e
    new-array v3, v4, [Ljava/lang/Thread;

    #@10
    .line 1614
    .local v3, "threads":[Ljava/lang/Thread;
    sget-object v4, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    #@12
    invoke-virtual {v4, v3}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    #@15
    move-result v0

    #@16
    .line 1615
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@19
    .line 1616
    aget-object v4, v3, v1

    #@1b
    aget-object v5, v3, v1

    #@1d
    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@20
    move-result-object v5

    #@21
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 1615
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1619
    :cond_0
    return-object v2
.end method

.method public static getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    #@0
    .prologue
    .line 1905
    sget-object v0, Ljava/lang/Thread;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@2
    return-object v0
.end method

.method public static holdsLock(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1521
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-direct {v0, p0}, Ljava/lang/Thread;->nativeHoldsLock(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 4
    .param p1, "g"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "stackSize"    # J

    #@0
    .prologue
    .line 398
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    .line 399
    .local v0, "parent":Ljava/lang/Thread;
    if-nez p1, :cond_0

    #@6
    .line 400
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    #@9
    move-result-object p1

    #@a
    .line 403
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->addUnstarted()V

    #@d
    .line 404
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    #@f
    .line 406
    iput-object p2, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    #@11
    .line 407
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    #@14
    move-result v1

    #@15
    iput v1, p0, Ljava/lang/Thread;->priority:I

    #@17
    .line 408
    invoke-virtual {v0}, Ljava/lang/Thread;->isDaemon()Z

    #@1a
    move-result v1

    #@1b
    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    #@1d
    .line 409
    invoke-virtual {p0, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    #@20
    .line 411
    invoke-direct {p0, v0}, Ljava/lang/Thread;->init2(Ljava/lang/Thread;)V

    #@23
    .line 414
    iput-wide p4, p0, Ljava/lang/Thread;->stackSize:J

    #@25
    .line 415
    invoke-static {}, Ljava/lang/Thread;->nextThreadID()J

    #@28
    move-result-wide v2

    #@29
    iput-wide v2, p0, Ljava/lang/Thread;->tid:J

    #@2b
    .line 397
    return-void
.end method

.method private init2(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "parent"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 543
    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    #@6
    .line 544
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Ljava/lang/Thread;->inheritedAccessControlContext:Ljava/security/AccessControlContext;

    #@c
    .line 545
    iget-object v0, p1, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 547
    iget-object v0, p1, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@12
    .line 546
    invoke-static {v0}, Ljava/lang/ThreadLocal;->createInheritedMap(Ljava/lang/ThreadLocal$ThreadLocalMap;)Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@18
    .line 542
    :cond_0
    return-void
.end method

.method public static native interrupted()Z
.end method

.method private static isCCLOverridden(Ljava/lang/Class;)Z
    .locals 4
    .param p0, "cl"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 1646
    const-class v2, Ljava/lang/Thread;

    #@2
    if-ne p0, v2, :cond_0

    #@4
    .line 1647
    const/4 v2, 0x0

    #@5
    return v2

    #@6
    .line 1649
    :cond_0
    sget-object v2, Ljava/lang/Thread$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    #@8
    sget-object v3, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    #@a
    invoke-static {v2, v3}, Ljava/lang/Thread;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    #@d
    .line 1650
    new-instance v0, Ljava/lang/Thread$WeakClassKey;

    #@f
    sget-object v2, Ljava/lang/Thread$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    #@11
    invoke-direct {v0, p0, v2}, Ljava/lang/Thread$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    #@14
    .line 1651
    .local v0, "key":Ljava/lang/Thread$WeakClassKey;
    sget-object v2, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    #@16
    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Ljava/lang/Boolean;

    #@1c
    .line 1652
    .local v1, "result":Ljava/lang/Boolean;
    if-nez v1, :cond_1

    #@1e
    .line 1653
    invoke-static {p0}, Ljava/lang/Thread;->auditSubclass(Ljava/lang/Class;)Z

    #@21
    move-result v2

    #@22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@25
    move-result-object v1

    #@26
    .line 1654
    sget-object v2, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    #@28
    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 1657
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@2e
    move-result v2

    #@2f
    return v2
.end method

.method private static native nativeCreate(Ljava/lang/Thread;JZ)V
.end method

.method private native nativeGetStatus(Z)I
.end method

.method private native nativeHoldsLock(Ljava/lang/Object;)Z
.end method

.method private native nativeInterrupt()V
.end method

.method private native nativeSetName(Ljava/lang/String;)V
.end method

.method private native nativeSetPriority(I)V
.end method

.method private static declared-synchronized nextThreadID()J
    .locals 6

    #@0
    .prologue
    const-class v1, Ljava/lang/Thread;

    #@2
    monitor-enter v1

    #@3
    .line 226
    :try_start_0
    sget-wide v2, Ljava/lang/Thread;->threadSeqNumber:J

    #@5
    const-wide/16 v4, 0x1

    #@7
    add-long/2addr v2, v4

    #@8
    sput-wide v2, Ljava/lang/Thread;->threadSeqNumber:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    return-wide v2

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method private static declared-synchronized nextThreadNum()I
    .locals 3

    #@0
    .prologue
    const-class v1, Ljava/lang/Thread;

    #@2
    monitor-enter v1

    #@3
    .line 185
    :try_start_0
    sget v0, Ljava/lang/Thread;->threadInitNumber:I

    #@5
    add-int/lit8 v2, v0, 0x1

    #@7
    sput v2, Ljava/lang/Thread;->threadInitNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method static processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<+",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1958
    .local p0, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Class<*>;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<+Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;*>;"
    :goto_0
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    #@3
    move-result-object v0

    #@4
    .local v0, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Ljava/lang/Class<*>;>;"
    if-eqz v0, :cond_0

    #@6
    .line 1959
    invoke-interface {p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    goto :goto_0

    #@a
    .line 1955
    :cond_0
    return-void
.end method

.method public static setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p0, "eh"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    #@0
    .prologue
    .line 1894
    sput-object p0, Ljava/lang/Thread;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@2
    .line 1893
    return-void
.end method

.method public static sleep(J)V
    .locals 2
    .param p0, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 313
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Ljava/lang/Thread;->sleep(JI)V

    #@4
    .line 312
    return-void
.end method

.method public static sleep(JI)V
    .locals 18
    .param p0, "millis"    # J
    .param p2, "nanos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 343
    const-wide/16 v14, 0x0

    #@2
    cmp-long v9, p0, v14

    #@4
    if-gez v9, :cond_0

    #@6
    .line 344
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v14, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v15, "millis < 0: "

    #@10
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v14

    #@14
    move-wide/from16 v0, p0

    #@16
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@19
    move-result-object v14

    #@1a
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v14

    #@1e
    invoke-direct {v9, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v9

    #@22
    .line 346
    :cond_0
    if-gez p2, :cond_1

    #@24
    .line 347
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@26
    new-instance v14, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v15, "nanos < 0: "

    #@2e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v14

    #@32
    move/from16 v0, p2

    #@34
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v14

    #@38
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v14

    #@3c
    invoke-direct {v9, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v9

    #@40
    .line 349
    :cond_1
    const v9, 0xf423f

    #@43
    move/from16 v0, p2

    #@45
    if-le v0, v9, :cond_2

    #@47
    .line 350
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@49
    new-instance v14, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v15, "nanos > 999999: "

    #@51
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v14

    #@55
    move/from16 v0, p2

    #@57
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v14

    #@5b
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v14

    #@5f
    invoke-direct {v9, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@62
    throw v9

    #@63
    .line 355
    :cond_2
    const-wide/16 v14, 0x0

    #@65
    cmp-long v9, p0, v14

    #@67
    if-nez v9, :cond_4

    #@69
    if-nez p2, :cond_4

    #@6b
    .line 357
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@6e
    move-result v9

    #@6f
    if-eqz v9, :cond_3

    #@71
    .line 358
    new-instance v9, Ljava/lang/InterruptedException;

    #@73
    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    #@76
    throw v9

    #@77
    .line 360
    :cond_3
    return-void

    #@78
    .line 363
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@7b
    move-result-wide v12

    #@7c
    .line 364
    .local v12, "start":J
    const-wide/32 v14, 0xf4240

    #@7f
    mul-long v14, v14, p0

    #@81
    move/from16 v0, p2

    #@83
    int-to-long v0, v0

    #@84
    move-wide/from16 v16, v0

    #@86
    add-long v4, v14, v16

    #@88
    .line 366
    .local v4, "duration":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@8b
    move-result-object v9

    #@8c
    iget-object v8, v9, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@8e
    .line 369
    .local v8, "lock":Ljava/lang/Object;
    monitor-enter v8

    #@8f
    .line 371
    :goto_0
    :try_start_0
    move-wide/from16 v0, p0

    #@91
    move/from16 v2, p2

    #@93
    invoke-static {v8, v0, v1, v2}, Ljava/lang/Thread;->sleep(Ljava/lang/Object;JI)V

    #@96
    .line 373
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@99
    move-result-wide v10

    #@9a
    .line 374
    .local v10, "now":J
    sub-long v6, v10, v12

    #@9c
    .line 376
    .local v6, "elapsed":J
    cmp-long v9, v6, v4

    #@9e
    if-ltz v9, :cond_5

    #@a0
    monitor-exit v8

    #@a1
    .line 342
    return-void

    #@a2
    .line 380
    :cond_5
    sub-long/2addr v4, v6

    #@a3
    .line 381
    move-wide v12, v10

    #@a4
    .line 382
    const-wide/32 v14, 0xf4240

    #@a7
    :try_start_1
    div-long p0, v4, v14

    #@a9
    .line 383
    const-wide/32 v14, 0xf4240

    #@ac
    rem-long v14, v4, v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ae
    long-to-int v0, v14

    #@af
    move/from16 p2, v0

    #@b1
    goto :goto_0

    #@b2
    .line 369
    .end local v6    # "elapsed":J
    .end local v10    # "now":J
    :catchall_0
    move-exception v9

    #@b3
    monitor-exit v8

    #@b4
    throw v9
.end method

.method private static native sleep(Ljava/lang/Object;JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public static native yield()V
.end method


# virtual methods
.method public blockedOn(Lsun/nio/ch/Interruptible;)V
    .locals 2
    .param p1, "b"    # Lsun/nio/ch/Interruptible;

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 251
    :try_start_0
    iput-object p1, p0, Ljava/lang/Thread;->blocker:Lsun/nio/ch/Interruptible;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 249
    return-void

    #@7
    .line 250
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public final checkAccess()V
    .locals 0

    #@0
    .prologue
    .line 1427
    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 427
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    #@2
    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    #@5
    throw v0
.end method

.method public countStackFrames()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1255
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    return v0
.end method

.method public destroy()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1018
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 1475
    iget-object v0, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    #@2
    return-object v0
.end method

.method public getId()J
    .locals 2

    #@0
    .prologue
    .line 1702
    iget-wide v0, p0, Ljava/lang/Thread;->tid:J

    #@2
    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1174
    iget-object v0, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    #@0
    .prologue
    .line 1136
    iget v0, p0, Ljava/lang/Thread;->priority:I

    #@2
    return v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    #@0
    .prologue
    .line 1566
    invoke-static {p0}, Ldalvik/system/VMStack;->getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    #@3
    move-result-object v0

    #@4
    .line 1567
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    #@6
    .end local v0    # "ste":[Ljava/lang/StackTraceElement;
    :goto_0
    return-object v0

    #@7
    .restart local v0    # "ste":[Ljava/lang/StackTraceElement;
    :cond_0
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    #@9
    goto :goto_0
.end method

.method public getState()Ljava/lang/Thread$State;
    .locals 2

    #@0
    .prologue
    .line 1814
    invoke-static {}, Ljava/lang/Thread$State;->values()[Ljava/lang/Thread$State;

    #@3
    move-result-object v0

    #@4
    iget-boolean v1, p0, Ljava/lang/Thread;->started:Z

    #@6
    invoke-direct {p0, v1}, Ljava/lang/Thread;->nativeGetStatus(Z)I

    #@9
    move-result v1

    #@a
    aget-object v0, v0, v1

    #@c
    return-object v0
.end method

.method public final getThreadGroup()Ljava/lang/ThreadGroup;
    .locals 2

    #@0
    .prologue
    .line 1186
    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 1187
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 1189
    :cond_0
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    #@c
    return-object v0
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    #@0
    .prologue
    .line 1917
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1918
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@6
    .line 1917
    :goto_0
    return-object v0

    #@7
    .line 1918
    :cond_0
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    #@9
    goto :goto_0
.end method

.method public interrupt()V
    .locals 3

    #@0
    .prologue
    .line 949
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v1

    #@4
    if-eq p0, v1, :cond_0

    #@6
    .line 950
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    #@9
    .line 952
    :cond_0
    iget-object v2, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    #@b
    monitor-enter v2

    #@c
    .line 953
    :try_start_0
    iget-object v0, p0, Ljava/lang/Thread;->blocker:Lsun/nio/ch/Interruptible;

    #@e
    .line 954
    .local v0, "b":Lsun/nio/ch/Interruptible;
    if-eqz v0, :cond_1

    #@10
    .line 955
    invoke-direct {p0}, Ljava/lang/Thread;->nativeInterrupt()V

    #@13
    .line 956
    invoke-interface {v0, p0}, Lsun/nio/ch/Interruptible;->interrupt(Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v2

    #@17
    .line 957
    return-void

    #@18
    :cond_1
    monitor-exit v2

    #@19
    .line 960
    invoke-direct {p0}, Ljava/lang/Thread;->nativeInterrupt()V

    #@1c
    .line 948
    return-void

    #@1d
    .line 952
    .end local v0    # "b":Lsun/nio/ch/Interruptible;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method public final isAlive()Z
    .locals 4

    #@0
    .prologue
    .line 1029
    iget-wide v0, p0, Ljava/lang/Thread;->nativePeer:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public final isDaemon()Z
    .locals 1

    #@0
    .prologue
    .line 1412
    iget-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    #@2
    return v0
.end method

.method public native isInterrupted()Z
.end method

.method public final join()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1366
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Ljava/lang/Thread;->join(J)V

    #@5
    .line 1365
    return-void
.end method

.method public final join(J)V
    .locals 13
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    .line 1280
    iget-object v7, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@4
    monitor-enter v7

    #@5
    .line 1281
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@8
    move-result-wide v0

    #@9
    .line 1282
    .local v0, "base":J
    const-wide/16 v4, 0x0

    #@b
    .line 1284
    .local v4, "now":J
    cmp-long v6, p1, v10

    #@d
    if-gez v6, :cond_0

    #@f
    .line 1285
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v8, "timeout value is negative"

    #@14
    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 1280
    .end local v0    # "base":J
    .end local v4    # "now":J
    :catchall_0
    move-exception v6

    #@19
    monitor-exit v7

    #@1a
    throw v6

    #@1b
    .line 1288
    .restart local v0    # "base":J
    .restart local v4    # "now":J
    :cond_0
    cmp-long v6, p1, v10

    #@1d
    if-nez v6, :cond_2

    #@1f
    .line 1289
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    #@22
    move-result v6

    #@23
    if-eqz v6, :cond_3

    #@25
    .line 1290
    iget-object v6, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@27
    const-wide/16 v8, 0x0

    #@29
    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V

    #@2c
    goto :goto_0

    #@2d
    .line 1298
    .local v2, "delay":J
    :cond_1
    iget-object v6, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@2f
    invoke-virtual {v6, v2, v3}, Ljava/lang/Object;->wait(J)V

    #@32
    .line 1299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@35
    move-result-wide v8

    #@36
    sub-long v4, v8, v0

    #@38
    .line 1293
    .end local v2    # "delay":J
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    move-result v6

    #@3c
    if-eqz v6, :cond_3

    #@3e
    .line 1294
    sub-long v2, p1, v4

    #@40
    .line 1295
    .restart local v2    # "delay":J
    cmp-long v6, v2, v10

    #@42
    if-gtz v6, :cond_1

    #@44
    .end local v2    # "delay":J
    :cond_3
    monitor-exit v7

    #@45
    .line 1279
    return-void
.end method

.method public final join(JI)V
    .locals 5
    .param p1, "millis"    # J
    .param p3, "nanos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 1332
    iget-object v1, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 1333
    cmp-long v0, p1, v2

    #@7
    if-gez v0, :cond_0

    #@9
    .line 1334
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v2, "timeout value is negative"

    #@e
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 1332
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0

    #@15
    .line 1337
    :cond_0
    if-ltz p3, :cond_1

    #@17
    const v0, 0xf423f

    #@1a
    if-le p3, v0, :cond_2

    #@1c
    .line 1338
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    .line 1339
    const-string/jumbo v2, "nanosecond timeout value out of range"

    #@21
    .line 1338
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 1342
    :cond_2
    const v0, 0x7a120

    #@28
    if-ge p3, v0, :cond_3

    #@2a
    if-eqz p3, :cond_4

    #@2c
    cmp-long v0, p1, v2

    #@2e
    if-nez v0, :cond_4

    #@30
    .line 1343
    :cond_3
    const-wide/16 v2, 0x1

    #@32
    add-long/2addr p1, v2

    #@33
    .line 1346
    :cond_4
    invoke-virtual {p0, p1, p2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    monitor-exit v1

    #@37
    .line 1331
    return-void
.end method

.method public final parkFor$(J)V
    .locals 9
    .param p1, "nanos"    # J

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    .line 2115
    iget-object v4, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v4

    #@4
    .line 2116
    :try_start_0
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    #@6
    packed-switch v1, :pswitch_data_0

    #@9
    .line 2143
    new-instance v1, Ljava/lang/AssertionError;

    #@b
    const-string/jumbo v5, "Attempt to repark"

    #@e
    invoke-direct {v1, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@11
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 2115
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v4

    #@14
    throw v1

    #@15
    .line 2118
    :pswitch_0
    const/4 v1, 0x1

    #@16
    :try_start_1
    iput v1, p0, Ljava/lang/Thread;->parkState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    :cond_0
    :goto_0
    monitor-exit v4

    #@19
    .line 2114
    return-void

    #@1a
    .line 2122
    :pswitch_1
    const-wide/32 v6, 0xf4240

    #@1d
    :try_start_2
    div-long v2, p1, v6

    #@1f
    .line 2123
    .local v2, "millis":J
    const-wide/32 v6, 0xf4240

    #@22
    rem-long/2addr p1, v6

    #@23
    .line 2125
    const/4 v1, 0x3

    #@24
    iput v1, p0, Ljava/lang/Thread;->parkState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@26
    .line 2127
    :try_start_3
    iget-object v1, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@28
    long-to-int v5, p1

    #@29
    invoke-virtual {v1, v2, v3, v5}, Ljava/lang/Object;->wait(JI)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2c
    .line 2136
    :try_start_4
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    #@2e
    if-ne v1, v8, :cond_0

    #@30
    .line 2137
    const/4 v1, 0x1

    #@31
    iput v1, p0, Ljava/lang/Thread;->parkState:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 2128
    :catch_0
    move-exception v0

    #@35
    .line 2129
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@38
    .line 2136
    :try_start_6
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    #@3a
    if-ne v1, v8, :cond_0

    #@3c
    .line 2137
    const/4 v1, 0x1

    #@3d
    iput v1, p0, Ljava/lang/Thread;->parkState:I

    #@3f
    goto :goto_0

    #@40
    .line 2130
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    #@41
    .line 2136
    iget v5, p0, Ljava/lang/Thread;->parkState:I

    #@43
    if-ne v5, v8, :cond_1

    #@45
    .line 2137
    const/4 v5, 0x1

    #@46
    iput v5, p0, Ljava/lang/Thread;->parkState:I

    #@48
    .line 2130
    :cond_1
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@49
    .line 2116
    nop

    #@4a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parkUntil$(J)V
    .locals 7
    .param p1, "time"    # J

    #@0
    .prologue
    .line 2171
    iget-object v3, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 2186
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v4

    #@7
    sub-long v0, p1, v4

    #@9
    .line 2188
    .local v0, "delayMillis":J
    const-wide/16 v4, 0x0

    #@b
    cmp-long v2, v0, v4

    #@d
    if-gtz v2, :cond_0

    #@f
    .line 2189
    const/4 v2, 0x1

    #@10
    iput v2, p0, Ljava/lang/Thread;->parkState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :goto_0
    monitor-exit v3

    #@13
    .line 2170
    return-void

    #@14
    .line 2191
    :cond_0
    const-wide/32 v4, 0xf4240

    #@17
    mul-long/2addr v4, v0

    #@18
    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Thread;->parkFor$(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    goto :goto_0

    #@1c
    .line 2171
    .end local v0    # "delayMillis":J
    :catchall_0
    move-exception v2

    #@1d
    monitor-exit v3

    #@1e
    throw v2
.end method

.method public final resume()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1083
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public run()V
    .locals 1

    #@0
    .prologue
    .line 760
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 761
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    #@6
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@9
    .line 759
    :cond_0
    return-void
.end method

.method public setContextClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 1501
    iput-object p1, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    #@2
    .line 1500
    return-void
.end method

.method public final setDaemon(Z)V
    .locals 1
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 1397
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    #@3
    .line 1398
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1399
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    #@b
    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    #@e
    throw v0

    #@f
    .line 1401
    :cond_0
    iput-boolean p1, p0, Ljava/lang/Thread;->daemon:Z

    #@11
    .line 1396
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1154
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    #@3
    .line 1155
    if-nez p1, :cond_0

    #@5
    .line 1156
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "name == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1159
    :cond_0
    monitor-enter p0

    #@f
    .line 1160
    :try_start_0
    iput-object p1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    #@11
    .line 1161
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 1162
    invoke-direct {p0, p1}, Ljava/lang/Thread;->nativeSetName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_1
    monitor-exit p0

    #@1b
    .line 1153
    return-void

    #@1c
    .line 1159
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit p0

    #@1e
    throw v0
.end method

.method public final setPriority(I)V
    .locals 2
    .param p1, "newPriority"    # I

    #@0
    .prologue
    .line 1112
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    #@3
    .line 1113
    const/16 v1, 0xa

    #@5
    if-gt p1, v1, :cond_0

    #@7
    const/4 v1, 0x1

    #@8
    if-ge p1, v1, :cond_1

    #@a
    .line 1114
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@f
    throw v1

    #@10
    .line 1116
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    #@13
    move-result-object v0

    #@14
    .local v0, "g":Ljava/lang/ThreadGroup;
    if-eqz v0, :cond_4

    #@16
    .line 1117
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    #@19
    move-result v1

    #@1a
    if-le p1, v1, :cond_2

    #@1c
    .line 1118
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    #@1f
    move-result p1

    #@20
    .line 1120
    :cond_2
    monitor-enter p0

    #@21
    .line 1121
    :try_start_0
    iput p1, p0, Ljava/lang/Thread;->priority:I

    #@23
    .line 1122
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_3

    #@29
    .line 1123
    invoke-direct {p0, p1}, Ljava/lang/Thread;->nativeSetPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    :cond_3
    monitor-exit p0

    #@2d
    .line 1110
    :cond_4
    return-void

    #@2e
    .line 1120
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit p0

    #@30
    throw v1
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p1, "eh"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    #@0
    .prologue
    .line 1937
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    #@3
    .line 1938
    iput-object p1, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@5
    .line 1936
    return-void
.end method

.method public declared-synchronized start()V
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 720
    :try_start_0
    iget v1, p0, Ljava/lang/Thread;->threadStatus:I

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 721
    new-instance v1, Ljava/lang/IllegalThreadStateException;

    #@7
    invoke-direct {v1}, Ljava/lang/IllegalThreadStateException;-><init>()V

    #@a
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :catchall_0
    move-exception v1

    #@c
    monitor-exit p0

    #@d
    throw v1

    #@e
    .line 726
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/ThreadGroup;->add(Ljava/lang/Thread;)V

    #@13
    .line 728
    const/4 v1, 0x0

    #@14
    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .line 730
    :try_start_2
    iget-wide v2, p0, Ljava/lang/Thread;->stackSize:J

    #@18
    iget-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    #@1a
    invoke-static {p0, v2, v3, v1}, Ljava/lang/Thread;->nativeCreate(Ljava/lang/Thread;JZ)V

    #@1d
    .line 731
    const/4 v1, 0x1

    #@1e
    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@20
    .line 734
    :try_start_3
    iget-boolean v1, p0, Ljava/lang/Thread;->started:Z

    #@22
    if-nez v1, :cond_1

    #@24
    .line 735
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    #@26
    invoke-virtual {v1, p0}, Ljava/lang/ThreadGroup;->threadStartFailed(Ljava/lang/Thread;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@29
    :cond_1
    :goto_0
    monitor-exit p0

    #@2a
    .line 712
    return-void

    #@2b
    .line 732
    :catchall_1
    move-exception v1

    #@2c
    .line 734
    :try_start_4
    iget-boolean v2, p0, Ljava/lang/Thread;->started:Z

    #@2e
    if-nez v2, :cond_2

    #@30
    .line 735
    iget-object v2, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    #@32
    invoke-virtual {v2, p0}, Ljava/lang/ThreadGroup;->threadStartFailed(Ljava/lang/Thread;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@35
    .line 732
    :cond_2
    :goto_1
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@36
    .line 737
    :catch_0
    move-exception v0

    #@37
    .local v0, "ignore":Ljava/lang/Throwable;
    goto :goto_1

    #@38
    .end local v0    # "ignore":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    #@39
    .restart local v0    # "ignore":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public final stop()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 852
    new-instance v0, Ljava/lang/ThreadDeath;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadDeath;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->stop(Ljava/lang/Throwable;)V

    #@8
    .line 851
    return-void
.end method

.method public final stop(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 906
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public final suspend()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1058
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1437
    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    #@3
    move-result-object v0

    #@4
    .line 1438
    .local v0, "group":Ljava/lang/ThreadGroup;
    if-eqz v0, :cond_0

    #@6
    .line 1439
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Thread["

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, ","

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {p0}, Ljava/lang/Thread;->getPriority()I

    #@24
    move-result v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string/jumbo v2, ","

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 1440
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    .line 1439
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    .line 1440
    const-string/jumbo v2, "]"

    #@3b
    .line 1439
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    return-object v1

    #@44
    .line 1442
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v2, "Thread["

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    const-string/jumbo v2, ","

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {p0}, Ljava/lang/Thread;->getPriority()I

    #@62
    move-result v2

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    const-string/jumbo v2, ","

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    .line 1443
    const-string/jumbo v2, ""

    #@71
    .line 1442
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    .line 1443
    const-string/jumbo v2, "]"

    #@78
    .line 1442
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v1

    #@80
    return-object v1
.end method

.method public final unpark$()V
    .locals 2

    #@0
    .prologue
    .line 2069
    iget-object v1, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2070
    :try_start_0
    iget v0, p0, Ljava/lang/Thread;->parkState:I

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 2085
    const/4 v0, 0x1

    #@9
    iput v0, p0, Ljava/lang/Thread;->parkState:I

    #@b
    .line 2086
    iget-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@d
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :goto_0
    :pswitch_0
    monitor-exit v1

    #@11
    .line 2068
    return-void

    #@12
    .line 2081
    :pswitch_1
    const/4 v0, 0x2

    #@13
    :try_start_1
    iput v0, p0, Ljava/lang/Thread;->parkState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    goto :goto_0

    #@16
    .line 2069
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0

    #@19
    .line 2070
    nop

    #@1a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
