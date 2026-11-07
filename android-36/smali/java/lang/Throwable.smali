.class public Ljava/lang/Throwable;
.super Ljava/lang/Object;
.source "Throwable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Throwable$WrappedPrintStream;,
        Ljava/lang/Throwable$PrintStreamOrWriter;,
        Ljava/lang/Throwable$WrappedPrintWriter;,
        Ljava/lang/Throwable$SentinelHolder;
    }
.end annotation


# static fields
.field private static final greylist-max-o CAUSE_CAPTION:Ljava/lang/String; = "Caused by: "

.field private static greylist-max-o EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable; = null

.field private static final greylist-max-o NULL_CAUSE_MESSAGE:Ljava/lang/String; = "Cannot suppress a null exception."

.field private static final greylist-max-o SELF_SUPPRESSION_MESSAGE:Ljava/lang/String; = "Self-suppression not permitted"

.field private static final greylist-max-o SUPPRESSED_CAPTION:Ljava/lang/String; = "Suppressed: "

.field private static final whitelist serialVersionUID:J = -0x2a39cad8c6884735L


# instance fields
.field private transient greylist backtrace:Ljava/lang/Object;

.field private greylist cause:Ljava/lang/Throwable;

.field private greylist detailMessage:Ljava/lang/String;

.field private greylist stackTrace:[Ljava/lang/StackTraceElement;

.field private greylist-max-r suppressedExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 219
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 248
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 271
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 272
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 219
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 248
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 286
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 287
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 219
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 248
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 308
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 309
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 310
    iput-object p2, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 311
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "enableSuppression"    # Z
    .param p4, "writableStackTrace"    # Z

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 219
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 248
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 380
    const/4 v0, 0x0

    if-eqz p4, :cond_16

    .line 381
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_18

    .line 383
    :cond_16
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 385
    :goto_18
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 386
    iput-object p2, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 387
    if-nez p3, :cond_20

    .line 388
    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 389
    :cond_20
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 219
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 248
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 331
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 332
    if-nez p1, :cond_16

    const/4 v0, 0x0

    goto :goto_1a

    :cond_16
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    iput-object v0, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 333
    iput-object p1, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 334
    return-void
.end method

.method private declared-synchronized greylist getOurStackTrace()[Ljava/lang/StackTraceElement;
    .registers 3

    monitor-enter p0

    .line 865
    :try_start_1
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    sget-object v1, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v0, :cond_10

    iget-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    if-eqz v0, :cond_10

    goto :goto_18

    .line 875
    .end local p0    # "this":Ljava/lang/Throwable;
    :cond_10
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v0, :cond_2b

    .line 878
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_2f

    monitor-exit p0

    return-object v0

    .line 869
    :cond_18
    :goto_18
    :try_start_18
    iget-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Throwable;->nativeGetStackTrace(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 870
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    .line 871
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v0, :cond_2b

    .line 872
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2f

    monitor-exit p0

    return-object v0

    .line 880
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-object v0

    .line 864
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method private static native greylist-max-r nativeFillInStackTrace()Ljava/lang/Object;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetStackTrace(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private greylist-max-o printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 22
    .param p1, "s"    # Ljava/lang/Throwable$PrintStreamOrWriter;
    .param p2, "enclosingTrace"    # [Ljava/lang/StackTraceElement;
    .param p3, "caption"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable$PrintStreamOrWriter;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 713
    .local p5, "dejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v6, p5

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "[CIRCULAR REFERENCE: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_f5

    .line 716
    :cond_38
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 718
    invoke-direct {v0}, Ljava/lang/Throwable;->getOurStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 719
    .local v3, "trace":[Ljava/lang/StackTraceElement;
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    .line 720
    .local v1, "m":I
    array-length v4, v7

    add-int/lit8 v4, v4, -0x1

    move v10, v1

    move v11, v4

    .line 721
    .end local v1    # "m":I
    .local v10, "m":I
    .local v11, "n":I
    :goto_47
    if-ltz v10, :cond_5a

    if-ltz v11, :cond_5a

    aget-object v1, v3, v10

    aget-object v4, v7, v11

    invoke-virtual {v1, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 722
    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v11, -0x1

    goto :goto_47

    .line 724
    :cond_5a
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    sub-int v12, v1, v10

    .line 727
    .local v12, "framesInCommon":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 728
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_78
    if-gt v1, v10, :cond_99

    .line 729
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\tat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 728
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .line 730
    .end local v1    # "i":I
    :cond_99
    if-eqz v12, :cond_bb

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\t... "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " more"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 734
    :cond_bb
    invoke-virtual {v0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v13

    array-length v14, v13

    const/4 v1, 0x0

    move v15, v1

    :goto_c2
    if-ge v15, v14, :cond_e5

    aget-object v1, v13, v15

    .line 735
    .local v1, "se":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, "Suppressed: "

    invoke-direct/range {v1 .. v6}, Ljava/lang/Throwable;->printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 734
    .end local v1    # "se":Ljava/lang/Throwable;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    goto :goto_c2

    .line 739
    :cond_e5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 740
    .local v1, "ourCause":Ljava/lang/Throwable;
    if-eqz v1, :cond_f5

    .line 741
    const-string v4, "Caused by: "

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Ljava/lang/Throwable;->printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 743
    .end local v1    # "ourCause":Ljava/lang/Throwable;
    .end local v3    # "trace":[Ljava/lang/StackTraceElement;
    .end local v10    # "m":I
    .end local v11    # "n":I
    .end local v12    # "framesInCommon":I
    :cond_f5
    :goto_f5
    return-void
.end method

.method private greylist printStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;)V
    .registers 12
    .param p1, "s"    # Ljava/lang/Throwable$PrintStreamOrWriter;

    .line 680
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v6

    .line 681
    .local v6, "dejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    invoke-interface {v6, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-virtual {p1}, Ljava/lang/Throwable$PrintStreamOrWriter;->lock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 685
    :try_start_11
    invoke-virtual {p1, p0}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 686
    invoke-direct {p0}, Ljava/lang/Throwable;->getOurStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 687
    .local v3, "trace":[Ljava/lang/StackTraceElement;
    array-length v0, v3
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_61

    const/4 v1, 0x0

    move v2, v1

    :goto_1b
    if-ge v2, v0, :cond_3b

    :try_start_1d
    aget-object v4, v3, v2

    .line 688
    .local v4, "traceElement":Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tat "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_38

    .line 687
    .end local v4    # "traceElement":Ljava/lang/StackTraceElement;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 698
    .end local v3    # "trace":[Ljava/lang/StackTraceElement;
    :catchall_38
    move-exception v0

    move-object v2, p1

    goto :goto_63

    .line 691
    .restart local v3    # "trace":[Ljava/lang/StackTraceElement;
    :cond_3b
    :try_start_3b
    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v0

    array-length v8, v0

    move v9, v1

    :goto_41
    if-ge v9, v8, :cond_51

    aget-object v1, v0, v9

    .line 692
    .local v1, "se":Ljava/lang/Throwable;
    const-string v4, "Suppressed: "

    const-string v5, "\t"
    :try_end_49
    .catchall {:try_start_3b .. :try_end_49} :catchall_61

    move-object v2, p1

    .end local p1    # "s":Ljava/lang/Throwable$PrintStreamOrWriter;
    .local v2, "s":Ljava/lang/Throwable$PrintStreamOrWriter;
    :try_start_4a
    invoke-direct/range {v1 .. v6}, Ljava/lang/Throwable;->printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 691
    .end local v1    # "se":Ljava/lang/Throwable;
    add-int/lit8 v9, v9, 0x1

    move-object p1, v2

    goto :goto_41

    .line 695
    .end local v2    # "s":Ljava/lang/Throwable$PrintStreamOrWriter;
    .restart local p1    # "s":Ljava/lang/Throwable$PrintStreamOrWriter;
    :cond_51
    move-object v2, p1

    .end local p1    # "s":Ljava/lang/Throwable$PrintStreamOrWriter;
    .restart local v2    # "s":Ljava/lang/Throwable$PrintStreamOrWriter;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 696
    .local v1, "ourCause":Ljava/lang/Throwable;
    if-eqz v1, :cond_5f

    .line 697
    const-string v4, "Caused by: "

    const-string v5, ""

    invoke-direct/range {v1 .. v6}, Ljava/lang/Throwable;->printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 698
    .end local v1    # "ourCause":Ljava/lang/Throwable;
    .end local v3    # "trace":[Ljava/lang/StackTraceElement;
    :cond_5f
    monitor-exit v7

    .line 699
    return-void

    .line 698
    .end local v2    # "s":Ljava/lang/Throwable$PrintStreamOrWriter;
    .restart local p1    # "s":Ljava/lang/Throwable$PrintStreamOrWriter;
    :catchall_61
    move-exception v0

    move-object v2, p1

    .end local p1    # "s":Ljava/lang/Throwable$PrintStreamOrWriter;
    .restart local v2    # "s":Ljava/lang/Throwable$PrintStreamOrWriter;
    :goto_63
    monitor-exit v7
    :try_end_64
    .catchall {:try_start_4a .. :try_end_64} :catchall_65

    throw v0

    :catchall_65
    move-exception v0

    goto :goto_63
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 11
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 963
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 968
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 971
    .local v0, "candidateSuppressedExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 973
    iget-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 976
    .local v1, "candidateStackTrace":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/StackTraceElement;

    iput-object v3, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 978
    const/4 v3, 0x0

    if-eqz v0, :cond_4c

    .line 979
    invoke-direct {p0, v0}, Ljava/lang/Throwable;->validateSuppressedExceptionsList(Ljava/util/List;)I

    move-result v4

    .line 980
    .local v4, "suppressedSize":I
    if-lez v4, :cond_4b

    .line 981
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0x64

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 983
    .local v5, "suppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Throwable;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    .line 986
    .local v7, "t":Ljava/lang/Throwable;
    const-string v8, "Cannot suppress a null exception."

    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 987
    if-eq v7, p0, :cond_41

    .line 989
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    .end local v7    # "t":Ljava/lang/Throwable;
    goto :goto_2a

    .line 988
    .restart local v7    # "t":Ljava/lang/Throwable;
    :cond_41
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Self-suppression not permitted"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 993
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_49
    iput-object v5, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 995
    .end local v4    # "suppressedSize":I
    .end local v5    # "suppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Throwable;>;"
    :cond_4b
    goto :goto_4e

    .line 996
    :cond_4c
    iput-object v3, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 1008
    :goto_4e
    if-eqz v1, :cond_7a

    .line 1011
    invoke-virtual {v1}, [Ljava/lang/StackTraceElement;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, [Ljava/lang/StackTraceElement;

    .line 1012
    array-length v4, v1

    const/4 v5, 0x1

    if-lt v4, v5, :cond_7a

    .line 1013
    array-length v4, v1

    if-ne v4, v5, :cond_6b

    sget-object v4, Ljava/lang/Throwable$SentinelHolder;->STACK_TRACE_ELEMENT_SENTINEL:Ljava/lang/StackTraceElement;

    aget-object v5, v1, v2

    .line 1015
    invoke-virtual {v4, v5}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 1016
    iput-object v3, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    goto :goto_7a

    .line 1018
    :cond_6b
    array-length v3, v1

    :goto_6c
    if-ge v2, v3, :cond_78

    aget-object v4, v1, v2

    .line 1019
    .local v4, "ste":Ljava/lang/StackTraceElement;
    const-string v5, "null StackTraceElement in serial stream."

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1018
    .end local v4    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 1021
    :cond_78
    iput-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 1030
    :cond_7a
    :goto_7a
    return-void
.end method

.method private blacklist validateSuppressedExceptionsList(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1043
    .local p1, "deserSuppressedExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1044
    .local v0, "size":I
    if-ltz v0, :cond_7

    .line 1047
    return v0

    .line 1045
    :cond_7
    new-instance v1, Ljava/io/StreamCorruptedException;

    const-string v2, "Negative list size reported."

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private declared-synchronized whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1068
    :try_start_1
    invoke-direct {p0}, Ljava/lang/Throwable;->getOurStackTrace()[Ljava/lang/StackTraceElement;

    .line 1070
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1d

    .line 1072
    .local v0, "oldStackTrace":[Ljava/lang/StackTraceElement;
    :try_start_6
    iget-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_19

    if-nez v1, :cond_11

    .line 1073
    :try_start_a
    sget-object v1, Ljava/lang/Throwable$SentinelHolder;->STACK_TRACE_SENTINEL:[Ljava/lang/StackTraceElement;

    iput-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_f

    goto :goto_11

    .line 1076
    :catchall_f
    move-exception v1

    goto :goto_1a

    .line 1074
    :cond_11
    :goto_11
    :try_start_11
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_19

    .line 1076
    :try_start_14
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_1d

    .line 1077
    nop

    .line 1078
    monitor-exit p0

    return-void

    .line 1076
    .end local p0    # "this":Ljava/lang/Throwable;
    :catchall_19
    move-exception v1

    :goto_1a
    :try_start_1a
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 1077
    throw v1

    .line 1067
    .end local v0    # "oldStackTrace":[Ljava/lang/StackTraceElement;
    .end local p1    # "s":Ljava/io/ObjectOutputStream;
    :catchall_1d
    move-exception p1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_1d

    throw p1
.end method


# virtual methods
.method public final declared-synchronized whitelist test-api addSuppressed(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "exception"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 1131
    if-eq p1, p0, :cond_27

    .line 1134
    :try_start_3
    const-string v0, "Cannot suppress a null exception."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1136
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_25

    if-nez v0, :cond_e

    .line 1137
    monitor-exit p0

    return-void

    .line 1141
    :cond_e
    :try_start_e
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1142
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 1144
    .end local p0    # "this":Ljava/lang/Throwable;
    :cond_1e
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_25

    .line 1145
    monitor-exit p0

    return-void

    .line 1130
    .end local p1    # "exception":Ljava/lang/Throwable;
    :catchall_25
    move-exception p1

    goto :goto_2f

    .line 1132
    .restart local p1    # "exception":Ljava/lang/Throwable;
    :cond_27
    :try_start_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Self-suppression not permitted"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1130
    .end local p1    # "exception":Ljava/lang/Throwable;
    :goto_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_25

    throw p1
.end method

.method public declared-synchronized whitelist test-api fillInStackTrace()Ljava/lang/Throwable;
    .registers 2
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    monitor-enter p0

    .line 815
    :try_start_1
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v0, :cond_9

    iget-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    if-eqz v0, :cond_13

    .line 819
    .end local p0    # "this":Ljava/lang/Throwable;
    :cond_9
    invoke-static {}, Ljava/lang/Throwable;->nativeFillInStackTrace()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    .line 822
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 824
    :cond_13
    monitor-exit p0

    return-object p0

    .line 814
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public declared-synchronized whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    monitor-enter p0

    .line 436
    :try_start_1
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    if-ne v0, p0, :cond_7

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    :goto_9
    monitor-exit p0

    return-object v0

    .line 436
    .end local p0    # "this":Ljava/lang/Throwable;
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public whitelist test-api getLocalizedMessage()Ljava/lang/String;
    .registers 2

    .line 412
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 2

    .line 398
    iget-object v0, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getStackTrace()[Ljava/lang/StackTraceElement;
    .registers 2

    .line 857
    invoke-direct {p0}, Ljava/lang/Throwable;->getOurStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/StackTraceElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public final declared-synchronized whitelist test-api getSuppressed()[Ljava/lang/Throwable;
    .registers 3

    monitor-enter p0

    .line 1168
    :try_start_1
    sget-object v0, Ljava/lang/Throwable;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    if-nez v0, :cond_a

    .line 1169
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Throwable;

    sput-object v0, Ljava/lang/Throwable;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    .line 1175
    .end local p0    # "this":Ljava/lang/Throwable;
    :cond_a
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    if-eqz v0, :cond_23

    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_23

    .line 1178
    :cond_17
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    sget-object v1, Ljava/lang/Throwable;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Throwable;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_27

    monitor-exit p0

    return-object v0

    .line 1176
    :cond_23
    :goto_23
    :try_start_23
    sget-object v0, Ljava/lang/Throwable;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_27

    monitor-exit p0

    return-object v0

    .line 1167
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public declared-synchronized whitelist test-api initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 5
    .param p1, "cause"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 476
    :try_start_1
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    if-ne v0, p0, :cond_13

    .line 479
    if-eq p1, p0, :cond_b

    .line 481
    iput-object p1, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_32

    .line 482
    monitor-exit p0

    return-object p0

    .line 480
    .end local p0    # "this":Ljava/lang/Throwable;
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Self-causation not permitted"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 477
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t overwrite cause with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "a null"

    .line 478
    invoke-static {p1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 475
    .end local p1    # "cause":Ljava/lang/Throwable;
    :catchall_32
    move-exception p1

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_32

    throw p1
.end method

.method public whitelist test-api printStackTrace()V
    .registers 2

    .line 665
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 666
    return-void
.end method

.method public whitelist test-api printStackTrace(Ljava/io/PrintStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/PrintStream;

    .line 674
    new-instance v0, Ljava/lang/Throwable$WrappedPrintStream;

    invoke-direct {v0, p1}, Ljava/lang/Throwable$WrappedPrintStream;-><init>(Ljava/io/PrintStream;)V

    invoke-direct {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;)V

    .line 675
    return-void
.end method

.method public whitelist test-api printStackTrace(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "s"    # Ljava/io/PrintWriter;

    .line 753
    new-instance v0, Ljava/lang/Throwable$WrappedPrintWriter;

    invoke-direct {v0, p1}, Ljava/lang/Throwable$WrappedPrintWriter;-><init>(Ljava/io/PrintWriter;)V

    invoke-direct {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;)V

    .line 754
    return-void
.end method

.method final blacklist setCause(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 492
    iput-object p1, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 493
    return-void
.end method

.method public whitelist test-api setStackTrace([Ljava/lang/StackTraceElement;)V
    .registers 7
    .param p1, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .line 913
    invoke-virtual {p1}, [Ljava/lang/StackTraceElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 914
    .local v0, "defensiveCopy":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_30

    .line 915
    aget-object v2, v0, v1

    if-eqz v2, :cond_11

    .line 914
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 916
    :cond_11
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stackTrace["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 919
    .end local v1    # "i":I
    :cond_30
    monitor-enter p0

    .line 920
    :try_start_31
    iget-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v1, :cond_3b

    iget-object v1, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    if-nez v1, :cond_3b

    .line 922
    monitor-exit p0

    return-void

    .line 923
    :cond_3b
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 924
    monitor-exit p0

    .line 925
    return-void

    .line 924
    :catchall_3f
    move-exception v1

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 510
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_27

    :cond_26
    move-object v2, v0

    :goto_27
    return-object v2
.end method
