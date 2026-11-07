.class public Ljava/util/concurrent/CompletableFuture;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava/util/concurrent/CompletionStage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CompletableFuture$Completion;,
        Ljava/util/concurrent/CompletableFuture$AltResult;,
        Ljava/util/concurrent/CompletableFuture$UniApply;,
        Ljava/util/concurrent/CompletableFuture$UniAccept;,
        Ljava/util/concurrent/CompletableFuture$UniRun;,
        Ljava/util/concurrent/CompletableFuture$UniWhenComplete;,
        Ljava/util/concurrent/CompletableFuture$UniHandle;,
        Ljava/util/concurrent/CompletableFuture$UniExceptionally;,
        Ljava/util/concurrent/CompletableFuture$UniComposeExceptionally;,
        Ljava/util/concurrent/CompletableFuture$UniRelay;,
        Ljava/util/concurrent/CompletableFuture$MinimalStage;,
        Ljava/util/concurrent/CompletableFuture$UniCompose;,
        Ljava/util/concurrent/CompletableFuture$CoCompletion;,
        Ljava/util/concurrent/CompletableFuture$BiCompletion;,
        Ljava/util/concurrent/CompletableFuture$BiApply;,
        Ljava/util/concurrent/CompletableFuture$BiAccept;,
        Ljava/util/concurrent/CompletableFuture$BiRun;,
        Ljava/util/concurrent/CompletableFuture$BiRelay;,
        Ljava/util/concurrent/CompletableFuture$OrApply;,
        Ljava/util/concurrent/CompletableFuture$OrAccept;,
        Ljava/util/concurrent/CompletableFuture$OrRun;,
        Ljava/util/concurrent/CompletableFuture$AsyncSupply;,
        Ljava/util/concurrent/CompletableFuture$AsyncRun;,
        Ljava/util/concurrent/CompletableFuture$Signaller;,
        Ljava/util/concurrent/CompletableFuture$AnyOf;,
        Ljava/util/concurrent/CompletableFuture$Canceller;,
        Ljava/util/concurrent/CompletableFuture$Timeout;,
        Ljava/util/concurrent/CompletableFuture$Delayer;,
        Ljava/util/concurrent/CompletableFuture$DelayedCompleter;,
        Ljava/util/concurrent/CompletableFuture$DelayedExecutor;,
        Ljava/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;,
        Ljava/util/concurrent/CompletableFuture$TaskSubmitter;,
        Ljava/util/concurrent/CompletableFuture$UniCompletion;,
        Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;",
        "Ljava/util/concurrent/CompletionStage<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final greylist-max-o ASYNC:I = 0x1

.field private static final greylist-max-o ASYNC_POOL:Ljava/util/concurrent/Executor;

.field static final greylist-max-o NESTED:I = -0x1

.field private static final blacklist NEXT:Ljava/lang/invoke/VarHandle;

.field static final greylist-max-o NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

.field private static final blacklist RESULT:Ljava/lang/invoke/VarHandle;

.field private static final blacklist STACK:Ljava/lang/invoke/VarHandle;

.field static final greylist-max-o SYNC:I

.field private static final greylist-max-o USE_COMMON_POOL:Z


# instance fields
.field volatile greylist-max-o result:Ljava/lang/Object;

.field volatile greylist-max-o stack:Ljava/util/concurrent/CompletableFuture$Completion;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 268
    const-class v0, Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    sput-object v1, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    .line 407
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_12

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    sput-boolean v3, Ljava/util/concurrent/CompletableFuture;->USE_COMMON_POOL:Z

    .line 413
    sget-boolean v1, Ljava/util/concurrent/CompletableFuture;->USE_COMMON_POOL:Z

    if-eqz v1, :cond_1e

    .line 414
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v1

    goto :goto_23

    :cond_1e
    new-instance v1, Ljava/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;-><init>(Ljava/util/concurrent/CompletableFuture-IA;)V

    :goto_23
    sput-object v1, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    .line 3003
    :try_start_25
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 3004
    .local v1, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-string v2, "result"

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/CompletableFuture;->RESULT:Ljava/lang/invoke/VarHandle;

    .line 3005
    const-string v2, "stack"

    const-class v3, Ljava/util/concurrent/CompletableFuture$Completion;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/CompletableFuture;->STACK:Ljava/lang/invoke/VarHandle;

    .line 3006
    const-class v0, Ljava/util/concurrent/CompletableFuture$Completion;

    const-string v2, "next"

    const-class v3, Ljava/util/concurrent/CompletableFuture$Completion;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/CompletableFuture;->NEXT:Ljava/lang/invoke/VarHandle;
    :try_end_49
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_25 .. :try_end_49} :catch_4d

    .line 3009
    .end local v1    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 3013
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 3014
    return-void

    .line 3007
    :catch_4d
    move-exception v0

    .line 3008
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 1944
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1945
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Object;

    .line 1950
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1951
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->RESULT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)V

    .line 1952
    return-void
.end method

.method public static varargs whitelist test-api allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2439
    .local p0, "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/concurrent/CompletableFuture;->andTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o andTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;
    .registers 12
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;II)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1486
    .local p0, "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1487
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-le p1, p2, :cond_d

    .line 1488
    sget-object v1, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    iput-object v1, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto/16 :goto_6a

    .line 1491
    :cond_d
    add-int v1, p1, p2

    ushr-int/lit8 v1, v1, 0x1

    .line 1492
    .local v1, "mid":I
    if-ne p1, v1, :cond_16

    aget-object v2, p0, p1

    goto :goto_1a

    .line 1493
    :cond_16
    invoke-static {p0, p1, v1}, Ljava/util/concurrent/CompletableFuture;->andTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    :goto_1a
    move-object v3, v2

    .local v3, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v2, :cond_6b

    .line 1494
    if-ne p1, p2, :cond_21

    move-object v2, v3

    goto :goto_2e

    :cond_21
    add-int/lit8 v2, v1, 0x1

    if-ne p2, v2, :cond_28

    aget-object v2, p0, p2

    goto :goto_2e

    .line 1495
    :cond_28
    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, v2, p2}, Ljava/util/concurrent/CompletableFuture;->andTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    :goto_2e
    move-object v4, v2

    .local v4, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v2, :cond_6b

    .line 1497
    iget-object v2, v3, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v5, v2

    .local v5, "r":Ljava/lang/Object;
    if-eqz v2, :cond_62

    iget-object v2, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v6, v2

    .local v6, "s":Ljava/lang/Object;
    if-nez v2, :cond_3c

    goto :goto_62

    .line 1499
    :cond_3c
    instance-of v2, v5, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v2, :cond_49

    move-object v2, v5

    .local v2, "z":Ljava/lang/Object;
    move-object v7, v5

    check-cast v7, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v8, v7

    .local v8, "x":Ljava/lang/Throwable;
    if-nez v7, :cond_56

    .end local v2    # "z":Ljava/lang/Object;
    .end local v8    # "x":Ljava/lang/Throwable;
    :cond_49
    instance-of v2, v6, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v2, :cond_5d

    move-object v2, v6

    .restart local v2    # "z":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v8, v7

    .restart local v8    # "x":Ljava/lang/Throwable;
    if-eqz v7, :cond_5d

    .line 1503
    :cond_56
    invoke-static {v8, v2}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_6a

    .line 1505
    .end local v2    # "z":Ljava/lang/Object;
    .end local v8    # "x":Ljava/lang/Throwable;
    :cond_5d
    sget-object v2, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    iput-object v2, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_6a

    .line 1498
    .end local v6    # "s":Ljava/lang/Object;
    :cond_62
    :goto_62
    new-instance v2, Ljava/util/concurrent/CompletableFuture$BiRelay;

    invoke-direct {v2, v0, v3, v4}, Ljava/util/concurrent/CompletableFuture$BiRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/CompletableFuture;->bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1507
    .end local v1    # "mid":I
    .end local v3    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v5    # "r":Ljava/lang/Object;
    :goto_6a
    return-object v0

    .line 1496
    .restart local v1    # "mid":I
    .restart local v3    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_6b
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
.end method

.method public static varargs whitelist test-api anyOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2459
    .local p0, "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    array-length v0, p0

    move v1, v0

    .local v1, "n":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_15

    .line 2460
    if-nez v1, :cond_e

    .line 2461
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    goto :goto_14

    .line 2462
    :cond_e
    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->uniCopyStage(Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 2460
    :goto_14
    return-object v0

    .line 2463
    :cond_15
    array-length v0, p0

    move v4, v2

    :goto_17
    if-ge v4, v0, :cond_2d

    aget-object v5, p0, v4

    .line 2464
    .local v5, "cf":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    iget-object v6, v5, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v7, v6

    .local v7, "r":Ljava/lang/Object;
    if-eqz v6, :cond_2a

    .line 2465
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-static {v7}, Ljava/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 2463
    .end local v5    # "cf":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 2466
    .end local v7    # "r":Ljava/lang/Object;
    :cond_2d
    invoke-virtual {p0}, [Ljava/util/concurrent/CompletableFuture;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, [Ljava/util/concurrent/CompletableFuture;

    .line 2467
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2468
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Object;>;"
    array-length v4, p0

    :goto_3a
    if-ge v2, v4, :cond_49

    aget-object v5, p0, v2

    .line 2469
    .restart local v5    # "cf":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    new-instance v6, Ljava/util/concurrent/CompletableFuture$AnyOf;

    invoke-direct {v6, v0, v5, p0}, Ljava/util/concurrent/CompletableFuture$AnyOf;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;[Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CompletableFuture;->unipush(Ljava/util/concurrent/CompletableFuture$Completion;)V

    .line 2468
    .end local v5    # "cf":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 2473
    :cond_49
    iget-object v2, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v2, :cond_69

    .line 2474
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v4, p0

    .local v4, "len":I
    :goto_4f
    if-ge v2, v4, :cond_69

    .line 2475
    aget-object v5, p0, v2

    iget-object v5, v5, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v5, :cond_67

    .line 2476
    :cond_57
    :goto_57
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v4, :cond_67

    .line 2477
    aget-object v5, p0, v2

    iget-object v5, v5, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v5, :cond_57

    .line 2478
    aget-object v5, p0, v2

    invoke-virtual {v5}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    goto :goto_57

    .line 2474
    :cond_67
    add-int/2addr v2, v3

    goto :goto_4f

    .line 2479
    .end local v2    # "i":I
    .end local v4    # "len":I
    :cond_69
    return-object v0
.end method

.method static greylist-max-o asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p0, "e"    # Ljava/util/concurrent/Executor;
    .param p1, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1792
    if-eqz p1, :cond_10

    .line 1793
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1794
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    new-instance v1, Ljava/util/concurrent/CompletableFuture$AsyncRun;

    invoke-direct {v1, v0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncRun;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1795
    return-object v0

    .line 1792
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static greylist-max-o asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p0, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Supplier<",
            "TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 1756
    .local p1, "f":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TU;>;"
    if-eqz p1, :cond_10

    .line 1757
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1758
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    new-instance v1, Ljava/util/concurrent/CompletableFuture$AsyncSupply;

    invoke-direct {v1, v0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncSupply;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Supplier;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1759
    return-object v0

    .line 1756
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o biAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 13
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;",
            "Ljava/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1375
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    .local p3, "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    if-eqz p3, :cond_50

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    move-object v5, v0

    .local v5, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v0, :cond_4c

    .line 1377
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    .line 1378
    .local v3, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v7, v0

    .local v7, "r":Ljava/lang/Object;
    if-eqz v0, :cond_40

    iget-object v0, v5, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v8, v0

    .local v8, "s":Ljava/lang/Object;
    if-nez v0, :cond_19

    move-object v6, p3

    goto :goto_41

    .line 1380
    :cond_19
    if-nez p1, :cond_23

    .line 1381
    const/4 v0, 0x0

    invoke-virtual {v3, v7, v8, p3, v0}, Ljava/util/concurrent/CompletableFuture;->biAccept(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$BiAccept;)Z

    move-object v4, p0

    move-object v2, p1

    move-object v6, p3

    goto :goto_4b

    .line 1384
    :cond_23
    :try_start_23
    new-instance v1, Ljava/util/concurrent/CompletableFuture$BiAccept;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_34

    const/4 v2, 0x0

    move-object v4, p0

    move-object v6, p3

    .end local p3    # "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    .local v6, "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    :try_start_28
    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/CompletableFuture$BiAccept;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_31

    .line 1387
    move-object v4, p0

    move-object v2, p1

    goto :goto_4b

    .line 1385
    :catchall_31
    move-exception v0

    move-object p3, v0

    goto :goto_37

    .end local v6    # "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    .restart local p3    # "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    :catchall_34
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 1386
    .restart local v6    # "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    .local p3, "ex":Ljava/lang/Throwable;
    :goto_37
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object v0

    iput-object v0, v3, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v4, p0

    move-object v2, p1

    goto :goto_4b

    .line 1378
    .end local v6    # "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    .end local v8    # "s":Ljava/lang/Object;
    .local p3, "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    :cond_40
    move-object v6, p3

    .line 1379
    .end local p3    # "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    .restart local v6    # "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    :goto_41
    new-instance v1, Ljava/util/concurrent/CompletableFuture$BiAccept;

    move-object v4, p0

    move-object v2, p1

    .end local p1    # "e":Ljava/util/concurrent/Executor;
    .local v2, "e":Ljava/util/concurrent/Executor;
    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/CompletableFuture$BiAccept;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)V

    invoke-virtual {p0, v5, v1}, Ljava/util/concurrent/CompletableFuture;->bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1388
    :goto_4b
    return-object v3

    .line 1375
    .end local v2    # "e":Ljava/util/concurrent/Executor;
    .end local v3    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v6    # "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    .end local v7    # "r":Ljava/lang/Object;
    .restart local p1    # "e":Ljava/util/concurrent/Executor;
    .restart local p3    # "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    :cond_4c
    move-object v4, p0

    move-object v2, p1

    move-object v6, p3

    .end local p1    # "e":Ljava/util/concurrent/Executor;
    .end local p3    # "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    .restart local v2    # "e":Ljava/util/concurrent/Executor;
    .restart local v6    # "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    goto :goto_53

    .end local v2    # "e":Ljava/util/concurrent/Executor;
    .end local v5    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    .end local v6    # "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    .restart local p1    # "e":Ljava/util/concurrent/Executor;
    .restart local p3    # "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    :cond_50
    move-object v4, p0

    move-object v2, p1

    move-object v6, p3

    .line 1376
    .end local p1    # "e":Ljava/util/concurrent/Executor;
    .end local p3    # "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    .restart local v2    # "e":Ljava/util/concurrent/Executor;
    .restart local v6    # "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    :goto_53
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private greylist-max-o biApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 13
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 1299
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    .local p3, "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    if-eqz p3, :cond_50

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    move-object v5, v0

    .local v5, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v0, :cond_4c

    .line 1301
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    .line 1302
    .local v3, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v7, v0

    .local v7, "r":Ljava/lang/Object;
    if-eqz v0, :cond_40

    iget-object v0, v5, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v8, v0

    .local v8, "s":Ljava/lang/Object;
    if-nez v0, :cond_19

    move-object v6, p3

    goto :goto_41

    .line 1304
    :cond_19
    if-nez p1, :cond_23

    .line 1305
    const/4 v0, 0x0

    invoke-virtual {v3, v7, v8, p3, v0}, Ljava/util/concurrent/CompletableFuture;->biApply(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture$BiApply;)Z

    move-object v4, p0

    move-object v2, p1

    move-object v6, p3

    goto :goto_4b

    .line 1308
    :cond_23
    :try_start_23
    new-instance v1, Ljava/util/concurrent/CompletableFuture$BiApply;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_34

    const/4 v2, 0x0

    move-object v4, p0

    move-object v6, p3

    .end local p3    # "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    .local v6, "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    :try_start_28
    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/CompletableFuture$BiApply;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_31

    .line 1311
    move-object v4, p0

    move-object v2, p1

    goto :goto_4b

    .line 1309
    :catchall_31
    move-exception v0

    move-object p3, v0

    goto :goto_37

    .end local v6    # "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    .restart local p3    # "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    :catchall_34
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 1310
    .restart local v6    # "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    .local p3, "ex":Ljava/lang/Throwable;
    :goto_37
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object v0

    iput-object v0, v3, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v4, p0

    move-object v2, p1

    goto :goto_4b

    .line 1302
    .end local v6    # "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    .end local v8    # "s":Ljava/lang/Object;
    .local p3, "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    :cond_40
    move-object v6, p3

    .line 1303
    .end local p3    # "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    .restart local v6    # "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    :goto_41
    new-instance v1, Ljava/util/concurrent/CompletableFuture$BiApply;

    move-object v4, p0

    move-object v2, p1

    .end local p1    # "e":Ljava/util/concurrent/Executor;
    .local v2, "e":Ljava/util/concurrent/Executor;
    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/CompletableFuture$BiApply;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;)V

    invoke-virtual {p0, v5, v1}, Ljava/util/concurrent/CompletableFuture;->bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1312
    :goto_4b
    return-object v3

    .line 1299
    .end local v2    # "e":Ljava/util/concurrent/Executor;
    .end local v3    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .end local v6    # "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    .end local v7    # "r":Ljava/lang/Object;
    .restart local p1    # "e":Ljava/util/concurrent/Executor;
    .restart local p3    # "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    :cond_4c
    move-object v4, p0

    move-object v2, p1

    move-object v6, p3

    .end local p1    # "e":Ljava/util/concurrent/Executor;
    .end local p3    # "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    .restart local v2    # "e":Ljava/util/concurrent/Executor;
    .restart local v6    # "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    goto :goto_53

    .end local v2    # "e":Ljava/util/concurrent/Executor;
    .end local v5    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    .end local v6    # "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    .restart local p1    # "e":Ljava/util/concurrent/Executor;
    .restart local p3    # "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    :cond_50
    move-object v4, p0

    move-object v2, p1

    move-object v6, p3

    .line 1300
    .end local p1    # "e":Ljava/util/concurrent/Executor;
    .end local p3    # "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    .restart local v2    # "e":Ljava/util/concurrent/Executor;
    .restart local v6    # "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    :goto_53
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private greylist-max-o biRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 13
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .param p3, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1438
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    if-eqz p3, :cond_50

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    move-object v5, v0

    .local v5, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v0, :cond_4c

    .line 1440
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    .line 1441
    .local v3, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v7, v0

    .local v7, "r":Ljava/lang/Object;
    if-eqz v0, :cond_40

    iget-object v0, v5, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v8, v0

    .local v8, "s":Ljava/lang/Object;
    if-nez v0, :cond_19

    move-object v6, p3

    goto :goto_41

    .line 1443
    :cond_19
    if-nez p1, :cond_23

    .line 1444
    const/4 v0, 0x0

    invoke-virtual {v3, v7, v8, p3, v0}, Ljava/util/concurrent/CompletableFuture;->biRun(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$BiRun;)Z

    move-object v4, p0

    move-object v2, p1

    move-object v6, p3

    goto :goto_4b

    .line 1447
    :cond_23
    :try_start_23
    new-instance v1, Ljava/util/concurrent/CompletableFuture$BiRun;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_34

    const/4 v2, 0x0

    move-object v4, p0

    move-object v6, p3

    .end local p3    # "f":Ljava/lang/Runnable;
    .local v6, "f":Ljava/lang/Runnable;
    :try_start_28
    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/CompletableFuture$BiRun;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_31

    .line 1450
    move-object v4, p0

    move-object v2, p1

    goto :goto_4b

    .line 1448
    :catchall_31
    move-exception v0

    move-object p3, v0

    goto :goto_37

    .end local v6    # "f":Ljava/lang/Runnable;
    .restart local p3    # "f":Ljava/lang/Runnable;
    :catchall_34
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    .line 1449
    .restart local v6    # "f":Ljava/lang/Runnable;
    .local p3, "ex":Ljava/lang/Throwable;
    :goto_37
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object v0

    iput-object v0, v3, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v4, p0

    move-object v2, p1

    goto :goto_4b

    .line 1441
    .end local v6    # "f":Ljava/lang/Runnable;
    .end local v8    # "s":Ljava/lang/Object;
    .local p3, "f":Ljava/lang/Runnable;
    :cond_40
    move-object v6, p3

    .line 1442
    .end local p3    # "f":Ljava/lang/Runnable;
    .restart local v6    # "f":Ljava/lang/Runnable;
    :goto_41
    new-instance v1, Ljava/util/concurrent/CompletableFuture$BiRun;

    move-object v4, p0

    move-object v2, p1

    .end local p1    # "e":Ljava/util/concurrent/Executor;
    .local v2, "e":Ljava/util/concurrent/Executor;
    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/CompletableFuture$BiRun;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v5, v1}, Ljava/util/concurrent/CompletableFuture;->bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1451
    :goto_4b
    return-object v3

    .line 1438
    .end local v2    # "e":Ljava/util/concurrent/Executor;
    .end local v3    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v6    # "f":Ljava/lang/Runnable;
    .end local v7    # "r":Ljava/lang/Object;
    .restart local p1    # "e":Ljava/util/concurrent/Executor;
    .restart local p3    # "f":Ljava/lang/Runnable;
    :cond_4c
    move-object v4, p0

    move-object v2, p1

    move-object v6, p3

    .end local p1    # "e":Ljava/util/concurrent/Executor;
    .end local p3    # "f":Ljava/lang/Runnable;
    .restart local v2    # "e":Ljava/util/concurrent/Executor;
    .restart local v6    # "f":Ljava/lang/Runnable;
    goto :goto_53

    .end local v2    # "e":Ljava/util/concurrent/Executor;
    .end local v5    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v6    # "f":Ljava/lang/Runnable;
    .restart local p1    # "e":Ljava/util/concurrent/Executor;
    .restart local p3    # "f":Ljava/lang/Runnable;
    :cond_50
    move-object v4, p0

    move-object v2, p1

    move-object v6, p3

    .line 1439
    .end local p1    # "e":Ljava/util/concurrent/Executor;
    .end local p3    # "f":Ljava/lang/Runnable;
    .restart local v2    # "e":Ljava/util/concurrent/Executor;
    .restart local v6    # "f":Ljava/lang/Runnable;
    :goto_53
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static whitelist test-api completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2021
    .local p0, "value":Ljava/lang/Object;, "TU;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    if-nez p0, :cond_7

    sget-object v1, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    goto :goto_8

    :cond_7
    move-object v1, p0

    :goto_8
    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api completedStage(Ljava/lang/Object;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation

    .line 2818
    .local p0, "value":Ljava/lang/Object;, "TU;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    if-nez p0, :cond_7

    sget-object v1, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    goto :goto_8

    :cond_7
    move-object v1, p0

    :goto_8
    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api delayedExecutor(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Executor;
    .registers 5
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 2802
    if-eqz p2, :cond_a

    .line 2804
    new-instance v0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;

    sget-object v1, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V

    return-object v0

    .line 2803
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api delayedExecutor(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .registers 5
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 2784
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    .line 2786
    new-instance v0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V

    return-object v0

    .line 2785
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static greylist-max-o encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "r"    # Ljava/lang/Object;

    .line 341
    instance-of v0, p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_1b

    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .local v1, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_1b

    instance-of v0, v1, Ljava/util/concurrent/CompletionException;

    if-nez v0, :cond_1b

    .line 344
    new-instance v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    new-instance v2, Ljava/util/concurrent/CompletionException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    .line 345
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_1b
    return-object p0
.end method

.method static greylist-max-o encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "x"    # Ljava/lang/Throwable;
    .param p1, "r"    # Ljava/lang/Object;

    .line 307
    instance-of v0, p0, Ljava/util/concurrent/CompletionException;

    if-nez v0, :cond_b

    .line 308
    new-instance v0, Ljava/util/concurrent/CompletionException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_17

    .line 309
    :cond_b
    instance-of v0, p1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_17

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-ne p0, v0, :cond_17

    .line 310
    return-object p1

    .line 311
    :cond_17
    :goto_17
    new-instance v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static greylist-max-o encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;
    .registers 3
    .param p0, "x"    # Ljava/lang/Throwable;

    .line 290
    new-instance v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    instance-of v1, p0, Ljava/util/concurrent/CompletionException;

    if-eqz v1, :cond_8

    move-object v1, p0

    goto :goto_d

    .line 291
    :cond_8
    new-instance v1, Ljava/util/concurrent/CompletionException;

    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    :goto_d
    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    .line 290
    return-object v0
.end method

.method public static whitelist test-api failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p0, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2831
    if-eqz p0, :cond_d

    .line 2832
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 2831
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api failedStage(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .param p0, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation

    .line 2846
    if-eqz p0, :cond_d

    .line 2847
    new-instance v0, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 2846
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o orAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 12
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;>(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1625
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    .local p3, "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-eqz p3, :cond_33

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    move-object v5, v0

    .local v5, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v0, :cond_30

    .line 1629
    move-object v0, p0

    .local v0, "z":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-nez v1, :cond_29

    move-object v0, v5

    iget-object v1, v5, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v7, v1

    .end local v2    # "r":Ljava/lang/Object;
    .local v7, "r":Ljava/lang/Object;
    if-eqz v1, :cond_19

    move-object v4, p0

    move-object v6, p3

    move-object v2, v7

    goto :goto_2b

    .line 1633
    :cond_19
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    .line 1634
    .local v3, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    new-instance v1, Ljava/util/concurrent/CompletableFuture$OrAccept;

    move-object v4, p0

    move-object v2, p1

    move-object v6, p3

    .end local p1    # "e":Ljava/util/concurrent/Executor;
    .end local p3    # "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    .local v2, "e":Ljava/util/concurrent/Executor;
    .local v6, "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/CompletableFuture$OrAccept;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;)V

    .end local v2    # "e":Ljava/util/concurrent/Executor;
    .restart local p1    # "e":Ljava/util/concurrent/Executor;
    invoke-virtual {p0, v5, v1}, Ljava/util/concurrent/CompletableFuture;->orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1635
    return-object v3

    .line 1629
    .end local v3    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v6    # "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    .end local v7    # "r":Ljava/lang/Object;
    .local v2, "r":Ljava/lang/Object;
    .restart local p3    # "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    :cond_29
    move-object v4, p0

    move-object v6, p3

    .line 1631
    .end local p3    # "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    .restart local v6    # "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    :goto_2b
    invoke-direct {v0, v2, p1, v6}, Ljava/util/concurrent/CompletableFuture;->uniAcceptNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p3

    return-object p3

    .line 1625
    .end local v0    # "z":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .end local v2    # "r":Ljava/lang/Object;
    .end local v6    # "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    .restart local p3    # "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    :cond_30
    move-object v4, p0

    move-object v6, p3

    .end local p3    # "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    .restart local v6    # "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    goto :goto_35

    .end local v5    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    .end local v6    # "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    .restart local p3    # "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    :cond_33
    move-object v4, p0

    move-object v6, p3

    .line 1626
    .end local p3    # "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    .restart local v6    # "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    :goto_35
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method private greylist-max-o orApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 12
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 1571
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    .local p3, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    if-eqz p3, :cond_33

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    move-object v5, v0

    .local v5, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v0, :cond_30

    .line 1575
    move-object v0, p0

    .local v0, "z":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-nez v1, :cond_29

    move-object v0, v5

    iget-object v1, v5, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v7, v1

    .end local v2    # "r":Ljava/lang/Object;
    .local v7, "r":Ljava/lang/Object;
    if-eqz v1, :cond_19

    move-object v4, p0

    move-object v6, p3

    move-object v2, v7

    goto :goto_2b

    .line 1579
    :cond_19
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    .line 1580
    .local v3, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    new-instance v1, Ljava/util/concurrent/CompletableFuture$OrApply;

    move-object v4, p0

    move-object v2, p1

    move-object v6, p3

    .end local p1    # "e":Ljava/util/concurrent/Executor;
    .end local p3    # "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    .local v2, "e":Ljava/util/concurrent/Executor;
    .local v6, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/CompletableFuture$OrApply;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    .end local v2    # "e":Ljava/util/concurrent/Executor;
    .restart local p1    # "e":Ljava/util/concurrent/Executor;
    invoke-virtual {p0, v5, v1}, Ljava/util/concurrent/CompletableFuture;->orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1581
    return-object v3

    .line 1575
    .end local v3    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .end local v6    # "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    .end local v7    # "r":Ljava/lang/Object;
    .local v2, "r":Ljava/lang/Object;
    .restart local p3    # "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    :cond_29
    move-object v4, p0

    move-object v6, p3

    .line 1577
    .end local p3    # "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    .restart local v6    # "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    :goto_2b
    invoke-direct {v0, v2, p1, v6}, Ljava/util/concurrent/CompletableFuture;->uniApplyNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p3

    return-object p3

    .line 1571
    .end local v0    # "z":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .end local v2    # "r":Ljava/lang/Object;
    .end local v6    # "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    .restart local p3    # "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    :cond_30
    move-object v4, p0

    move-object v6, p3

    .end local p3    # "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    .restart local v6    # "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    goto :goto_35

    .end local v5    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    .end local v6    # "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    .restart local p3    # "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    :cond_33
    move-object v4, p0

    move-object v6, p3

    .line 1572
    .end local p3    # "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    .restart local v6    # "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    :goto_35
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method private greylist-max-o orRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 12
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .param p3, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1676
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    if-eqz p3, :cond_33

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    move-object v5, v0

    .local v5, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v0, :cond_30

    .line 1680
    move-object v0, p0

    .local v0, "z":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-nez v1, :cond_29

    move-object v0, v5

    iget-object v1, v5, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v7, v1

    .end local v2    # "r":Ljava/lang/Object;
    .local v7, "r":Ljava/lang/Object;
    if-eqz v1, :cond_19

    move-object v4, p0

    move-object v6, p3

    move-object v2, v7

    goto :goto_2b

    .line 1684
    :cond_19
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    .line 1685
    .local v3, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    new-instance v1, Ljava/util/concurrent/CompletableFuture$OrRun;

    move-object v4, p0

    move-object v2, p1

    move-object v6, p3

    .end local p1    # "e":Ljava/util/concurrent/Executor;
    .end local p3    # "f":Ljava/lang/Runnable;
    .local v2, "e":Ljava/util/concurrent/Executor;
    .local v6, "f":Ljava/lang/Runnable;
    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/CompletableFuture$OrRun;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    .end local v2    # "e":Ljava/util/concurrent/Executor;
    .restart local p1    # "e":Ljava/util/concurrent/Executor;
    invoke-virtual {p0, v5, v1}, Ljava/util/concurrent/CompletableFuture;->orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1686
    return-object v3

    .line 1680
    .end local v3    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v6    # "f":Ljava/lang/Runnable;
    .end local v7    # "r":Ljava/lang/Object;
    .local v2, "r":Ljava/lang/Object;
    .restart local p3    # "f":Ljava/lang/Runnable;
    :cond_29
    move-object v4, p0

    move-object v6, p3

    .line 1682
    .end local p3    # "f":Ljava/lang/Runnable;
    .restart local v6    # "f":Ljava/lang/Runnable;
    :goto_2b
    invoke-direct {v0, v2, p1, v6}, Ljava/util/concurrent/CompletableFuture;->uniRunNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p3

    return-object p3

    .line 1676
    .end local v0    # "z":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v2    # "r":Ljava/lang/Object;
    .end local v6    # "f":Ljava/lang/Runnable;
    .restart local p3    # "f":Ljava/lang/Runnable;
    :cond_30
    move-object v4, p0

    move-object v6, p3

    .end local p3    # "f":Ljava/lang/Runnable;
    .restart local v6    # "f":Ljava/lang/Runnable;
    goto :goto_35

    .end local v5    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v6    # "f":Ljava/lang/Runnable;
    .restart local p3    # "f":Ljava/lang/Runnable;
    :cond_33
    move-object v4, p0

    move-object v6, p3

    .line 1677
    .end local p3    # "f":Ljava/lang/Runnable;
    .restart local v6    # "f":Ljava/lang/Runnable;
    :goto_35
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method private static greylist-max-o reportGet(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "r"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 361
    if-eqz p0, :cond_2b

    .line 363
    instance-of v0, p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_2a

    .line 365
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .local v1, "x":Ljava/lang/Throwable;
    if-nez v0, :cond_10

    .line 366
    const/4 v0, 0x0

    return-object v0

    .line 367
    :cond_10
    instance-of v0, v1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_26

    .line 369
    instance-of v0, v1, Ljava/util/concurrent/CompletionException;

    if-eqz v0, :cond_20

    .line 370
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object v2, v0

    .local v2, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_20

    .line 371
    move-object v1, v2

    .line 372
    .end local v2    # "cause":Ljava/lang/Throwable;
    :cond_20
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 368
    :cond_26
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    throw v0

    .line 374
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_2a
    return-object p0

    .line 362
    :cond_2b
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method private static greylist-max-o reportJoin(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "r"    # Ljava/lang/Object;

    .line 381
    instance-of v0, p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_24

    .line 383
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .local v1, "x":Ljava/lang/Throwable;
    if-nez v0, :cond_e

    .line 384
    const/4 v0, 0x0

    return-object v0

    .line 385
    :cond_e
    instance-of v0, v1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_20

    .line 387
    instance-of v0, v1, Ljava/util/concurrent/CompletionException;

    if-eqz v0, :cond_1a

    .line 388
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/CompletionException;

    throw v0

    .line 389
    :cond_1a
    new-instance v0, Ljava/util/concurrent/CompletionException;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 386
    :cond_20
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    throw v0

    .line 391
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_24
    return-object p0
.end method

.method public static whitelist test-api runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1994
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2009
    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .registers 2
    .param p0, "e"    # Ljava/util/concurrent/Executor;

    .line 429
    sget-boolean v0, Ljava/util/concurrent/CompletableFuture;->USE_COMMON_POOL:Z

    if-nez v0, :cond_d

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    if-ne p0, v0, :cond_d

    .line 430
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    return-object v0

    .line 431
    :cond_d
    if-eqz p0, :cond_10

    .line 432
    return-object p0

    .line 431
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 1965
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TU;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 1981
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TU;>;"
    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o timedGet(J)Ljava/lang/Object;
    .registers 19
    .param p1, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1894
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long v2, v2, p1

    .line 1895
    .local v2, "d":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_11

    const-wide/16 v6, 0x1

    goto :goto_12

    :cond_11
    move-wide v6, v2

    :goto_12
    move-wide v12, v6

    .line 1896
    .local v12, "deadline":J
    const/4 v0, 0x0

    .local v0, "interrupted":Z
    const/4 v6, 0x0

    .line 1897
    .local v6, "queued":Z
    const/4 v7, 0x0

    .line 1898
    .local v7, "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    const/4 v8, 0x0

    move-wide/from16 v10, p1

    .line 1900
    .end local p1    # "nanos":J
    .local v8, "r":Ljava/lang/Object;
    .local v10, "nanos":J
    :goto_19
    if-nez v0, :cond_6d

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    move v14, v9

    .end local v0    # "interrupted":Z
    .local v14, "interrupted":Z
    if-eqz v9, :cond_24

    .line 1901
    move v0, v14

    goto :goto_6d

    .line 1902
    :cond_24
    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v15, v0

    .end local v8    # "r":Ljava/lang/Object;
    .local v15, "r":Ljava/lang/Object;
    if-eqz v0, :cond_2a

    .line 1903
    goto :goto_2f

    .line 1904
    :cond_2a
    cmp-long v0, v10, v4

    if-gtz v0, :cond_32

    .line 1905
    nop

    .line 1923
    :goto_2f
    move v0, v14

    move-object v8, v15

    goto :goto_6d

    .line 1906
    :cond_32
    if-nez v7, :cond_4d

    .line 1907
    new-instance v8, Ljava/util/concurrent/CompletableFuture$Signaller;

    const/4 v9, 0x1

    invoke-direct/range {v8 .. v13}, Ljava/util/concurrent/CompletableFuture$Signaller;-><init>(ZJJ)V

    move-object v7, v8

    .line 1908
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_4a

    .line 1909
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/util/concurrent/ForkJoinPool;->helpAsyncBlocker(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V

    .line 1900
    :cond_4a
    move v0, v14

    move-object v8, v15

    goto :goto_19

    .line 1911
    :cond_4d
    if-nez v6, :cond_56

    .line 1912
    invoke-virtual {v1, v7}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v6

    move v0, v14

    move-object v8, v15

    goto :goto_19

    .line 1915
    :cond_56
    :try_start_56
    invoke-static {v7}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V

    .line 1916
    iget-boolean v0, v7, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_5b} :catch_67

    move v8, v0

    .line 1917
    .end local v14    # "interrupted":Z
    .local v8, "interrupted":Z
    :try_start_5c
    iget-wide v4, v7, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_5e} :catch_64

    move-wide v10, v4

    .line 1920
    move v0, v8

    move-object v8, v15

    const-wide/16 v4, 0x0

    goto :goto_19

    .line 1918
    :catch_64
    move-exception v0

    move v14, v8

    goto :goto_68

    .end local v8    # "interrupted":Z
    .restart local v14    # "interrupted":Z
    :catch_67
    move-exception v0

    .line 1919
    .local v0, "ie":Ljava/lang/InterruptedException;
    :goto_68
    const/4 v0, 0x1

    .line 1920
    .end local v14    # "interrupted":Z
    .local v0, "interrupted":Z
    move-object v8, v15

    const-wide/16 v4, 0x0

    goto :goto_19

    .line 1923
    .end local v15    # "r":Ljava/lang/Object;
    .local v8, "r":Ljava/lang/Object;
    :cond_6d
    :goto_6d
    const/4 v4, 0x0

    if-eqz v7, :cond_77

    .line 1924
    iput-object v4, v7, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    .line 1925
    if-nez v8, :cond_77

    .line 1926
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    .line 1928
    :cond_77
    if-eqz v8, :cond_86

    .line 1929
    if-eqz v0, :cond_82

    .line 1930
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1931
    :cond_82
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 1932
    return-object v8

    .line 1933
    :cond_86
    if-eqz v0, :cond_89

    .line 1934
    return-object v4

    .line 1936
    :cond_89
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v4
.end method

.method private blacklist uniAcceptNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 7
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 720
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p3, "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 721
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    instance-of v1, p1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_18

    .line 722
    move-object v1, p1

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v2, v1

    .local v2, "x":Ljava/lang/Throwable;
    if-eqz v1, :cond_17

    .line 723
    invoke-static {v2, p1}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 724
    return-object v0

    .line 726
    :cond_17
    const/4 p1, 0x0

    .line 729
    .end local v2    # "x":Ljava/lang/Throwable;
    :cond_18
    if-eqz p2, :cond_24

    .line 730
    :try_start_1a
    new-instance v1, Ljava/util/concurrent/CompletableFuture$UniAccept;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p0, p3}, Ljava/util/concurrent/CompletableFuture$UniAccept;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2c

    .line 732
    :cond_24
    move-object v1, p1

    .line 733
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 734
    sget-object v2, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    iput-object v2, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_2d

    .line 738
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :goto_2c
    goto :goto_34

    .line 736
    :catchall_2d
    move-exception v1

    .line 737
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object v2

    iput-object v2, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 739
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_34
    return-object v0
.end method

.method private greylist-max-o uniAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 708
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-eqz p2, :cond_19

    .line 710
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-eqz v0, :cond_c

    .line 711
    invoke-direct {p0, v1, p1, p2}, Ljava/util/concurrent/CompletableFuture;->uniAcceptNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 712
    :cond_c
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 713
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    new-instance v2, Ljava/util/concurrent/CompletableFuture$UniAccept;

    invoke-direct {v2, p1, v0, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniAccept;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->unipush(Ljava/util/concurrent/CompletableFuture$Completion;)V

    .line 714
    return-object v0

    .line 708
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v1    # "r":Ljava/lang/Object;
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private blacklist uniApplyNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 7
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 647
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p3, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 648
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    instance-of v1, p1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_18

    .line 649
    move-object v1, p1

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v2, v1

    .local v2, "x":Ljava/lang/Throwable;
    if-eqz v1, :cond_17

    .line 650
    invoke-static {v2, p1}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 651
    return-object v0

    .line 653
    :cond_17
    const/4 p1, 0x0

    .line 656
    .end local v2    # "x":Ljava/lang/Throwable;
    :cond_18
    if-eqz p2, :cond_24

    .line 657
    :try_start_1a
    new-instance v1, Ljava/util/concurrent/CompletableFuture$UniApply;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p0, p3}, Ljava/util/concurrent/CompletableFuture$UniApply;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2f

    .line 659
    :cond_24
    move-object v1, p1

    .line 660
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p3, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture;->encodeValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_30

    .line 664
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :goto_2f
    goto :goto_37

    .line 662
    :catchall_30
    move-exception v1

    .line 663
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object v2

    iput-object v2, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 665
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_37
    return-object v0
.end method

.method private greylist-max-o uniApplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 635
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    if-eqz p2, :cond_19

    .line 637
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-eqz v0, :cond_c

    .line 638
    invoke-direct {p0, v1, p1, p2}, Ljava/util/concurrent/CompletableFuture;->uniApplyNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 639
    :cond_c
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 640
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    new-instance v2, Ljava/util/concurrent/CompletableFuture$UniApply;

    invoke-direct {v2, p1, v0, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniApply;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->unipush(Ljava/util/concurrent/CompletableFuture$Completion;)V

    .line 641
    return-object v0

    .line 635
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .end local v1    # "r":Ljava/lang/Object;
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o uniAsMinimalStage()Ljava/util/concurrent/CompletableFuture$MinimalStage;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture$MinimalStage<",
            "TT;>;"
        }
    .end annotation

    .line 1092
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-eqz v0, :cond_f

    .line 1093
    new-instance v0, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 1094
    :cond_f
    new-instance v0, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>()V

    .line 1095
    .local v0, "d":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v2, Ljava/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v2, v0, p0}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->unipush(Ljava/util/concurrent/CompletableFuture$Completion;)V

    .line 1096
    return-object v0
.end method

.method private blacklist uniComposeExceptionallyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 9
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 1038
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+Ljava/util/concurrent/CompletionStage<TT;>;>;"
    if-eqz p2, :cond_58

    .line 1039
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1041
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-nez v1, :cond_14

    .line 1042
    new-instance v1, Ljava/util/concurrent/CompletableFuture$UniComposeExceptionally;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniComposeExceptionally;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->unipush(Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_57

    .line 1043
    :cond_14
    instance-of v1, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_54

    move-object v1, v2

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v3, v1

    .local v3, "x":Ljava/lang/Throwable;
    if-nez v1, :cond_21

    goto :goto_54

    .line 1047
    :cond_21
    if-eqz p1, :cond_2d

    .line 1048
    :try_start_23
    new-instance v1, Ljava/util/concurrent/CompletableFuture$UniComposeExceptionally;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v0, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniComposeExceptionally;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4b

    .line 1050
    :cond_2d
    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CompletionStage;

    invoke-interface {v1}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 1051
    .local v1, "g":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v4, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "s":Ljava/lang/Object;
    if-eqz v4, :cond_43

    .line 1052
    invoke-static {v5}, Ljava/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_4b

    .line 1054
    :cond_43
    new-instance v4, Ljava/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v4, v0, v1}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v1, v4}, Ljava/util/concurrent/CompletableFuture;->unipush(Ljava/util/concurrent/CompletableFuture$Completion;)V
    :try_end_4b
    .catchall {:try_start_23 .. :try_end_4b} :catchall_4c

    .line 1058
    .end local v1    # "g":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .end local v5    # "s":Ljava/lang/Object;
    :goto_4b
    goto :goto_57

    .line 1056
    :catchall_4c
    move-exception v1

    .line 1057
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object v4

    iput-object v4, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_57

    .line 1044
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_54
    :goto_54
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    .line 1059
    :goto_57
    return-object v0

    .line 1038
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .end local v2    # "r":Ljava/lang/Object;
    :cond_58
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o uniComposeStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 9
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TV;>;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 1145
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TV;>;>;"
    if-eqz p2, :cond_5c

    .line 1146
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1148
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-nez v1, :cond_14

    .line 1149
    new-instance v1, Ljava/util/concurrent/CompletableFuture$UniCompose;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniCompose;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->unipush(Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_5b

    .line 1151
    :cond_14
    instance-of v1, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_28

    .line 1152
    move-object v1, v2

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v3, v1

    .local v3, "x":Ljava/lang/Throwable;
    if-eqz v1, :cond_27

    .line 1153
    invoke-static {v3, v2}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 1154
    return-object v0

    .line 1156
    :cond_27
    const/4 v2, 0x0

    .line 1159
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_28
    if-eqz p1, :cond_34

    .line 1160
    :try_start_2a
    new-instance v1, Ljava/util/concurrent/CompletableFuture$UniCompose;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniCompose;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_53

    .line 1162
    :cond_34
    move-object v1, v2

    .line 1163
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/CompletionStage;

    invoke-interface {v3}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    .line 1164
    .local v3, "g":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    iget-object v4, v3, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "s":Ljava/lang/Object;
    if-eqz v4, :cond_4b

    .line 1165
    invoke-static {v5}, Ljava/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_53

    .line 1167
    :cond_4b
    new-instance v4, Ljava/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v4, v0, v3}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CompletableFuture;->unipush(Ljava/util/concurrent/CompletableFuture$Completion;)V
    :try_end_53
    .catchall {:try_start_2a .. :try_end_53} :catchall_54

    .line 1171
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    .end local v3    # "g":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .end local v5    # "s":Ljava/lang/Object;
    :goto_53
    goto :goto_5b

    .line 1169
    :catchall_54
    move-exception v1

    .line 1170
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object v3

    iput-object v3, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 1173
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_5b
    return-object v0

    .line 1145
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .end local v2    # "r":Ljava/lang/Object;
    :cond_5c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static blacklist uniCopyStage(Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "T:TU;>(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 1082
    .local p0, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1083
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-eqz v1, :cond_10

    .line 1084
    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_18

    .line 1086
    :cond_10
    new-instance v1, Ljava/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v1, v0, p0}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->unipush(Ljava/util/concurrent/CompletableFuture$Completion;)V

    .line 1087
    :goto_18
    return-object v0
.end method

.method private blacklist uniExceptionallyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 7
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 978
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+TT;>;"
    if-eqz p2, :cond_2c

    .line 979
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 981
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-nez v1, :cond_14

    .line 982
    new-instance v1, Ljava/util/concurrent/CompletableFuture$UniExceptionally;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniExceptionally;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->unipush(Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_2b

    .line 983
    :cond_14
    const/4 v1, 0x0

    if-nez p1, :cond_1b

    .line 984
    invoke-virtual {v0, v2, p2, v1}, Ljava/util/concurrent/CompletableFuture;->uniExceptionally(Ljava/lang/Object;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniExceptionally;)Z

    goto :goto_2b

    .line 987
    :cond_1b
    :try_start_1b
    new-instance v3, Ljava/util/concurrent/CompletableFuture$UniExceptionally;

    invoke-direct {v3, v1, v0, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniExceptionally;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_24

    .line 990
    goto :goto_2b

    .line 988
    :catchall_24
    move-exception v1

    .line 989
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object v3

    iput-object v3, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 992
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_2b
    return-object v0

    .line 978
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .end local v2    # "r":Ljava/lang/Object;
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o uniHandleStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 7
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 920
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TV;>;"
    if-eqz p2, :cond_2c

    .line 921
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 923
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-nez v1, :cond_14

    .line 924
    new-instance v1, Ljava/util/concurrent/CompletableFuture$UniHandle;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniHandle;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->unipush(Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_2b

    .line 925
    :cond_14
    const/4 v1, 0x0

    if-nez p1, :cond_1b

    .line 926
    invoke-virtual {v0, v2, p2, v1}, Ljava/util/concurrent/CompletableFuture;->uniHandle(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture$UniHandle;)Z

    goto :goto_2b

    .line 929
    :cond_1b
    :try_start_1b
    new-instance v3, Ljava/util/concurrent/CompletableFuture$UniHandle;

    invoke-direct {v3, v1, v0, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniHandle;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_24

    .line 932
    goto :goto_2b

    .line 930
    :catchall_24
    move-exception v1

    .line 931
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object v3

    iput-object v3, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 934
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_2b
    return-object v0

    .line 920
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .end local v2    # "r":Ljava/lang/Object;
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private blacklist uniRunNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 7
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/util/concurrent/Executor;
    .param p3, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 787
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 788
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    instance-of v1, p1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_17

    move-object v1, p1

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v2, v1

    .local v2, "x":Ljava/lang/Throwable;
    if-eqz v1, :cond_17

    .line 789
    invoke-static {v2, p1}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_32

    .line 792
    .end local v2    # "x":Ljava/lang/Throwable;
    :cond_17
    if-eqz p2, :cond_23

    .line 793
    :try_start_19
    new-instance v1, Ljava/util/concurrent/CompletableFuture$UniRun;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p0, p3}, Ljava/util/concurrent/CompletableFuture$UniRun;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2a

    .line 795
    :cond_23
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 796
    sget-object v1, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    iput-object v1, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_2b

    .line 800
    :goto_2a
    goto :goto_32

    .line 798
    :catchall_2b
    move-exception v1

    .line 799
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object v2

    iput-object v2, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 801
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_32
    return-object v0
.end method

.method private greylist-max-o uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .param p2, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 776
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz p2, :cond_19

    .line 778
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-eqz v0, :cond_c

    .line 779
    invoke-direct {p0, v1, p1, p2}, Ljava/util/concurrent/CompletableFuture;->uniRunNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 780
    :cond_c
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 781
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    new-instance v2, Ljava/util/concurrent/CompletableFuture$UniRun;

    invoke-direct {v2, p1, v0, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniRun;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->unipush(Ljava/util/concurrent/CompletableFuture$Completion;)V

    .line 782
    return-object v0

    .line 776
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v1    # "r":Ljava/lang/Object;
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 7
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 857
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    if-eqz p2, :cond_2c

    .line 858
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 860
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-nez v1, :cond_14

    .line 861
    new-instance v1, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->unipush(Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_2b

    .line 862
    :cond_14
    const/4 v1, 0x0

    if-nez p1, :cond_1b

    .line 863
    invoke-virtual {v0, v2, p2, v1}, Ljava/util/concurrent/CompletableFuture;->uniWhenComplete(Ljava/lang/Object;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$UniWhenComplete;)Z

    goto :goto_2b

    .line 866
    :cond_1b
    :try_start_1b
    new-instance v3, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;

    invoke-direct {v3, v1, v0, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_24

    .line 869
    goto :goto_2b

    .line 867
    :catchall_24
    move-exception v1

    .line 868
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object v3

    iput-object v3, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 871
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_2b
    return-object v0

    .line 857
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .end local v2    # "r":Ljava/lang/Object;
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o waitingGet(Z)Ljava/lang/Object;
    .registers 13
    .param p1, "interruptible"    # Z

    .line 1854
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1855
    return-object v1

    .line 1856
    :cond_a
    const/4 v0, 0x0

    .line 1857
    .local v0, "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    const/4 v2, 0x0

    move v3, v2

    move-object v2, v0

    .line 1859
    .end local v0    # "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    .local v2, "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    .local v3, "queued":Z
    :goto_e
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v4, v0

    .local v4, "r":Ljava/lang/Object;
    if-nez v0, :cond_50

    .line 1860
    if-nez v2, :cond_31

    .line 1861
    new-instance v5, Ljava/util/concurrent/CompletableFuture$Signaller;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move v6, p1

    .end local p1    # "interruptible":Z
    .local v6, "interruptible":Z
    invoke-direct/range {v5 .. v10}, Ljava/util/concurrent/CompletableFuture$Signaller;-><init>(ZJJ)V

    move-object v2, v5

    .line 1862
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    instance-of p1, p1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz p1, :cond_2f

    .line 1863
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/concurrent/ForkJoinPool;->helpAsyncBlocker(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V

    .line 1859
    .end local v4    # "r":Ljava/lang/Object;
    :cond_2f
    :goto_2f
    move p1, v6

    goto :goto_e

    .line 1865
    .end local v6    # "interruptible":Z
    .restart local v4    # "r":Ljava/lang/Object;
    .restart local p1    # "interruptible":Z
    :cond_31
    move v6, p1

    .end local p1    # "interruptible":Z
    .restart local v6    # "interruptible":Z
    if-nez v3, :cond_3a

    .line 1866
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v3

    move p1, v6

    goto :goto_e

    .line 1867
    :cond_3a
    if-eqz v6, :cond_46

    iget-boolean p1, v2, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz p1, :cond_46

    .line 1868
    iput-object v1, v2, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    .line 1869
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    .line 1870
    return-object v1

    .line 1874
    :cond_46
    :try_start_46
    invoke-static {v2}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_49} :catch_4a

    .line 1877
    :goto_49
    goto :goto_2f

    .line 1875
    :catch_4a
    move-exception v0

    move-object p1, v0

    .line 1876
    .local p1, "ie":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    iput-boolean v0, v2, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    .end local p1    # "ie":Ljava/lang/InterruptedException;
    goto :goto_49

    .line 1880
    .end local v6    # "interruptible":Z
    .local p1, "interruptible":Z
    :cond_50
    move v6, p1

    .end local p1    # "interruptible":Z
    .restart local v6    # "interruptible":Z
    if-eqz v2, :cond_60

    .line 1881
    iput-object v1, v2, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    .line 1882
    iget-boolean p1, v2, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz p1, :cond_60

    .line 1883
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 1885
    :cond_60
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 1886
    return-object v4
.end method


# virtual methods
.method public whitelist test-api acceptEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2285
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api acceptEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->acceptEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2290
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava/util/function/Consumer<",
            "-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2296
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api applyToEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava/util/function/Function<",
            "-TT;TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2269
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api applyToEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->applyToEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava/util/function/Function<",
            "-TT;TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2274
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;TU;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava/util/function/Function<",
            "-TT;TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2280
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;TU;>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method final blacklist biAccept(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$BiAccept;)Z
    .registers 7
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "s"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiConsumer<",
            "-TR;-TS;>;",
            "Ljava/util/concurrent/CompletableFuture$BiAccept<",
            "TR;TS;>;)Z"
        }
    .end annotation

    .line 1342
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p3, "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TR;-TS;>;"
    .local p4, "c":Ljava/util/concurrent/CompletableFuture$BiAccept;, "Ljava/util/concurrent/CompletableFuture$BiAccept<TR;TS;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_3e

    .line 1343
    instance-of v0, p1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_15

    .line 1344
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .local v1, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_14

    .line 1345
    invoke-virtual {p0, v1, p1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1346
    goto :goto_3e

    .line 1348
    :cond_14
    const/4 p1, 0x0

    .line 1350
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_15
    instance-of v0, p2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_26

    .line 1351
    move-object v0, p2

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .restart local v1    # "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_25

    .line 1352
    invoke-virtual {p0, v1, p2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1353
    goto :goto_3e

    .line 1355
    :cond_25
    const/4 p2, 0x0

    .line 1358
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_26
    if-eqz p4, :cond_30

    :try_start_28
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$BiAccept;->claim()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1359
    const/4 v0, 0x0

    return v0

    .line 1360
    :cond_30
    move-object v0, p1

    .line 1361
    .local v0, "rr":Ljava/lang/Object;, "TR;"
    move-object v1, p2

    .line 1362
    .local v1, "ss":Ljava/lang/Object;, "TS;"
    invoke-interface {p3, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1363
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_3a

    .line 1366
    nop

    .end local v0    # "rr":Ljava/lang/Object;, "TR;"
    .end local v1    # "ss":Ljava/lang/Object;, "TS;"
    goto :goto_3e

    .line 1364
    :catchall_3a
    move-exception v0

    .line 1365
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1368
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3e
    :goto_3e
    const/4 v0, 0x1

    return v0
.end method

.method final blacklist biApply(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture$BiApply;)Z
    .registers 8
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "s"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction<",
            "-TR;-TS;+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$BiApply<",
            "TR;TS;TT;>;)Z"
        }
    .end annotation

    .line 1267
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p3, "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TR;-TS;+TT;>;"
    .local p4, "c":Ljava/util/concurrent/CompletableFuture$BiApply;, "Ljava/util/concurrent/CompletableFuture$BiApply<TR;TS;TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_3f

    .line 1268
    instance-of v0, p1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_15

    .line 1269
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .local v1, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_14

    .line 1270
    invoke-virtual {p0, v1, p1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1271
    goto :goto_3f

    .line 1273
    :cond_14
    const/4 p1, 0x0

    .line 1275
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_15
    instance-of v0, p2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_26

    .line 1276
    move-object v0, p2

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .restart local v1    # "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_25

    .line 1277
    invoke-virtual {p0, v1, p2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1278
    goto :goto_3f

    .line 1280
    :cond_25
    const/4 p2, 0x0

    .line 1283
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_26
    if-eqz p4, :cond_30

    :try_start_28
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$BiApply;->claim()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1284
    const/4 v0, 0x0

    return v0

    .line 1285
    :cond_30
    move-object v0, p1

    .line 1286
    .local v0, "rr":Ljava/lang/Object;, "TR;"
    move-object v1, p2

    .line 1287
    .local v1, "ss":Ljava/lang/Object;, "TS;"
    invoke-interface {p3, v0, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_3b

    .line 1290
    nop

    .end local v0    # "rr":Ljava/lang/Object;, "TR;"
    .end local v1    # "ss":Ljava/lang/Object;, "TS;"
    goto :goto_3f

    .line 1288
    :catchall_3b
    move-exception v0

    .line 1289
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1292
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3f
    :goto_3f
    const/4 v0, 0x1

    return v0
.end method

.method final blacklist biRun(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$BiRun;)Z
    .registers 8
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "s"    # Ljava/lang/Object;
    .param p3, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/CompletableFuture$BiRun<",
            "**>;)Z"
        }
    .end annotation

    .line 1416
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "c":Ljava/util/concurrent/CompletableFuture$BiRun;, "Ljava/util/concurrent/CompletableFuture$BiRun<**>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_37

    .line 1417
    instance-of v0, p1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_11

    move-object v0, p1

    .local v0, "z":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v2, v1

    .local v2, "x":Ljava/lang/Throwable;
    if-nez v1, :cond_1e

    .end local v0    # "z":Ljava/lang/Object;
    .end local v2    # "x":Ljava/lang/Throwable;
    :cond_11
    instance-of v0, p2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_22

    move-object v0, p2

    .restart local v0    # "z":Ljava/lang/Object;
    move-object v1, p2

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v2, v1

    .restart local v2    # "x":Ljava/lang/Throwable;
    if-eqz v1, :cond_22

    .line 1421
    :cond_1e
    invoke-virtual {p0, v2, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_37

    .line 1424
    .end local v0    # "z":Ljava/lang/Object;
    .end local v2    # "x":Ljava/lang/Throwable;
    :cond_22
    if-eqz p4, :cond_2c

    :try_start_24
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$BiRun;->claim()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1425
    const/4 v0, 0x0

    return v0

    .line 1426
    :cond_2c
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1427
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_33

    .line 1430
    goto :goto_37

    .line 1428
    :catchall_33
    move-exception v0

    .line 1429
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1432
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_37
    :goto_37
    const/4 v0, 0x1

    return v0
.end method

.method final greylist-max-o bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava/util/concurrent/CompletableFuture$BiCompletion<",
            "***>;)V"
        }
    .end annotation

    .line 1213
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "c":Ljava/util/concurrent/CompletableFuture$BiCompletion;, "Ljava/util/concurrent/CompletableFuture$BiCompletion<***>;"
    if-eqz p2, :cond_25

    .line 1214
    :cond_2
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_22

    .line 1215
    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1216
    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_19

    .line 1217
    new-instance v0, Ljava/util/concurrent/CompletableFuture$CoCompletion;

    invoke-direct {v0, p2}, Ljava/util/concurrent/CompletableFuture$CoCompletion;-><init>(Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->unipush(Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_21

    .line 1218
    :cond_19
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_21

    .line 1219
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CompletableFuture$BiCompletion;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 1220
    :cond_21
    :goto_21
    return-void

    .line 1223
    :cond_22
    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->unipush(Ljava/util/concurrent/CompletableFuture$Completion;)V

    .line 1225
    :cond_25
    return-void
.end method

.method public whitelist test-api cancel(Z)Z
    .registers 6
    .param p1, "mayInterruptIfRunning"    # Z

    .line 2498
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_18

    new-instance v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    new-instance v3, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {v0, v3}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    .line 2499
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    move v0, v2

    .line 2500
    .local v0, "cancelled":Z
    :goto_19
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 2501
    if-nez v0, :cond_26

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_26

    :cond_25
    move v1, v2

    :cond_26
    :goto_26
    return v1
.end method

.method final greylist-max-o cleanStack()V
    .registers 6

    .line 493
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    .line 495
    .local v0, "p":Ljava/util/concurrent/CompletableFuture$Completion;
    const/4 v1, 0x0

    .line 496
    .local v1, "unlinked":Z
    :goto_3
    if-nez v0, :cond_6

    .line 497
    return-void

    .line 498
    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture$Completion;->isLive()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 499
    if-eqz v1, :cond_f

    .line 500
    return-void

    .line 510
    .end local v1    # "unlinked":Z
    :cond_f
    iget-object v1, v0, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    .local v1, "q":Ljava/util/concurrent/CompletableFuture$Completion;
    :goto_11
    if-eqz v1, :cond_2b

    .line 511
    iget-object v2, v1, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    .line 512
    .local v2, "s":Ljava/util/concurrent/CompletableFuture$Completion;
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture$Completion;->isLive()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 513
    move-object v0, v1

    .line 514
    move-object v1, v2

    goto :goto_2a

    .line 515
    :cond_1e
    sget-object v3, Ljava/util/concurrent/CompletableFuture;->NEXT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v3, v0, v1, v2}, Ljava/lang/invoke/VarHandle;->weakCompareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 516
    goto :goto_2b

    .line 518
    :cond_28
    iget-object v1, v0, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    .line 519
    .end local v2    # "s":Ljava/util/concurrent/CompletableFuture$Completion;
    :goto_2a
    goto :goto_11

    .line 520
    .end local v1    # "q":Ljava/util/concurrent/CompletableFuture$Completion;
    :cond_2b
    :goto_2b
    return-void

    .line 504
    .local v1, "unlinked":Z
    :cond_2c
    sget-object v2, Ljava/util/concurrent/CompletableFuture;->STACK:Ljava/lang/invoke/VarHandle;

    iget-object v3, v0, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    move-object v4, v3

    .end local v0    # "p":Ljava/util/concurrent/CompletableFuture$Completion;
    .local v4, "p":Ljava/util/concurrent/CompletableFuture$Completion;
    invoke-polymorphic {v2, p0, v0, v3}, Ljava/lang/invoke/VarHandle;->weakCompareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 505
    const/4 v1, 0x1

    move-object v0, v4

    goto :goto_3

    .line 507
    :cond_3b
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    .end local v4    # "p":Ljava/util/concurrent/CompletableFuture$Completion;
    .restart local v0    # "p":Ljava/util/concurrent/CompletableFuture$Completion;
    goto :goto_3
.end method

.method public whitelist test-api complete(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2154
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z

    move-result v0

    .line 2155
    .local v0, "triggered":Z
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 2156
    return v0
.end method

.method public whitelist test-api completeAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2722
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/CompletableFuture;->completeAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api completeAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2705
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 2707
    new-instance v0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncSupply;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Supplier;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2708
    return-object p0

    .line 2706
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api completeExceptionally(Ljava/lang/Throwable;)Z
    .registers 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 2168
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz p1, :cond_f

    .line 2169
    new-instance v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    move-result v0

    .line 2170
    .local v0, "triggered":Z
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 2171
    return v0

    .line 2168
    .end local v0    # "triggered":Z
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method final greylist-max-o completeNull()Z
    .registers 4

    .line 272
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->RESULT:Ljava/lang/invoke/VarHandle;

    const/4 v1, 0x0

    sget-object v2, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/CompletableFuture;Ljava/lang/Void;Ljava/util/concurrent/CompletableFuture$AltResult;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;
    .registers 7
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2760
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-eqz p4, :cond_18

    .line 2762
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_17

    .line 2763
    new-instance v0, Ljava/util/concurrent/CompletableFuture$Canceller;

    new-instance v1, Ljava/util/concurrent/CompletableFuture$DelayedCompleter;

    invoke-direct {v1, p0, p1}, Ljava/util/concurrent/CompletableFuture$DelayedCompleter;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)V

    invoke-static {v1, p2, p3, p4}, Ljava/util/concurrent/CompletableFuture$Delayer;->delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture$Canceller;-><init>(Ljava/util/concurrent/Future;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 2766
    :cond_17
    return-object p0

    .line 2761
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method final greylist-max-o completeRelay(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "r"    # Ljava/lang/Object;

    .line 353
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->RESULT:Ljava/lang/invoke/VarHandle;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/CompletableFuture;Ljava/lang/Void;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final greylist-max-o completeThrowable(Ljava/lang/Throwable;)Z
    .registers 5
    .param p1, "x"    # Ljava/lang/Throwable;

    .line 296
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->RESULT:Ljava/lang/invoke/VarHandle;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object v2

    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/CompletableFuture;Ljava/lang/Void;Ljava/util/concurrent/CompletableFuture$AltResult;)Z

    move-result v0

    return v0
.end method

.method final greylist-max-o completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "x"    # Ljava/lang/Throwable;
    .param p2, "r"    # Ljava/lang/Object;

    .line 323
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->RESULT:Ljava/lang/invoke/VarHandle;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/CompletableFuture;Ljava/lang/Void;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final greylist-max-o completeValue(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 282
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->RESULT:Ljava/lang/invoke/VarHandle;

    if-nez p1, :cond_7

    sget-object v1, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    goto :goto_8

    :cond_7
    move-object v1, p1

    :goto_8
    const/4 v2, 0x0

    invoke-polymorphic {v0, p0, v2, v1}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/CompletableFuture;Ljava/lang/Void;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api copy()Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2665
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->uniCopyStage(Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api defaultExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 2647
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method greylist-max-o encodeOutcome(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 4
    .param p2, "x"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 332
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_9

    if-nez p1, :cond_7

    sget-object v0, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    goto :goto_d

    :cond_7
    move-object v0, p1

    goto :goto_d

    :cond_9
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method final greylist-max-o encodeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 277
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_5

    sget-object v0, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    return-object v0
.end method

.method public whitelist test-api exceptionNow()Ljava/lang/Throwable;
    .registers 5

    .line 2130
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2132
    .local v0, "r":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_1e

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    .local v1, "alt":Ljava/util/concurrent/CompletableFuture$AltResult;
    iget-object v2, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v3, v2

    .local v3, "x":Ljava/lang/Throwable;
    if-eqz v2, :cond_1e

    instance-of v2, v3, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1e

    .line 2135
    instance-of v2, v3, Ljava/util/concurrent/CompletionException;

    if-eqz v2, :cond_1d

    .line 2136
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 2137
    .local v2, "cause":Ljava/lang/Throwable;
    if-eqz v2, :cond_1d

    .line 2138
    move-object v3, v2

    .line 2140
    .end local v2    # "cause":Ljava/lang/Throwable;
    :cond_1d
    return-object v3

    .line 2142
    .end local v1    # "alt":Ljava/util/concurrent/CompletableFuture$AltResult;
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_1e
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public whitelist test-api exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2374
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniExceptionallyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api exceptionallyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2381
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniExceptionallyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api exceptionallyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2388
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+TT;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniExceptionallyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api exceptionallyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->exceptionallyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api exceptionallyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->exceptionallyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api exceptionallyCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2395
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+Ljava/util/concurrent/CompletionStage<TT;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniComposeExceptionallyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api exceptionallyCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->exceptionallyCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api exceptionallyComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2402
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+Ljava/util/concurrent/CompletionStage<TT;>;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniComposeExceptionallyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api exceptionallyComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2410
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+Ljava/util/concurrent/CompletionStage<TT;>;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniComposeExceptionallyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api exceptionallyComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->exceptionallyComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api exceptionallyComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->exceptionallyComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api get()Ljava/lang/Object;
    .registers 3
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

    .line 2047
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-nez v0, :cond_a

    .line 2048
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/CompletableFuture;->waitingGet(Z)Ljava/lang/Object;

    move-result-object v1

    .line 2049
    :cond_a
    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->reportGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 8
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

    .line 2068
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 2070
    .local v0, "nanos":J
    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "r":Ljava/lang/Object;
    if-nez v2, :cond_d

    .line 2071
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/CompletableFuture;->timedGet(J)Ljava/lang/Object;

    move-result-object v3

    .line 2072
    :cond_d
    invoke-static {v3}, Ljava/util/concurrent/CompletableFuture;->reportGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api getNow(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 2110
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "valueIfAbsent":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-nez v0, :cond_7

    move-object v0, p1

    goto :goto_b

    :cond_7
    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->reportJoin(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public whitelist test-api getNumberOfDependents()I
    .registers 3

    .line 2587
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v0, 0x0

    .line 2588
    .local v0, "count":I
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    .local v1, "p":Ljava/util/concurrent/CompletableFuture$Completion;
    :goto_3
    if-eqz v1, :cond_a

    .line 2589
    add-int/lit8 v0, v0, 0x1

    .line 2588
    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    goto :goto_3

    .line 2590
    .end local v1    # "p":Ljava/util/concurrent/CompletableFuture$Completion;
    :cond_a
    return v0
.end method

.method public whitelist test-api handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2348
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api handleAsync(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2353
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api handleAsync(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2358
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api handleAsync(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->handleAsync(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api handleAsync(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->handleAsync(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method final greylist-max-o internalComplete(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "r"    # Ljava/lang/Object;

    .line 245
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->RESULT:Ljava/lang/invoke/VarHandle;

    const/4 v1, 0x0

    invoke-polymorphic {v0, p0, v1, p1}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/CompletableFuture;Ljava/lang/Void;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isCancelled()Z
    .registers 3

    .line 2513
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    instance-of v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_12

    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist test-api isCompletedExceptionally()Z
    .registers 3

    .line 2529
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    instance-of v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_d

    sget-object v0, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eq v1, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist test-api isDone()Z
    .registers 2

    .line 2031
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api join()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2092
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-nez v0, :cond_a

    .line 2093
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/CompletableFuture;->waitingGet(Z)Ljava/lang/Object;

    move-result-object v1

    .line 2094
    :cond_a
    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->reportJoin(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api minimalCompletionStage()Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .line 2689
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;->uniAsMinimalStage()Ljava/util/concurrent/CompletableFuture$MinimalStage;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2632
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    return-object v0
.end method

.method public whitelist test-api obtrudeException(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 2573
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz p1, :cond_d

    .line 2574
    new-instance v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2575
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 2576
    return-void

    .line 2573
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api obtrudeValue(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2557
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_5

    sget-object v0, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    iput-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2558
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 2559
    return-void
.end method

.method public whitelist test-api orTimeout(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2738
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz p3, :cond_18

    .line 2740
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_17

    .line 2741
    new-instance v0, Ljava/util/concurrent/CompletableFuture$Canceller;

    new-instance v1, Ljava/util/concurrent/CompletableFuture$Timeout;

    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletableFuture$Timeout;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v1, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$Delayer;->delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture$Canceller;-><init>(Ljava/util/concurrent/Future;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 2743
    :cond_17
    return-object p0

    .line 2739
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method final greylist-max-o orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava/util/concurrent/CompletableFuture$BiCompletion<",
            "***>;)V"
        }
    .end annotation

    .line 1517
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "c":Ljava/util/concurrent/CompletableFuture$BiCompletion;, "Ljava/util/concurrent/CompletableFuture$BiCompletion<***>;"
    if-eqz p2, :cond_25

    .line 1518
    :cond_2
    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1519
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1520
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->NEXT:Ljava/lang/invoke/VarHandle;

    const/4 v1, 0x0

    invoke-polymorphic {v0, p2, v1}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/CompletableFuture$BiCompletion;Ljava/lang/Void;)V

    .line 1521
    nop

    .line 1524
    :cond_14
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1d

    .line 1525
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CompletableFuture$BiCompletion;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    goto :goto_25

    .line 1527
    :cond_1d
    new-instance v0, Ljava/util/concurrent/CompletableFuture$CoCompletion;

    invoke-direct {v0, p2}, Ljava/util/concurrent/CompletableFuture$CoCompletion;-><init>(Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->unipush(Ljava/util/concurrent/CompletableFuture$Completion;)V

    .line 1529
    :cond_25
    :goto_25
    return-void
.end method

.method final greylist-max-o postComplete()V
    .registers 6

    .line 474
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v0, p0

    .line 475
    .local v0, "f":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :goto_1
    iget-object v1, v0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    move-object v2, v1

    .local v2, "h":Ljava/util/concurrent/CompletableFuture$Completion;
    if-nez v1, :cond_10

    if-eq v0, p0, :cond_f

    move-object v0, p0

    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    move-object v2, v1

    if-eqz v1, :cond_f

    goto :goto_10

    .line 489
    :cond_f
    return-void

    .line 478
    :cond_10
    :goto_10
    sget-object v1, Ljava/util/concurrent/CompletableFuture;->STACK:Ljava/lang/invoke/VarHandle;

    iget-object v3, v2, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    move-object v4, v3

    .local v4, "t":Ljava/util/concurrent/CompletableFuture$Completion;
    invoke-polymorphic {v1, v0, v2, v3}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 479
    if-eqz v4, :cond_2b

    .line 480
    if-eq v0, p0, :cond_24

    .line 481
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->pushStack(Ljava/util/concurrent/CompletableFuture$Completion;)V

    .line 482
    goto :goto_1

    .line 484
    :cond_24
    sget-object v1, Ljava/util/concurrent/CompletableFuture;->NEXT:Ljava/lang/invoke/VarHandle;

    const/4 v3, 0x0

    invoke-polymorphic {v1, v2, v4, v3}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;Ljava/lang/Void;)Z

    .line 486
    :cond_2b
    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    move-object v3, v1

    .local v3, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-nez v1, :cond_35

    move-object v1, p0

    goto :goto_36

    :cond_35
    move-object v1, v3

    :goto_36
    move-object v0, v1

    .line 488
    .end local v3    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v4    # "t":Ljava/util/concurrent/CompletableFuture$Completion;
    :cond_37
    goto :goto_1
.end method

.method final greylist-max-o postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 579
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz p1, :cond_19

    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    if-eqz v0, :cond_19

    .line 581
    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-nez v0, :cond_e

    .line 582
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    .line 583
    :cond_e
    if-ltz p2, :cond_19

    if-nez v1, :cond_16

    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_19

    .line 584
    :cond_16
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 586
    .end local v1    # "r":Ljava/lang/Object;
    :cond_19
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_27

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    if-eqz v0, :cond_27

    .line 587
    if-gez p2, :cond_24

    .line 588
    return-object p0

    .line 590
    :cond_24
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 592
    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method final greylist-max-o postFire(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 1230
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz p2, :cond_19

    iget-object v0, p2, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    if-eqz v0, :cond_19

    .line 1232
    iget-object v0, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-nez v0, :cond_e

    .line 1233
    invoke-virtual {p2}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    .line 1234
    :cond_e
    if-ltz p3, :cond_19

    if-nez v1, :cond_16

    iget-object v0, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_19

    .line 1235
    :cond_16
    invoke-virtual {p2}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 1237
    .end local v1    # "r":Ljava/lang/Object;
    :cond_19
    invoke-virtual {p0, p1, p3}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o pushStack(Ljava/util/concurrent/CompletableFuture$Completion;)V
    .registers 3
    .param p1, "c"    # Ljava/util/concurrent/CompletableFuture$Completion;

    .line 257
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    return-void
.end method

.method public whitelist test-api resultNow()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2115
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2116
    .local v0, "r":Ljava/lang/Object;
    if-eqz v0, :cond_13

    .line 2117
    instance-of v1, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_11

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    .line 2118
    .local v1, "alt":Ljava/util/concurrent/CompletableFuture$AltResult;
    iget-object v2, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    return-object v2

    .line 2121
    .end local v1    # "alt":Ljava/util/concurrent/CompletableFuture$AltResult;
    :cond_11
    move-object v1, v0

    .line 2122
    .local v1, "t":Ljava/lang/Object;, "TT;"
    return-object v1

    .line 2125
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public whitelist test-api runAfterBoth(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2253
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api runAfterBoth(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->runAfterBoth(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2258
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2264
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api runAfterEither(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2301
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api runAfterEither(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->runAfterEither(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2306
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2312
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api state()Ljava/util/concurrent/Future$State;
    .registers 4

    .line 2534
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2535
    .local v0, "r":Ljava/lang/Object;
    if-nez v0, :cond_7

    .line 2536
    sget-object v1, Ljava/util/concurrent/Future$State;->RUNNING:Ljava/util/concurrent/Future$State;

    return-object v1

    .line 2537
    :cond_7
    sget-object v1, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eq v0, v1, :cond_1e

    instance-of v1, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_1e

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    .line 2538
    .local v1, "alt":Ljava/util/concurrent/CompletableFuture$AltResult;
    iget-object v2, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_1b

    .line 2539
    sget-object v2, Ljava/util/concurrent/Future$State;->CANCELLED:Ljava/util/concurrent/Future$State;

    return-object v2

    .line 2541
    :cond_1b
    sget-object v2, Ljava/util/concurrent/Future$State;->FAILED:Ljava/util/concurrent/Future$State;

    return-object v2

    .line 2543
    .end local v1    # "alt":Ljava/util/concurrent/CompletableFuture$AltResult;
    :cond_1e
    sget-object v1, Ljava/util/concurrent/Future$State;->SUCCESS:Ljava/util/concurrent/Future$State;

    return-object v1
.end method

.method public whitelist test-api thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2190
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2194
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2199
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenAcceptBoth(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2236
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenAcceptBoth(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptBoth(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2242
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiConsumer<",
            "-TT;-TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2248
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2176
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenApplyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2181
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2186
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenApplyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 2218
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 2224
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TT;-TU;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 2230
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2317
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2322
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2328
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p1, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2203
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p1, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2207
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2212
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toCompletableFuture()Ljava/util/concurrent/CompletableFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2367
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 2604
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2605
    .local v0, "r":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 2606
    .local v1, "count":I
    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    .local v2, "p":Ljava/util/concurrent/CompletableFuture$Completion;
    :goto_5
    if-eqz v2, :cond_c

    .line 2607
    add-int/lit8 v1, v1, 0x1

    .line 2606
    iget-object v2, v2, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    goto :goto_5

    .line 2608
    .end local v2    # "p":Ljava/util/concurrent/CompletableFuture$Completion;
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2609
    if-nez v0, :cond_3a

    .line 2610
    if-nez v1, :cond_20

    .line 2611
    const-string v3, "[Not completed]"

    goto :goto_66

    .line 2612
    :cond_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Not completed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dependents]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_66

    .line 2613
    :cond_3a
    instance-of v3, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v3, :cond_64

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v3, v3, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v3, :cond_64

    .line 2614
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Completed exceptionally: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v4, v4, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_66

    .line 2615
    :cond_64
    const-string v3, "[Completed normally]"

    :goto_66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2608
    return-object v2
.end method

.method final greylist-max-o tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z
    .registers 4
    .param p1, "c"    # Ljava/util/concurrent/CompletableFuture$Completion;

    .line 250
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    .line 251
    .local v0, "h":Ljava/util/concurrent/CompletableFuture$Completion;
    sget-object v1, Ljava/util/concurrent/CompletableFuture;->NEXT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v1, p1, v0}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    .line 252
    sget-object v1, Ljava/util/concurrent/CompletableFuture;->STACK:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v1, p0, v0, p1}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v1

    return v1
.end method

.method final blacklist uniExceptionally(Ljava/lang/Object;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniExceptionally;)Z
    .registers 6
    .param p1, "r"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$UniExceptionally<",
            "TT;>;)Z"
        }
    .end annotation

    .line 961
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Throwable;+TT;>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniExceptionally;, "Ljava/util/concurrent/CompletableFuture$UniExceptionally<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_2a

    .line 963
    if-eqz p3, :cond_e

    :try_start_6
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->claim()Z

    move-result v0

    if-nez v0, :cond_e

    .line 964
    const/4 v0, 0x0

    return v0

    .line 965
    :cond_e
    instance-of v0, p1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_22

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .local v1, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_22

    .line 966
    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z

    goto :goto_25

    .line 968
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_22
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_26

    .line 971
    :goto_25
    goto :goto_2a

    .line 969
    :catchall_26
    move-exception v0

    .line 970
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 973
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2a
    :goto_2a
    const/4 v0, 0x1

    return v0
.end method

.method final blacklist uniHandle(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture$UniHandle;)Z
    .registers 7
    .param p1, "r"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction<",
            "-TS;",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$UniHandle<",
            "TS;TT;>;)Z"
        }
    .end annotation

    .line 898
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TS;Ljava/lang/Throwable;+TT;>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniHandle;, "Ljava/util/concurrent/CompletableFuture$UniHandle<TS;TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_29

    .line 900
    if-eqz p3, :cond_e

    :try_start_6
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniHandle;->claim()Z

    move-result v0

    if-nez v0, :cond_e

    .line 901
    const/4 v0, 0x0

    return v0

    .line 902
    :cond_e
    instance-of v0, p1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_19

    .line 903
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .line 904
    .local v0, "x":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .local v1, "s":Ljava/lang/Object;, "TS;"
    goto :goto_1d

    .line 906
    .end local v0    # "x":Ljava/lang/Throwable;
    .end local v1    # "s":Ljava/lang/Object;, "TS;"
    :cond_19
    const/4 v0, 0x0

    .line 907
    .restart local v0    # "x":Ljava/lang/Throwable;
    move-object v1, p1

    .line 908
    .local v1, "ss":Ljava/lang/Object;, "TS;"
    move-object v2, v1

    move-object v1, v2

    .line 910
    .local v1, "s":Ljava/lang/Object;, "TS;"
    :goto_1d
    invoke-interface {p2, v1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_25

    .line 913
    goto :goto_29

    .line 911
    .end local v0    # "x":Ljava/lang/Throwable;
    .end local v1    # "s":Ljava/lang/Object;, "TS;"
    :catchall_25
    move-exception v0

    .line 912
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 915
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_29
    :goto_29
    const/4 v0, 0x1

    return v0
.end method

.method final blacklist uniWhenComplete(Ljava/lang/Object;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$UniWhenComplete;)Z
    .registers 8
    .param p1, "r"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/CompletableFuture$UniWhenComplete<",
            "TT;>;)Z"
        }
    .end annotation

    .line 827
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniWhenComplete;, "Ljava/util/concurrent/CompletableFuture$UniWhenComplete<TT;>;"
    const/4 v0, 0x0

    .line 828
    .local v0, "x":Ljava/lang/Throwable;
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v1, :cond_36

    .line 830
    if-eqz p3, :cond_10

    :try_start_8
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;->claim()Z

    move-result v1

    if-nez v1, :cond_10

    .line 831
    const/4 v1, 0x0

    return v1

    .line 832
    :cond_10
    instance-of v1, p1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_1c

    .line 833
    move-object v1, p1

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v0, v1

    .line 834
    const/4 v1, 0x0

    .local v1, "t":Ljava/lang/Object;, "TT;"
    goto :goto_1f

    .line 836
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_1c
    move-object v1, p1

    .line 837
    .local v1, "tr":Ljava/lang/Object;, "TT;"
    move-object v3, v1

    move-object v1, v3

    .line 839
    .local v1, "t":Ljava/lang/Object;, "TT;"
    :goto_1f
    invoke-interface {p2, v1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 840
    if-nez v0, :cond_28

    .line 841
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_29

    .line 842
    return v2

    .line 849
    :cond_28
    goto :goto_33

    .line 844
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :catchall_29
    move-exception v1

    .line 845
    .local v1, "ex":Ljava/lang/Throwable;
    if-nez v0, :cond_2e

    .line 846
    move-object v0, v1

    goto :goto_33

    .line 847
    :cond_2e
    if-eq v0, v1, :cond_33

    .line 848
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 850
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_33
    :goto_33
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 852
    :cond_36
    return v2
.end method

.method final blacklist unipush(Ljava/util/concurrent/CompletableFuture$Completion;)V
    .registers 4
    .param p1, "c"    # Ljava/util/concurrent/CompletableFuture$Completion;

    .line 561
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz p1, :cond_1c

    .line 562
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 563
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 564
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->NEXT:Ljava/lang/invoke/VarHandle;

    const/4 v1, 0x0

    invoke-polymorphic {v0, p1, v1}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/CompletableFuture$Completion;Ljava/lang/Void;)V

    .line 565
    nop

    .line 568
    :cond_14
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1c

    .line 569
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 571
    :cond_1c
    return-void
.end method

.method public whitelist test-api whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2333
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2338
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2343
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
