.class public Ljava/util/concurrent/ForkJoinWorkerThread;
.super Ljava/lang/Thread;
.source "ForkJoinWorkerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;
    }
.end annotation


# static fields
.field private static final INHERITABLETHREADLOCALS:J

.field private static final INHERITEDACCESSCONTROLCONTEXT:J

.field private static final THREADLOCALS:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field final pool:Ljava/util/concurrent/ForkJoinPool;

.field final workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 159
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v1

    #@4
    sput-object v1, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    #@6
    .line 165
    :try_start_0
    sget-object v1, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    #@8
    .line 166
    const-class v2, Ljava/lang/Thread;

    #@a
    const-string/jumbo v3, "threadLocals"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v2

    #@11
    .line 165
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/ForkJoinWorkerThread;->THREADLOCALS:J

    #@17
    .line 167
    sget-object v1, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    #@19
    .line 168
    const-class v2, Ljava/lang/Thread;

    #@1b
    const-string/jumbo v3, "inheritableThreadLocals"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@21
    move-result-object v2

    #@22
    .line 167
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@25
    move-result-wide v2

    #@26
    sput-wide v2, Ljava/util/concurrent/ForkJoinWorkerThread;->INHERITABLETHREADLOCALS:J

    #@28
    .line 169
    sget-object v1, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    #@2a
    .line 170
    const-class v2, Ljava/lang/Thread;

    #@2c
    const-string/jumbo v3, "inheritedAccessControlContext"

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@32
    move-result-object v2

    #@33
    .line 169
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@36
    move-result-wide v2

    #@37
    sput-wide v2, Ljava/util/concurrent/ForkJoinWorkerThread;->INHERITEDACCESSCONTROLCONTEXT:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 26
    return-void

    #@3a
    .line 171
    :catch_0
    move-exception v0

    #@3b
    .line 172
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    #@3d
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@40
    throw v1
.end method

.method protected constructor <init>(Ljava/util/concurrent/ForkJoinPool;)V
    .locals 1
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;

    #@0
    .prologue
    .line 55
    const-string/jumbo v0, "aForkJoinWorkerThread"

    #@3
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@6
    .line 56
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@8
    .line 57
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ForkJoinPool;->registerWorker(Ljava/util/concurrent/ForkJoinWorkerThread;)Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@e
    .line 53
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ForkJoinPool;Ljava/lang/ThreadGroup;Ljava/security/AccessControlContext;)V
    .locals 4
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;
    .param p2, "threadGroup"    # Ljava/lang/ThreadGroup;
    .param p3, "acc"    # Ljava/security/AccessControlContext;

    #@0
    .prologue
    .line 65
    const-string/jumbo v0, "aForkJoinWorkerThread"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p2, v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    #@7
    .line 66
    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    #@9
    sget-wide v2, Ljava/util/concurrent/ForkJoinWorkerThread;->INHERITEDACCESSCONTROLCONTEXT:J

    #@b
    invoke-virtual {v0, p0, v2, v3, p3}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@e
    .line 67
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->eraseThreadLocals()V

    #@11
    .line 68
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@13
    .line 69
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ForkJoinPool;->registerWorker(Ljava/util/concurrent/ForkJoinWorkerThread;)Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@19
    .line 64
    return-void
.end method


# virtual methods
.method afterTopLevelExec()V
    .locals 0

    #@0
    .prologue
    .line 155
    return-void
.end method

.method final eraseThreadLocals()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 148
    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    #@3
    sget-wide v2, Ljava/util/concurrent/ForkJoinWorkerThread;->THREADLOCALS:J

    #@5
    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@8
    .line 149
    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    #@a
    sget-wide v2, Ljava/util/concurrent/ForkJoinWorkerThread;->INHERITABLETHREADLOCALS:J

    #@c
    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@f
    .line 147
    return-void
.end method

.method public getPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@2
    return-object v0
.end method

.method public getPoolIndex()I
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->getPoolIndex()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected onStart()V
    .locals 0

    #@0
    .prologue
    .line 104
    return-void
.end method

.method protected onTermination(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 115
    return-void
.end method

.method public run()V
    .locals 5

    #@0
    .prologue
    .line 124
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@2
    iget-object v3, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@4
    if-nez v3, :cond_0

    #@6
    .line 125
    const/4 v2, 0x0

    #@7
    .line 127
    .local v2, "exception":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->onStart()V

    #@a
    .line 128
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@c
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@e
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ForkJoinPool;->runWorker(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@11
    .line 133
    :try_start_1
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    .line 138
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@16
    invoke-virtual {v3, p0, v2}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    #@19
    .line 123
    .end local v2    # "exception":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    #@1a
    .line 134
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    #@1b
    .line 136
    .local v0, "ex":Ljava/lang/Throwable;
    move-object v2, v0

    #@1c
    .line 138
    .local v2, "exception":Ljava/lang/Throwable;
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@1e
    invoke-virtual {v3, p0, v2}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    #@21
    goto :goto_0

    #@22
    .line 137
    .end local v0    # "ex":Ljava/lang/Throwable;
    .local v2, "exception":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    #@23
    .line 138
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@25
    invoke-virtual {v4, p0, v2}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    #@28
    .line 137
    throw v3

    #@29
    .line 129
    :catch_1
    move-exception v0

    #@2a
    .line 130
    .restart local v0    # "ex":Ljava/lang/Throwable;
    move-object v2, v0

    #@2b
    .line 133
    .local v2, "exception":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2e
    .line 138
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@30
    invoke-virtual {v3, p0, v0}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    #@33
    goto :goto_0

    #@34
    .line 134
    :catch_2
    move-exception v1

    #@35
    .line 135
    .end local v0    # "ex":Ljava/lang/Throwable;
    .local v1, "ex":Ljava/lang/Throwable;
    if-nez v0, :cond_1

    #@37
    .line 136
    move-object v2, v1

    #@38
    .line 138
    :cond_1
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@3a
    invoke-virtual {v3, p0, v2}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    #@3d
    goto :goto_0

    #@3e
    .line 137
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    #@3f
    .line 138
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@41
    invoke-virtual {v4, p0, v0}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    #@44
    .line 137
    throw v3

    #@45
    .line 131
    .end local v0    # "ex":Ljava/lang/Throwable;
    .local v2, "exception":Ljava/lang/Throwable;
    :catchall_2
    move-exception v3

    #@46
    .line 133
    :try_start_3
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@49
    .line 138
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@4b
    invoke-virtual {v4, p0, v2}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    #@4e
    .line 131
    .end local v2    # "exception":Ljava/lang/Throwable;
    :goto_1
    throw v3

    #@4f
    .line 134
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    #@50
    .line 136
    .restart local v0    # "ex":Ljava/lang/Throwable;
    move-object v2, v0

    #@51
    .line 138
    .local v2, "exception":Ljava/lang/Throwable;
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@53
    invoke-virtual {v4, p0, v2}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    #@56
    goto :goto_1

    #@57
    .line 137
    .end local v0    # "ex":Ljava/lang/Throwable;
    .local v2, "exception":Ljava/lang/Throwable;
    :catchall_3
    move-exception v3

    #@58
    .line 138
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@5a
    invoke-virtual {v4, p0, v2}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    #@5d
    .line 137
    throw v3
.end method
