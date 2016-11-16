.class public Ljava/lang/Throwable;
.super Ljava/lang/Object;
.source "Throwable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Throwable$PrintStreamOrWriter;,
        Ljava/lang/Throwable$SentinelHolder;,
        Ljava/lang/Throwable$WrappedPrintStream;,
        Ljava/lang/Throwable$WrappedPrintWriter;
    }
.end annotation


# static fields
.field private static final CAUSE_CAPTION:Ljava/lang/String; = "Caused by: "

.field private static EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable; = null

.field private static final NULL_CAUSE_MESSAGE:Ljava/lang/String; = "Cannot suppress a null exception."

.field private static final SELF_SUPPRESSION_MESSAGE:Ljava/lang/String; = "Self-suppression not permitted"

.field private static final SUPPRESSED_CAPTION:Ljava/lang/String; = "Suppressed: "

.field private static final serialVersionUID:J = -0x2a39cad8c6884735L


# instance fields
.field private volatile transient backtrace:Ljava/lang/Object;

.field private cause:Ljava/lang/Throwable;

.field private detailMessage:Ljava/lang/String;

.field private stackTrace:[Ljava/lang/StackTraceElement;

.field private suppressedExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 193
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    #@5
    .line 207
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    #@7
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@9
    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@f
    .line 242
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    #@12
    .line 241
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 193
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    #@5
    .line 207
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    #@7
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@9
    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@f
    .line 257
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    #@12
    .line 258
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    #@14
    .line 256
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 193
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    #@5
    .line 207
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    #@7
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@9
    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@f
    .line 279
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    #@12
    .line 280
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    #@14
    .line 281
    iput-object p2, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    #@16
    .line 278
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "enableSuppression"    # Z
    .param p4, "writableStackTrace"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 193
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    #@6
    .line 207
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    #@8
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@a
    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@10
    .line 351
    if-eqz p4, :cond_1

    #@12
    .line 352
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    #@15
    .line 356
    :goto_0
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    #@17
    .line 357
    iput-object p2, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    #@19
    .line 358
    if-nez p3, :cond_0

    #@1b
    .line 359
    iput-object v1, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@1d
    .line 350
    :cond_0
    return-void

    #@1e
    .line 354
    :cond_1
    iput-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@20
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 193
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    #@6
    .line 207
    sget-object v1, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    #@8
    iput-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@a
    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@10
    .line 302
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    #@13
    .line 303
    if-nez p1, :cond_0

    #@15
    :goto_0
    iput-object v0, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    #@17
    .line 304
    iput-object p1, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    #@19
    .line 301
    return-void

    #@1a
    .line 303
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    goto :goto_0
.end method

.method private declared-synchronized getOurStackTrace()[Ljava/lang/StackTraceElement;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 816
    :try_start_0
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@3
    sget-object v1, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 817
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@9
    if-nez v0, :cond_1

    #@b
    iget-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 818
    :cond_0
    iget-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    #@11
    invoke-static {v0}, Ljava/lang/Throwable;->nativeGetStackTrace(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@17
    .line 819
    const/4 v0, 0x0

    #@18
    iput-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    #@1a
    .line 824
    :cond_1
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 825
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit p0

    #@21
    return-object v0

    #@22
    .line 828
    :cond_2
    :try_start_1
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    monitor-exit p0

    #@25
    return-object v0

    #@26
    :catchall_0
    move-exception v0

    #@27
    monitor-exit p0

    #@28
    throw v0
.end method

.method private static native nativeFillInStackTrace()Ljava/lang/Object;
.end method

.method private static native nativeGetStackTrace(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;
.end method

.method private printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 14
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
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 672
    .local p5, "dejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    move-object/from16 v0, p5

    #@2
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, "\t[CIRCULAR REFERENCE:"

    #@10
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v5, "]"

    #@1b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {p1, v2}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    #@26
    .line 671
    :cond_0
    :goto_0
    return-void

    #@27
    .line 675
    :cond_1
    move-object/from16 v0, p5

    #@29
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2c
    .line 677
    invoke-direct {p0}, Ljava/lang/Throwable;->getOurStackTrace()[Ljava/lang/StackTraceElement;

    #@2f
    move-result-object v3

    #@30
    .line 678
    .local v3, "trace":[Ljava/lang/StackTraceElement;
    array-length v2, v3

    #@31
    add-int/lit8 v12, v2, -0x1

    #@33
    .line 679
    .local v12, "m":I
    move-object/from16 v0, p2

    #@35
    array-length v2, v0

    #@36
    add-int/lit8 v13, v2, -0x1

    #@38
    .line 680
    .local v13, "n":I
    :goto_1
    if-ltz v12, :cond_2

    #@3a
    if-ltz v13, :cond_2

    #@3c
    aget-object v2, v3, v12

    #@3e
    aget-object v5, p2, v13

    #@40
    invoke-virtual {v2, v5}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_2

    #@46
    .line 681
    add-int/lit8 v12, v12, -0x1

    #@48
    add-int/lit8 v13, v13, -0x1

    #@4a
    goto :goto_1

    #@4b
    .line 683
    :cond_2
    array-length v2, v3

    #@4c
    add-int/lit8 v2, v2, -0x1

    #@4e
    sub-int v10, v2, v12

    #@50
    .line 686
    .local v10, "framesInCommon":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    move-object/from16 v0, p4

    #@57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    move-object/from16 v0, p3

    #@5d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {p1, v2}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    #@6c
    .line 687
    const/4 v11, 0x0

    #@6d
    .local v11, "i":I
    :goto_2
    if-gt v11, v12, :cond_3

    #@6f
    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    move-object/from16 v0, p4

    #@76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    const-string/jumbo v5, "\tat "

    #@7d
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v2

    #@81
    aget-object v5, v3, v11

    #@83
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {p1, v2}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    #@8e
    .line 687
    add-int/lit8 v11, v11, 0x1

    #@90
    goto :goto_2

    #@91
    .line 689
    :cond_3
    if-eqz v10, :cond_4

    #@93
    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    move-object/from16 v0, p4

    #@9a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v2

    #@9e
    const-string/jumbo v5, "\t... "

    #@a1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v2

    #@a5
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v2

    #@a9
    const-string/jumbo v5, " more"

    #@ac
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v2

    #@b0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v2

    #@b4
    invoke-virtual {p1, v2}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    #@b7
    .line 693
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    #@ba
    move-result-object v8

    #@bb
    const/4 v2, 0x0

    #@bc
    array-length v9, v8

    #@bd
    move v7, v2

    #@be
    :goto_3
    if-ge v7, v9, :cond_5

    #@c0
    aget-object v1, v8, v7

    #@c2
    .line 694
    .local v1, "se":Ljava/lang/Throwable;
    const-string/jumbo v4, "Suppressed: "

    #@c5
    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    move-object/from16 v0, p4

    #@cc
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v2

    #@d0
    const-string/jumbo v5, "\t"

    #@d3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v2

    #@d7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v5

    #@db
    move-object v2, p1

    #@dc
    move-object/from16 v6, p5

    #@de
    .line 694
    invoke-direct/range {v1 .. v6}, Ljava/lang/Throwable;->printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    #@e1
    .line 693
    add-int/lit8 v2, v7, 0x1

    #@e3
    move v7, v2

    #@e4
    goto :goto_3

    #@e5
    .line 698
    .end local v1    # "se":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@e8
    move-result-object v4

    #@e9
    .line 699
    .local v4, "ourCause":Ljava/lang/Throwable;
    if-eqz v4, :cond_0

    #@eb
    .line 700
    const-string/jumbo v7, "Caused by: "

    #@ee
    move-object v5, p1

    #@ef
    move-object v6, v3

    #@f0
    move-object/from16 v8, p4

    #@f2
    move-object/from16 v9, p5

    #@f4
    invoke-direct/range {v4 .. v9}, Ljava/lang/Throwable;->printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    #@f7
    goto/16 :goto_0
.end method

.method private printStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;)V
    .locals 14
    .param p1, "s"    # Ljava/lang/Throwable$PrintStreamOrWriter;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 642
    new-instance v3, Ljava/util/IdentityHashMap;

    #@3
    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    #@6
    invoke-static {v3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    #@9
    move-result-object v5

    #@a
    .line 643
    .local v5, "dejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    invoke-interface {v5, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    .line 645
    invoke-virtual {p1}, Ljava/lang/Throwable$PrintStreamOrWriter;->lock()Ljava/lang/Object;

    #@10
    move-result-object v13

    #@11
    monitor-enter v13

    #@12
    .line 647
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    #@15
    .line 648
    invoke-direct {p0}, Ljava/lang/Throwable;->getOurStackTrace()[Ljava/lang/StackTraceElement;

    #@18
    move-result-object v2

    #@19
    .line 649
    .local v2, "trace":[Ljava/lang/StackTraceElement;
    array-length v4, v2

    #@1a
    move v3, v1

    #@1b
    :goto_0
    if-ge v3, v4, :cond_0

    #@1d
    aget-object v12, v2, v3

    #@1f
    .line 650
    .local v12, "traceElement":Ljava/lang/StackTraceElement;
    new-instance v7, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v8, "\tat "

    #@27
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v7

    #@2f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {p1, v7}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    #@36
    .line 649
    add-int/lit8 v3, v3, 0x1

    #@38
    goto :goto_0

    #@39
    .line 653
    .end local v12    # "traceElement":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    #@3c
    move-result-object v8

    #@3d
    array-length v9, v8

    #@3e
    move v7, v1

    #@3f
    :goto_1
    if-ge v7, v9, :cond_1

    #@41
    aget-object v0, v8, v7

    #@43
    .line 654
    .local v0, "se":Ljava/lang/Throwable;
    const-string/jumbo v3, "Suppressed: "

    #@46
    const-string/jumbo v4, "\t"

    #@49
    move-object v1, p1

    #@4a
    invoke-direct/range {v0 .. v5}, Ljava/lang/Throwable;->printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    #@4d
    .line 653
    add-int/lit8 v1, v7, 0x1

    #@4f
    move v7, v1

    #@50
    goto :goto_1

    #@51
    .line 657
    .end local v0    # "se":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@54
    move-result-object v6

    #@55
    .line 658
    .local v6, "ourCause":Ljava/lang/Throwable;
    if-eqz v6, :cond_2

    #@57
    .line 659
    const-string/jumbo v9, "Caused by: "

    #@5a
    const-string/jumbo v10, ""

    #@5d
    move-object v7, p1

    #@5e
    move-object v8, v2

    #@5f
    move-object v11, v5

    #@60
    invoke-direct/range {v6 .. v11}, Ljava/lang/Throwable;->printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@63
    :cond_2
    monitor-exit v13

    #@64
    .line 638
    return-void

    #@65
    .line 645
    .end local v2    # "trace":[Ljava/lang/StackTraceElement;
    .end local v6    # "ourCause":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    #@66
    monitor-exit v13

    #@67
    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 904
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@6
    .line 905
    iget-object v5, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@8
    if-eqz v5, :cond_1

    #@a
    .line 906
    const/4 v1, 0x0

    #@b
    .line 907
    .local v1, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v5, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@d
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_3

    #@13
    .line 909
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@16
    move-result-object v1

    #@17
    .line 922
    .local v1, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_0
    iput-object v1, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@19
    .line 934
    .end local v1    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_1
    iget-object v5, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@1b
    if-eqz v5, :cond_9

    #@1d
    .line 935
    iget-object v5, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@1f
    array-length v5, v5

    #@20
    if-nez v5, :cond_6

    #@22
    .line 903
    :cond_2
    :goto_0
    return-void

    #@23
    .line 911
    .local v1, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    #@25
    .end local v1    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@28
    .line 912
    .local v1, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v5, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@2a
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v3

    #@2e
    .local v3, "t$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_0

    #@34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Ljava/lang/Throwable;

    #@3a
    .line 915
    .local v2, "t":Ljava/lang/Throwable;
    if-nez v2, :cond_4

    #@3c
    .line 916
    new-instance v4, Ljava/lang/NullPointerException;

    #@3e
    const-string/jumbo v5, "Cannot suppress a null exception."

    #@41
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@44
    throw v4

    #@45
    .line 917
    :cond_4
    if-ne v2, p0, :cond_5

    #@47
    .line 918
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@49
    const-string/jumbo v5, "Self-suppression not permitted"

    #@4c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v4

    #@50
    .line 919
    :cond_5
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@53
    goto :goto_1

    #@54
    .line 936
    .end local v1    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "t$iterator":Ljava/util/Iterator;
    :cond_6
    iget-object v5, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@56
    array-length v5, v5

    #@57
    if-ne v5, v6, :cond_7

    #@59
    .line 938
    sget-object v5, Ljava/lang/Throwable$SentinelHolder;->STACK_TRACE_ELEMENT_SENTINEL:Ljava/lang/StackTraceElement;

    #@5b
    iget-object v6, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@5d
    aget-object v6, v6, v4

    #@5f
    invoke-virtual {v5, v6}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v5

    #@63
    .line 936
    if-eqz v5, :cond_7

    #@65
    .line 939
    iput-object v7, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@67
    goto :goto_0

    #@68
    .line 941
    :cond_7
    iget-object v5, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@6a
    array-length v6, v5

    #@6b
    :goto_2
    if-ge v4, v6, :cond_2

    #@6d
    aget-object v0, v5, v4

    #@6f
    .line 942
    .local v0, "ste":Ljava/lang/StackTraceElement;
    if-nez v0, :cond_8

    #@71
    .line 943
    new-instance v4, Ljava/lang/NullPointerException;

    #@73
    const-string/jumbo v5, "null StackTraceElement in serial stream. "

    #@76
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@79
    throw v4

    #@7a
    .line 941
    :cond_8
    add-int/lit8 v4, v4, 0x1

    #@7c
    goto :goto_2

    #@7d
    .line 951
    .end local v0    # "ste":Ljava/lang/StackTraceElement;
    :cond_9
    new-array v4, v4, [Ljava/lang/StackTraceElement;

    #@7f
    iput-object v4, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@81
    goto :goto_0
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 968
    :try_start_0
    invoke-direct {p0}, Ljava/lang/Throwable;->getOurStackTrace()[Ljava/lang/StackTraceElement;

    #@4
    .line 970
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 972
    .local v0, "oldStackTrace":[Ljava/lang/StackTraceElement;
    :try_start_1
    iget-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 973
    sget-object v1, Ljava/lang/Throwable$SentinelHolder;->STACK_TRACE_SENTINEL:[Ljava/lang/StackTraceElement;

    #@c
    iput-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@e
    .line 974
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    .line 976
    :try_start_2
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13
    monitor-exit p0

    #@14
    .line 963
    return-void

    #@15
    .line 975
    :catchall_0
    move-exception v1

    #@16
    .line 976
    :try_start_3
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@18
    .line 975
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@19
    .end local v0    # "oldStackTrace":[Ljava/lang/StackTraceElement;
    :catchall_1
    move-exception v1

    #@1a
    monitor-exit p0

    #@1b
    throw v1
.end method


# virtual methods
.method public final declared-synchronized addSuppressed(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1031
    if-ne p1, p0, :cond_0

    #@3
    .line 1032
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Self-suppression not permitted"

    #@8
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0

    #@f
    .line 1034
    :cond_0
    if-nez p1, :cond_1

    #@11
    .line 1035
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    #@13
    const-string/jumbo v1, "Cannot suppress a null exception."

    #@16
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 1037
    :cond_1
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    if-nez v0, :cond_2

    #@1e
    monitor-exit p0

    #@1f
    .line 1038
    return-void

    #@20
    .line 1040
    :cond_2
    :try_start_2
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@22
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_3

    #@28
    .line 1041
    new-instance v0, Ljava/util/ArrayList;

    #@2a
    const/4 v1, 0x1

    #@2b
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@2e
    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@30
    .line 1043
    :cond_3
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@32
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@35
    monitor-exit p0

    #@36
    .line 1030
    return-void
.end method

.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 772
    :try_start_0
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 773
    iget-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 774
    :cond_0
    invoke-static {}, Ljava/lang/Throwable;->nativeFillInStackTrace()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    #@f
    .line 775
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    #@11
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_1
    monitor-exit p0

    #@14
    .line 777
    return-object p0

    #@15
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 407
    :try_start_0
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-ne v0, p0, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    :goto_0
    monitor-exit p0

    #@7
    return-object v0

    #@8
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a
    goto :goto_0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 383
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 369
    iget-object v0, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    #@0
    .prologue
    .line 807
    invoke-direct {p0}, Ljava/lang/Throwable;->getOurStackTrace()[Ljava/lang/StackTraceElement;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, [Ljava/lang/StackTraceElement;

    #@a
    return-object v0
.end method

.method public final declared-synchronized getSuppressed()[Ljava/lang/Throwable;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1064
    :try_start_0
    sget-object v0, Ljava/lang/Throwable;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1065
    const/4 v0, 0x0

    #@6
    new-array v0, v0, [Ljava/lang/Throwable;

    #@8
    sput-object v0, Ljava/lang/Throwable;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    #@a
    .line 1068
    :cond_0
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@c
    if-eqz v0, :cond_1

    #@e
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 1069
    :cond_1
    sget-object v0, Ljava/lang/Throwable;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit p0

    #@19
    return-object v0

    #@1a
    .line 1071
    :cond_2
    :try_start_1
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@1c
    sget-object v1, Ljava/lang/Throwable;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    #@1e
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, [Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    monitor-exit p0

    #@25
    return-object v0

    #@26
    :catchall_0
    move-exception v0

    #@27
    monitor-exit p0

    #@28
    throw v0
.end method

.method public declared-synchronized initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 447
    :try_start_0
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    #@3
    if-eq v0, p0, :cond_0

    #@5
    .line 448
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Can\'t overwrite cause with "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    .line 449
    const-string/jumbo v2, "a null"

    #@16
    invoke-static {p1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 448
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@25
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    :catchall_0
    move-exception v0

    #@27
    monitor-exit p0

    #@28
    throw v0

    #@29
    .line 450
    :cond_0
    if-ne p1, p0, :cond_1

    #@2b
    .line 451
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string/jumbo v1, "Self-causation not permitted"

    #@30
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@33
    throw v0

    #@34
    .line 452
    :cond_1
    iput-object p1, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    monitor-exit p0

    #@37
    .line 453
    return-object p0
.end method

.method public printStackTrace()V
    .locals 1

    #@0
    .prologue
    .line 626
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    #@5
    .line 625
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 635
    new-instance v0, Ljava/lang/Throwable$WrappedPrintStream;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/Throwable$WrappedPrintStream;-><init>(Ljava/io/PrintStream;)V

    #@5
    invoke-direct {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;)V

    #@8
    .line 634
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 712
    new-instance v0, Ljava/lang/Throwable$WrappedPrintWriter;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/Throwable$WrappedPrintWriter;-><init>(Ljava/io/PrintWriter;)V

    #@5
    invoke-direct {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;)V

    #@8
    .line 711
    return-void
.end method

.method public setStackTrace([Ljava/lang/StackTraceElement;)V
    .locals 5
    .param p1, "stackTrace"    # [Ljava/lang/StackTraceElement;

    #@0
    .prologue
    .line 861
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Ljava/lang/StackTraceElement;

    #@6
    .line 862
    .local v0, "defensiveCopy":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_1

    #@a
    .line 863
    aget-object v2, v0, v1

    #@c
    if-nez v2, :cond_0

    #@e
    .line 864
    new-instance v2, Ljava/lang/NullPointerException;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "stackTrace["

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, "]"

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 862
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 867
    :cond_1
    monitor-enter p0

    #@33
    .line 868
    :try_start_0
    iget-object v2, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@35
    if-nez v2, :cond_2

    #@37
    .line 869
    iget-object v2, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    if-nez v2, :cond_2

    #@3b
    monitor-exit p0

    #@3c
    .line 870
    return-void

    #@3d
    .line 871
    :cond_2
    :try_start_1
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    monitor-exit p0

    #@40
    .line 859
    return-void

    #@41
    .line 867
    :catchall_0
    move-exception v2

    #@42
    monitor-exit p0

    #@43
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 471
    invoke-virtual {p0}, Ljava/lang/Throwable;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 472
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 473
    .local v0, "message":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, ": "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return-object v1
.end method
