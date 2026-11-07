.class public Ljdk/internal/vm/Continuation;
.super Ljava/lang/Object;
.source "Continuation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdk/internal/vm/Continuation$Pinned;,
        Ljdk/internal/vm/Continuation$PreemptStatus;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final blacklist JLA:Ljava/lang/JavaLangAccess;

.field private static final blacklist MOUNTED_OFFSET:J

.field private static final blacklist PRESERVE_SCOPED_VALUE_CACHE:Z

.field private static final blacklist U:Ljdk/internal/misc/Unsafe;


# instance fields
.field private blacklist child:Ljdk/internal/vm/Continuation;

.field private blacklist done:Z

.field private volatile blacklist mounted:Z

.field private blacklist parent:Ljdk/internal/vm/Continuation;

.field private blacklist preempted:Z

.field private final blacklist scope:Ljdk/internal/vm/ContinuationScope;

.field private blacklist scopedValueCache:[Ljava/lang/Object;

.field private blacklist tail:Ljdk/internal/vm/StackChunk;

.field private final blacklist target:Ljava/lang/Runnable;

.field private blacklist yieldInfo:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 42
    nop

    .line 43
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljdk/internal/vm/Continuation;->U:Ljdk/internal/misc/Unsafe;

    .line 44
    sget-object v0, Ljdk/internal/vm/Continuation;->U:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljdk/internal/vm/Continuation;

    const-string v2, "mounted"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljdk/internal/vm/Continuation;->MOUNTED_OFFSET:J

    .line 46
    invoke-static {}, Ljdk/internal/access/SharedSecrets;->getJavaLangAccess()Ljava/lang/JavaLangAccess;

    move-result-object v0

    sput-object v0, Ljdk/internal/vm/Continuation;->JLA:Ljava/lang/JavaLangAccess;

    .line 51
    invoke-static {}, Ljdk/internal/vm/StackChunk;->init()V

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Ljdk/internal/vm/Continuation;->PRESERVE_SCOPED_VALUE_CACHE:Z

    .line 105
    const/4 v0, 0x2

    :try_start_20
    invoke-static {v0}, Ljdk/internal/vm/Continuation;->pinnedReason(I)Ljdk/internal/vm/Continuation$Pinned;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_25

    .line 108
    nop

    .line 109
    return-void

    .line 106
    :catch_25
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor blacklist <init>(Ljdk/internal/vm/ContinuationScope;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "scope"    # Ljdk/internal/vm/ContinuationScope;
    .param p2, "target"    # Ljava/lang/Runnable;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Ljdk/internal/vm/Continuation;->scope:Ljdk/internal/vm/ContinuationScope;

    .line 137
    iput-object p2, p0, Ljdk/internal/vm/Continuation;->target:Ljava/lang/Runnable;

    .line 138
    return-void
.end method

.method private blacklist compareAndSetMounted(ZZ)Z
    .registers 4
    .param p1, "expectedValue"    # Z
    .param p2, "newValue"    # Z

    .line 483
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist currentCarrierThread()Ljava/lang/Thread;
    .registers 1

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method private static native blacklist doYield()I
.end method

.method private static blacklist enter(Ljdk/internal/vm/Continuation;Z)V
    .registers 3
    .param p0, "c"    # Ljdk/internal/vm/Continuation;
    .param p1, "isContinue"    # Z
    .annotation runtime Ljdk/internal/vm/annotation/DontInline;
    .end annotation

    .annotation runtime Ljdk/internal/vm/annotation/Hidden;
    .end annotation

    .line 331
    :try_start_0
    invoke-direct {p0}, Ljdk/internal/vm/Continuation;->enter0()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 333
    invoke-direct {p0}, Ljdk/internal/vm/Continuation;->finish()V

    .line 334
    nop

    .line 335
    return-void

    .line 333
    :catchall_8
    move-exception v0

    invoke-direct {p0}, Ljdk/internal/vm/Continuation;->finish()V

    .line 334
    throw v0
.end method

.method private blacklist enter0()V
    .registers 2
    .annotation runtime Ljdk/internal/vm/annotation/Hidden;
    .end annotation

    .line 339
    iget-object v0, p0, Ljdk/internal/vm/Continuation;->target:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 340
    return-void
.end method

.method private static native blacklist enterSpecial(Ljdk/internal/vm/Continuation;ZZ)V
.end method

.method private blacklist fence()Z
    .registers 2

    .line 476
    sget-object v0, Ljdk/internal/vm/Continuation;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0}, Ljdk/internal/misc/Unsafe;->storeFence()V

    .line 477
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist finish()V
    .registers 2

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljdk/internal/vm/Continuation;->done:Z

    .line 314
    nop

    .line 315
    return-void
.end method

.method public static blacklist getCurrentContinuation(Ljdk/internal/vm/ContinuationScope;)Ljdk/internal/vm/Continuation;
    .registers 3
    .param p0, "scope"    # Ljdk/internal/vm/ContinuationScope;

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "cont":Ljdk/internal/vm/Continuation;
    :goto_1
    if-eqz v0, :cond_a

    iget-object v1, v0, Ljdk/internal/vm/Continuation;->scope:Ljdk/internal/vm/ContinuationScope;

    if-eq v1, p0, :cond_a

    .line 163
    iget-object v0, v0, Ljdk/internal/vm/Continuation;->parent:Ljdk/internal/vm/Continuation;

    goto :goto_1

    .line 164
    :cond_a
    return-object v0
.end method

.method private blacklist innermost()Ljdk/internal/vm/Continuation;
    .registers 3

    .line 220
    move-object v0, p0

    .line 221
    .local v0, "c":Ljdk/internal/vm/Continuation;
    :goto_1
    iget-object v1, v0, Ljdk/internal/vm/Continuation;->child:Ljdk/internal/vm/Continuation;

    if-eqz v1, :cond_8

    .line 222
    iget-object v0, v0, Ljdk/internal/vm/Continuation;->child:Ljdk/internal/vm/Continuation;

    goto :goto_1

    .line 223
    :cond_8
    return-object v0
.end method

.method private blacklist isEmpty()Z
    .registers 3

    .line 347
    iget-object v0, p0, Ljdk/internal/vm/Continuation;->tail:Ljdk/internal/vm/StackChunk;

    .local v0, "c":Ljdk/internal/vm/StackChunk;
    :goto_2
    if-eqz v0, :cond_11

    .line 348
    invoke-virtual {v0}, Ljdk/internal/vm/StackChunk;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 349
    const/4 v1, 0x0

    return v1

    .line 347
    :cond_c
    invoke-virtual {v0}, Ljdk/internal/vm/StackChunk;->parent()Ljdk/internal/vm/StackChunk;

    move-result-object v0

    goto :goto_2

    .line 351
    .end local v0    # "c":Ljdk/internal/vm/StackChunk;
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isPinned(Ljdk/internal/vm/ContinuationScope;)Z
    .registers 3
    .param p0, "scope"    # Ljdk/internal/vm/ContinuationScope;

    .line 469
    invoke-static {p0}, Ljdk/internal/vm/Continuation;->isPinned0(Ljdk/internal/vm/ContinuationScope;)I

    move-result v0

    .line 470
    .local v0, "res":I
    if-eqz v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method private static native blacklist isPinned0(Ljdk/internal/vm/ContinuationScope;)I
.end method

.method private blacklist isStarted()Z
    .registers 2

    .line 343
    iget-object v0, p0, Ljdk/internal/vm/Continuation;->tail:Ljdk/internal/vm/StackChunk;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic blacklist lambda$getStackTrace$0(I)[Ljava/lang/StackTraceElement;
    .registers 2
    .param p0, "x$0"    # I

    .line 204
    new-array v0, p0, [Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method static synthetic blacklist lambda$getStackTrace$1(Ljava/util/stream/Stream;)[Ljava/lang/StackTraceElement;
    .registers 3
    .param p0, "s"    # Ljava/util/stream/Stream;

    .line 204
    new-instance v0, Ljdk/internal/vm/Continuation$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljdk/internal/vm/Continuation$$ExternalSyntheticLambda0;-><init>()V

    .line 203
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljdk/internal/vm/Continuation$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljdk/internal/vm/Continuation$$ExternalSyntheticLambda1;-><init>()V

    .line 204
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method private blacklist mount()V
    .registers 3

    .line 227
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljdk/internal/vm/Continuation;->compareAndSetMounted(ZZ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 229
    return-void

    .line 228
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mounted!!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist onPinned0(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 414
    invoke-static {p1}, Ljdk/internal/vm/Continuation;->pinnedReason(I)Ljdk/internal/vm/Continuation$Pinned;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljdk/internal/vm/Continuation;->onPinned(Ljdk/internal/vm/Continuation$Pinned;)V

    .line 415
    return-void
.end method

.method private static blacklist pinnedReason(I)Ljdk/internal/vm/Continuation$Pinned;
    .registers 4
    .param p0, "reason"    # I

    .line 85
    packed-switch p0, :pswitch_data_26

    .line 89
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown pinned reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 88
    :pswitch_1c
    sget-object v0, Ljdk/internal/vm/Continuation$Pinned;->MONITOR:Ljdk/internal/vm/Continuation$Pinned;

    goto :goto_24

    .line 87
    :pswitch_1f
    sget-object v0, Ljdk/internal/vm/Continuation$Pinned;->NATIVE:Ljdk/internal/vm/Continuation$Pinned;

    goto :goto_24

    .line 86
    :pswitch_22
    sget-object v0, Ljdk/internal/vm/Continuation$Pinned;->CRITICAL_SECTION:Ljdk/internal/vm/Continuation$Pinned;

    .line 85
    :goto_24
    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x2
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist postYieldCleanup()V
    .registers 2

    .line 307
    iget-boolean v0, p0, Ljdk/internal/vm/Continuation;->done:Z

    if-eqz v0, :cond_7

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Ljdk/internal/vm/Continuation;->tail:Ljdk/internal/vm/StackChunk;

    .line 310
    :cond_7
    return-void
.end method

.method private blacklist setMounted(Z)V
    .registers 2
    .param p1, "newValue"    # Z

    .line 487
    iput-boolean p1, p0, Ljdk/internal/vm/Continuation;->mounted:Z

    .line 488
    return-void
.end method

.method private blacklist unmount()V
    .registers 2

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljdk/internal/vm/Continuation;->setMounted(Z)V

    .line 233
    return-void
.end method

.method public static blacklist wrapWalk(Ljdk/internal/vm/Continuation;Ljdk/internal/vm/ContinuationScope;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 6
    .param p0, "inner"    # Ljdk/internal/vm/Continuation;
    .param p1, "scope"    # Ljdk/internal/vm/ContinuationScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljdk/internal/vm/Continuation;",
            "Ljdk/internal/vm/ContinuationScope;",
            "Ljava/util/function/Supplier<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 210
    .local p2, "walk":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    move-object v0, p0

    .local v0, "c":Ljdk/internal/vm/Continuation;
    :goto_1
    if-eqz v0, :cond_e

    :try_start_3
    iget-object v1, v0, Ljdk/internal/vm/Continuation;->scope:Ljdk/internal/vm/ContinuationScope;

    if-eq v1, p1, :cond_e

    .line 211
    invoke-direct {v0}, Ljdk/internal/vm/Continuation;->mount()V

    .line 210
    iget-object v1, v0, Ljdk/internal/vm/Continuation;->parent:Ljdk/internal/vm/Continuation;

    move-object v0, v1

    goto :goto_1

    .line 212
    .end local v0    # "c":Ljdk/internal/vm/Continuation;
    :cond_e
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_20

    .line 214
    move-object v1, p0

    .local v1, "c":Ljdk/internal/vm/Continuation;
    :goto_13
    if-eqz v1, :cond_1f

    iget-object v2, v1, Ljdk/internal/vm/Continuation;->scope:Ljdk/internal/vm/ContinuationScope;

    if-eq v2, p1, :cond_1f

    .line 215
    invoke-direct {v1}, Ljdk/internal/vm/Continuation;->unmount()V

    .line 214
    iget-object v1, v1, Ljdk/internal/vm/Continuation;->parent:Ljdk/internal/vm/Continuation;

    goto :goto_13

    .line 212
    .end local v1    # "c":Ljdk/internal/vm/Continuation;
    :cond_1f
    return-object v0

    .line 214
    :catchall_20
    move-exception v0

    move-object v1, p0

    .restart local v1    # "c":Ljdk/internal/vm/Continuation;
    :goto_22
    if-eqz v1, :cond_2e

    iget-object v2, v1, Ljdk/internal/vm/Continuation;->scope:Ljdk/internal/vm/ContinuationScope;

    if-eq v2, p1, :cond_2e

    .line 215
    invoke-direct {v1}, Ljdk/internal/vm/Continuation;->unmount()V

    .line 214
    iget-object v1, v1, Ljdk/internal/vm/Continuation;->parent:Ljdk/internal/vm/Continuation;

    goto :goto_22

    .line 216
    .end local v1    # "c":Ljdk/internal/vm/Continuation;
    :cond_2e
    throw v0
.end method

.method public static blacklist yield(Ljdk/internal/vm/ContinuationScope;)Z
    .registers 6
    .param p0, "scope"    # Ljdk/internal/vm/ContinuationScope;
    .annotation runtime Ljdk/internal/vm/annotation/Hidden;
    .end annotation

    .line 365
    const/4 v0, 0x0

    .line 367
    .local v0, "cont":Ljdk/internal/vm/Continuation;
    move-object v1, v0

    .local v1, "c":Ljdk/internal/vm/Continuation;
    :goto_2
    if-eqz v1, :cond_b

    iget-object v2, v1, Ljdk/internal/vm/Continuation;->scope:Ljdk/internal/vm/ContinuationScope;

    if-eq v2, p0, :cond_b

    iget-object v1, v1, Ljdk/internal/vm/Continuation;->parent:Ljdk/internal/vm/Continuation;

    goto :goto_2

    .line 369
    :cond_b
    if-eqz v1, :cond_13

    .line 372
    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Ljdk/internal/vm/Continuation;->yield0(Ljdk/internal/vm/ContinuationScope;Ljdk/internal/vm/Continuation;)Z

    move-result v2

    return v2

    .line 370
    :cond_13
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not in scope "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist yield0(Ljdk/internal/vm/ContinuationScope;Ljdk/internal/vm/Continuation;)Z
    .registers 7
    .param p1, "scope"    # Ljdk/internal/vm/ContinuationScope;
    .param p2, "child"    # Ljdk/internal/vm/Continuation;
    .annotation runtime Ljdk/internal/vm/annotation/Hidden;
    .end annotation

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljdk/internal/vm/Continuation;->preempted:Z

    .line 379
    iget-object v1, p0, Ljdk/internal/vm/Continuation;->scope:Ljdk/internal/vm/ContinuationScope;

    if-eq p1, v1, :cond_9

    .line 380
    iput-object p1, p0, Ljdk/internal/vm/Continuation;->yieldInfo:Ljava/lang/Object;

    .line 381
    :cond_9
    invoke-static {}, Ljdk/internal/vm/Continuation;->doYield()I

    move-result v1

    .line 382
    .local v1, "res":I
    sget-object v2, Ljdk/internal/vm/Continuation;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2}, Ljdk/internal/misc/Unsafe;->storeFence()V

    .line 384
    nop

    .line 385
    nop

    .line 387
    const/4 v2, 0x0

    if-eqz p2, :cond_33

    .line 388
    if-eqz v1, :cond_20

    .line 389
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p2, Ljdk/internal/vm/Continuation;->yieldInfo:Ljava/lang/Object;

    goto :goto_30

    .line 390
    :cond_20
    iget-object v3, p0, Ljdk/internal/vm/Continuation;->yieldInfo:Ljava/lang/Object;

    if-eqz v3, :cond_2a

    .line 391
    nop

    .line 392
    iget-object v3, p0, Ljdk/internal/vm/Continuation;->yieldInfo:Ljava/lang/Object;

    iput-object v3, p2, Ljdk/internal/vm/Continuation;->yieldInfo:Ljava/lang/Object;

    goto :goto_30

    .line 394
    :cond_2a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p2, Ljdk/internal/vm/Continuation;->yieldInfo:Ljava/lang/Object;

    .line 396
    :goto_30
    iput-object v2, p0, Ljdk/internal/vm/Continuation;->yieldInfo:Ljava/lang/Object;

    goto :goto_4c

    .line 398
    :cond_33
    if-nez v1, :cond_41

    iget-object v3, p0, Ljdk/internal/vm/Continuation;->yieldInfo:Ljava/lang/Object;

    if-eqz v3, :cond_41

    .line 399
    iget-object v3, p0, Ljdk/internal/vm/Continuation;->yieldInfo:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 401
    :cond_41
    iput-object v2, p0, Ljdk/internal/vm/Continuation;->yieldInfo:Ljava/lang/Object;

    .line 403
    if-nez v1, :cond_49

    .line 404
    invoke-virtual {p0}, Ljdk/internal/vm/Continuation;->onContinue()V

    goto :goto_4c

    .line 406
    :cond_49
    invoke-direct {p0, v1}, Ljdk/internal/vm/Continuation;->onPinned0(I)V

    .line 408
    :goto_4c
    nop

    .line 410
    if-nez v1, :cond_50

    const/4 v0, 0x1

    :cond_50
    return v0
.end method


# virtual methods
.method public blacklist getParent()Ljdk/internal/vm/Continuation;
    .registers 2

    .line 150
    iget-object v0, p0, Ljdk/internal/vm/Continuation;->parent:Ljdk/internal/vm/Continuation;

    return-object v0
.end method

.method public blacklist getScope()Ljdk/internal/vm/ContinuationScope;
    .registers 2

    .line 146
    iget-object v0, p0, Ljdk/internal/vm/Continuation;->scope:Ljdk/internal/vm/ContinuationScope;

    return-object v0
.end method

.method public blacklist getStackTrace()[Ljava/lang/StackTraceElement;
    .registers 3

    .line 202
    sget-object v0, Ljava/lang/StackWalker$Option;->SHOW_REFLECT_FRAMES:Ljava/lang/StackWalker$Option;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljdk/internal/vm/Continuation;->stackWalker(Ljava/util/Set;)Ljava/lang/StackWalker;

    move-result-object v0

    new-instance v1, Ljdk/internal/vm/Continuation$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ljdk/internal/vm/Continuation$$ExternalSyntheticLambda2;-><init>()V

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StackWalker;->walk(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 202
    return-object v0
.end method

.method public blacklist isDone()Z
    .registers 2

    .line 436
    iget-boolean v0, p0, Ljdk/internal/vm/Continuation;->done:Z

    return v0
.end method

.method public blacklist isPreempted()Z
    .registers 2

    .line 444
    iget-boolean v0, p0, Ljdk/internal/vm/Continuation;->preempted:Z

    return v0
.end method

.method protected blacklist onContinue()V
    .registers 1

    .line 429
    return-void
.end method

.method protected blacklist onPinned(Ljdk/internal/vm/Continuation$Pinned;)V
    .registers 5
    .param p1, "reason"    # Ljdk/internal/vm/Continuation$Pinned;

    .line 422
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pinned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist run()V
    .registers 6

    .line 240
    nop

    :goto_1
    invoke-direct {p0}, Ljdk/internal/vm/Continuation;->mount()V

    .line 244
    iget-boolean v0, p0, Ljdk/internal/vm/Continuation;->done:Z

    if-nez v0, :cond_78

    .line 247
    invoke-static {}, Ljdk/internal/vm/Continuation;->currentCarrierThread()Ljava/lang/Thread;

    move-result-object v0

    .line 261
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    .line 262
    .local v1, "isVirtualThread":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_f
    invoke-direct {p0}, Ljdk/internal/vm/Continuation;->isStarted()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 263
    const/4 v4, 0x0

    invoke-static {p0, v4, v1}, Ljdk/internal/vm/Continuation;->enterSpecial(Ljdk/internal/vm/Continuation;ZZ)V

    goto :goto_1e

    .line 265
    :cond_1a
    nop

    .line 266
    invoke-static {p0, v2, v1}, Ljdk/internal/vm/Continuation;->enterSpecial(Ljdk/internal/vm/Continuation;ZZ)V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_5c

    .line 269
    .end local v1    # "isVirtualThread":Z
    :goto_1e
    invoke-direct {p0}, Ljdk/internal/vm/Continuation;->fence()Z

    .line 271
    nop

    .line 274
    :try_start_22
    iget-object v1, p0, Ljdk/internal/vm/Continuation;->parent:Ljdk/internal/vm/Continuation;

    if-eqz v1, :cond_2a

    .line 275
    iget-object v1, p0, Ljdk/internal/vm/Continuation;->parent:Ljdk/internal/vm/Continuation;

    iput-object v3, v1, Ljdk/internal/vm/Continuation;->child:Ljdk/internal/vm/Continuation;

    .line 277
    :cond_2a
    invoke-direct {p0}, Ljdk/internal/vm/Continuation;->postYieldCleanup()V

    .line 279
    invoke-direct {p0}, Ljdk/internal/vm/Continuation;->unmount()V
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_31

    .line 289
    goto :goto_39

    :catchall_31
    move-exception v1

    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 290
    .end local v1    # "e":Ljava/lang/Throwable;
    nop

    .line 293
    :goto_39
    nop

    .line 294
    iget-object v1, p0, Ljdk/internal/vm/Continuation;->yieldInfo:Ljava/lang/Object;

    if-eqz v1, :cond_57

    iget-object v1, p0, Ljdk/internal/vm/Continuation;->yieldInfo:Ljava/lang/Object;

    iget-object v2, p0, Ljdk/internal/vm/Continuation;->scope:Ljdk/internal/vm/ContinuationScope;

    if-ne v1, v2, :cond_45

    goto :goto_57

    .line 299
    :cond_45
    iget-object v1, p0, Ljdk/internal/vm/Continuation;->parent:Ljdk/internal/vm/Continuation;

    iput-object p0, v1, Ljdk/internal/vm/Continuation;->child:Ljdk/internal/vm/Continuation;

    .line 300
    iget-object v1, p0, Ljdk/internal/vm/Continuation;->parent:Ljdk/internal/vm/Continuation;

    iget-object v2, p0, Ljdk/internal/vm/Continuation;->yieldInfo:Ljava/lang/Object;

    check-cast v2, Ljdk/internal/vm/ContinuationScope;

    invoke-direct {v1, v2, p0}, Ljdk/internal/vm/Continuation;->yield0(Ljdk/internal/vm/ContinuationScope;Ljdk/internal/vm/Continuation;)Z

    .line 301
    iget-object v1, p0, Ljdk/internal/vm/Continuation;->parent:Ljdk/internal/vm/Continuation;

    iput-object v3, v1, Ljdk/internal/vm/Continuation;->child:Ljdk/internal/vm/Continuation;

    .line 303
    .end local v0    # "t":Ljava/lang/Thread;
    goto :goto_1

    .line 295
    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_57
    :goto_57
    iput-object v3, p0, Ljdk/internal/vm/Continuation;->parent:Ljdk/internal/vm/Continuation;

    .line 296
    iput-object v3, p0, Ljdk/internal/vm/Continuation;->yieldInfo:Ljava/lang/Object;

    .line 297
    return-void

    .line 269
    :catchall_5c
    move-exception v1

    invoke-direct {p0}, Ljdk/internal/vm/Continuation;->fence()Z

    .line 271
    nop

    .line 274
    :try_start_61
    iget-object v4, p0, Ljdk/internal/vm/Continuation;->parent:Ljdk/internal/vm/Continuation;

    if-eqz v4, :cond_69

    .line 275
    iget-object v4, p0, Ljdk/internal/vm/Continuation;->parent:Ljdk/internal/vm/Continuation;

    iput-object v3, v4, Ljdk/internal/vm/Continuation;->child:Ljdk/internal/vm/Continuation;

    .line 277
    :cond_69
    invoke-direct {p0}, Ljdk/internal/vm/Continuation;->postYieldCleanup()V

    .line 279
    invoke-direct {p0}, Ljdk/internal/vm/Continuation;->unmount()V
    :try_end_6f
    .catchall {:try_start_61 .. :try_end_6f} :catchall_70

    .line 289
    goto :goto_77

    :catchall_70
    move-exception v3

    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 290
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_77
    throw v1

    .line 245
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Continuation terminated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist stackWalker()Ljava/lang/StackWalker;
    .registers 2

    .line 172
    const-class v0, Ljava/lang/StackWalker$Option;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljdk/internal/vm/Continuation;->stackWalker(Ljava/util/Set;)Ljava/lang/StackWalker;

    move-result-object v0

    return-object v0
.end method

.method public blacklist stackWalker(Ljava/util/Set;)Ljava/lang/StackWalker;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/StackWalker$Option;",
            ">;)",
            "Ljava/lang/StackWalker;"
        }
    .end annotation

    .line 181
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/StackWalker$Option;>;"
    iget-object v0, p0, Ljdk/internal/vm/Continuation;->scope:Ljdk/internal/vm/ContinuationScope;

    invoke-virtual {p0, p1, v0}, Ljdk/internal/vm/Continuation;->stackWalker(Ljava/util/Set;Ljdk/internal/vm/ContinuationScope;)Ljava/lang/StackWalker;

    move-result-object v0

    return-object v0
.end method

.method public blacklist stackWalker(Ljava/util/Set;Ljdk/internal/vm/ContinuationScope;)Ljava/lang/StackWalker;
    .registers 4
    .param p2, "scope"    # Ljdk/internal/vm/ContinuationScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/StackWalker$Option;",
            ">;",
            "Ljdk/internal/vm/ContinuationScope;",
            ")",
            "Ljava/lang/StackWalker;"
        }
    .end annotation

    .line 193
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/StackWalker$Option;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scope: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljdk/internal/vm/Continuation;->scope:Ljdk/internal/vm/ContinuationScope;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist tryPreempt(Ljava/lang/Thread;)Ljdk/internal/vm/Continuation$PreemptStatus;
    .registers 4
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 508
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
