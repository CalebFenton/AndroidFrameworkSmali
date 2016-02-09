.class public Ljava/lang/Throwable;
.super Ljava/lang/Object;
.source "Throwable.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2a39cad8c6884735L


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private detailMessage:Ljava/lang/String;

.field private volatile transient stackState:Ljava/lang/Object;

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
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    #@5
    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@b
    .line 84
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    #@d
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@f
    .line 85
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    #@12
    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    #@5
    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@b
    .line 93
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    #@d
    .line 94
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    #@f
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@11
    .line 95
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    #@14
    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    #@5
    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@b
    .line 103
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    #@d
    .line 104
    iput-object p2, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    #@f
    .line 105
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    #@11
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@13
    .line 106
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    #@16
    .line 102
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    .locals 2
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "enableSuppression"    # Z
    .param p4, "writableStackTrace"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 61
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    #@6
    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@c
    .line 132
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    #@e
    .line 133
    iput-object p2, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    #@10
    .line 134
    if-nez p3, :cond_0

    #@12
    .line 135
    iput-object v1, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@14
    .line 137
    :cond_0
    if-eqz p4, :cond_1

    #@16
    .line 138
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    #@18
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@1a
    .line 139
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    #@1d
    .line 131
    :goto_0
    return-void

    #@1e
    .line 141
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
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 61
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    #@6
    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@c
    .line 114
    if-nez p1, :cond_0

    #@e
    :goto_0
    iput-object v0, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    #@10
    .line 115
    iput-object p1, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    #@12
    .line 116
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    #@14
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@16
    .line 117
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    #@19
    .line 113
    return-void

    #@1a
    .line 114
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    goto :goto_0
.end method

.method private static countDuplicates([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I
    .locals 5
    .param p0, "currentStack"    # [Ljava/lang/StackTraceElement;
    .param p1, "parentStack"    # [Ljava/lang/StackTraceElement;

    #@0
    .prologue
    .line 245
    const/4 v0, 0x0

    #@1
    .line 246
    .local v0, "duplicates":I
    array-length v3, p1

    #@2
    .line 247
    .local v3, "parentIndex":I
    array-length v1, p0

    #@3
    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    #@5
    if-ltz v1, :cond_0

    #@7
    add-int/lit8 v3, v3, -0x1

    #@9
    if-ltz v3, :cond_0

    #@b
    .line 248
    aget-object v2, p1, v3

    #@d
    .line 249
    .local v2, "parentFrame":Ljava/lang/StackTraceElement;
    aget-object v4, p0, v1

    #@f
    invoke-virtual {v2, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    .line 250
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 255
    .end local v2    # "parentFrame":Ljava/lang/StackTraceElement;
    :cond_0
    return v0
.end method

.method private getInternalStackTrace()[Ljava/lang/StackTraceElement;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 263
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@3
    sget-object v1, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 264
    iget-object v0, p0, Ljava/lang/Throwable;->stackState:Ljava/lang/Object;

    #@9
    invoke-static {v0}, Ljava/lang/Throwable;->nativeGetStackTrace(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@f
    .line 265
    iput-object v2, p0, Ljava/lang/Throwable;->stackState:Ljava/lang/Object;

    #@11
    .line 266
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@13
    return-object v0

    #@14
    .line 267
    :cond_0
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@16
    if-nez v0, :cond_1

    #@18
    .line 268
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    #@1a
    return-object v0

    #@1b
    .line 270
    :cond_1
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@1d
    return-object v0
.end method

.method private static native nativeFillInStackTrace()Ljava/lang/Object;
.end method

.method private static native nativeGetStackTrace(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;
.end method

.method private printStackTrace(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 8
    .param p1, "err"    # Ljava/lang/Appendable;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "parentStack"    # [Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 315
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@3
    move-result-object v6

    #@4
    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@7
    .line 316
    const-string/jumbo v6, "\n"

    #@a
    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@d
    .line 318
    invoke-direct {p0}, Ljava/lang/Throwable;->getInternalStackTrace()[Ljava/lang/StackTraceElement;

    #@10
    move-result-object v3

    #@11
    .line 319
    .local v3, "stack":[Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_2

    #@13
    .line 320
    if-eqz p3, :cond_0

    #@15
    invoke-static {v3, p3}, Ljava/lang/Throwable;->countDuplicates([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I

    #@18
    move-result v1

    #@19
    .line 321
    .local v1, "duplicates":I
    :goto_0
    const/4 v2, 0x0

    #@1a
    .local v2, "i":I
    :goto_1
    array-length v6, v3

    #@1b
    sub-int/2addr v6, v1

    #@1c
    if-ge v2, v6, :cond_1

    #@1e
    .line 322
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@21
    .line 323
    const-string/jumbo v6, "\tat "

    #@24
    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@27
    .line 324
    aget-object v6, v3, v2

    #@29
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@30
    .line 325
    const-string/jumbo v6, "\n"

    #@33
    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@36
    .line 321
    add-int/lit8 v2, v2, 0x1

    #@38
    goto :goto_1

    #@39
    .line 320
    .end local v1    # "duplicates":I
    .end local v2    # "i":I
    :cond_0
    const/4 v1, 0x0

    #@3a
    .restart local v1    # "duplicates":I
    goto :goto_0

    #@3b
    .line 328
    .restart local v2    # "i":I
    :cond_1
    if-lez v1, :cond_2

    #@3d
    .line 329
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@40
    .line 330
    const-string/jumbo v6, "\t... "

    #@43
    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@46
    .line 331
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@4d
    .line 332
    const-string/jumbo v6, " more\n"

    #@50
    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@53
    .line 337
    .end local v1    # "duplicates":I
    .end local v2    # "i":I
    :cond_2
    iget-object v6, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@55
    if-eqz v6, :cond_3

    #@57
    .line 338
    iget-object v6, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@59
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5c
    move-result-object v5

    #@5d
    .local v5, "throwable$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@60
    move-result v6

    #@61
    if-eqz v6, :cond_3

    #@63
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@66
    move-result-object v4

    #@67
    check-cast v4, Ljava/lang/Throwable;

    #@69
    .line 339
    .local v4, "throwable":Ljava/lang/Throwable;
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@6c
    .line 340
    const-string/jumbo v6, "\tSuppressed: "

    #@6f
    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@72
    .line 341
    new-instance v6, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v6

    #@7b
    const-string/jumbo v7, "\t"

    #@7e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v6

    #@82
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v6

    #@86
    invoke-direct {v4, p1, v6, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    #@89
    goto :goto_2

    #@8a
    .line 345
    .end local v4    # "throwable":Ljava/lang/Throwable;
    .end local v5    # "throwable$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@8d
    move-result-object v0

    #@8e
    .line 346
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_4

    #@90
    .line 347
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@93
    .line 348
    const-string/jumbo v6, "Caused by: "

    #@96
    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@99
    .line 349
    invoke-direct {v0, p1, p2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    #@9c
    .line 314
    :cond_4
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 440
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 442
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 444
    new-instance v0, Ljava/util/ArrayList;

    #@9
    iget-object v1, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@b
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@e
    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@10
    .line 439
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Throwable;->getInternalStackTrace()[Ljava/lang/StackTraceElement;

    #@3
    .line 436
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@6
    .line 433
    return-void
.end method


# virtual methods
.method public final addSuppressed(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 406
    if-ne p1, p0, :cond_0

    #@2
    .line 407
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "throwable == this"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 409
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 410
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v1, "throwable == null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 412
    :cond_1
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@18
    if-eqz v0, :cond_3

    #@1a
    .line 414
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@1c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 416
    new-instance v0, Ljava/util/ArrayList;

    #@24
    const/4 v1, 0x1

    #@25
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@28
    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@2a
    .line 418
    :cond_2
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@2c
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    .line 405
    :cond_3
    return-void
.end method

.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 163
    return-object p0

    #@5
    .line 166
    :cond_0
    invoke-static {}, Ljava/lang/Throwable;->nativeFillInStackTrace()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Ljava/lang/Throwable;->stackState:Ljava/lang/Object;

    #@b
    .line 168
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    #@d
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@f
    .line 169
    return-object p0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 391
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 392
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 394
    :cond_0
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    #@8
    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 188
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
    .line 178
    iget-object v0, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    #@0
    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Throwable;->getInternalStackTrace()[Ljava/lang/StackTraceElement;

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

.method public final getSuppressed()[Ljava/lang/Throwable;
    .locals 2

    #@0
    .prologue
    .line 428
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 430
    :cond_0
    sget-object v0, Llibcore/util/EmptyArray;->THROWABLE:[Ljava/lang/Throwable;

    #@e
    .line 428
    :goto_0
    return-object v0

    #@f
    .line 429
    :cond_1
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@11
    iget-object v1, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    #@13
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@16
    move-result v1

    #@17
    new-array v1, v1, [Ljava/lang/Throwable;

    #@19
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, [Ljava/lang/Throwable;

    #@1f
    goto :goto_0
.end method

.method public initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 376
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    #@2
    if-eq v0, p0, :cond_0

    #@4
    .line 377
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Cause already initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 379
    :cond_0
    if-ne p1, p0, :cond_1

    #@f
    .line 380
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "throwable == this"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 382
    :cond_1
    iput-object p1, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    #@1a
    .line 383
    return-object p0
.end method

.method public printStackTrace()V
    .locals 1

    #@0
    .prologue
    .line 236
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    #@5
    .line 235
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 3
    .param p1, "err"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 282
    :try_start_0
    const-string/jumbo v1, ""

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {p0, p1, v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 280
    return-void

    #@8
    .line 283
    :catch_0
    move-exception v0

    #@9
    .line 285
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    #@b
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@e
    throw v1
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "err"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 300
    :try_start_0
    const-string/jumbo v1, ""

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {p0, p1, v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 298
    return-void

    #@8
    .line 301
    :catch_0
    move-exception v0

    #@9
    .line 303
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    #@b
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@e
    throw v1
.end method

.method public setStackTrace([Ljava/lang/StackTraceElement;)V
    .locals 5
    .param p1, "trace"    # [Ljava/lang/StackTraceElement;

    #@0
    .prologue
    .line 219
    iget-object v2, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 220
    return-void

    #@5
    .line 222
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, [Ljava/lang/StackTraceElement;

    #@b
    .line 223
    .local v1, "newTrace":[Ljava/lang/StackTraceElement;
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@d
    if-ge v0, v2, :cond_2

    #@f
    .line 224
    aget-object v2, v1, v0

    #@11
    if-nez v2, :cond_1

    #@13
    .line 225
    new-instance v2, Ljava/lang/NullPointerException;

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "trace["

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    const-string/jumbo v4, "] == null"

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@33
    throw v2

    #@34
    .line 223
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 228
    :cond_2
    iput-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    #@39
    .line 218
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 355
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 356
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 357
    .local v1, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    #@e
    .line 358
    return-object v1

    #@f
    .line 360
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, ": "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    return-object v2
.end method
