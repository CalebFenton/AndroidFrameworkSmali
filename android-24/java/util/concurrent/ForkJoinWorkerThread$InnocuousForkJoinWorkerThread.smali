.class final Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;
.super Ljava/util/concurrent/ForkJoinWorkerThread;
.source "ForkJoinWorkerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnocuousForkJoinWorkerThread"
.end annotation


# static fields
.field private static final INNOCUOUS_ACC:Ljava/security/AccessControlContext;

.field private static final innocuousThreadGroup:Ljava/lang/ThreadGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 184
    invoke-static {}, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->createThreadGroup()Ljava/lang/ThreadGroup;

    #@4
    move-result-object v0

    #@5
    .line 183
    sput-object v0, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->innocuousThreadGroup:Ljava/lang/ThreadGroup;

    #@7
    .line 188
    new-instance v0, Ljava/security/AccessControlContext;

    #@9
    .line 189
    const/4 v1, 0x1

    #@a
    new-array v1, v1, [Ljava/security/ProtectionDomain;

    #@c
    .line 190
    new-instance v2, Ljava/security/ProtectionDomain;

    #@e
    invoke-direct {v2, v3, v3}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    #@11
    const/4 v3, 0x0

    #@12
    aput-object v2, v1, v3

    #@14
    .line 188
    invoke-direct {v0, v1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    #@17
    .line 187
    sput-object v0, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->INNOCUOUS_ACC:Ljava/security/AccessControlContext;

    #@19
    .line 181
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ForkJoinPool;)V
    .locals 2
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;

    #@0
    .prologue
    .line 194
    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->innocuousThreadGroup:Ljava/lang/ThreadGroup;

    #@2
    sget-object v1, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->INNOCUOUS_ACC:Ljava/security/AccessControlContext;

    #@4
    invoke-direct {p0, p1, v0, v1}, Ljava/util/concurrent/ForkJoinWorkerThread;-><init>(Ljava/util/concurrent/ForkJoinPool;Ljava/lang/ThreadGroup;Ljava/security/AccessControlContext;)V

    #@7
    .line 193
    return-void
.end method

.method private static createThreadGroup()Ljava/lang/ThreadGroup;
    .locals 10

    #@0
    .prologue
    .line 222
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v5

    #@4
    .line 224
    .local v5, "u":Lsun/misc/Unsafe;
    const-class v8, Ljava/lang/Thread;

    #@6
    const-string/jumbo v9, "group"

    #@9
    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@c
    move-result-object v8

    #@d
    .line 223
    invoke-virtual {v5, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@10
    move-result-wide v6

    #@11
    .line 226
    .local v6, "tg":J
    const-class v8, Ljava/lang/ThreadGroup;

    #@13
    const-string/jumbo v9, "parent"

    #@16
    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@19
    move-result-object v8

    #@1a
    .line 225
    invoke-virtual {v5, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@1d
    move-result-wide v2

    #@1e
    .line 228
    .local v2, "gp":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@21
    move-result-object v8

    #@22
    invoke-virtual {v5, v8, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    .line 227
    check-cast v1, Ljava/lang/ThreadGroup;

    #@28
    .line 229
    .local v1, "group":Ljava/lang/ThreadGroup;
    :goto_0
    if-eqz v1, :cond_1

    #@2a
    .line 230
    invoke-virtual {v5, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    #@2d
    move-result-object v4

    #@2e
    check-cast v4, Ljava/lang/ThreadGroup;

    #@30
    .line 231
    .local v4, "parent":Ljava/lang/ThreadGroup;
    if-nez v4, :cond_0

    #@32
    .line 232
    new-instance v8, Ljava/lang/ThreadGroup;

    #@34
    .line 233
    const-string/jumbo v9, "InnocuousForkJoinWorkerThreadGroup"

    #@37
    .line 232
    invoke-direct {v8, v1, v9}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    return-object v8

    #@3b
    .line 234
    :cond_0
    move-object v1, v4

    #@3c
    goto :goto_0

    #@3d
    .line 236
    .end local v1    # "group":Ljava/lang/ThreadGroup;
    .end local v2    # "gp":J
    .end local v4    # "parent":Ljava/lang/ThreadGroup;
    .end local v6    # "tg":J
    :catch_0
    move-exception v0

    #@3e
    .line 237
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v8, Ljava/lang/Error;

    #@40
    invoke-direct {v8, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@43
    throw v8

    #@44
    .line 240
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    .restart local v1    # "group":Ljava/lang/ThreadGroup;
    .restart local v2    # "gp":J
    .restart local v6    # "tg":J
    :cond_1
    new-instance v8, Ljava/lang/Error;

    #@46
    const-string/jumbo v9, "Cannot create ThreadGroup"

    #@49
    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@4c
    throw v8
.end method


# virtual methods
.method afterTopLevelExec()V
    .locals 0

    #@0
    .prologue
    .line 199
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->eraseThreadLocals()V

    #@3
    .line 198
    return-void
.end method

.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    #@0
    .prologue
    .line 204
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setContextClassLoader(Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 212
    new-instance v0, Ljava/lang/SecurityException;

    #@2
    const-string/jumbo v1, "setContextClassLoader"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p1, "x"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    #@0
    .prologue
    .line 208
    return-void
.end method
