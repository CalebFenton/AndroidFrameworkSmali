.class public Ljava/util/concurrent/CompletableFuture;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava/util/concurrent/CompletionStage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CompletableFuture$AltResult;,
        Ljava/util/concurrent/CompletableFuture$AsyncRun;,
        Ljava/util/concurrent/CompletableFuture$AsyncSupply;,
        Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;,
        Ljava/util/concurrent/CompletableFuture$BiAccept;,
        Ljava/util/concurrent/CompletableFuture$BiApply;,
        Ljava/util/concurrent/CompletableFuture$BiCompletion;,
        Ljava/util/concurrent/CompletableFuture$BiRelay;,
        Ljava/util/concurrent/CompletableFuture$BiRun;,
        Ljava/util/concurrent/CompletableFuture$Canceller;,
        Ljava/util/concurrent/CompletableFuture$CoCompletion;,
        Ljava/util/concurrent/CompletableFuture$Completion;,
        Ljava/util/concurrent/CompletableFuture$DelayedCompleter;,
        Ljava/util/concurrent/CompletableFuture$DelayedExecutor;,
        Ljava/util/concurrent/CompletableFuture$Delayer;,
        Ljava/util/concurrent/CompletableFuture$MinimalStage;,
        Ljava/util/concurrent/CompletableFuture$OrAccept;,
        Ljava/util/concurrent/CompletableFuture$OrApply;,
        Ljava/util/concurrent/CompletableFuture$OrRelay;,
        Ljava/util/concurrent/CompletableFuture$OrRun;,
        Ljava/util/concurrent/CompletableFuture$Signaller;,
        Ljava/util/concurrent/CompletableFuture$TaskSubmitter;,
        Ljava/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;,
        Ljava/util/concurrent/CompletableFuture$Timeout;,
        Ljava/util/concurrent/CompletableFuture$UniAccept;,
        Ljava/util/concurrent/CompletableFuture$UniApply;,
        Ljava/util/concurrent/CompletableFuture$UniCompletion;,
        Ljava/util/concurrent/CompletableFuture$UniCompose;,
        Ljava/util/concurrent/CompletableFuture$UniExceptionally;,
        Ljava/util/concurrent/CompletableFuture$UniHandle;,
        Ljava/util/concurrent/CompletableFuture$UniRelay;,
        Ljava/util/concurrent/CompletableFuture$UniRun;,
        Ljava/util/concurrent/CompletableFuture$UniWhenComplete;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TT;>;",
        "Ljava/util/concurrent/CompletionStage",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final ASYNC:I = 0x1

.field private static final ASYNC_POOL:Ljava/util/concurrent/Executor;

.field static final NESTED:I = -0x1

.field private static final NEXT:J

.field static final NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

.field private static final RESULT:J

.field static final SPINS:I

.field private static final STACK:J

.field static final SYNC:I

.field private static final U:Lsun/misc/Unsafe;

.field private static final USE_COMMON_POOL:Z


# instance fields
.field volatile result:Ljava/lang/Object;

.field volatile stack:Ljava/util/concurrent/CompletableFuture$Completion;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 222
    new-instance v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@4
    const/4 v5, 0x0

    #@5
    invoke-direct {v2, v5}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    #@8
    sput-object v2, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    #@a
    .line 367
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@d
    move-result v2

    #@e
    if-le v2, v3, :cond_1

    #@10
    move v2, v3

    #@11
    .line 366
    :goto_0
    sput-boolean v2, Ljava/util/concurrent/CompletableFuture;->USE_COMMON_POOL:Z

    #@13
    .line 373
    sget-boolean v2, Ljava/util/concurrent/CompletableFuture;->USE_COMMON_POOL:Z

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 374
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    #@1a
    move-result-object v2

    #@1b
    .line 373
    :goto_1
    sput-object v2, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    #@1d
    .line 400
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    #@24
    move-result v2

    #@25
    if-le v2, v3, :cond_0

    #@27
    .line 401
    const/16 v4, 0x100

    #@29
    .line 400
    :cond_0
    sput v4, Ljava/util/concurrent/CompletableFuture;->SPINS:I

    #@2b
    .line 2750
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@2e
    move-result-object v2

    #@2f
    sput-object v2, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    #@31
    .line 2756
    :try_start_0
    sget-object v2, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    #@33
    .line 2757
    const-class v3, Ljava/util/concurrent/CompletableFuture;

    #@35
    const-string/jumbo v4, "result"

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@3b
    move-result-object v3

    #@3c
    .line 2756
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@3f
    move-result-wide v2

    #@40
    sput-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    #@42
    .line 2758
    sget-object v2, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    #@44
    .line 2759
    const-class v3, Ljava/util/concurrent/CompletableFuture;

    #@46
    const-string/jumbo v4, "stack"

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@4c
    move-result-object v3

    #@4d
    .line 2758
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@50
    move-result-wide v2

    #@51
    sput-wide v2, Ljava/util/concurrent/CompletableFuture;->STACK:J

    #@53
    .line 2760
    sget-object v2, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    #@55
    .line 2761
    const-class v3, Ljava/util/concurrent/CompletableFuture$Completion;

    #@57
    const-string/jumbo v4, "next"

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@5d
    move-result-object v3

    #@5e
    .line 2760
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@61
    move-result-wide v2

    #@62
    sput-wide v2, Ljava/util/concurrent/CompletableFuture;->NEXT:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@64
    .line 2768
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    #@66
    .line 86
    .local v1, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void

    #@67
    .end local v1    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    move v2, v4

    #@68
    .line 367
    goto :goto_0

    #@69
    .line 374
    :cond_2
    new-instance v2, Ljava/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;

    #@6b
    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;-><init>()V

    #@6e
    goto :goto_1

    #@6f
    .line 2762
    :catch_0
    move-exception v0

    #@70
    .line 2763
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/Error;

    #@72
    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@75
    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1790
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1796
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1797
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@5
    .line 1796
    return-void
.end method

.method public static varargs allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2223
    .local p0, "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    array-length v0, p0

    #@1
    add-int/lit8 v0, v0, -0x1

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {p0, v1, v0}, Ljava/util/concurrent/CompletableFuture;->andTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method static andTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;
    .locals 6
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;II)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1302
    .local p0, "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    #@2
    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    #@5
    .line 1303
    .local v3, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-le p1, p2, :cond_1

    #@7
    .line 1304
    sget-object v5, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    #@9
    iput-object v5, v3, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@b
    .line 1319
    :cond_0
    :goto_0
    return-object v3

    #@c
    .line 1307
    :cond_1
    add-int v5, p1, p2

    #@e
    ushr-int/lit8 v4, v5, 0x1

    #@10
    .line 1308
    .local v4, "mid":I
    if-ne p1, v4, :cond_3

    #@12
    aget-object v0, p0, p1

    #@14
    .local v0, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :goto_1
    if-eqz v0, :cond_2

    #@16
    .line 1310
    if-ne p1, p2, :cond_4

    #@18
    move-object v1, v0

    #@19
    .local v1, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :goto_2
    if-nez v1, :cond_6

    #@1b
    .line 1312
    .end local v1    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_2
    new-instance v5, Ljava/lang/NullPointerException;

    #@1d
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@20
    throw v5

    #@21
    .line 1309
    .end local v0    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_3
    invoke-static {p0, p1, v4}, Ljava/util/concurrent/CompletableFuture;->andTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    #@24
    move-result-object v0

    #@25
    goto :goto_1

    #@26
    .line 1310
    .restart local v0    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_4
    add-int/lit8 v5, v4, 0x1

    #@28
    if-ne p2, v5, :cond_5

    #@2a
    aget-object v1, p0, p2

    #@2c
    goto :goto_2

    #@2d
    .line 1311
    :cond_5
    add-int/lit8 v5, v4, 0x1

    #@2f
    invoke-static {p0, v5, p2}, Ljava/util/concurrent/CompletableFuture;->andTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    #@32
    move-result-object v1

    #@33
    goto :goto_2

    #@34
    .line 1313
    .restart local v1    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_6
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/CompletableFuture;->biRelay(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)Z

    #@37
    move-result v5

    #@38
    if-nez v5, :cond_0

    #@3a
    .line 1314
    new-instance v2, Ljava/util/concurrent/CompletableFuture$BiRelay;

    #@3c
    invoke-direct {v2, v3, v0, v1}, Ljava/util/concurrent/CompletableFuture$BiRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    #@3f
    .line 1315
    .local v2, "c":Ljava/util/concurrent/CompletableFuture$BiRelay;, "Ljava/util/concurrent/CompletableFuture$BiRelay<**>;"
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CompletableFuture;->bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    #@42
    .line 1316
    const/4 v5, 0x0

    #@43
    invoke-virtual {v2, v5}, Ljava/util/concurrent/CompletableFuture$BiRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@46
    goto :goto_0
.end method

.method public static varargs anyOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2242
    .local p0, "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    array-length v0, p0

    #@1
    add-int/lit8 v0, v0, -0x1

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {p0, v1, v0}, Ljava/util/concurrent/CompletableFuture;->orTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method static asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p0, "e"    # Ljava/util/concurrent/Executor;
    .param p1, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1644
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 1645
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    #@a
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    #@d
    .line 1646
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    new-instance v1, Ljava/util/concurrent/CompletableFuture$AsyncRun;

    #@f
    invoke-direct {v1, v0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncRun;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    #@12
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@15
    .line 1647
    return-object v0
.end method

.method static asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p0, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Supplier",
            "<TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1608
    .local p1, "f":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TU;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 1609
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    #@a
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    #@d
    .line 1610
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    new-instance v1, Ljava/util/concurrent/CompletableFuture$AsyncSupply;

    #@f
    invoke-direct {v1, v0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncSupply;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Supplier;)V

    #@12
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@15
    .line 1611
    return-object v0
.end method

.method private biAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 6
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    .local p3, "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    const/4 v1, 0x0

    #@1
    .line 1195
    if-eqz p3, :cond_0

    #@3
    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    #@6
    move-result-object v4

    #@7
    .local v4, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-nez v4, :cond_1

    #@9
    .line 1196
    .end local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@b
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@e
    throw v1

    #@f
    .line 1197
    .restart local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    #@12
    move-result-object v2

    #@13
    .line 1198
    .local v2, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-nez p1, :cond_2

    #@15
    invoke-virtual {v2, p0, v4, p3, v1}, Ljava/util/concurrent/CompletableFuture;->biAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$BiAccept;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 1203
    :goto_0
    return-object v2

    #@1c
    .line 1199
    :cond_2
    new-instance v0, Ljava/util/concurrent/CompletableFuture$BiAccept;

    #@1e
    move-object v1, p1

    #@1f
    move-object v3, p0

    #@20
    move-object v5, p3

    #@21
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$BiAccept;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)V

    #@24
    .line 1200
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$BiAccept;, "Ljava/util/concurrent/CompletableFuture$BiAccept<TT;TU;>;"
    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/CompletableFuture;->bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    #@27
    .line 1201
    const/4 v1, 0x0

    #@28
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture$BiAccept;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@2b
    goto :goto_0
.end method

.method private biApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .locals 6
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TT;-TU;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    .local p3, "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    const/4 v1, 0x0

    #@1
    .line 1123
    if-eqz p3, :cond_0

    #@3
    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    #@6
    move-result-object v4

    #@7
    .local v4, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-nez v4, :cond_1

    #@9
    .line 1124
    .end local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@b
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@e
    throw v1

    #@f
    .line 1125
    .restart local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    #@12
    move-result-object v2

    #@13
    .line 1126
    .local v2, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    if-nez p1, :cond_2

    #@15
    invoke-virtual {v2, p0, v4, p3, v1}, Ljava/util/concurrent/CompletableFuture;->biApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture$BiApply;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 1131
    :goto_0
    return-object v2

    #@1c
    .line 1127
    :cond_2
    new-instance v0, Ljava/util/concurrent/CompletableFuture$BiApply;

    #@1e
    move-object v1, p1

    #@1f
    move-object v3, p0

    #@20
    move-object v5, p3

    #@21
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$BiApply;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;)V

    #@24
    .line 1128
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$BiApply;, "Ljava/util/concurrent/CompletableFuture$BiApply<TT;TU;TV;>;"
    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/CompletableFuture;->bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    #@27
    .line 1129
    const/4 v1, 0x0

    #@28
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture$BiApply;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@2b
    goto :goto_0
.end method

.method private biRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 6
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .param p3, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    const/4 v1, 0x0

    #@1
    .line 1254
    if-eqz p3, :cond_0

    #@3
    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    #@6
    move-result-object v4

    #@7
    .local v4, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-nez v4, :cond_1

    #@9
    .line 1255
    .end local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@b
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@e
    throw v1

    #@f
    .line 1256
    .restart local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    #@12
    move-result-object v2

    #@13
    .line 1257
    .local v2, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-nez p1, :cond_2

    #@15
    invoke-virtual {v2, p0, v4, p3, v1}, Ljava/util/concurrent/CompletableFuture;->biRun(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$BiRun;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 1262
    :goto_0
    return-object v2

    #@1c
    .line 1258
    :cond_2
    new-instance v0, Ljava/util/concurrent/CompletableFuture$BiRun;

    #@1e
    move-object v1, p1

    #@1f
    move-object v3, p0

    #@20
    move-object v5, p3

    #@21
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$BiRun;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    #@24
    .line 1259
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$BiRun;, "Ljava/util/concurrent/CompletableFuture$BiRun<TT;*>;"
    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/CompletableFuture;->bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    #@27
    .line 1260
    const/4 v1, 0x0

    #@28
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture$BiRun;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@2b
    goto :goto_0
.end method

.method public static completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1867
    .local p0, "value":Ljava/lang/Object;, "TU;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    #@2
    if-nez p0, :cond_0

    #@4
    sget-object p0, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    #@6
    .end local p0    # "value":Ljava/lang/Object;, "TU;"
    :cond_0
    invoke-direct {v0, p0}, Ljava/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    #@9
    return-object v0
.end method

.method public static completedStage(Ljava/lang/Object;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2582
    .local p0, "value":Ljava/lang/Object;, "TU;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    #@2
    if-nez p0, :cond_0

    #@4
    sget-object p0, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    #@6
    .end local p0    # "value":Ljava/lang/Object;, "TU;"
    :cond_0
    invoke-direct {v0, p0}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    #@9
    return-object v0
.end method

.method public static delayedExecutor(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Executor;
    .locals 2
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 2564
    if-nez p2, :cond_0

    #@2
    .line 2565
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 2566
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;

    #@a
    sget-object v1, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    #@c
    invoke-direct {v0, p0, p1, p2, v1}, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V

    #@f
    return-object v0
.end method

.method public static delayedExecutor(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 2
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    .line 2544
    if-eqz p2, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 2545
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 2546
    :cond_1
    new-instance v0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;

    #@c
    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V

    #@f
    return-object v0
.end method

.method static encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "r"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 299
    instance-of v1, p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v1, p0

    #@5
    .line 300
    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@7
    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@9
    .local v0, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    #@b
    .line 301
    instance-of v1, v0, Ljava/util/concurrent/CompletionException;

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 299
    .end local v0    # "x":Ljava/lang/Throwable;
    .end local p0    # "r":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    #@10
    .line 302
    .restart local v0    # "x":Ljava/lang/Throwable;
    .restart local p0    # "r":Ljava/lang/Object;
    :cond_1
    new-instance p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@12
    .end local p0    # "r":Ljava/lang/Object;
    new-instance v1, Ljava/util/concurrent/CompletionException;

    #@14
    invoke-direct {v1, v0}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    #@17
    invoke-direct {p0, v1}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    #@1a
    goto :goto_0
.end method

.method static encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "x"    # Ljava/lang/Throwable;
    .param p1, "r"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 264
    instance-of v1, p0, Ljava/util/concurrent/CompletionException;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 265
    new-instance v0, Ljava/util/concurrent/CompletionException;

    #@6
    invoke-direct {v0, p0}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    #@9
    .end local p0    # "x":Ljava/lang/Throwable;
    .local v0, "x":Ljava/lang/Throwable;
    move-object p0, v0

    #@a
    .line 268
    .end local v0    # "x":Ljava/lang/Throwable;
    .restart local p0    # "x":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@c
    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    #@f
    return-object v1

    #@10
    .line 266
    :cond_1
    instance-of v1, p1, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@12
    if-eqz v1, :cond_0

    #@14
    move-object v1, p1

    #@15
    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@17
    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@19
    if-ne p0, v1, :cond_0

    #@1b
    .line 267
    return-object p1
.end method

.method static encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;
    .locals 2
    .param p0, "x"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 246
    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@2
    instance-of v0, p0, Ljava/util/concurrent/CompletionException;

    #@4
    if-eqz v0, :cond_0

    #@6
    .end local p0    # "x":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    #@9
    return-object v1

    #@a
    .line 247
    .restart local p0    # "x":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletionException;

    #@c
    invoke-direct {v0, p0}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    #@f
    move-object p0, v0

    #@10
    goto :goto_0
.end method

.method public static failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p0, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2597
    if-nez p0, :cond_0

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 2598
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    #@a
    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@c
    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    #@f
    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    #@12
    return-object v0
.end method

.method public static failedStage(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .locals 2
    .param p0, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2614
    if-nez p0, :cond_0

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 2615
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    #@a
    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@c
    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    #@f
    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    #@12
    return-object v0
.end method

.method static lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V
    .locals 4
    .param p0, "c"    # Ljava/util/concurrent/CompletableFuture$Completion;
    .param p1, "next"    # Ljava/util/concurrent/CompletableFuture$Completion;

    #@0
    .prologue
    .line 428
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->NEXT:J

    #@4
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@7
    .line 427
    return-void
.end method

.method private orAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 6
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;>(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    .local p3, "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v1, 0x0

    #@1
    .line 1459
    if-eqz p3, :cond_0

    #@3
    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    #@6
    move-result-object v4

    #@7
    .local v4, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-nez v4, :cond_1

    #@9
    .line 1460
    .end local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@b
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@e
    throw v1

    #@f
    .line 1461
    .restart local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    #@12
    move-result-object v2

    #@13
    .line 1462
    .local v2, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-nez p1, :cond_2

    #@15
    invoke-virtual {v2, p0, v4, p3, v1}, Ljava/util/concurrent/CompletableFuture;->orAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture$OrAccept;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 1467
    :goto_0
    return-object v2

    #@1c
    .line 1463
    :cond_2
    new-instance v0, Ljava/util/concurrent/CompletableFuture$OrAccept;

    #@1e
    move-object v1, p1

    #@1f
    move-object v3, p0

    #@20
    move-object v5, p3

    #@21
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$OrAccept;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;)V

    #@24
    .line 1464
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$OrAccept;, "Ljava/util/concurrent/CompletableFuture$OrAccept<TT;TU;>;"
    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/CompletableFuture;->orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    #@27
    .line 1465
    const/4 v1, 0x0

    #@28
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture$OrAccept;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@2b
    goto :goto_0
.end method

.method private orApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 6
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;",
            "Ljava/util/function/Function",
            "<-TT;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    .local p3, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    const/4 v1, 0x0

    #@1
    .line 1395
    if-eqz p3, :cond_0

    #@3
    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    #@6
    move-result-object v4

    #@7
    .local v4, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-nez v4, :cond_1

    #@9
    .line 1396
    .end local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@b
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@e
    throw v1

    #@f
    .line 1397
    .restart local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    #@12
    move-result-object v2

    #@13
    .line 1398
    .local v2, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    if-nez p1, :cond_2

    #@15
    invoke-virtual {v2, p0, v4, p3, v1}, Ljava/util/concurrent/CompletableFuture;->orApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$OrApply;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 1403
    :goto_0
    return-object v2

    #@1c
    .line 1399
    :cond_2
    new-instance v0, Ljava/util/concurrent/CompletableFuture$OrApply;

    #@1e
    move-object v1, p1

    #@1f
    move-object v3, p0

    #@20
    move-object v5, p3

    #@21
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$OrApply;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    #@24
    .line 1400
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$OrApply;, "Ljava/util/concurrent/CompletableFuture$OrApply<TT;TU;TV;>;"
    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/CompletableFuture;->orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    #@27
    .line 1401
    const/4 v1, 0x0

    #@28
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture$OrApply;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@2b
    goto :goto_0
.end method

.method private orRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 6
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .param p3, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    const/4 v1, 0x0

    #@1
    .line 1517
    if-eqz p3, :cond_0

    #@3
    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    #@6
    move-result-object v4

    #@7
    .local v4, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-nez v4, :cond_1

    #@9
    .line 1518
    .end local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@b
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@e
    throw v1

    #@f
    .line 1519
    .restart local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    #@12
    move-result-object v2

    #@13
    .line 1520
    .local v2, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-nez p1, :cond_2

    #@15
    invoke-virtual {v2, p0, v4, p3, v1}, Ljava/util/concurrent/CompletableFuture;->orRun(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$OrRun;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 1525
    :goto_0
    return-object v2

    #@1c
    .line 1521
    :cond_2
    new-instance v0, Ljava/util/concurrent/CompletableFuture$OrRun;

    #@1e
    move-object v1, p1

    #@1f
    move-object v3, p0

    #@20
    move-object v5, p3

    #@21
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$OrRun;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    #@24
    .line 1522
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$OrRun;, "Ljava/util/concurrent/CompletableFuture$OrRun<TT;*>;"
    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/CompletableFuture;->orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    #@27
    .line 1523
    const/4 v1, 0x0

    #@28
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture$OrRun;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@2b
    goto :goto_0
.end method

.method static orTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;
    .locals 6
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;II)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1558
    .local p0, "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    #@2
    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    #@5
    .line 1559
    .local v3, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Object;>;"
    if-gt p1, p2, :cond_5

    #@7
    .line 1561
    add-int v5, p1, p2

    #@9
    ushr-int/lit8 v4, v5, 0x1

    #@b
    .line 1562
    .local v4, "mid":I
    if-ne p1, v4, :cond_1

    #@d
    aget-object v0, p0, p1

    #@f
    .local v0, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :goto_0
    if-eqz v0, :cond_0

    #@11
    .line 1564
    if-ne p1, p2, :cond_2

    #@13
    move-object v1, v0

    #@14
    .local v1, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :goto_1
    if-nez v1, :cond_4

    #@16
    .line 1566
    .end local v1    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_0
    new-instance v5, Ljava/lang/NullPointerException;

    #@18
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@1b
    throw v5

    #@1c
    .line 1563
    .end local v0    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_1
    invoke-static {p0, p1, v4}, Ljava/util/concurrent/CompletableFuture;->orTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    #@1f
    move-result-object v0

    #@20
    goto :goto_0

    #@21
    .line 1564
    .restart local v0    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_2
    add-int/lit8 v5, v4, 0x1

    #@23
    if-ne p2, v5, :cond_3

    #@25
    aget-object v1, p0, p2

    #@27
    goto :goto_1

    #@28
    .line 1565
    :cond_3
    add-int/lit8 v5, v4, 0x1

    #@2a
    invoke-static {p0, v5, p2}, Ljava/util/concurrent/CompletableFuture;->orTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    #@2d
    move-result-object v1

    #@2e
    goto :goto_1

    #@2f
    .line 1567
    .restart local v1    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_4
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/CompletableFuture;->orRelay(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)Z

    #@32
    move-result v5

    #@33
    if-nez v5, :cond_5

    #@35
    .line 1568
    new-instance v2, Ljava/util/concurrent/CompletableFuture$OrRelay;

    #@37
    invoke-direct {v2, v3, v0, v1}, Ljava/util/concurrent/CompletableFuture$OrRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    #@3a
    .line 1569
    .local v2, "c":Ljava/util/concurrent/CompletableFuture$OrRelay;, "Ljava/util/concurrent/CompletableFuture$OrRelay<**>;"
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CompletableFuture;->orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    #@3d
    .line 1570
    const/4 v5, 0x0

    #@3e
    invoke-virtual {v2, v5}, Ljava/util/concurrent/CompletableFuture$OrRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@41
    .line 1573
    .end local v0    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v1    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v2    # "c":Ljava/util/concurrent/CompletableFuture$OrRelay;, "Ljava/util/concurrent/CompletableFuture$OrRelay<**>;"
    .end local v4    # "mid":I
    :cond_5
    return-object v3
.end method

.method private static reportGet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "r"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 319
    if-nez p0, :cond_0

    #@3
    .line 320
    new-instance v3, Ljava/lang/InterruptedException;

    #@5
    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    #@8
    throw v3

    #@9
    .line 321
    :cond_0
    instance-of v3, p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@b
    if-eqz v3, :cond_4

    #@d
    .line 323
    check-cast p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@f
    .end local p0    # "r":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@11
    .local v2, "x":Ljava/lang/Throwable;
    if-nez v2, :cond_1

    #@13
    .line 324
    return-object v4

    #@14
    .line 325
    :cond_1
    instance-of v3, v2, Ljava/util/concurrent/CancellationException;

    #@16
    if-eqz v3, :cond_2

    #@18
    .line 326
    check-cast v2, Ljava/util/concurrent/CancellationException;

    #@1a
    .end local v2    # "x":Ljava/lang/Throwable;
    throw v2

    #@1b
    .line 327
    .restart local v2    # "x":Ljava/lang/Throwable;
    :cond_2
    instance-of v3, v2, Ljava/util/concurrent/CompletionException;

    #@1d
    if-eqz v3, :cond_3

    #@1f
    .line 328
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@22
    move-result-object v0

    #@23
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    #@25
    .line 329
    move-object v2, v0

    #@26
    .line 330
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_3
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    #@28
    invoke-direct {v3, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    #@2b
    throw v3

    #@2c
    .line 332
    .end local v2    # "x":Ljava/lang/Throwable;
    .restart local p0    # "r":Ljava/lang/Object;
    :cond_4
    move-object v1, p0

    #@2d
    .line 333
    .local v1, "t":Ljava/lang/Object;, "TT;"
    return-object p0
.end method

.method private static reportJoin(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "r"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 340
    instance-of v2, p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@3
    if-eqz v2, :cond_3

    #@5
    .line 342
    check-cast p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@7
    .end local p0    # "r":Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@9
    .local v1, "x":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    #@b
    .line 343
    return-object v3

    #@c
    .line 344
    :cond_0
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 345
    check-cast v1, Ljava/util/concurrent/CancellationException;

    #@12
    .end local v1    # "x":Ljava/lang/Throwable;
    throw v1

    #@13
    .line 346
    .restart local v1    # "x":Ljava/lang/Throwable;
    :cond_1
    instance-of v2, v1, Ljava/util/concurrent/CompletionException;

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 347
    check-cast v1, Ljava/util/concurrent/CompletionException;

    #@19
    .end local v1    # "x":Ljava/lang/Throwable;
    throw v1

    #@1a
    .line 348
    .restart local v1    # "x":Ljava/lang/Throwable;
    :cond_2
    new-instance v2, Ljava/util/concurrent/CompletionException;

    #@1c
    invoke-direct {v2, v1}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    #@1f
    throw v2

    #@20
    .line 350
    .end local v1    # "x":Ljava/lang/Throwable;
    .restart local p0    # "r":Ljava/lang/Object;
    :cond_3
    move-object v0, p0

    #@21
    .line 351
    .local v0, "t":Ljava/lang/Object;, "TT;"
    return-object p0
.end method

.method public static runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1840
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    #@2
    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1855
    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method static screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "e"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    .line 386
    sget-boolean v0, Ljava/util/concurrent/CompletableFuture;->USE_COMMON_POOL:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    #@7
    move-result-object v0

    #@8
    if-ne p0, v0, :cond_0

    #@a
    .line 387
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    #@c
    return-object v0

    #@d
    .line 388
    :cond_0
    if-nez p0, :cond_1

    #@f
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@14
    throw v0

    #@15
    .line 389
    :cond_1
    return-object p0
.end method

.method public static supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1811
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TU;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    #@2
    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1827
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TU;>;"
    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private timedGet(J)Ljava/lang/Object;
    .locals 15
    .param p1, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 1748
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1749
    const/4 v1, 0x0

    #@7
    return-object v1

    #@8
    .line 1750
    :cond_0
    const-wide/16 v2, 0x0

    #@a
    cmp-long v1, p1, v2

    #@c
    if-lez v1, :cond_a

    #@e
    .line 1751
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@11
    move-result-wide v2

    #@12
    add-long v6, v2, p1

    #@14
    .line 1752
    .local v6, "d":J
    const-wide/16 v2, 0x0

    #@16
    cmp-long v1, v6, v2

    #@18
    if-nez v1, :cond_2

    #@1a
    const-wide/16 v4, 0x1

    #@1c
    .line 1753
    .local v4, "deadline":J
    :goto_0
    const/4 v0, 0x0

    #@1d
    .line 1754
    .local v0, "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    const/4 v9, 0x0

    #@1e
    .line 1756
    .end local v0    # "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    :cond_1
    :goto_1
    iget-object v10, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@20
    .local v10, "r":Ljava/lang/Object;
    if-nez v10, :cond_5

    #@22
    .line 1757
    if-nez v0, :cond_3

    #@24
    .line 1758
    new-instance v0, Ljava/util/concurrent/CompletableFuture$Signaller;

    #@26
    const/4 v1, 0x1

    #@27
    move-wide/from16 v2, p1

    #@29
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$Signaller;-><init>(ZJJ)V

    #@2c
    .local v0, "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    goto :goto_1

    #@2d
    .line 1752
    .end local v0    # "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    .end local v4    # "deadline":J
    .end local v10    # "r":Ljava/lang/Object;
    :cond_2
    move-wide v4, v6

    #@2e
    .restart local v4    # "deadline":J
    goto :goto_0

    #@2f
    .line 1759
    .restart local v10    # "r":Ljava/lang/Object;
    :cond_3
    if-nez v9, :cond_4

    #@31
    .line 1760
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    #@34
    move-result v9

    #@35
    .local v9, "queued":Z
    goto :goto_1

    #@36
    .line 1761
    .end local v9    # "queued":Z
    :cond_4
    iget-wide v2, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    #@38
    const-wide/16 v12, 0x0

    #@3a
    cmp-long v1, v2, v12

    #@3c
    if-gtz v1, :cond_8

    #@3e
    .line 1773
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    #@40
    .line 1774
    const/4 v1, 0x0

    #@41
    iput-object v1, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    #@43
    .line 1775
    :cond_6
    if-eqz v10, :cond_9

    #@45
    .line 1776
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    #@48
    .line 1779
    :goto_3
    if-nez v10, :cond_7

    #@4a
    if-eqz v0, :cond_a

    #@4c
    iget-boolean v1, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    #@4e
    if-eqz v1, :cond_a

    #@50
    .line 1780
    :cond_7
    return-object v10

    #@51
    .line 1765
    :cond_8
    :try_start_0
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@54
    .line 1769
    :goto_4
    iget-boolean v1, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    #@56
    if-eqz v1, :cond_1

    #@58
    goto :goto_2

    #@59
    .line 1766
    :catch_0
    move-exception v8

    #@5a
    .line 1767
    .local v8, "ie":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    #@5b
    iput-boolean v1, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    #@5d
    goto :goto_4

    #@5e
    .line 1778
    .end local v8    # "ie":Ljava/lang/InterruptedException;
    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    #@61
    goto :goto_3

    #@62
    .line 1782
    .end local v4    # "deadline":J
    .end local v6    # "d":J
    .end local v10    # "r":Ljava/lang/Object;
    :cond_a
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    #@64
    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    #@67
    throw v1
.end method

.method private uniAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v2, 0x0

    #@1
    .line 646
    if-nez p2, :cond_0

    #@3
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v2

    #@9
    .line 647
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    #@c
    move-result-object v1

    #@d
    .line 648
    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-nez p1, :cond_1

    #@f
    invoke-virtual {v1, p0, p2, v2}, Ljava/util/concurrent/CompletableFuture;->uniAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture$UniAccept;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 653
    :goto_0
    return-object v1

    #@16
    .line 649
    :cond_1
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniAccept;

    #@18
    invoke-direct {v0, p1, v1, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniAccept;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;)V

    #@1b
    .line 650
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$UniAccept;, "Ljava/util/concurrent/CompletableFuture$UniAccept<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    #@1e
    .line 651
    const/4 v2, 0x0

    #@1f
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture$UniAccept;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@22
    goto :goto_0
.end method

.method private uniApplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Function",
            "<-TT;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    const/4 v2, 0x0

    #@1
    .line 591
    if-nez p2, :cond_0

    #@3
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v2

    #@9
    .line 592
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    #@c
    move-result-object v1

    #@d
    .line 593
    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    if-nez p1, :cond_1

    #@f
    invoke-virtual {v1, p0, p2, v2}, Ljava/util/concurrent/CompletableFuture;->uniApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniApply;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 598
    :goto_0
    return-object v1

    #@16
    .line 594
    :cond_1
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniApply;

    #@18
    invoke-direct {v0, p1, v1, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniApply;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    #@1b
    .line 595
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$UniApply;, "Ljava/util/concurrent/CompletableFuture$UniApply<TT;TV;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    #@1e
    .line 596
    const/4 v2, 0x0

    #@1f
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture$UniApply;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@22
    goto :goto_0
.end method

.method private uniAsMinimalStage()Ljava/util/concurrent/CompletableFuture$MinimalStage;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture$MinimalStage",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 911
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@2
    .local v2, "r":Ljava/lang/Object;
    if-eqz v2, :cond_0

    #@4
    .line 912
    new-instance v3, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    #@6
    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v4

    #@a
    invoke-direct {v3, v4}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    #@d
    return-object v3

    #@e
    .line 913
    :cond_0
    new-instance v1, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    #@10
    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>()V

    #@13
    .line 914
    .local v1, "d":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniRelay;

    #@15
    invoke-direct {v0, v1, p0}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    #@18
    .line 915
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture$UniRelay<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    #@1b
    .line 916
    const/4 v3, 0x0

    #@1c
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CompletableFuture$UniRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@1f
    .line 917
    return-object v1
.end method

.method private uniComposeStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 10
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Function",
            "<-TT;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TV;>;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TV;>;>;"
    const/4 v9, 0x0

    #@1
    .line 974
    if-nez p2, :cond_0

    #@3
    new-instance v9, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v9

    #@9
    .line 976
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    #@c
    move-result-object v2

    #@d
    .line 977
    .local v2, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    if-nez p1, :cond_4

    #@f
    iget-object v5, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@11
    .local v5, "r":Ljava/lang/Object;
    if-eqz v5, :cond_4

    #@13
    .line 978
    instance-of v9, v5, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@15
    if-eqz v9, :cond_2

    #@17
    move-object v9, v5

    #@18
    .line 979
    check-cast v9, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@1a
    iget-object v8, v9, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@1c
    .local v8, "x":Ljava/lang/Throwable;
    if-eqz v8, :cond_1

    #@1e
    .line 980
    invoke-static {v8, v5}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v9

    #@22
    iput-object v9, v2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@24
    .line 981
    return-object v2

    #@25
    .line 983
    :cond_1
    const/4 v5, 0x0

    #@26
    .line 986
    .end local v5    # "r":Ljava/lang/Object;
    .end local v8    # "x":Ljava/lang/Throwable;
    :cond_2
    move-object v7, v5

    #@27
    .line 987
    .local v7, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-interface {p2, v7}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v9

    #@2b
    check-cast v9, Ljava/util/concurrent/CompletionStage;

    #@2d
    invoke-interface {v9}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    #@30
    move-result-object v4

    #@31
    .line 988
    .local v4, "g":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    iget-object v6, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@33
    .local v6, "s":Ljava/lang/Object;
    if-eqz v6, :cond_3

    #@35
    .line 989
    invoke-virtual {v2, v6}, Ljava/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    #@38
    .line 995
    :goto_0
    return-object v2

    #@39
    .line 991
    :cond_3
    new-instance v1, Ljava/util/concurrent/CompletableFuture$UniRelay;

    #@3b
    invoke-direct {v1, v2, v4}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    #@3e
    .line 992
    .local v1, "c":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture$UniRelay<TV;>;"
    invoke-virtual {v4, v1}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    #@41
    .line 993
    const/4 v9, 0x0

    #@42
    invoke-virtual {v1, v9}, Ljava/util/concurrent/CompletableFuture$UniRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    goto :goto_0

    #@46
    .line 996
    .end local v1    # "c":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture$UniRelay<TV;>;"
    .end local v4    # "g":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .end local v6    # "s":Ljava/lang/Object;
    :catch_0
    move-exception v3

    #@47
    .line 997
    .local v3, "ex":Ljava/lang/Throwable;
    invoke-static {v3}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    #@4a
    move-result-object v9

    #@4b
    iput-object v9, v2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@4d
    .line 998
    return-object v2

    #@4e
    .line 1001
    .end local v3    # "ex":Ljava/lang/Throwable;
    .end local v7    # "t":Ljava/lang/Object;, "TT;"
    :cond_4
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniCompose;

    #@50
    invoke-direct {v0, p1, v2, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniCompose;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    #@53
    .line 1002
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$UniCompose;, "Ljava/util/concurrent/CompletableFuture$UniCompose<TT;TV;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    #@56
    .line 1003
    invoke-virtual {v0, v9}, Ljava/util/concurrent/CompletableFuture$UniCompose;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@59
    .line 1004
    return-object v2
.end method

.method private uniCopyStage()Ljava/util/concurrent/CompletableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 898
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v1

    #@4
    .line 899
    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@6
    .local v2, "r":Ljava/lang/Object;
    if-eqz v2, :cond_0

    #@8
    .line 900
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    #@b
    .line 906
    :goto_0
    return-object v1

    #@c
    .line 902
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniRelay;

    #@e
    invoke-direct {v0, v1, p0}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    #@11
    .line 903
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture$UniRelay<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    #@14
    .line 904
    const/4 v3, 0x0

    #@15
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CompletableFuture$UniRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@18
    goto :goto_0
.end method

.method private uniExceptionallyStage(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+TT;>;"
    const/4 v2, 0x0

    #@1
    .line 863
    if-nez p1, :cond_0

    #@3
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v2

    #@9
    .line 864
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    #@c
    move-result-object v1

    #@d
    .line 865
    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {v1, p0, p1, v2}, Ljava/util/concurrent/CompletableFuture;->uniExceptionally(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniExceptionally;)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_1

    #@13
    .line 866
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniExceptionally;

    #@15
    invoke-direct {v0, v1, p0, p1}, Ljava/util/concurrent/CompletableFuture$UniExceptionally;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    #@18
    .line 867
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$UniExceptionally;, "Ljava/util/concurrent/CompletableFuture$UniExceptionally<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    #@1b
    .line 868
    const/4 v2, 0x0

    #@1c
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@1f
    .line 870
    .end local v0    # "c":Ljava/util/concurrent/CompletableFuture$UniExceptionally;, "Ljava/util/concurrent/CompletableFuture$UniExceptionally<TT;>;"
    :cond_1
    return-object v1
.end method

.method private uniHandleStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/BiFunction",
            "<-TT;",
            "Ljava/lang/Throwable;",
            "+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TV;>;"
    const/4 v2, 0x0

    #@1
    .line 813
    if-nez p2, :cond_0

    #@3
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v2

    #@9
    .line 814
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    #@c
    move-result-object v1

    #@d
    .line 815
    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    if-nez p1, :cond_1

    #@f
    invoke-virtual {v1, p0, p2, v2}, Ljava/util/concurrent/CompletableFuture;->uniHandle(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture$UniHandle;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 820
    :goto_0
    return-object v1

    #@16
    .line 816
    :cond_1
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniHandle;

    #@18
    invoke-direct {v0, p1, v1, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniHandle;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;)V

    #@1b
    .line 817
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$UniHandle;, "Ljava/util/concurrent/CompletableFuture$UniHandle<TT;TV;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    #@1e
    .line 818
    const/4 v2, 0x0

    #@1f
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture$UniHandle;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@22
    goto :goto_0
.end method

.method private uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .param p2, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 694
    if-nez p2, :cond_0

    #@3
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v2

    #@9
    .line 695
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    #@c
    move-result-object v1

    #@d
    .line 696
    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-nez p1, :cond_1

    #@f
    invoke-virtual {v1, p0, p2, v2}, Ljava/util/concurrent/CompletableFuture;->uniRun(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$UniRun;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 701
    :goto_0
    return-object v1

    #@16
    .line 697
    :cond_1
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniRun;

    #@18
    invoke-direct {v0, p1, v1, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniRun;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    #@1b
    .line 698
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$UniRun;, "Ljava/util/concurrent/CompletableFuture$UniRun<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    #@1e
    .line 699
    const/4 v2, 0x0

    #@1f
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture$UniRun;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@22
    goto :goto_0
.end method

.method private uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    const/4 v2, 0x0

    #@1
    .line 757
    if-nez p2, :cond_0

    #@3
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v2

    #@9
    .line 758
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    #@c
    move-result-object v1

    #@d
    .line 759
    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-nez p1, :cond_1

    #@f
    invoke-virtual {v1, p0, p2, v2}, Ljava/util/concurrent/CompletableFuture;->uniWhenComplete(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$UniWhenComplete;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 764
    :goto_0
    return-object v1

    #@16
    .line 760
    :cond_1
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;

    #@18
    invoke-direct {v0, p1, v1, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)V

    #@1b
    .line 761
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$UniWhenComplete;, "Ljava/util/concurrent/CompletableFuture$UniWhenComplete<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    #@1e
    .line 762
    const/4 v2, 0x0

    #@1f
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@22
    goto :goto_0
.end method

.method private waitingGet(Z)Ljava/lang/Object;
    .locals 11
    .param p1, "interruptible"    # Z

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const-wide/16 v2, 0x0

    #@2
    const/4 v10, 0x0

    #@3
    .line 1706
    const/4 v0, 0x0

    #@4
    .line 1707
    .local v0, "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    const/4 v7, 0x0

    #@5
    .line 1708
    .local v7, "queued":Z
    sget v9, Ljava/util/concurrent/CompletableFuture;->SPINS:I

    #@7
    .line 1710
    .end local v0    # "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    .end local v7    # "queued":Z
    .local v9, "spins":I
    :cond_0
    :goto_0
    iget-object v8, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@9
    .local v8, "r":Ljava/lang/Object;
    if-nez v8, :cond_4

    #@b
    .line 1711
    if-lez v9, :cond_1

    #@d
    .line 1712
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->nextSecondarySeed()I

    #@10
    move-result v1

    #@11
    if-ltz v1, :cond_0

    #@13
    .line 1713
    add-int/lit8 v9, v9, -0x1

    #@15
    goto :goto_0

    #@16
    .line 1715
    :cond_1
    if-nez v0, :cond_2

    #@18
    .line 1716
    new-instance v0, Ljava/util/concurrent/CompletableFuture$Signaller;

    #@1a
    move v1, p1

    #@1b
    move-wide v4, v2

    #@1c
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$Signaller;-><init>(ZJJ)V

    #@1f
    .local v0, "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    goto :goto_0

    #@20
    .line 1717
    .end local v0    # "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    :cond_2
    if-nez v7, :cond_3

    #@22
    .line 1718
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    #@25
    move-result v7

    #@26
    .local v7, "queued":Z
    goto :goto_0

    #@27
    .line 1721
    .end local v7    # "queued":Z
    :cond_3
    :try_start_0
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 1725
    :goto_1
    iget-boolean v1, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    #@2c
    if-eqz v1, :cond_0

    #@2e
    if-eqz p1, :cond_0

    #@30
    .line 1729
    :cond_4
    if-eqz v0, :cond_5

    #@32
    .line 1730
    iput-object v10, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    #@34
    .line 1731
    iget-boolean v1, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    #@36
    if-eqz v1, :cond_5

    #@38
    .line 1732
    if-eqz p1, :cond_7

    #@3a
    .line 1733
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    #@3d
    .line 1738
    :cond_5
    :goto_2
    if-eqz v8, :cond_6

    #@3f
    .line 1739
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    #@42
    .line 1740
    :cond_6
    return-object v8

    #@43
    .line 1722
    :catch_0
    move-exception v6

    #@44
    .line 1723
    .local v6, "ie":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    #@45
    iput-boolean v1, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    #@47
    goto :goto_1

    #@48
    .line 1735
    .end local v6    # "ie":Ljava/lang/InterruptedException;
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    #@4f
    goto :goto_2
.end method


# virtual methods
.method public acceptEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2089
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public bridge synthetic acceptEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "other"    # Ljava/util/concurrent/CompletionStage;
    .param p2, "action"    # Ljava/util/function/Consumer;

    #@0
    .prologue
    .line 2087
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->acceptEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2094
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Consumer",
            "<-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2100
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "other"    # Ljava/util/concurrent/CompletionStage;
    .param p2, "action"    # Ljava/util/function/Consumer;

    #@0
    .prologue
    .line 2092
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "other"    # Ljava/util/concurrent/CompletionStage;
    .param p2, "action"    # Ljava/util/function/Consumer;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    .line 2097
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public applyToEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Function",
            "<-TT;TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2073
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;TU;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public bridge synthetic applyToEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "other"    # Ljava/util/concurrent/CompletionStage;
    .param p2, "fn"    # Ljava/util/function/Function;

    #@0
    .prologue
    .line 2071
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->applyToEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Function",
            "<-TT;TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2078
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;TU;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Function",
            "<-TT;TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2084
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;TU;>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "other"    # Ljava/util/concurrent/CompletionStage;
    .param p2, "fn"    # Ljava/util/function/Function;

    #@0
    .prologue
    .line 2076
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "other"    # Ljava/util/concurrent/CompletionStage;
    .param p2, "fn"    # Ljava/util/function/Function;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    .line 2081
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method final biAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$BiAccept;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TR;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/BiConsumer",
            "<-TR;-TS;>;",
            "Ljava/util/concurrent/CompletableFuture$BiAccept",
            "<TR;TS;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TR;>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p3, "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TR;-TS;>;"
    .local p4, "c":Ljava/util/concurrent/CompletableFuture$BiAccept;, "Ljava/util/concurrent/CompletableFuture$BiAccept<TR;TS;>;"
    const/4 v7, 0x0

    #@1
    .line 1159
    if-eqz p1, :cond_0

    #@3
    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@5
    .local v1, "r":Ljava/lang/Object;
    if-nez v1, :cond_1

    #@7
    .line 1161
    .end local v1    # "r":Ljava/lang/Object;
    :cond_0
    return v7

    #@8
    .line 1160
    .restart local v1    # "r":Ljava/lang/Object;
    :cond_1
    if-eqz p2, :cond_0

    #@a
    iget-object v3, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@c
    .local v3, "s":Ljava/lang/Object;
    if-eqz v3, :cond_0

    #@e
    if-eqz p3, :cond_0

    #@10
    .line 1162
    iget-object v6, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@12
    if-nez v6, :cond_2

    #@14
    .line 1163
    instance-of v6, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@16
    if-eqz v6, :cond_4

    #@18
    move-object v6, v1

    #@19
    .line 1164
    check-cast v6, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@1b
    iget-object v5, v6, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@1d
    .local v5, "x":Ljava/lang/Throwable;
    if-eqz v5, :cond_3

    #@1f
    .line 1165
    invoke-virtual {p0, v5, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    #@22
    .line 1188
    .end local v1    # "r":Ljava/lang/Object;
    .end local v3    # "s":Ljava/lang/Object;
    .end local v5    # "x":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    const/4 v6, 0x1

    #@23
    return v6

    #@24
    .line 1168
    .restart local v1    # "r":Ljava/lang/Object;
    .restart local v3    # "s":Ljava/lang/Object;
    .restart local v5    # "x":Ljava/lang/Throwable;
    :cond_3
    const/4 v1, 0x0

    #@25
    .line 1170
    .end local v1    # "r":Ljava/lang/Object;
    .end local v5    # "x":Ljava/lang/Throwable;
    :cond_4
    instance-of v6, v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@27
    if-eqz v6, :cond_6

    #@29
    move-object v6, v3

    #@2a
    .line 1171
    check-cast v6, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@2c
    iget-object v5, v6, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@2e
    .restart local v5    # "x":Ljava/lang/Throwable;
    if-eqz v5, :cond_5

    #@30
    .line 1172
    invoke-virtual {p0, v5, v3}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    #@33
    goto :goto_0

    #@34
    .line 1175
    :cond_5
    const/4 v3, 0x0

    #@35
    .line 1178
    .end local v3    # "s":Ljava/lang/Object;
    .end local v5    # "x":Ljava/lang/Throwable;
    :cond_6
    if-eqz p4, :cond_7

    #@37
    :try_start_0
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$BiAccept;->claim()Z

    #@3a
    move-result v6

    #@3b
    if-eqz v6, :cond_8

    #@3d
    .line 1180
    :cond_7
    move-object v2, v1

    #@3e
    .line 1181
    .local v2, "rr":Ljava/lang/Object;, "TR;"
    move-object v4, v3

    #@3f
    .line 1182
    .local v4, "ss":Ljava/lang/Object;, "TS;"
    invoke-interface {p3, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    #@42
    .line 1183
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    goto :goto_0

    #@46
    .line 1184
    .end local v2    # "rr":Ljava/lang/Object;, "TR;"
    .end local v4    # "ss":Ljava/lang/Object;, "TS;"
    :catch_0
    move-exception v0

    #@47
    .line 1185
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    #@4a
    goto :goto_0

    #@4b
    .line 1179
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_8
    return v7
.end method

.method final biApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture$BiApply;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TR;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/BiFunction",
            "<-TR;-TS;+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$BiApply",
            "<TR;TS;TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TR;>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p3, "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TR;-TS;+TT;>;"
    .local p4, "c":Ljava/util/concurrent/CompletableFuture$BiApply;, "Ljava/util/concurrent/CompletableFuture$BiApply<TR;TS;TT;>;"
    const/4 v7, 0x0

    #@1
    .line 1088
    if-eqz p1, :cond_0

    #@3
    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@5
    .local v1, "r":Ljava/lang/Object;
    if-nez v1, :cond_1

    #@7
    .line 1090
    .end local v1    # "r":Ljava/lang/Object;
    :cond_0
    return v7

    #@8
    .line 1089
    .restart local v1    # "r":Ljava/lang/Object;
    :cond_1
    if-eqz p2, :cond_0

    #@a
    iget-object v3, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@c
    .local v3, "s":Ljava/lang/Object;
    if-eqz v3, :cond_0

    #@e
    if-eqz p3, :cond_0

    #@10
    .line 1091
    iget-object v6, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@12
    if-nez v6, :cond_2

    #@14
    .line 1092
    instance-of v6, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@16
    if-eqz v6, :cond_4

    #@18
    move-object v6, v1

    #@19
    .line 1093
    check-cast v6, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@1b
    iget-object v5, v6, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@1d
    .local v5, "x":Ljava/lang/Throwable;
    if-eqz v5, :cond_3

    #@1f
    .line 1094
    invoke-virtual {p0, v5, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    #@22
    .line 1116
    .end local v1    # "r":Ljava/lang/Object;
    .end local v3    # "s":Ljava/lang/Object;
    .end local v5    # "x":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    const/4 v6, 0x1

    #@23
    return v6

    #@24
    .line 1097
    .restart local v1    # "r":Ljava/lang/Object;
    .restart local v3    # "s":Ljava/lang/Object;
    .restart local v5    # "x":Ljava/lang/Throwable;
    :cond_3
    const/4 v1, 0x0

    #@25
    .line 1099
    .end local v1    # "r":Ljava/lang/Object;
    .end local v5    # "x":Ljava/lang/Throwable;
    :cond_4
    instance-of v6, v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@27
    if-eqz v6, :cond_6

    #@29
    move-object v6, v3

    #@2a
    .line 1100
    check-cast v6, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@2c
    iget-object v5, v6, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@2e
    .restart local v5    # "x":Ljava/lang/Throwable;
    if-eqz v5, :cond_5

    #@30
    .line 1101
    invoke-virtual {p0, v5, v3}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    #@33
    goto :goto_0

    #@34
    .line 1104
    :cond_5
    const/4 v3, 0x0

    #@35
    .line 1107
    .end local v3    # "s":Ljava/lang/Object;
    .end local v5    # "x":Ljava/lang/Throwable;
    :cond_6
    if-eqz p4, :cond_7

    #@37
    :try_start_0
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$BiApply;->claim()Z

    #@3a
    move-result v6

    #@3b
    if-eqz v6, :cond_8

    #@3d
    .line 1109
    :cond_7
    move-object v2, v1

    #@3e
    .line 1110
    .local v2, "rr":Ljava/lang/Object;, "TR;"
    move-object v4, v3

    #@3f
    .line 1111
    .local v4, "ss":Ljava/lang/Object;, "TS;"
    invoke-interface {p3, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {p0, v6}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    goto :goto_0

    #@47
    .line 1112
    .end local v2    # "rr":Ljava/lang/Object;, "TR;"
    .end local v4    # "ss":Ljava/lang/Object;, "TS;"
    :catch_0
    move-exception v0

    #@48
    .line 1113
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    #@4b
    goto :goto_0

    #@4c
    .line 1108
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_8
    return v7
.end method

.method biRelay(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1285
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@4
    .local v0, "r":Ljava/lang/Object;
    if-nez v0, :cond_1

    #@6
    .line 1287
    .end local v0    # "r":Ljava/lang/Object;
    :cond_0
    const/4 v3, 0x0

    #@7
    return v3

    #@8
    .line 1286
    .restart local v0    # "r":Ljava/lang/Object;
    :cond_1
    if-eqz p2, :cond_0

    #@a
    iget-object v1, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@c
    .local v1, "s":Ljava/lang/Object;
    if-eqz v1, :cond_0

    #@e
    .line 1288
    iget-object v3, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@10
    if-nez v3, :cond_2

    #@12
    .line 1289
    instance-of v3, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@14
    if-eqz v3, :cond_3

    #@16
    move-object v3, v0

    #@17
    check-cast v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@19
    iget-object v2, v3, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@1b
    .local v2, "x":Ljava/lang/Throwable;
    if-eqz v2, :cond_3

    #@1d
    .line 1290
    invoke-virtual {p0, v2, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    #@20
    .line 1296
    .end local v2    # "x":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    const/4 v3, 0x1

    #@21
    return v3

    #@22
    .line 1291
    :cond_3
    instance-of v3, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@24
    if-eqz v3, :cond_4

    #@26
    move-object v3, v1

    #@27
    check-cast v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@29
    iget-object v2, v3, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@2b
    .restart local v2    # "x":Ljava/lang/Throwable;
    if-eqz v2, :cond_4

    #@2d
    .line 1292
    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    #@30
    goto :goto_0

    #@31
    .line 1294
    .end local v2    # "x":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z

    #@34
    goto :goto_0
.end method

.method final biRun(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$BiRun;)Z
    .locals 6
    .param p3, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/CompletableFuture$BiRun",
            "<**>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p4, "c":Ljava/util/concurrent/CompletableFuture$BiRun;, "Ljava/util/concurrent/CompletableFuture$BiRun<**>;"
    const/4 v5, 0x0

    #@1
    .line 1230
    if-eqz p1, :cond_0

    #@3
    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@5
    .local v1, "r":Ljava/lang/Object;
    if-nez v1, :cond_1

    #@7
    .line 1232
    .end local v1    # "r":Ljava/lang/Object;
    :cond_0
    return v5

    #@8
    .line 1231
    .restart local v1    # "r":Ljava/lang/Object;
    :cond_1
    if-eqz p2, :cond_0

    #@a
    iget-object v2, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@c
    .local v2, "s":Ljava/lang/Object;
    if-eqz v2, :cond_0

    #@e
    if-eqz p3, :cond_0

    #@10
    .line 1233
    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@12
    if-nez v4, :cond_2

    #@14
    .line 1234
    instance-of v4, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@16
    if-eqz v4, :cond_3

    #@18
    move-object v4, v1

    #@19
    check-cast v4, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@1b
    iget-object v3, v4, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@1d
    .local v3, "x":Ljava/lang/Throwable;
    if-eqz v3, :cond_3

    #@1f
    .line 1235
    invoke-virtual {p0, v3, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    #@22
    .line 1248
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    const/4 v4, 0x1

    #@23
    return v4

    #@24
    .line 1236
    :cond_3
    instance-of v4, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@26
    if-eqz v4, :cond_4

    #@28
    move-object v4, v2

    #@29
    check-cast v4, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@2b
    iget-object v3, v4, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@2d
    .restart local v3    # "x":Ljava/lang/Throwable;
    if-eqz v3, :cond_4

    #@2f
    .line 1237
    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    #@32
    goto :goto_0

    #@33
    .line 1240
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_4
    if-eqz p4, :cond_5

    #@35
    :try_start_0
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$BiRun;->claim()Z

    #@38
    move-result v4

    #@39
    if-eqz v4, :cond_6

    #@3b
    .line 1242
    :cond_5
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    #@3e
    .line 1243
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    goto :goto_0

    #@42
    .line 1244
    :catch_0
    move-exception v0

    #@43
    .line 1245
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    #@46
    goto :goto_0

    #@47
    .line 1241
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_6
    return v5
.end method

.method final bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture$BiCompletion",
            "<***>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "c":Ljava/util/concurrent/CompletableFuture$BiCompletion;, "Ljava/util/concurrent/CompletableFuture$BiCompletion<***>;"
    const/4 v3, 0x0

    #@1
    .line 1039
    if-eqz p2, :cond_1

    #@3
    .line 1041
    :goto_0
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@5
    .local v1, "r":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@7
    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 1043
    :cond_0
    if-eqz p1, :cond_1

    #@f
    if-eq p1, p0, :cond_1

    #@11
    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@13
    if-nez v2, :cond_1

    #@15
    .line 1044
    if-eqz v1, :cond_3

    #@17
    move-object v0, p2

    #@18
    .line 1045
    .local v0, "q":Ljava/util/concurrent/CompletableFuture$Completion;
    :goto_1
    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@1a
    if-nez v2, :cond_1

    #@1c
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_4

    #@22
    .line 1038
    .end local v0    # "q":Ljava/util/concurrent/CompletableFuture$Completion;
    .end local v1    # "r":Ljava/lang/Object;
    :cond_1
    return-void

    #@23
    .line 1042
    .restart local v1    # "r":Ljava/lang/Object;
    :cond_2
    invoke-static {p2, v3}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    #@26
    goto :goto_0

    #@27
    .line 1044
    :cond_3
    new-instance v0, Ljava/util/concurrent/CompletableFuture$CoCompletion;

    #@29
    invoke-direct {v0, p2}, Ljava/util/concurrent/CompletableFuture$CoCompletion;-><init>(Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    #@2c
    .restart local v0    # "q":Ljava/util/concurrent/CompletableFuture$Completion;
    goto :goto_1

    #@2d
    .line 1046
    :cond_4
    invoke-static {v0, v3}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    #@30
    goto :goto_1
.end method

.method public cancel(Z)Z
    .locals 3
    .param p1, "mayInterruptIfRunning"    # Z

    #@0
    .prologue
    .line 2261
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2262
    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@6
    new-instance v2, Ljava/util/concurrent/CancellationException;

    #@8
    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    #@b
    invoke-direct {v1, v2}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    #@e
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    .line 2263
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    #@15
    .line 2264
    if-nez v0, :cond_1

    #@17
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->isCancelled()Z

    #@1a
    move-result v1

    #@1b
    :goto_1
    return v1

    #@1c
    .line 2261
    :cond_0
    const/4 v0, 0x0

    #@1d
    .local v0, "cancelled":Z
    goto :goto_0

    #@1e
    .line 2264
    .end local v0    # "cancelled":Z
    :cond_1
    const/4 v1, 0x1

    #@1f
    goto :goto_1
.end method

.method final casStack(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)Z
    .locals 6
    .param p1, "cmp"    # Ljava/util/concurrent/CompletableFuture$Completion;
    .param p2, "val"    # Ljava/util/concurrent/CompletableFuture$Completion;

    #@0
    .prologue
    .line 199
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->STACK:J

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

.method final cleanStack()V
    .locals 4

    #@0
    .prologue
    .line 460
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "p":Ljava/util/concurrent/CompletableFuture$Completion;
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    #@3
    .end local v0    # "p":Ljava/util/concurrent/CompletableFuture$Completion;
    .local v1, "q":Ljava/util/concurrent/CompletableFuture$Completion;
    :goto_0
    if-eqz v1, :cond_3

    #@5
    .line 461
    iget-object v2, v1, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    #@7
    .line 462
    .local v2, "s":Ljava/util/concurrent/CompletableFuture$Completion;
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture$Completion;->isLive()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 463
    move-object v0, v1

    #@e
    .line 464
    .local v0, "p":Ljava/util/concurrent/CompletableFuture$Completion;
    move-object v1, v2

    #@f
    goto :goto_0

    #@10
    .line 466
    .end local v0    # "p":Ljava/util/concurrent/CompletableFuture$Completion;
    :cond_0
    if-nez v0, :cond_1

    #@12
    .line 467
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/CompletableFuture;->casStack(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)Z

    #@15
    .line 468
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    #@17
    goto :goto_0

    #@18
    .line 471
    :cond_1
    iput-object v2, v0, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    #@1a
    .line 472
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture$Completion;->isLive()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_2

    #@20
    .line 473
    move-object v1, v2

    #@21
    goto :goto_0

    #@22
    .line 475
    :cond_2
    const/4 v0, 0x0

    #@23
    .line 476
    .local v0, "p":Ljava/util/concurrent/CompletableFuture$Completion;
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    #@25
    goto :goto_0

    #@26
    .line 459
    .end local v0    # "p":Ljava/util/concurrent/CompletableFuture$Completion;
    .end local v2    # "s":Ljava/util/concurrent/CompletableFuture$Completion;
    :cond_3
    return-void
.end method

.method public complete(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1958
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    .line 1959
    .local v0, "triggered":Z
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    #@7
    .line 1960
    return v0
.end method

.method public completeAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2476
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/CompletableFuture;->completeAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public completeAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2457
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 2458
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 2459
    :cond_1
    new-instance v0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;

    #@c
    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncSupply;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Supplier;)V

    #@f
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@12
    .line 2460
    return-object p0
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1972
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 1973
    :cond_0
    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@a
    invoke-direct {v1, p1}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    #@d
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    .line 1974
    .local v0, "triggered":Z
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    #@14
    .line 1975
    return v0
.end method

.method final completeNull()Z
    .locals 6

    #@0
    .prologue
    .line 226
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    #@4
    .line 227
    sget-object v5, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    #@6
    .line 226
    const/4 v4, 0x0

    #@7
    move-object v1, p0

    #@8
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2518
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-nez p4, :cond_0

    #@2
    .line 2519
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 2520
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 2521
    new-instance v0, Ljava/util/concurrent/CompletableFuture$Canceller;

    #@e
    .line 2522
    new-instance v1, Ljava/util/concurrent/CompletableFuture$DelayedCompleter;

    #@10
    invoke-direct {v1, p0, p1}, Ljava/util/concurrent/CompletableFuture$DelayedCompleter;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)V

    #@13
    .line 2521
    invoke-static {v1, p2, p3, p4}, Ljava/util/concurrent/CompletableFuture$Delayer;->delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    #@16
    move-result-object v1

    #@17
    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture$Canceller;-><init>(Ljava/util/concurrent/Future;)V

    #@1a
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    #@1d
    .line 2524
    :cond_1
    return-object p0
.end method

.method final completeRelay(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "r"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 310
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    #@4
    .line 311
    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v5

    #@8
    .line 310
    const/4 v4, 0x0

    #@9
    move-object v1, p0

    #@a
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method final completeThrowable(Ljava/lang/Throwable;)Z
    .locals 6
    .param p1, "x"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 252
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    #@4
    .line 253
    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    #@7
    move-result-object v5

    #@8
    .line 252
    const/4 v4, 0x0

    #@9
    move-object v1, p0

    #@a
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method final completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "x"    # Ljava/lang/Throwable;
    .param p2, "r"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 280
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    #@4
    .line 281
    invoke-static {p1, p2}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v5

    #@8
    .line 280
    const/4 v4, 0x0

    #@9
    move-object v1, p0

    #@a
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method final completeValue(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    #@1
    .line 237
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    #@3
    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    #@5
    .line 238
    if-nez p1, :cond_0

    #@7
    sget-object v5, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    #@9
    :goto_0
    move-object v1, p0

    #@a
    .line 237
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    :cond_0
    move-object v5, p1

    #@10
    .line 238
    goto :goto_0
.end method

.method public copy()Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2420
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;->uniCopyStage()Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public defaultExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    #@0
    .prologue
    .line 2400
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    #@2
    return-object v0
.end method

.method encodeOutcome(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0
    .param p2, "x"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    .prologue
    .line 290
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_1

    #@2
    if-nez p1, :cond_0

    #@4
    sget-object p1, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    #@6
    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-object p1

    #@7
    .restart local p1    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    #@a
    move-result-object p1

    #@b
    goto :goto_0
.end method

.method final encodeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    .prologue
    .line 232
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    #@2
    sget-object p1, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    #@4
    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object p1
.end method

.method public exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2193
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CompletableFuture;->uniExceptionallyStage(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "fn"    # Ljava/util/function/Function;

    #@0
    .prologue
    .line 2191
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    #@0
    .prologue
    .line 1892
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@2
    .local v0, "r":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, v1}, Ljava/util/concurrent/CompletableFuture;->waitingGet(Z)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    .end local v0    # "r":Ljava/lang/Object;
    :cond_0
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->reportGet(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 1911
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@3
    move-result-wide v0

    #@4
    .line 1912
    .local v0, "nanos":J
    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@6
    .local v2, "r":Ljava/lang/Object;
    if-nez v2, :cond_0

    #@8
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/CompletableFuture;->timedGet(J)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    .end local v2    # "r":Ljava/lang/Object;
    :cond_0
    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->reportGet(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    return-object v3
.end method

.method public getNow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 1946
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "valueIfAbsent":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@2
    .local v0, "r":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@4
    .end local p1    # "valueIfAbsent":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p1

    #@5
    .restart local p1    # "valueIfAbsent":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->reportJoin(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object p1

    #@9
    goto :goto_0
.end method

.method public getNumberOfDependents()I
    .locals 2

    #@0
    .prologue
    .line 2336
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v0, 0x0

    #@1
    .line 2337
    .local v0, "count":I
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    #@3
    .local v1, "p":Ljava/util/concurrent/CompletableFuture$Completion;
    :goto_0
    if-eqz v1, :cond_0

    #@5
    .line 2338
    add-int/lit8 v0, v0, 0x1

    #@7
    .line 2337
    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    #@9
    goto :goto_0

    #@a
    .line 2339
    :cond_0
    return v0
.end method

.method public handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction",
            "<-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2152
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public bridge synthetic handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "fn"    # Ljava/util/function/BiFunction;

    #@0
    .prologue
    .line 2150
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public handleAsync(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction",
            "<-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2157
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public handleAsync(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction",
            "<-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2162
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic handleAsync(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "fn"    # Ljava/util/function/BiFunction;

    #@0
    .prologue
    .line 2155
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->handleAsync(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic handleAsync(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "fn"    # Ljava/util/function/BiFunction;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    .line 2160
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->handleAsync(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method final internalComplete(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "r"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 195
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    #@4
    const/4 v4, 0x0

    #@5
    move-object v1, p0

    #@6
    move-object v5, p1

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public isCancelled()Z
    .locals 2

    #@0
    .prologue
    .line 2276
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@2
    .local v0, "r":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 2277
    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@8
    .end local v0    # "r":Ljava/lang/Object;
    iget-object v1, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@a
    instance-of v1, v1, Ljava/util/concurrent/CancellationException;

    #@c
    .line 2276
    :goto_0
    return v1

    #@d
    .restart local v0    # "r":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    #@e
    goto :goto_0
.end method

.method public isCompletedExceptionally()Z
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 2292
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@3
    .local v0, "r":Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@5
    if-eqz v2, :cond_0

    #@7
    sget-object v2, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    #@9
    if-eq v0, v2, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    :cond_0
    return v1
.end method

.method public isDone()Z
    .locals 1

    #@0
    .prologue
    .line 1877
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public join()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 1931
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@2
    .local v0, "r":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, v1}, Ljava/util/concurrent/CompletableFuture;->waitingGet(Z)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    .end local v0    # "r":Ljava/lang/Object;
    :cond_0
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->reportJoin(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method public minimalCompletionStage()Ljava/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletionStage",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2439
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;->uniAsMinimalStage()Ljava/util/concurrent/CompletableFuture$MinimalStage;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2383
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    #@5
    return-object v0
.end method

.method public obtrudeException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 2322
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 2323
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@a
    invoke-direct {v0, p1}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    #@d
    iput-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@f
    .line 2324
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    #@12
    .line 2321
    return-void
.end method

.method public obtrudeValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2306
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    #@2
    sget-object p1, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    #@4
    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@6
    .line 2307
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    #@9
    .line 2305
    return-void
.end method

.method final orAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture$OrAccept;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:TR;>(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TR;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/Consumer",
            "<-TR;>;",
            "Ljava/util/concurrent/CompletableFuture$OrAccept",
            "<TR;TS;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TR;>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p3, "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TR;>;"
    .local p4, "c":Ljava/util/concurrent/CompletableFuture$OrAccept;, "Ljava/util/concurrent/CompletableFuture$OrAccept<TR;TS;>;"
    const/4 v6, 0x0

    #@1
    .line 1432
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 1434
    :cond_0
    return v6

    #@6
    .line 1433
    :cond_1
    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@8
    .local v2, "r":Ljava/lang/Object;
    if-nez v2, :cond_2

    #@a
    iget-object v2, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@c
    if-eqz v2, :cond_0

    #@e
    :cond_2
    if-eqz p3, :cond_0

    #@10
    .line 1435
    iget-object v5, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@12
    if-nez v5, :cond_4

    #@14
    .line 1437
    if-eqz p4, :cond_3

    #@16
    :try_start_0
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$OrAccept;->claim()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_5

    #@1c
    .line 1439
    :cond_3
    instance-of v5, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@1e
    if-eqz v5, :cond_7

    #@20
    .line 1440
    move-object v0, v2

    #@21
    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@23
    move-object v5, v0

    #@24
    iget-object v4, v5, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@26
    .local v4, "x":Ljava/lang/Throwable;
    if-eqz v4, :cond_6

    #@28
    .line 1441
    invoke-virtual {p0, v4, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    #@2b
    .line 1453
    .end local v2    # "r":Ljava/lang/Object;
    .end local v4    # "x":Ljava/lang/Throwable;
    :cond_4
    :goto_0
    const/4 v5, 0x1

    #@2c
    return v5

    #@2d
    .line 1438
    .restart local v2    # "r":Ljava/lang/Object;
    :cond_5
    return v6

    #@2e
    .line 1444
    .restart local v4    # "x":Ljava/lang/Throwable;
    :cond_6
    const/4 v2, 0x0

    #@2f
    .line 1446
    .end local v2    # "r":Ljava/lang/Object;
    .end local v4    # "x":Ljava/lang/Throwable;
    :cond_7
    move-object v3, v2

    #@30
    .line 1447
    .local v3, "rr":Ljava/lang/Object;, "TR;"
    invoke-interface {p3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@33
    .line 1448
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    goto :goto_0

    #@37
    .line 1449
    .end local v3    # "rr":Ljava/lang/Object;, "TR;"
    :catch_0
    move-exception v1

    #@38
    .line 1450
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    #@3b
    goto :goto_0
.end method

.method final orApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$OrApply;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:TR;>(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TR;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/Function",
            "<-TR;+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$OrApply",
            "<TR;TS;TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TR;>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p3, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TR;+TT;>;"
    .local p4, "c":Ljava/util/concurrent/CompletableFuture$OrApply;, "Ljava/util/concurrent/CompletableFuture$OrApply<TR;TS;TT;>;"
    const/4 v6, 0x0

    #@1
    .line 1368
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 1370
    :cond_0
    return v6

    #@6
    .line 1369
    :cond_1
    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@8
    .local v2, "r":Ljava/lang/Object;
    if-nez v2, :cond_2

    #@a
    iget-object v2, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@c
    if-eqz v2, :cond_0

    #@e
    :cond_2
    if-eqz p3, :cond_0

    #@10
    .line 1371
    iget-object v5, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@12
    if-nez v5, :cond_4

    #@14
    .line 1373
    if-eqz p4, :cond_3

    #@16
    :try_start_0
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$OrApply;->claim()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_5

    #@1c
    .line 1375
    :cond_3
    instance-of v5, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@1e
    if-eqz v5, :cond_7

    #@20
    .line 1376
    move-object v0, v2

    #@21
    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@23
    move-object v5, v0

    #@24
    iget-object v4, v5, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@26
    .local v4, "x":Ljava/lang/Throwable;
    if-eqz v4, :cond_6

    #@28
    .line 1377
    invoke-virtual {p0, v4, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    #@2b
    .line 1388
    .end local v2    # "r":Ljava/lang/Object;
    .end local v4    # "x":Ljava/lang/Throwable;
    :cond_4
    :goto_0
    const/4 v5, 0x1

    #@2c
    return v5

    #@2d
    .line 1374
    .restart local v2    # "r":Ljava/lang/Object;
    :cond_5
    return v6

    #@2e
    .line 1380
    .restart local v4    # "x":Ljava/lang/Throwable;
    :cond_6
    const/4 v2, 0x0

    #@2f
    .line 1382
    .end local v2    # "r":Ljava/lang/Object;
    .end local v4    # "x":Ljava/lang/Throwable;
    :cond_7
    move-object v3, v2

    #@30
    .line 1383
    .local v3, "rr":Ljava/lang/Object;, "TR;"
    invoke-interface {p3, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {p0, v5}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    goto :goto_0

    #@38
    .line 1384
    .end local v3    # "rr":Ljava/lang/Object;, "TR;"
    :catch_0
    move-exception v1

    #@39
    .line 1385
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    #@3c
    goto :goto_0
.end method

.method final orRelay(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1547
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1549
    :cond_0
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 1548
    :cond_1
    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@8
    .local v0, "r":Ljava/lang/Object;
    if-nez v0, :cond_2

    #@a
    iget-object v0, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 1550
    :cond_2
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@10
    if-nez v1, :cond_3

    #@12
    .line 1551
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    #@15
    .line 1552
    :cond_3
    const/4 v1, 0x1

    #@16
    return v1
.end method

.method final orRun(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$OrRun;)Z
    .locals 6
    .param p3, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/CompletableFuture$OrRun",
            "<**>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p4, "c":Ljava/util/concurrent/CompletableFuture$OrRun;, "Ljava/util/concurrent/CompletableFuture$OrRun<**>;"
    const/4 v5, 0x0

    #@1
    .line 1494
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 1496
    :cond_0
    return v5

    #@6
    .line 1495
    :cond_1
    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@8
    .local v2, "r":Ljava/lang/Object;
    if-nez v2, :cond_2

    #@a
    iget-object v2, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@c
    if-eqz v2, :cond_0

    #@e
    :cond_2
    if-eqz p3, :cond_0

    #@10
    .line 1497
    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@12
    if-nez v4, :cond_4

    #@14
    .line 1499
    if-eqz p4, :cond_3

    #@16
    :try_start_0
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$OrRun;->claim()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_5

    #@1c
    .line 1501
    :cond_3
    instance-of v4, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@1e
    if-eqz v4, :cond_6

    #@20
    move-object v0, v2

    #@21
    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@23
    move-object v4, v0

    #@24
    iget-object v3, v4, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@26
    .local v3, "x":Ljava/lang/Throwable;
    if-eqz v3, :cond_6

    #@28
    .line 1502
    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    #@2b
    .line 1511
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_4
    :goto_0
    const/4 v4, 0x1

    #@2c
    return v4

    #@2d
    .line 1500
    :cond_5
    return v5

    #@2e
    .line 1504
    :cond_6
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    #@31
    .line 1505
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    goto :goto_0

    #@35
    .line 1507
    :catch_0
    move-exception v1

    #@36
    .line 1508
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    #@39
    goto :goto_0
.end method

.method public orTimeout(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2494
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-nez p3, :cond_0

    #@2
    .line 2495
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 2496
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 2497
    new-instance v0, Ljava/util/concurrent/CompletableFuture$Canceller;

    #@e
    new-instance v1, Ljava/util/concurrent/CompletableFuture$Timeout;

    #@10
    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletableFuture$Timeout;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    #@13
    invoke-static {v1, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$Delayer;->delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    #@16
    move-result-object v1

    #@17
    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture$Canceller;-><init>(Ljava/util/concurrent/Future;)V

    #@1a
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    #@1d
    .line 2499
    :cond_1
    return-object p0
.end method

.method final orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture$BiCompletion",
            "<***>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "c":Ljava/util/concurrent/CompletableFuture$BiCompletion;, "Ljava/util/concurrent/CompletableFuture$BiCompletion<***>;"
    const/4 v2, 0x0

    #@1
    .line 1326
    if-eqz p2, :cond_1

    #@3
    .line 1327
    :goto_0
    if-eqz p1, :cond_0

    #@5
    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@7
    if-nez v1, :cond_1

    #@9
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@b
    if-nez v1, :cond_1

    #@d
    .line 1328
    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_3

    #@13
    .line 1329
    if-eqz p1, :cond_1

    #@15
    if-eq p1, p0, :cond_1

    #@17
    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@19
    if-nez v1, :cond_1

    #@1b
    .line 1330
    new-instance v0, Ljava/util/concurrent/CompletableFuture$CoCompletion;

    #@1d
    invoke-direct {v0, p2}, Ljava/util/concurrent/CompletableFuture$CoCompletion;-><init>(Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    #@20
    .line 1331
    .local v0, "q":Ljava/util/concurrent/CompletableFuture$Completion;
    :goto_1
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@22
    if-nez v1, :cond_1

    #@24
    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@26
    if-nez v1, :cond_1

    #@28
    .line 1332
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_2

    #@2e
    .line 1325
    .end local v0    # "q":Ljava/util/concurrent/CompletableFuture$Completion;
    :cond_1
    return-void

    #@2f
    .line 1333
    .restart local v0    # "q":Ljava/util/concurrent/CompletableFuture$Completion;
    :cond_2
    invoke-static {v0, v2}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    #@32
    goto :goto_1

    #@33
    .line 1337
    .end local v0    # "q":Ljava/util/concurrent/CompletableFuture$Completion;
    :cond_3
    invoke-static {p2, v2}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    #@36
    goto :goto_0
.end method

.method final postComplete()V
    .locals 6

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v5, 0x0

    #@1
    .line 441
    move-object v1, p0

    #@2
    .line 442
    .local v1, "f":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_0
    :goto_0
    iget-object v2, v1, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    #@4
    .local v2, "h":Ljava/util/concurrent/CompletableFuture$Completion;
    if-nez v2, :cond_1

    #@6
    .line 443
    if-eq v1, p0, :cond_5

    #@8
    move-object v1, p0

    #@9
    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    #@b
    if-eqz v2, :cond_5

    #@d
    .line 445
    :cond_1
    iget-object v3, v2, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    #@f
    .local v3, "t":Ljava/util/concurrent/CompletableFuture$Completion;
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/CompletableFuture;->casStack(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    .line 446
    if-eqz v3, :cond_3

    #@17
    .line 447
    if-eq v1, p0, :cond_2

    #@19
    .line 448
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->pushStack(Ljava/util/concurrent/CompletableFuture$Completion;)V

    #@1c
    goto :goto_0

    #@1d
    .line 451
    :cond_2
    iput-object v5, v2, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    #@1f
    .line 453
    :cond_3
    const/4 v4, -0x1

    #@20
    invoke-virtual {v2, v4}, Ljava/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@23
    move-result-object v0

    #@24
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-nez v0, :cond_4

    #@26
    move-object v1, p0

    #@27
    goto :goto_0

    #@28
    :cond_4
    move-object v1, v0

    #@29
    goto :goto_0

    #@2a
    .line 435
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v3    # "t":Ljava/util/concurrent/CompletableFuture$Completion;
    :cond_5
    return-void
.end method

.method final postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    const/4 v1, 0x0

    #@1
    .line 530
    if-eqz p1, :cond_1

    #@3
    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 531
    if-ltz p2, :cond_0

    #@9
    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@b
    if-nez v0, :cond_2

    #@d
    .line 532
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    #@10
    .line 536
    :cond_1
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@12
    if-eqz v0, :cond_4

    #@14
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    #@16
    if-eqz v0, :cond_4

    #@18
    .line 537
    if-gez p2, :cond_3

    #@1a
    .line 538
    return-object p0

    #@1b
    .line 534
    :cond_2
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    #@1e
    goto :goto_0

    #@1f
    .line 540
    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    #@22
    .line 542
    :cond_4
    return-object v1
.end method

.method final postFire(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1054
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz p2, :cond_1

    #@2
    iget-object v0, p2, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1055
    if-ltz p3, :cond_0

    #@8
    iget-object v0, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@a
    if-nez v0, :cond_2

    #@c
    .line 1056
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    #@f
    .line 1060
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p3}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 1058
    :cond_2
    invoke-virtual {p2}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    #@17
    goto :goto_0
.end method

.method final push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture$UniCompletion",
            "<**>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "c":Ljava/util/concurrent/CompletableFuture$UniCompletion;, "Ljava/util/concurrent/CompletableFuture$UniCompletion<**>;"
    const/4 v1, 0x0

    #@1
    .line 518
    if-eqz p1, :cond_0

    #@3
    .line 519
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@5
    if-nez v0, :cond_0

    #@7
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 517
    :cond_0
    return-void

    #@e
    .line 520
    :cond_1
    invoke-static {p1, v1}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    #@11
    goto :goto_0
.end method

.method final pushStack(Ljava/util/concurrent/CompletableFuture$Completion;)V
    .locals 1
    .param p1, "c"    # Ljava/util/concurrent/CompletableFuture$Completion;

    #@0
    .prologue
    .line 211
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 210
    return-void
.end method

.method public runAfterBoth(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2057
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public bridge synthetic runAfterBoth(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "other"    # Ljava/util/concurrent/CompletionStage;
    .param p2, "action"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 2055
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->runAfterBoth(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2062
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2068
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "other"    # Ljava/util/concurrent/CompletionStage;
    .param p2, "action"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 2060
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "other"    # Ljava/util/concurrent/CompletionStage;
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    .line 2065
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public runAfterEither(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2105
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public bridge synthetic runAfterEither(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "other"    # Ljava/util/concurrent/CompletionStage;
    .param p2, "action"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 2103
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->runAfterEither(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2110
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2116
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "other"    # Ljava/util/concurrent/CompletionStage;
    .param p2, "action"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 2108
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "other"    # Ljava/util/concurrent/CompletionStage;
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    .line 2113
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1994
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public bridge synthetic thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "action"    # Ljava/util/function/Consumer;

    #@0
    .prologue
    .line 1993
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1998
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2003
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "action"    # Ljava/util/function/Consumer;

    #@0
    .prologue
    .line 1997
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "action"    # Ljava/util/function/Consumer;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    .line 2001
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public thenAcceptBoth(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2040
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public bridge synthetic thenAcceptBoth(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "other"    # Ljava/util/concurrent/CompletionStage;
    .param p2, "action"    # Ljava/util/function/BiConsumer;

    #@0
    .prologue
    .line 2037
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptBoth(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2046
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2052
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "other"    # Ljava/util/concurrent/CompletionStage;
    .param p2, "action"    # Ljava/util/function/BiConsumer;

    #@0
    .prologue
    .line 2043
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "other"    # Ljava/util/concurrent/CompletionStage;
    .param p2, "action"    # Ljava/util/function/BiConsumer;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    .line 2049
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1980
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public bridge synthetic thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "fn"    # Ljava/util/function/Function;

    #@0
    .prologue
    .line 1978
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public thenApplyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1985
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1990
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic thenApplyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "fn"    # Ljava/util/function/Function;

    #@0
    .prologue
    .line 1983
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "fn"    # Ljava/util/function/Function;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    .line 1988
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TT;-TU;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2022
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public bridge synthetic thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "other"    # Ljava/util/concurrent/CompletionStage;
    .param p2, "fn"    # Ljava/util/function/BiFunction;

    #@0
    .prologue
    .line 2019
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TT;-TU;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2028
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TT;-TU;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2034
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "other"    # Ljava/util/concurrent/CompletionStage;
    .param p2, "fn"    # Ljava/util/function/BiFunction;

    #@0
    .prologue
    .line 2025
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "other"    # Ljava/util/concurrent/CompletionStage;
    .param p2, "fn"    # Ljava/util/function/BiFunction;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    .line 2031
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2121
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public bridge synthetic thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "fn"    # Ljava/util/function/Function;

    #@0
    .prologue
    .line 2119
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public thenComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2126
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2132
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic thenComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "fn"    # Ljava/util/function/Function;

    #@0
    .prologue
    .line 2124
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "fn"    # Ljava/util/function/Function;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    .line 2129
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2007
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public bridge synthetic thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 2006
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2011
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2016
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 2010
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    .line 2014
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toCompletableFuture()Ljava/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2171
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 2353
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@2
    .line 2354
    .local v2, "r":Ljava/lang/Object;
    const/4 v0, 0x0

    #@3
    .line 2355
    .local v0, "count":I
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    #@5
    .local v1, "p":Ljava/util/concurrent/CompletableFuture$Completion;
    :goto_0
    if-eqz v1, :cond_0

    #@7
    .line 2356
    add-int/lit8 v0, v0, 0x1

    #@9
    .line 2355
    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    #@b
    goto :goto_0

    #@c
    .line 2357
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    .line 2358
    if-nez v2, :cond_2

    #@1b
    .line 2359
    if-nez v0, :cond_1

    #@1d
    .line 2360
    const-string/jumbo v3, "[Not completed]"

    #@20
    .line 2357
    .end local v2    # "r":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    return-object v3

    #@29
    .line 2361
    .restart local v2    # "r":Ljava/lang/Object;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v5, "[Not completed, "

    #@31
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    const-string/jumbo v5, " dependents]"

    #@3c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    goto :goto_1

    #@45
    .line 2362
    :cond_2
    instance-of v3, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@47
    if-eqz v3, :cond_3

    #@49
    check-cast v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@4b
    .end local v2    # "r":Ljava/lang/Object;
    iget-object v3, v2, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@4d
    if-eqz v3, :cond_3

    #@4f
    .line 2363
    const-string/jumbo v3, "[Completed exceptionally]"

    #@52
    goto :goto_1

    #@53
    .line 2364
    :cond_3
    const-string/jumbo v3, "[Completed normally]"

    #@56
    goto :goto_1
.end method

.method final tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z
    .locals 6
    .param p1, "c"    # Ljava/util/concurrent/CompletableFuture$Completion;

    #@0
    .prologue
    .line 204
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    #@2
    .line 205
    .local v4, "h":Ljava/util/concurrent/CompletableFuture$Completion;
    invoke-static {p1, v4}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    #@5
    .line 206
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    #@7
    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->STACK:J

    #@9
    move-object v1, p0

    #@a
    move-object v5, p1

    #@b
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method final uniAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture$UniAccept;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/Consumer",
            "<-TS;>;",
            "Ljava/util/concurrent/CompletableFuture$UniAccept",
            "<TS;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p2, "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TS;>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniAccept;, "Ljava/util/concurrent/CompletableFuture$UniAccept<TS;>;"
    const/4 v5, 0x0

    #@1
    .line 621
    if-eqz p1, :cond_0

    #@3
    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@5
    .local v1, "r":Ljava/lang/Object;
    if-nez v1, :cond_1

    #@7
    .line 622
    .end local v1    # "r":Ljava/lang/Object;
    :cond_0
    return v5

    #@8
    .line 621
    .restart local v1    # "r":Ljava/lang/Object;
    :cond_1
    if-eqz p2, :cond_0

    #@a
    .line 623
    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@c
    if-nez v4, :cond_2

    #@e
    .line 624
    instance-of v4, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@10
    if-eqz v4, :cond_4

    #@12
    move-object v4, v1

    #@13
    .line 625
    check-cast v4, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@15
    iget-object v3, v4, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@17
    .local v3, "x":Ljava/lang/Throwable;
    if-eqz v3, :cond_3

    #@19
    .line 626
    invoke-virtual {p0, v3, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    #@1c
    .line 641
    .end local v1    # "r":Ljava/lang/Object;
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    const/4 v4, 0x1

    #@1d
    return v4

    #@1e
    .line 629
    .restart local v1    # "r":Ljava/lang/Object;
    .restart local v3    # "x":Ljava/lang/Throwable;
    :cond_3
    const/4 v1, 0x0

    #@1f
    .line 632
    .end local v1    # "r":Ljava/lang/Object;
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_4
    if-eqz p3, :cond_5

    #@21
    :try_start_0
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniAccept;->claim()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_6

    #@27
    .line 634
    :cond_5
    move-object v2, v1

    #@28
    .line 635
    .local v2, "s":Ljava/lang/Object;, "TS;"
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@2b
    .line 636
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    goto :goto_0

    #@2f
    .line 637
    .end local v2    # "s":Ljava/lang/Object;, "TS;"
    :catch_0
    move-exception v0

    #@30
    .line 638
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    #@33
    goto :goto_0

    #@34
    .line 633
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_6
    return v5
.end method

.method final uniApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniApply;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/Function",
            "<-TS;+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$UniApply",
            "<TS;TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p2, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TS;+TT;>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniApply;, "Ljava/util/concurrent/CompletableFuture$UniApply<TS;TT;>;"
    const/4 v5, 0x0

    #@1
    .line 567
    if-eqz p1, :cond_0

    #@3
    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@5
    .local v1, "r":Ljava/lang/Object;
    if-nez v1, :cond_1

    #@7
    .line 568
    .end local v1    # "r":Ljava/lang/Object;
    :cond_0
    return v5

    #@8
    .line 567
    .restart local v1    # "r":Ljava/lang/Object;
    :cond_1
    if-eqz p2, :cond_0

    #@a
    .line 569
    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@c
    if-nez v4, :cond_2

    #@e
    .line 570
    instance-of v4, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@10
    if-eqz v4, :cond_4

    #@12
    move-object v4, v1

    #@13
    .line 571
    check-cast v4, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@15
    iget-object v3, v4, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@17
    .local v3, "x":Ljava/lang/Throwable;
    if-eqz v3, :cond_3

    #@19
    .line 572
    invoke-virtual {p0, v3, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    #@1c
    .line 586
    .end local v1    # "r":Ljava/lang/Object;
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    const/4 v4, 0x1

    #@1d
    return v4

    #@1e
    .line 575
    .restart local v1    # "r":Ljava/lang/Object;
    .restart local v3    # "x":Ljava/lang/Throwable;
    :cond_3
    const/4 v1, 0x0

    #@1f
    .line 578
    .end local v1    # "r":Ljava/lang/Object;
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_4
    if-eqz p3, :cond_5

    #@21
    :try_start_0
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniApply;->claim()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_6

    #@27
    .line 580
    :cond_5
    move-object v2, v1

    #@28
    .line 581
    .local v2, "s":Ljava/lang/Object;, "TS;"
    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {p0, v4}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    goto :goto_0

    #@30
    .line 582
    .end local v2    # "s":Ljava/lang/Object;, "TS;"
    :catch_0
    move-exception v0

    #@31
    .line 583
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    #@34
    goto :goto_0

    #@35
    .line 579
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_6
    return v5
.end method

.method final uniCompose(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniCompose;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/Function",
            "<-TS;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TT;>;>;",
            "Ljava/util/concurrent/CompletableFuture$UniCompose",
            "<TS;TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p2, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TS;+Ljava/util/concurrent/CompletionStage<TT;>;>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniCompose;, "Ljava/util/concurrent/CompletableFuture$UniCompose<TS;TT;>;"
    const/4 v7, 0x0

    #@1
    .line 943
    if-eqz p1, :cond_0

    #@3
    iget-object v3, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@5
    .local v3, "r":Ljava/lang/Object;
    if-nez v3, :cond_1

    #@7
    .line 944
    .end local v3    # "r":Ljava/lang/Object;
    :cond_0
    return v7

    #@8
    .line 943
    .restart local v3    # "r":Ljava/lang/Object;
    :cond_1
    if-eqz p2, :cond_0

    #@a
    .line 945
    iget-object v6, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@c
    if-nez v6, :cond_2

    #@e
    .line 946
    instance-of v6, v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@10
    if-eqz v6, :cond_4

    #@12
    move-object v6, v3

    #@13
    .line 947
    check-cast v6, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@15
    iget-object v5, v6, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@17
    .local v5, "x":Ljava/lang/Throwable;
    if-eqz v5, :cond_3

    #@19
    .line 948
    invoke-virtual {p0, v5, v3}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    #@1c
    .line 969
    .end local v3    # "r":Ljava/lang/Object;
    .end local v5    # "x":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    const/4 v6, 0x1

    #@1d
    return v6

    #@1e
    .line 951
    .restart local v3    # "r":Ljava/lang/Object;
    .restart local v5    # "x":Ljava/lang/Throwable;
    :cond_3
    const/4 v3, 0x0

    #@1f
    .line 954
    .end local v3    # "r":Ljava/lang/Object;
    .end local v5    # "x":Ljava/lang/Throwable;
    :cond_4
    if-eqz p3, :cond_5

    #@21
    :try_start_0
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniCompose;->claim()Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_7

    #@27
    .line 956
    :cond_5
    move-object v4, v3

    #@28
    .line 957
    .local v4, "s":Ljava/lang/Object;, "TS;"
    invoke-interface {p2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v6

    #@2c
    check-cast v6, Ljava/util/concurrent/CompletionStage;

    #@2e
    invoke-interface {v6}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    #@31
    move-result-object v2

    #@32
    .line 958
    .local v2, "g":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v6, v2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@34
    if-eqz v6, :cond_6

    #@36
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->uniRelay(Ljava/util/concurrent/CompletableFuture;)Z

    #@39
    move-result v6

    #@3a
    if-nez v6, :cond_2

    #@3c
    .line 959
    :cond_6
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniRelay;

    #@3e
    invoke-direct {v0, p0, v2}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    #@41
    .line 960
    .local v0, "copy":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture$UniRelay<TT;>;"
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    #@44
    .line 961
    const/4 v6, 0x0

    #@45
    invoke-virtual {v0, v6}, Ljava/util/concurrent/CompletableFuture$UniRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@48
    .line 962
    iget-object v6, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@4a
    if-nez v6, :cond_2

    #@4c
    .line 963
    return v7

    #@4d
    .line 955
    .end local v0    # "copy":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture$UniRelay<TT;>;"
    .end local v2    # "g":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .end local v4    # "s":Ljava/lang/Object;, "TS;"
    :cond_7
    return v7

    #@4e
    .line 965
    :catch_0
    move-exception v1

    #@4f
    .line 966
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    #@52
    goto :goto_0
.end method

.method final uniExceptionally(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniExceptionally;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;",
            "Ljava/util/function/Function",
            "<-",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$UniExceptionally",
            "<TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Throwable;+TT;>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniExceptionally;, "Ljava/util/concurrent/CompletableFuture$UniExceptionally<TT;>;"
    const/4 v5, 0x0

    #@1
    .line 844
    if-eqz p1, :cond_0

    #@3
    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@5
    .local v2, "r":Ljava/lang/Object;
    if-nez v2, :cond_1

    #@7
    .line 845
    .end local v2    # "r":Ljava/lang/Object;
    :cond_0
    return v5

    #@8
    .line 844
    .restart local v2    # "r":Ljava/lang/Object;
    :cond_1
    if-eqz p2, :cond_0

    #@a
    .line 846
    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@c
    if-nez v4, :cond_3

    #@e
    .line 848
    :try_start_0
    instance-of v4, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@10
    if-eqz v4, :cond_5

    #@12
    move-object v0, v2

    #@13
    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@15
    move-object v4, v0

    #@16
    iget-object v3, v4, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@18
    .local v3, "x":Ljava/lang/Throwable;
    if-eqz v3, :cond_5

    #@1a
    .line 849
    if-eqz p3, :cond_2

    #@1c
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->claim()Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_4

    #@22
    .line 851
    :cond_2
    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {p0, v4}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z

    #@29
    .line 858
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    const/4 v4, 0x1

    #@2a
    return v4

    #@2b
    .line 850
    .restart local v3    # "x":Ljava/lang/Throwable;
    :cond_4
    return v5

    #@2c
    .line 853
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    goto :goto_0

    #@30
    .line 854
    :catch_0
    move-exception v1

    #@31
    .line 855
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    #@34
    goto :goto_0
.end method

.method final uniHandle(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture$UniHandle;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/BiFunction",
            "<-TS;",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$UniHandle",
            "<TS;TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p2, "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TS;Ljava/lang/Throwable;+TT;>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniHandle;, "Ljava/util/concurrent/CompletableFuture$UniHandle<TS;TT;>;"
    const/4 v6, 0x0

    #@1
    .line 789
    if-eqz p1, :cond_0

    #@3
    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@5
    .local v1, "r":Ljava/lang/Object;
    if-nez v1, :cond_1

    #@7
    .line 790
    .end local v1    # "r":Ljava/lang/Object;
    :cond_0
    return v6

    #@8
    .line 789
    .restart local v1    # "r":Ljava/lang/Object;
    :cond_1
    if-eqz p2, :cond_0

    #@a
    .line 791
    iget-object v5, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@c
    if-nez v5, :cond_3

    #@e
    .line 793
    if-eqz p3, :cond_2

    #@10
    :try_start_0
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniHandle;->claim()Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_4

    #@16
    .line 795
    :cond_2
    instance-of v5, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@18
    if-eqz v5, :cond_5

    #@1a
    .line 796
    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@1c
    .end local v1    # "r":Ljava/lang/Object;
    iget-object v4, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@1e
    .line 797
    .local v4, "x":Ljava/lang/Throwable;
    const/4 v2, 0x0

    #@1f
    .line 803
    .end local v4    # "x":Ljava/lang/Throwable;
    :goto_0
    invoke-interface {p2, v2, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {p0, v5}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 808
    :cond_3
    :goto_1
    const/4 v5, 0x1

    #@27
    return v5

    #@28
    .line 794
    .restart local v1    # "r":Ljava/lang/Object;
    :cond_4
    return v6

    #@29
    .line 799
    :cond_5
    const/4 v4, 0x0

    #@2a
    .line 800
    .local v4, "x":Ljava/lang/Throwable;
    move-object v3, v1

    #@2b
    .line 801
    .local v3, "ss":Ljava/lang/Object;, "TS;"
    move-object v2, v1

    #@2c
    .local v2, "s":Ljava/lang/Object;, "TS;"
    goto :goto_0

    #@2d
    .line 804
    .end local v1    # "r":Ljava/lang/Object;
    .end local v2    # "s":Ljava/lang/Object;, "TS;"
    .end local v3    # "ss":Ljava/lang/Object;, "TS;"
    .end local v4    # "x":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    #@2e
    .line 805
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    #@31
    goto :goto_1
.end method

.method final uniRelay(Ljava/util/concurrent/CompletableFuture;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 889
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@4
    .local v0, "r":Ljava/lang/Object;
    if-nez v0, :cond_1

    #@6
    .line 890
    .end local v0    # "r":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 891
    .restart local v0    # "r":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@a
    if-nez v1, :cond_2

    #@c
    .line 892
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    #@f
    .line 893
    :cond_2
    const/4 v1, 0x1

    #@10
    return v1
.end method

.method final uniRun(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$UniRun;)Z
    .locals 5
    .param p2, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/CompletableFuture$UniRun",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniRun;, "Ljava/util/concurrent/CompletableFuture$UniRun<*>;"
    const/4 v4, 0x0

    #@1
    .line 675
    if-eqz p1, :cond_0

    #@3
    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@5
    .local v1, "r":Ljava/lang/Object;
    if-nez v1, :cond_1

    #@7
    .line 676
    .end local v1    # "r":Ljava/lang/Object;
    :cond_0
    return v4

    #@8
    .line 675
    .restart local v1    # "r":Ljava/lang/Object;
    :cond_1
    if-eqz p2, :cond_0

    #@a
    .line 677
    iget-object v3, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@c
    if-nez v3, :cond_2

    #@e
    .line 678
    instance-of v3, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@10
    if-eqz v3, :cond_3

    #@12
    move-object v3, v1

    #@13
    check-cast v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@15
    iget-object v2, v3, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@17
    .local v2, "x":Ljava/lang/Throwable;
    if-eqz v2, :cond_3

    #@19
    .line 679
    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    #@1c
    .line 690
    .end local v2    # "x":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    const/4 v3, 0x1

    #@1d
    return v3

    #@1e
    .line 682
    :cond_3
    if-eqz p3, :cond_4

    #@20
    :try_start_0
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniRun;->claim()Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_5

    #@26
    .line 684
    :cond_4
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    #@29
    .line 685
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    goto :goto_0

    #@2d
    .line 686
    :catch_0
    move-exception v0

    #@2e
    .line 687
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    #@31
    goto :goto_0

    #@32
    .line 683
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_5
    return v4
.end method

.method final uniWhenComplete(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$UniWhenComplete;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/CompletableFuture$UniWhenComplete",
            "<TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniWhenComplete;, "Ljava/util/concurrent/CompletableFuture$UniWhenComplete<TT;>;"
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 725
    const/4 v5, 0x0

    #@3
    .line 726
    .local v5, "x":Ljava/lang/Throwable;
    if-eqz p1, :cond_0

    #@5
    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@7
    .local v2, "r":Ljava/lang/Object;
    if-nez v2, :cond_1

    #@9
    .line 727
    .end local v2    # "r":Ljava/lang/Object;
    :cond_0
    return v7

    #@a
    .line 726
    .restart local v2    # "r":Ljava/lang/Object;
    :cond_1
    if-eqz p2, :cond_0

    #@c
    .line 728
    iget-object v6, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@e
    if-nez v6, :cond_6

    #@10
    .line 730
    if-eqz p3, :cond_2

    #@12
    :try_start_0
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;->claim()Z

    #@15
    move-result v6

    #@16
    if-eqz v6, :cond_3

    #@18
    .line 732
    :cond_2
    instance-of v6, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@1a
    if-eqz v6, :cond_4

    #@1c
    .line 733
    move-object v0, v2

    #@1d
    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    #@1f
    move-object v6, v0

    #@20
    iget-object v5, v6, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@22
    .line 734
    .local v5, "x":Ljava/lang/Throwable;
    const/4 v3, 0x0

    #@23
    .line 739
    .end local v5    # "x":Ljava/lang/Throwable;
    :goto_0
    invoke-interface {p2, v3, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    #@26
    .line 740
    if-nez v5, :cond_5

    #@28
    .line 741
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 742
    return v8

    #@2c
    .line 731
    .local v5, "x":Ljava/lang/Throwable;
    :cond_3
    return v7

    #@2d
    .line 736
    :cond_4
    move-object v4, v2

    #@2e
    .line 737
    .local v4, "tr":Ljava/lang/Object;, "TT;"
    move-object v3, v2

    #@2f
    .local v3, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    #@30
    .line 744
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    .end local v4    # "tr":Ljava/lang/Object;, "TT;"
    .end local v5    # "x":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    #@31
    .line 745
    .local v1, "ex":Ljava/lang/Throwable;
    if-nez v5, :cond_7

    #@33
    .line 746
    move-object v5, v1

    #@34
    .line 750
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_5
    :goto_1
    invoke-virtual {p0, v5, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    #@37
    .line 752
    :cond_6
    return v8

    #@38
    .line 747
    .restart local v1    # "ex":Ljava/lang/Throwable;
    :cond_7
    if-eq v5, v1, :cond_5

    #@3a
    .line 748
    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@3d
    goto :goto_1
.end method

.method public whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2137
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public bridge synthetic whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "action"    # Ljava/util/function/BiConsumer;

    #@0
    .prologue
    .line 2135
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2142
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2147
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "action"    # Ljava/util/function/BiConsumer;

    #@0
    .prologue
    .line 2140
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p1, "action"    # Ljava/util/function/BiConsumer;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    .line 2145
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
