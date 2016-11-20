.class public Ljava/lang/Shutdown;
.super Ljava/lang/Object;
.source "Shutdown.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Shutdown$Lock;
    }
.end annotation


# static fields
.field private static final FINALIZERS:I = 0x2

.field private static final HOOKS:I = 0x1

.field private static final MAX_SYSTEM_HOOKS:I = 0xa

.field private static final RUNNING:I

.field private static currentRunningHook:I

.field private static haltLock:Ljava/lang/Object;

.field private static final hooks:[Ljava/lang/Runnable;

.field private static lock:Ljava/lang/Object;

.field private static runFinalizersOnExit:Z

.field private static state:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 45
    sput v1, Ljava/lang/Shutdown;->state:I

    #@4
    .line 48
    sput-boolean v1, Ljava/lang/Shutdown;->runFinalizersOnExit:Z

    #@6
    .line 56
    const/16 v0, 0xa

    #@8
    new-array v0, v0, [Ljava/lang/Runnable;

    #@a
    sput-object v0, Ljava/lang/Shutdown;->hooks:[Ljava/lang/Runnable;

    #@c
    .line 59
    sput v1, Ljava/lang/Shutdown;->currentRunningHook:I

    #@e
    .line 63
    new-instance v0, Ljava/lang/Shutdown$Lock;

    #@10
    invoke-direct {v0, v2}, Ljava/lang/Shutdown$Lock;-><init>(Ljava/lang/Shutdown$Lock;)V

    #@13
    sput-object v0, Ljava/lang/Shutdown;->lock:Ljava/lang/Object;

    #@15
    .line 66
    new-instance v0, Ljava/lang/Shutdown$Lock;

    #@17
    invoke-direct {v0, v2}, Ljava/lang/Shutdown$Lock;-><init>(Ljava/lang/Shutdown$Lock;)V

    #@1a
    sput-object v0, Ljava/lang/Shutdown;->haltLock:Ljava/lang/Object;

    #@1c
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static add(IZLjava/lang/Runnable;)V
    .locals 4
    .param p0, "slot"    # I
    .param p1, "registerShutdownInProgress"    # Z
    .param p2, "hook"    # Ljava/lang/Runnable;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 98
    sget-object v1, Ljava/lang/Shutdown;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 99
    :try_start_0
    sget-object v0, Ljava/lang/Shutdown;->hooks:[Ljava/lang/Runnable;

    #@6
    aget-object v0, v0, p0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 100
    new-instance v0, Ljava/lang/InternalError;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Shutdown hook at slot "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, " already registered"

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v0, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 98
    :catchall_0
    move-exception v0

    #@2c
    monitor-exit v1

    #@2d
    throw v0

    #@2e
    .line 102
    :cond_0
    if-nez p1, :cond_1

    #@30
    .line 103
    :try_start_1
    sget v0, Ljava/lang/Shutdown;->state:I

    #@32
    if-lez v0, :cond_3

    #@34
    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    #@36
    const-string/jumbo v2, "Shutdown in progress"

    #@39
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0

    #@3d
    .line 106
    :cond_1
    sget v0, Ljava/lang/Shutdown;->state:I

    #@3f
    if-gt v0, v2, :cond_2

    #@41
    sget v0, Ljava/lang/Shutdown;->state:I

    #@43
    if-ne v0, v2, :cond_3

    #@45
    sget v0, Ljava/lang/Shutdown;->currentRunningHook:I

    #@47
    if-gt p0, v0, :cond_3

    #@49
    .line 107
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    #@4b
    const-string/jumbo v2, "Shutdown in progress"

    #@4e
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@51
    throw v0

    #@52
    .line 110
    :cond_3
    sget-object v0, Ljava/lang/Shutdown;->hooks:[Ljava/lang/Runnable;

    #@54
    aput-object p2, v0, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    monitor-exit v1

    #@57
    .line 97
    return-void
.end method

.method static exit(I)V
    .locals 3
    .param p0, "status"    # I

    #@0
    .prologue
    .line 185
    const/4 v0, 0x0

    #@1
    .line 186
    .local v0, "runMoreFinalizers":Z
    sget-object v2, Ljava/lang/Shutdown;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 187
    if-eqz p0, :cond_0

    #@6
    const/4 v1, 0x0

    #@7
    :try_start_0
    sput-boolean v1, Ljava/lang/Shutdown;->runFinalizersOnExit:Z

    #@9
    .line 188
    :cond_0
    sget v1, Ljava/lang/Shutdown;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    packed-switch v1, :pswitch_data_0

    #@e
    .end local v0    # "runMoreFinalizers":Z
    :goto_0
    :pswitch_0
    monitor-exit v2

    #@f
    .line 207
    if-eqz v0, :cond_1

    #@11
    .line 208
    invoke-static {}, Ljava/lang/Shutdown;->runAllFinalizers()V

    #@14
    .line 209
    invoke-static {p0}, Ljava/lang/Shutdown;->halt(I)V

    #@17
    .line 211
    :cond_1
    const-class v2, Ljava/lang/Shutdown;

    #@19
    monitor-enter v2

    #@1a
    .line 215
    :try_start_1
    invoke-static {}, Ljava/lang/Shutdown;->sequence()V

    #@1d
    .line 216
    invoke-static {p0}, Ljava/lang/Shutdown;->halt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@20
    monitor-exit v2

    #@21
    .line 184
    return-void

    #@22
    .line 190
    .restart local v0    # "runMoreFinalizers":Z
    :pswitch_1
    const/4 v1, 0x1

    #@23
    :try_start_2
    sput v1, Ljava/lang/Shutdown;->state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    goto :goto_0

    #@26
    .line 186
    :catchall_0
    move-exception v1

    #@27
    monitor-exit v2

    #@28
    throw v1

    #@29
    .line 195
    :pswitch_2
    if-eqz p0, :cond_2

    #@2b
    .line 197
    :try_start_3
    invoke-static {p0}, Ljava/lang/Shutdown;->halt(I)V

    #@2e
    goto :goto_0

    #@2f
    .line 202
    :cond_2
    sget-boolean v0, Ljava/lang/Shutdown;->runFinalizersOnExit:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@31
    .local v0, "runMoreFinalizers":Z
    goto :goto_0

    #@32
    .line 211
    .end local v0    # "runMoreFinalizers":Z
    :catchall_1
    move-exception v1

    #@33
    monitor-exit v2

    #@34
    throw v1

    #@35
    .line 188
    nop

    #@36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static halt(I)V
    .locals 2
    .param p0, "status"    # I

    #@0
    .prologue
    .line 141
    sget-object v0, Ljava/lang/Shutdown;->haltLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 142
    :try_start_0
    invoke-static {p0}, Ljava/lang/Shutdown;->halt0(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 140
    return-void

    #@8
    .line 141
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method static native halt0(I)V
.end method

.method private static native runAllFinalizers()V
.end method

.method private static runHooks()V
    .locals 6

    #@0
    .prologue
    .line 117
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    const/16 v4, 0xa

    #@3
    if-ge v1, v4, :cond_1

    #@5
    .line 120
    :try_start_0
    sget-object v5, Ljava/lang/Shutdown;->lock:Ljava/lang/Object;

    #@7
    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 123
    :try_start_1
    sput v1, Ljava/lang/Shutdown;->currentRunningHook:I

    #@a
    .line 124
    sget-object v4, Ljava/lang/Shutdown;->hooks:[Ljava/lang/Runnable;

    #@c
    aget-object v0, v4, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    .local v0, "hook":Ljava/lang/Runnable;
    :try_start_2
    monitor-exit v5

    #@f
    .line 126
    if-eqz v0, :cond_0

    #@11
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@14
    .line 117
    .end local v0    # "hook":Ljava/lang/Runnable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 120
    :catchall_0
    move-exception v4

    #@18
    monitor-exit v5

    #@19
    throw v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@1a
    .line 127
    :catch_0
    move-exception v2

    #@1b
    .line 128
    .local v2, "t":Ljava/lang/Throwable;
    instance-of v4, v2, Ljava/lang/ThreadDeath;

    #@1d
    if-eqz v4, :cond_0

    #@1f
    move-object v3, v2

    #@20
    .line 129
    check-cast v3, Ljava/lang/ThreadDeath;

    #@22
    .line 130
    .local v3, "td":Ljava/lang/ThreadDeath;
    throw v3

    #@23
    .line 116
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "td":Ljava/lang/ThreadDeath;
    :cond_1
    return-void
.end method

.method private static sequence()V
    .locals 4

    #@0
    .prologue
    .line 164
    sget-object v1, Ljava/lang/Shutdown;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 168
    :try_start_0
    sget v2, Ljava/lang/Shutdown;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    const/4 v3, 0x1

    #@6
    if-eq v2, v3, :cond_0

    #@8
    monitor-exit v1

    #@9
    return-void

    #@a
    :cond_0
    monitor-exit v1

    #@b
    .line 170
    invoke-static {}, Ljava/lang/Shutdown;->runHooks()V

    #@e
    .line 172
    sget-object v2, Ljava/lang/Shutdown;->lock:Ljava/lang/Object;

    #@10
    monitor-enter v2

    #@11
    .line 173
    const/4 v1, 0x2

    #@12
    :try_start_1
    sput v1, Ljava/lang/Shutdown;->state:I

    #@14
    .line 174
    sget-boolean v0, Ljava/lang/Shutdown;->runFinalizersOnExit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@16
    .local v0, "rfoe":Z
    monitor-exit v2

    #@17
    .line 176
    if-eqz v0, :cond_1

    #@19
    invoke-static {}, Ljava/lang/Shutdown;->runAllFinalizers()V

    #@1c
    .line 163
    :cond_1
    return-void

    #@1d
    .line 164
    .end local v0    # "rfoe":Z
    :catchall_0
    move-exception v2

    #@1e
    monitor-exit v1

    #@1f
    throw v2

    #@20
    .line 172
    :catchall_1
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1
.end method

.method static setRunFinalizersOnExit(Z)V
    .locals 2
    .param p0, "run"    # Z

    #@0
    .prologue
    .line 70
    sget-object v0, Ljava/lang/Shutdown;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 71
    :try_start_0
    sput-boolean p0, Ljava/lang/Shutdown;->runFinalizersOnExit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 69
    return-void

    #@7
    .line 70
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method static shutdown()V
    .locals 2

    #@0
    .prologue
    .line 226
    sget-object v1, Ljava/lang/Shutdown;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 227
    :try_start_0
    sget v0, Ljava/lang/Shutdown;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    :goto_0
    :pswitch_0
    monitor-exit v1

    #@9
    .line 236
    const-class v0, Ljava/lang/Shutdown;

    #@b
    monitor-enter v0

    #@c
    .line 237
    :try_start_1
    invoke-static {}, Ljava/lang/Shutdown;->sequence()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@f
    monitor-exit v0

    #@10
    .line 225
    return-void

    #@11
    .line 229
    :pswitch_1
    const/4 v0, 0x1

    #@12
    :try_start_2
    sput v0, Ljava/lang/Shutdown;->state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@14
    goto :goto_0

    #@15
    .line 226
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0

    #@18
    .line 236
    :catchall_1
    move-exception v1

    #@19
    monitor-exit v0

    #@1a
    throw v1

    #@1b
    .line 227
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
