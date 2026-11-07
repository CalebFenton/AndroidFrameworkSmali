.class public final Ljdk/internal/misc/InnocuousThread;
.super Ljava/lang/Thread;
.source "InnocuousThread.java"


# static fields
.field private static final blacklist ACC:Ljava/security/AccessControlContext;

.field private static final blacklist CONTEXTCLASSLOADER:J

.field private static final blacklist INHERITABLE_THREAD_LOCALS:J

.field private static final blacklist INHERITEDACCESSCONTROLCONTEXT:J

.field private static final blacklist INNOCUOUSTHREADGROUP:Ljava/lang/ThreadGroup;

.field private static final blacklist THREAD_LOCALS:J

.field private static final blacklist UNSAFE:Ljdk/internal/misc/Unsafe;

.field private static final blacklist threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private volatile blacklist hasRun:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINNOCUOUSTHREADGROUP()Ljava/lang/ThreadGroup;
    .registers 1

    sget-object v0, Ljdk/internal/misc/InnocuousThread;->INNOCUOUSTHREADGROUP:Ljava/lang/ThreadGroup;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 9

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Ljdk/internal/misc/InnocuousThread;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 141
    :try_start_8
    new-instance v0, Ljava/security/AccessControlContext;

    new-array v1, v1, [Ljava/security/ProtectionDomain;

    new-instance v2, Ljava/security/ProtectionDomain;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    sput-object v0, Ljdk/internal/misc/InnocuousThread;->ACC:Ljava/security/AccessControlContext;

    .line 146
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljdk/internal/misc/InnocuousThread;->UNSAFE:Ljdk/internal/misc/Unsafe;

    .line 147
    const-class v0, Ljava/lang/Thread;

    .line 148
    .local v0, "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/ThreadGroup;

    .line 150
    .local v1, "gk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljdk/internal/misc/InnocuousThread;->UNSAFE:Ljdk/internal/misc/Unsafe;

    const-string v3, "threadLocals"

    invoke-virtual {v2, v0, v3}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Ljdk/internal/misc/InnocuousThread;->THREAD_LOCALS:J

    .line 151
    sget-object v2, Ljdk/internal/misc/InnocuousThread;->UNSAFE:Ljdk/internal/misc/Unsafe;

    const-string v3, "inheritableThreadLocals"

    .line 152
    invoke-virtual {v2, v0, v3}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Ljdk/internal/misc/InnocuousThread;->INHERITABLE_THREAD_LOCALS:J

    .line 153
    sget-object v2, Ljdk/internal/misc/InnocuousThread;->UNSAFE:Ljdk/internal/misc/Unsafe;

    const-string v3, "inheritedAccessControlContext"

    .line 154
    invoke-virtual {v2, v0, v3}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Ljdk/internal/misc/InnocuousThread;->INHERITEDACCESSCONTROLCONTEXT:J

    .line 155
    sget-object v2, Ljdk/internal/misc/InnocuousThread;->UNSAFE:Ljdk/internal/misc/Unsafe;

    const-string v3, "contextClassLoader"

    .line 156
    invoke-virtual {v2, v0, v3}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Ljdk/internal/misc/InnocuousThread;->CONTEXTCLASSLOADER:J

    .line 158
    sget-object v2, Ljdk/internal/misc/InnocuousThread;->UNSAFE:Ljdk/internal/misc/Unsafe;

    const-string v3, "group"

    invoke-virtual {v2, v0, v3}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    .line 159
    .local v2, "tg":J
    sget-object v4, Ljdk/internal/misc/InnocuousThread;->UNSAFE:Ljdk/internal/misc/Unsafe;

    const-string v5, "parent"

    invoke-virtual {v4, v1, v5}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v4

    .line 160
    .local v4, "gp":J
    sget-object v6, Ljdk/internal/misc/InnocuousThread;->UNSAFE:Ljdk/internal/misc/Unsafe;

    .line 161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v6, v7, v2, v3}, Ljdk/internal/misc/Unsafe;->getReference(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ThreadGroup;

    .line 163
    .local v6, "group":Ljava/lang/ThreadGroup;
    :goto_68
    if-eqz v6, :cond_77

    .line 164
    sget-object v7, Ljdk/internal/misc/InnocuousThread;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v7, v6, v4, v5}, Ljdk/internal/misc/Unsafe;->getReference(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ThreadGroup;

    .line 165
    .local v7, "parent":Ljava/lang/ThreadGroup;
    if-nez v7, :cond_75

    .line 166
    goto :goto_77

    .line 167
    :cond_75
    move-object v6, v7

    .line 168
    .end local v7    # "parent":Ljava/lang/ThreadGroup;
    goto :goto_68

    .line 169
    :cond_77
    :goto_77
    move-object v7, v6

    .line 170
    .local v7, "root":Ljava/lang/ThreadGroup;
    new-instance v8, Ljdk/internal/misc/InnocuousThread$3;

    invoke-direct {v8, v7}, Ljdk/internal/misc/InnocuousThread$3;-><init>(Ljava/lang/ThreadGroup;)V

    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ThreadGroup;

    sput-object v8, Ljdk/internal/misc/InnocuousThread;->INNOCUOUSTHREADGROUP:Ljava/lang/ThreadGroup;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_85} :catch_87

    .line 179
    .end local v0    # "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "gk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "tg":J
    .end local v4    # "gp":J
    .end local v6    # "group":Ljava/lang/ThreadGroup;
    .end local v7    # "root":Ljava/lang/ThreadGroup;
    nop

    .line 180
    return-void

    .line 177
    :catch_87
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor blacklist <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 12
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "tccl"    # Ljava/lang/ClassLoader;

    .line 100
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

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
    invoke-direct/range {v0 .. v6}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;JZ)V

    .line 101
    sget-object p1, Ljdk/internal/misc/InnocuousThread;->UNSAFE:Ljdk/internal/misc/Unsafe;

    sget-wide p2, Ljdk/internal/misc/InnocuousThread;->INHERITEDACCESSCONTROLCONTEXT:J

    sget-object v4, Ljdk/internal/misc/InnocuousThread;->ACC:Ljava/security/AccessControlContext;

    invoke-virtual {p1, p0, p2, p3, v4}, Ljdk/internal/misc/Unsafe;->putReferenceRelease(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 102
    sget-object p1, Ljdk/internal/misc/InnocuousThread;->UNSAFE:Ljdk/internal/misc/Unsafe;

    sget-wide p2, Ljdk/internal/misc/InnocuousThread;->CONTEXTCLASSLOADER:J

    invoke-virtual {p1, p0, p2, p3, p4}, Ljdk/internal/misc/Unsafe;->putReferenceRelease(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 103
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/ClassLoader;Ljdk/internal/misc/InnocuousThread-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Ljdk/internal/misc/InnocuousThread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private static blacklist newName()Ljava/lang/String;
    .registers 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InnocuousThread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljdk/internal/misc/InnocuousThread;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newSystemThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2
    .param p0, "target"    # Ljava/lang/Runnable;

    .line 82
    invoke-static {}, Ljdk/internal/misc/InnocuousThread;->newName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ljdk/internal/misc/InnocuousThread;->newSystemThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newSystemThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/Runnable;

    .line 89
    new-instance v0, Ljdk/internal/misc/InnocuousThread$2;

    invoke-direct {v0, p1, p0}, Ljdk/internal/misc/InnocuousThread$2;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    return-object v0
.end method

.method public static blacklist newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2
    .param p0, "target"    # Ljava/lang/Runnable;

    .line 57
    invoke-static {}, Ljdk/internal/misc/InnocuousThread;->newName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ljdk/internal/misc/InnocuousThread;->newThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/Runnable;

    .line 65
    new-instance v0, Ljdk/internal/misc/InnocuousThread$1;

    invoke-direct {v0, p1, p0}, Ljdk/internal/misc/InnocuousThread$1;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    return-object v0
.end method


# virtual methods
.method public final blacklist eraseThreadLocals()V
    .registers 5

    .line 123
    sget-object v0, Ljdk/internal/misc/InnocuousThread;->UNSAFE:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljdk/internal/misc/InnocuousThread;->THREAD_LOCALS:J

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Ljdk/internal/misc/Unsafe;->putReference(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 124
    sget-object v0, Ljdk/internal/misc/InnocuousThread;->UNSAFE:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljdk/internal/misc/InnocuousThread;->INHERITABLE_THREAD_LOCALS:J

    invoke-virtual {v0, p0, v1, v2, v3}, Ljdk/internal/misc/Unsafe;->putReference(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 125
    return-void
.end method

.method public whitelist test-api run()V
    .registers 2

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_10

    iget-boolean v0, p0, Ljdk/internal/misc/InnocuousThread;->hasRun:Z

    if-nez v0, :cond_10

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljdk/internal/misc/InnocuousThread;->hasRun:Z

    .line 134
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 136
    :cond_10
    return-void
.end method

.method public whitelist test-api setContextClassLoader(Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .line 113
    if-nez p1, :cond_7

    .line 114
    const/4 v0, 0x0

    invoke-super {p0, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 117
    return-void

    .line 116
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "setContextClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2
    .param p1, "x"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 108
    return-void
.end method
