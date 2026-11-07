.class public Ljava/lang/Thread;
.super Ljava/lang/Object;
.source "Thread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Thread$ThreadIdentifiers;,
        Ljava/lang/Thread$UncaughtExceptionHandler;,
        Ljava/lang/Thread$State;,
        Ljava/lang/Thread$Caches;,
        Ljava/lang/Thread$WeakClassKey;
    }
.end annotation


# static fields
.field private static final greylist-max-o EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

.field public static final whitelist test-api MAX_PRIORITY:I = 0xa

.field public static final whitelist test-api MIN_PRIORITY:I = 0x1

.field public static final whitelist test-api NORM_PRIORITY:I = 0x5

.field static final blacklist NO_INHERIT_THREAD_LOCALS:I = 0x4

.field private static final greylist-max-o SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/lang/RuntimePermission;

.field private static volatile greylist-max-o defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static greylist-max-o threadInitNumber:I

.field private static greylist threadSeqNumber:J

.field private static volatile greylist uncaughtExceptionPreHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private volatile greylist-max-o blocker:Lsun/nio/ch/Interruptible;

.field private final greylist-max-o blockerLock:Ljava/lang/Object;

.field private greylist contextClassLoader:Ljava/lang/ClassLoader;

.field private greylist daemon:Z

.field private greylist-max-o eetop:J

.field private greylist group:Ljava/lang/ThreadGroup;

.field greylist inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

.field private greylist inheritedAccessControlContext:Ljava/security/AccessControlContext;

.field private final greylist lock:Ljava/lang/Object;

.field private volatile greylist name:Ljava/lang/String;

.field private volatile greylist nativePeer:J

.field volatile greylist parkBlocker:Ljava/lang/Object;

.field private greylist priority:I

.field private greylist-max-o single_step:Z

.field private final greylist-max-o stackSize:J

.field greylist-max-o started:Z

.field private greylist-max-o stillborn:Z

.field private blacklist systemDaemon:Z

.field private greylist target:Ljava/lang/Runnable;

.field greylist-max-o threadLocalRandomProbe:I

.field greylist-max-o threadLocalRandomSecondarySeed:I

.field greylist-max-o threadLocalRandomSeed:J

.field greylist threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

.field private final greylist-max-o tid:J

.field private volatile greylist-max-o uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private blacklist unparkedBeforeStart:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1894
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    sput-object v0, Ljava/lang/Thread;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    .line 2036
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "enableContextClassLoaderOverride"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/lang/Thread;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/lang/RuntimePermission;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 8

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 698
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Runnable;)V
    .registers 9
    .param p1, "target"    # Ljava/lang/Runnable;

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    .end local p1    # "target":Ljava/lang/Runnable;
    .local v3, "target":Ljava/lang/Runnable;
    invoke-direct/range {v1 .. v6}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 714
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 9
    .param p1, "target"    # Ljava/lang/Runnable;
    .param p2, "name"    # Ljava/lang/String;

    .line 835
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "target":Ljava/lang/Runnable;
    .end local p2    # "name":Ljava/lang/String;
    .local v2, "target":Ljava/lang/Runnable;
    .local v3, "name":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 836
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Runnable;Ljava/security/AccessControlContext;)V
    .registers 12
    .param p1, "target"    # Ljava/lang/Runnable;
    .param p2, "acc"    # Ljava/security/AccessControlContext;

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v7, p2

    .end local p1    # "target":Ljava/lang/Runnable;
    .end local p2    # "acc":Ljava/security/AccessControlContext;
    .local v3, "target":Ljava/lang/Runnable;
    .local v7, "acc":Ljava/security/AccessControlContext;
    invoke-direct/range {v1 .. v8}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;JLjava/security/AccessControlContext;Z)V

    .line 723
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .line 761
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    .end local p1    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 762
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "characteristics"    # I
    .param p3, "bound"    # Z

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 179
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 202
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 208
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 246
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 266
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 282
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 641
    invoke-static {}, Ljava/lang/Thread$ThreadIdentifiers;->next()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/Thread;->tid:J

    .line 642
    if-eqz p1, :cond_29

    move-object v0, p1

    goto :goto_2b

    :cond_29
    const-string v0, ""

    :goto_2b
    iput-object v0, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 645
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->inheritedAccessControlContext:Ljava/security/AccessControlContext;

    .line 648
    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_52

    .line 649
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 650
    .local v0, "parent":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 651
    .local v1, "parentMap":Ljava/lang/ThreadLocal$ThreadLocalMap;
    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->size()I

    move-result v2

    if-lez v2, :cond_4b

    .line 652
    invoke-static {v1}, Ljava/lang/ThreadLocal;->createInheritedMap(Ljava/lang/ThreadLocal$ThreadLocalMap;)Ljava/lang/ThreadLocal$ThreadLocalMap;

    move-result-object v2

    iput-object v2, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 654
    :cond_4b
    invoke-static {v0}, Ljava/lang/Thread;->contextClassLoader(Ljava/lang/Thread;)Ljava/lang/ClassLoader;

    move-result-object v2

    iput-object v2, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 655
    .end local v0    # "parent":Ljava/lang/Thread;
    .end local v1    # "parentMap":Ljava/lang/ThreadLocal$ThreadLocalMap;
    goto :goto_58

    .line 657
    :cond_52
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 674
    :goto_58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/lang/Thread;->stackSize:J

    .line 675
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V
    .registers 10
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "group":Ljava/lang/ThreadGroup;
    .end local p2    # "target":Ljava/lang/Runnable;
    .local v2, "group":Ljava/lang/ThreadGroup;
    .local v3, "target":Ljava/lang/Runnable;
    invoke-direct/range {v1 .. v6}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 750
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 10
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;

    .line 883
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "group":Ljava/lang/ThreadGroup;
    .end local p2    # "target":Ljava/lang/Runnable;
    .end local p3    # "name":Ljava/lang/String;
    .local v1, "group":Ljava/lang/ThreadGroup;
    .local v2, "target":Ljava/lang/Runnable;
    .local v3, "name":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 884
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .registers 14
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "stackSize"    # J

    .line 962
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .end local p1    # "group":Ljava/lang/ThreadGroup;
    .end local p2    # "target":Ljava/lang/Runnable;
    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "stackSize":J
    .local v1, "group":Ljava/lang/ThreadGroup;
    .local v2, "target":Ljava/lang/Runnable;
    .local v3, "name":Ljava/lang/String;
    .local v4, "stackSize":J
    invoke-direct/range {v0 .. v7}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;JLjava/security/AccessControlContext;Z)V

    .line 963
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;JLjava/security/AccessControlContext;Z)V
    .registers 11
    .param p1, "g"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "stackSize"    # J
    .param p6, "acc"    # Ljava/security/AccessControlContext;
    .param p7, "inheritThreadLocals"    # Z

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 179
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 202
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 208
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 246
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 266
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 282
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 512
    if-eqz p3, :cond_4c

    .line 516
    iput-object p3, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 518
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 521
    .local v0, "parent":Ljava/lang/Thread;
    if-nez p1, :cond_2d

    .line 536
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    .line 557
    :cond_2d
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->addUnstarted()V

    .line 559
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 560
    invoke-virtual {v0}, Ljava/lang/Thread;->isDaemon()Z

    move-result v1

    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    .line 561
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    iput v1, p0, Ljava/lang/Thread;->priority:I

    .line 571
    iput-object p2, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    .line 579
    invoke-direct {p0, v0, p7}, Ljava/lang/Thread;->init2(Ljava/lang/Thread;Z)V

    .line 582
    iput-wide p4, p0, Ljava/lang/Thread;->stackSize:J

    .line 585
    invoke-static {}, Ljava/lang/Thread;->nextThreadID()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/lang/Thread;->tid:J

    .line 586
    return-void

    .line 513
    .end local v0    # "parent":Ljava/lang/Thread;
    :cond_4c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;JZ)V
    .registers 15
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "stackSize"    # J
    .param p6, "inheritThreadLocals"    # Z

    .line 1018
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v7, p6

    .end local p1    # "group":Ljava/lang/ThreadGroup;
    .end local p2    # "target":Ljava/lang/Runnable;
    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "stackSize":J
    .end local p6    # "inheritThreadLocals":Z
    .local v1, "group":Ljava/lang/ThreadGroup;
    .local v2, "target":Ljava/lang/Runnable;
    .local v3, "name":Ljava/lang/String;
    .local v4, "stackSize":J
    .local v7, "inheritThreadLocals":Z
    invoke-direct/range {v0 .. v7}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;JLjava/security/AccessControlContext;Z)V

    .line 1019
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .registers 9
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;

    .line 785
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .end local p1    # "group":Ljava/lang/ThreadGroup;
    .end local p2    # "name":Ljava/lang/String;
    .local v1, "group":Ljava/lang/ThreadGroup;
    .local v3, "name":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 786
    return-void
.end method

.method constructor greylist-max-r <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "daemon"    # Z

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 179
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 202
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 208
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 246
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 266
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 282
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 791
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 792
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->addUnstarted()V

    .line 794
    if-nez p2, :cond_3f

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 801
    :cond_3f
    iput-object p2, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 803
    iput p3, p0, Ljava/lang/Thread;->priority:I

    .line 804
    iput-boolean p4, p0, Ljava/lang/Thread;->daemon:Z

    .line 805
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/Thread;->init2(Ljava/lang/Thread;Z)V

    .line 806
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/lang/Thread;->stackSize:J

    .line 807
    invoke-static {}, Ljava/lang/Thread;->nextThreadID()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/Thread;->tid:J

    .line 808
    return-void
.end method

.method public static whitelist test-api activeCount()I
    .registers 1

    .line 1545
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    return v0
.end method

.method private static greylist-max-o auditSubclass(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 2079
    .local p0, "subcl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/Thread$1;

    invoke-direct {v0, p0}, Ljava/lang/Thread$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2102
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private static blacklist contextClassLoader(Ljava/lang/Thread;)Ljava/lang/ClassLoader;
    .registers 3
    .param p0, "parent"    # Ljava/lang/Thread;

    .line 624
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 625
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Thread;->isCCLOverridden(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_14

    .line 629
    :cond_11
    iget-object v1, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    return-object v1

    .line 626
    :cond_14
    :goto_14
    invoke-virtual {p0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    return-object v1
.end method

.method public static native whitelist test-api currentThread()Ljava/lang/Thread;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api dumpStack()V
    .registers 2

    .line 1727
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Stack trace"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1728
    return-void
.end method

.method public static whitelist test-api enumerate([Ljava/lang/Thread;)I
    .registers 2
    .param p0, "tarray"    # [Ljava/lang/Thread;

    .line 1575
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v0

    return v0
.end method

.method private greylist-max-o exit()V
    .registers 3

    .line 1128
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 1129
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->threadTerminated(Ljava/lang/Thread;)V

    .line 1130
    iput-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 1133
    :cond_c
    iput-object v1, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    .line 1135
    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 1136
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 1137
    iput-object v1, p0, Ljava/lang/Thread;->inheritedAccessControlContext:Ljava/security/AccessControlContext;

    .line 1138
    iput-object v1, p0, Ljava/lang/Thread;->blocker:Lsun/nio/ch/Interruptible;

    .line 1139
    iput-object v1, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1140
    return-void
.end method

.method public static whitelist test-api getAllStackTraces()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 2019
    sget-object v0, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    .line 2020
    .local v0, "count":I
    div-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v0

    new-array v1, v1, [Ljava/lang/Thread;

    .line 2023
    .local v1, "threads":[Ljava/lang/Thread;
    sget-object v2, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v0

    .line 2026
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2027
    .local v2, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v0, :cond_27

    .line 2028
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 2029
    .local v4, "stackTrace":[Ljava/lang/StackTraceElement;
    aget-object v5, v1, v3

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2027
    .end local v4    # "stackTrace":[Ljava/lang/StackTraceElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 2032
    .end local v3    # "i":I
    :cond_27
    return-object v2
.end method

.method public static whitelist test-api getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    .line 2352
    sget-object v0, Ljava/lang/Thread;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static greylist test-api getUncaughtExceptionPreHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    .line 2385
    sget-object v0, Ljava/lang/Thread;->uncaughtExceptionPreHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static native whitelist test-api holdsLock(Ljava/lang/Object;)Z
.end method

.method private blacklist init2(Ljava/lang/Thread;Z)V
    .registers 4
    .param p1, "parent"    # Ljava/lang/Thread;
    .param p2, "inheritThreadLocals"    # Z

    .line 812
    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 813
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->inheritedAccessControlContext:Ljava/security/AccessControlContext;

    .line 814
    if-eqz p2, :cond_1a

    iget-object v0, p1, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    if-eqz v0, :cond_1a

    .line 815
    iget-object v0, p1, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 816
    invoke-static {v0}, Ljava/lang/ThreadLocal;->createInheritedMap(Ljava/lang/ThreadLocal$ThreadLocalMap;)Ljava/lang/ThreadLocal$ThreadLocalMap;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 818
    :cond_1a
    return-void
.end method

.method private native blacklist interrupt0()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native whitelist test-api interrupted()Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static greylist-max-o isCCLOverridden(Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 2059
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Thread;

    if-ne p0, v0, :cond_6

    .line 2060
    const/4 v0, 0x0

    return v0

    .line 2062
    :cond_6
    sget-object v0, Ljava/lang/Thread$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    sget-object v1, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1}, Ljava/lang/Thread;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    .line 2063
    new-instance v0, Ljava/lang/Thread$WeakClassKey;

    sget-object v1, Ljava/lang/Thread$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    .line 2064
    .local v0, "key":Ljava/lang/Thread$WeakClassKey;
    sget-object v1, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 2065
    .local v1, "result":Ljava/lang/Boolean;
    if-nez v1, :cond_2b

    .line 2066
    invoke-static {p0}, Ljava/lang/Thread;->auditSubclass(Ljava/lang/Class;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2067
    sget-object v2, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2070
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method private static native greylist-max-o nativeCreate(Ljava/lang/Thread;JZ)V
.end method

.method private native greylist-max-o nativeGetStatus(Z)I
.end method

.method private static declared-synchronized greylist-max-o nextThreadID()J
    .registers 5

    const-class v0, Ljava/lang/Thread;

    monitor-enter v0

    .line 241
    :try_start_3
    sget-wide v1, Ljava/lang/Thread;->threadSeqNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Ljava/lang/Thread;->threadSeqNumber:J
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v0

    return-wide v1

    .line 241
    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method private static declared-synchronized greylist-max-o nextThreadNum()I
    .registers 3

    const-class v0, Ljava/lang/Thread;

    monitor-enter v0

    .line 197
    :try_start_3
    sget v1, Ljava/lang/Thread;->threadInitNumber:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Ljava/lang/Thread;->threadInitNumber:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return v1

    .line 197
    :catchall_b
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static whitelist test-api onSpinWait()V
    .registers 0

    .line 494
    return-void
.end method

.method static greylist-max-o processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "+",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Class<",
            "*>;>;*>;)V"
        }
    .end annotation

    .line 2491
    .local p0, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Class<*>;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<+Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;*>;"
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    move-object v1, v0

    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Ljava/lang/Class<*>;>;"
    if-eqz v0, :cond_c

    .line 2492
    invoke-interface {p1, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2494
    :cond_c
    return-void
.end method

.method public static whitelist test-api setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 1
    .param p0, "eh"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2340
    sput-object p0, Ljava/lang/Thread;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2341
    return-void
.end method

.method private native blacklist setNativeName(Ljava/lang/String;)V
.end method

.method public static greylist-max-o test-api setUncaughtExceptionPreHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 1
    .param p0, "eh"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2371
    sput-object p0, Ljava/lang/Thread;->uncaughtExceptionPreHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2372
    return-void
.end method

.method public static whitelist test-api sleep(J)V
    .registers 3
    .param p0, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 356
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/Thread;->sleep(JI)V

    .line 357
    return-void
.end method

.method public static whitelist test-api sleep(JI)V
    .registers 21
    .param p0, "millis"    # J
    .param p2, "nanos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 399
    move-wide/from16 v0, p0

    move/from16 v2, p2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_9f

    .line 402
    if-ltz v2, :cond_86

    .line 405
    const v5, 0xf423f

    if-gt v2, v5, :cond_6d

    .line 422
    cmp-long v3, v0, v3

    if-nez v3, :cond_24

    if-nez v2, :cond_24

    .line 424
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 427
    return-void

    .line 425
    :cond_1e
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 430
    :cond_24
    const v3, 0xf4240

    .line 432
    .local v3, "nanosPerMilli":I
    const-wide v4, 0x8637bd05af5L

    cmp-long v4, v0, v4

    const-wide/32 v5, 0xf4240

    if-ltz v4, :cond_39

    .line 434
    const-wide v7, 0x7fffffffffffffffL

    .local v7, "durationNanos":J
    goto :goto_3d

    .line 436
    .end local v7    # "durationNanos":J
    :cond_39
    mul-long v7, v0, v5

    int-to-long v9, v2

    add-long/2addr v7, v9

    .line 438
    .restart local v7    # "durationNanos":J
    :goto_3d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 440
    .local v9, "startNanos":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iget-object v4, v4, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 445
    .local v4, "lock":Ljava/lang/Object;
    monitor-enter v4

    .line 446
    const-wide/16 v11, 0x0

    move-wide v12, v11

    move v11, v2

    move-wide v1, v0

    .end local p0    # "millis":J
    .end local p2    # "nanos":I
    .local v1, "millis":J
    .local v11, "nanos":I
    .local v12, "elapsed":J
    :goto_4d
    cmp-long v0, v12, v7

    if-gez v0, :cond_68

    .line 448
    sub-long v14, v7, v12

    .line 449
    .local v14, "remaining":J
    :try_start_53
    div-long v16, v14, v5

    move-wide/from16 v1, v16

    .line 450
    move-wide/from16 v16, v5

    rem-long v5, v14, v16

    long-to-int v11, v5

    .line 451
    invoke-static {v4, v1, v2, v11}, Ljava/lang/Thread;->sleep(Ljava/lang/Object;JI)V

    .line 447
    .end local v14    # "remaining":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v12, v5, v9

    move-wide/from16 v5, v16

    goto :goto_4d

    .line 453
    .end local v12    # "elapsed":J
    :cond_68
    monitor-exit v4

    .line 455
    return-void

    .line 453
    :catchall_6a
    move-exception v0

    monitor-exit v4
    :try_end_6c
    .catchall {:try_start_53 .. :try_end_6c} :catchall_6a

    throw v0

    .line 406
    .end local v1    # "millis":J
    .end local v3    # "nanosPerMilli":I
    .end local v4    # "lock":Ljava/lang/Object;
    .end local v7    # "durationNanos":J
    .end local v9    # "startNanos":J
    .end local v11    # "nanos":I
    .restart local p0    # "millis":J
    .restart local p2    # "nanos":I
    :cond_6d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nanos > 999999: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 403
    :cond_86
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nanos < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 400
    :cond_9f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "millis < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static native greylist-max-o sleep(Ljava/lang/Object;JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native whitelist test-api yield()V
.end method


# virtual methods
.method public greylist-max-o blockedOn(Lsun/nio/ch/Interruptible;)V
    .registers 4
    .param p1, "b"    # Lsun/nio/ch/Interruptible;

    .line 290
    iget-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_3
    iput-object p1, p0, Ljava/lang/Thread;->blocker:Lsun/nio/ch/Interruptible;

    .line 292
    monitor-exit v0

    .line 293
    return-void

    .line 292
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final whitelist test-api checkAccess()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "17"
    .end annotation

    .line 1791
    return-void
.end method

.method protected whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 686
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public greylist countStackFrames()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "1.2"
    .end annotation

    .line 1595
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public greylist destroy()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1352
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final greylist-max-r dispatchUncaughtException(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 2433
    invoke-static {}, Ljava/lang/Thread;->getUncaughtExceptionPreHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 2434
    .local v0, "initialUeh":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_b

    .line 2436
    :try_start_6
    invoke-interface {v0, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_9} :catch_a
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_9} :catch_a

    .line 2439
    goto :goto_b

    .line 2437
    :catch_a
    move-exception v1

    .line 2442
    :cond_b
    :goto_b
    invoke-virtual {p0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 2443
    return-void
.end method

.method public whitelist test-api getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 2
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 1842
    iget-object v0, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public whitelist test-api getId()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
        since = "19"
    .end annotation

    .line 2124
    iget-wide v0, p0, Ljava/lang/Thread;->tid:J

    return-wide v0
.end method

.method public final whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 1505
    iget-object v0, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getPriority()I
    .registers 2

    .line 1467
    iget v0, p0, Ljava/lang/Thread;->priority:I

    return v0
.end method

.method public whitelist test-api getStackTrace()[Ljava/lang/StackTraceElement;
    .registers 3

    .line 1960
    invoke-static {p0}, Ldalvik/system/VMStack;->getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1961
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_a

    :cond_8
    sget-object v1, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    :goto_a
    return-object v1
.end method

.method public whitelist test-api getState()Ljava/lang/Thread$State;
    .registers 3

    .line 2252
    invoke-static {}, Ljava/lang/Thread$State;->values()[Ljava/lang/Thread$State;

    move-result-object v0

    iget-boolean v1, p0, Ljava/lang/Thread;->started:Z

    invoke-direct {p0, v1}, Ljava/lang/Thread;->nativeGetStatus(Z)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final whitelist test-api getThreadGroup()Ljava/lang/ThreadGroup;
    .registers 3

    .line 1521
    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_a

    .line 1522
    const/4 v0, 0x0

    return-object v0

    .line 1525
    :cond_a
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    return-object v0
.end method

.method public whitelist test-api getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 2

    .line 2399
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_7

    .line 2400
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 2399
    :goto_9
    return-object v0
.end method

.method public whitelist test-api interrupt()V
    .registers 3

    .line 1249
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq p0, v0, :cond_1d

    .line 1250
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1253
    iget-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1254
    :try_start_c
    iget-object v1, p0, Ljava/lang/Thread;->blocker:Lsun/nio/ch/Interruptible;

    .line 1255
    .local v1, "b":Lsun/nio/ch/Interruptible;
    if-eqz v1, :cond_18

    .line 1256
    invoke-direct {p0}, Ljava/lang/Thread;->interrupt0()V

    .line 1257
    invoke-interface {v1, p0}, Lsun/nio/ch/Interruptible;->interrupt(Ljava/lang/Thread;)V

    .line 1258
    monitor-exit v0

    return-void

    .line 1260
    .end local v1    # "b":Lsun/nio/ch/Interruptible;
    :cond_18
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_1a

    throw v1

    .line 1264
    :cond_1d
    :goto_1d
    invoke-direct {p0}, Ljava/lang/Thread;->interrupt0()V

    .line 1265
    return-void
.end method

.method public final whitelist test-api isAlive()Z
    .registers 5

    .line 1366
    iget-wide v0, p0, Ljava/lang/Thread;->nativePeer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final whitelist test-api isDaemon()Z
    .registers 2

    .line 1763
    iget-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    return v0
.end method

.method public native whitelist test-api isInterrupted()Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final whitelist test-api isVirtual()Z
    .registers 2

    .line 1035
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist test-api join()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1717
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Thread;->join(J)V

    .line 1718
    return-void
.end method

.method public final whitelist test-api join(J)V
    .registers 14
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1625
    iget-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1626
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1627
    .local v1, "base":J
    const-wide/16 v3, 0x0

    .line 1629
    .local v3, "now":J
    const-wide/16 v5, 0x0

    cmp-long v7, p1, v5

    if-ltz v7, :cond_3a

    .line 1633
    cmp-long v7, p1, v5

    if-nez v7, :cond_1f

    .line 1634
    :goto_13
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 1635
    iget-object v7, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    invoke-virtual {v7, v5, v6}, Ljava/lang/Object;->wait(J)V

    goto :goto_13

    .line 1638
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 1639
    sub-long v7, p1, v3

    .line 1640
    .local v7, "delay":J
    cmp-long v9, v7, v5

    if-gtz v9, :cond_2c

    .line 1641
    goto :goto_38

    .line 1643
    :cond_2c
    iget-object v9, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    invoke-virtual {v9, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 1644
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v3, v9, v1

    .line 1645
    .end local v7    # "delay":J
    goto :goto_1f

    .line 1647
    .end local v1    # "base":J
    .end local v3    # "now":J
    :cond_38
    :goto_38
    monitor-exit v0

    .line 1648
    return-void

    .line 1630
    .restart local v1    # "base":J
    .restart local v3    # "now":J
    :cond_3a
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "timeout value is negative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/lang/Thread;
    .end local p1    # "millis":J
    throw v5

    .line 1647
    .end local v1    # "base":J
    .end local v3    # "now":J
    .restart local p0    # "this":Ljava/lang/Thread;
    .restart local p1    # "millis":J
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public final whitelist test-api join(JI)V
    .registers 8
    .param p1, "millis"    # J
    .param p3, "nanos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1682
    iget-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1683
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_2b

    .line 1687
    if-ltz p3, :cond_23

    const v3, 0xf423f

    if-gt p3, v3, :cond_23

    .line 1692
    const v3, 0x7a120

    if-ge p3, v3, :cond_1b

    if-eqz p3, :cond_1e

    cmp-long v1, p1, v1

    if-nez v1, :cond_1e

    .line 1693
    :cond_1b
    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    .line 1696
    :cond_1e
    :try_start_1e
    invoke-virtual {p0, p1, p2}, Ljava/lang/Thread;->join(J)V

    .line 1697
    monitor-exit v0

    .line 1698
    return-void

    .line 1688
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "nanosecond timeout value out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/lang/Thread;
    .end local p1    # "millis":J
    .end local p3    # "nanos":I
    throw v1

    .line 1684
    .restart local p0    # "this":Ljava/lang/Thread;
    .restart local p1    # "millis":J
    .restart local p3    # "nanos":I
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "timeout value is negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/lang/Thread;
    .end local p1    # "millis":J
    .end local p3    # "nanos":I
    throw v1

    .line 1697
    .restart local p0    # "this":Ljava/lang/Thread;
    .restart local p1    # "millis":J
    .restart local p3    # "nanos":I
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1e .. :try_end_35} :catchall_33

    throw v1
.end method

.method public final greylist resume()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
        since = "1.2"
    .end annotation

    .line 1412
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api run()V
    .registers 2

    .line 1118
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 1119
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1121
    :cond_9
    return-void
.end method

.method public whitelist test-api setContextClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .line 1873
    iput-object p1, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 1874
    return-void
.end method

.method public final whitelist test-api setDaemon(Z)V
    .registers 3
    .param p1, "on"    # Z

    .line 1748
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1749
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1752
    iput-boolean p1, p0, Ljava/lang/Thread;->daemon:Z

    .line 1753
    return-void

    .line 1750
    :cond_c
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0
.end method

.method public final declared-synchronized whitelist test-api setName(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 1484
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1485
    if-eqz p1, :cond_13

    .line 1489
    iput-object p1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 1493
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1494
    invoke-direct {p0, p1}, Ljava/lang/Thread;->setNativeName(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1b

    .line 1496
    .end local p0    # "this":Ljava/lang/Thread;
    :cond_11
    monitor-exit p0

    return-void

    .line 1486
    :cond_13
    :try_start_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1483
    .end local p1    # "name":Ljava/lang/String;
    :catchall_1b
    move-exception p1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public final whitelist test-api setPriority(I)V
    .registers 5
    .param p1, "newPriority"    # I

    .line 1440
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1441
    const/16 v0, 0xa

    if-gt p1, v0, :cond_31

    const/4 v0, 0x1

    if-lt p1, v0, :cond_31

    .line 1445
    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    move-object v1, v0

    .local v1, "g":Ljava/lang/ThreadGroup;
    if-eqz v0, :cond_30

    .line 1446
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v0

    if-le p1, v0, :cond_1d

    .line 1447
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result p1

    move v0, p1

    goto :goto_1e

    .line 1446
    :cond_1d
    move v0, p1

    .line 1451
    .end local p1    # "newPriority":I
    .local v0, "newPriority":I
    :goto_1e
    monitor-enter p0

    .line 1452
    :try_start_1f
    iput v0, p0, Ljava/lang/Thread;->priority:I

    .line 1453
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 1454
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setPriority0(I)V

    .line 1456
    :cond_2a
    monitor-exit p0

    move p1, v0

    goto :goto_30

    :catchall_2d
    move-exception p1

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    throw p1

    .line 1458
    .end local v0    # "newPriority":I
    .restart local p1    # "newPriority":I
    :cond_30
    :goto_30
    return-void

    .line 1443
    .end local v1    # "g":Ljava/lang/ThreadGroup;
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Priority out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method native blacklist setPriority0(I)V
.end method

.method final blacklist setSystemDaemon(Z)V
    .registers 3
    .param p1, "on"    # Z

    .line 2474
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 2475
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Thread;->isDaemon()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2478
    iput-boolean p1, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 2479
    return-void

    .line 2476
    :cond_12
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2
    .param p1, "eh"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2419
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 2420
    iput-object p1, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2421
    return-void
.end method

.method public declared-synchronized whitelist test-api start()V
    .registers 4

    monitor-enter p0

    .line 1066
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/Thread;->started:Z

    if-nez v0, :cond_32

    .line 1072
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->add(Ljava/lang/Thread;)V

    .line 1079
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_38

    .line 1083
    :try_start_d
    iget-wide v0, p0, Ljava/lang/Thread;->stackSize:J

    iget-boolean v2, p0, Ljava/lang/Thread;->daemon:Z

    invoke-static {p0, v0, v1, v2}, Ljava/lang/Thread;->nativeCreate(Ljava/lang/Thread;JZ)V

    .line 1084
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_25

    .line 1087
    :try_start_17
    iget-boolean v0, p0, Ljava/lang/Thread;->started:Z

    if-nez v0, :cond_20

    .line 1088
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->threadStartFailed(Ljava/lang/Thread;)V
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_21

    .line 1093
    :cond_20
    goto :goto_23

    .line 1090
    :catchall_21
    move-exception v0

    .line 1094
    nop

    .line 1095
    :goto_23
    monitor-exit p0

    return-void

    .line 1086
    :catchall_25
    move-exception v0

    .line 1087
    :try_start_26
    iget-boolean v1, p0, Ljava/lang/Thread;->started:Z

    if-nez v1, :cond_2f

    .line 1088
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadGroup;->threadStartFailed(Ljava/lang/Thread;)V
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_30

    .line 1093
    :cond_2f
    goto :goto_31

    .line 1090
    :catchall_30
    move-exception v1

    .line 1094
    :goto_31
    :try_start_31
    throw v0

    .line 1067
    .end local p0    # "this":Ljava/lang/Thread;
    :cond_32
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0

    .line 1065
    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public final whitelist test-api stop()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
        since = "1.2"
    .end annotation

    .line 1186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final declared-synchronized greylist stop(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1206
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1206
    .end local p0    # "this":Ljava/lang/Thread;
    .end local p1    # "obj":Ljava/lang/Throwable;
    :catchall_7
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final greylist suspend()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
        since = "1.2"
    .end annotation

    .line 1392
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api threadId()J
    .registers 3

    .line 2136
    iget-wide v0, p0, Ljava/lang/Thread;->tid:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1800
    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 1801
    .local v0, "group":Ljava/lang/ThreadGroup;
    const-string v1, "Thread["

    const-string v2, ","

    if-eqz v0, :cond_3e

    .line 1802
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getPriority()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1803
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1802
    return-object v1

    .line 1805
    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
