.class public Ljava/util/logging/LogRecord;
.super Ljava/lang/Object;
.source "LogRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final greylist-max-o MIN_SEQUENTIAL_THREAD_ID:I = 0x3fffffff

.field private static final greylist-max-o globalSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final greylist-max-o nextThreadId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final whitelist serialVersionUID:J = 0x4a8d593df3695196L

.field private static final greylist-max-o threadIds:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o level:Ljava/util/logging/Level;

.field private greylist-max-o loggerName:Ljava/lang/String;

.field private greylist-max-o message:Ljava/lang/String;

.field private greylist-max-o millis:J

.field private transient greylist-max-o needToInferCaller:Z

.field private transient greylist-max-o parameters:[Ljava/lang/Object;

.field private transient greylist-max-o resourceBundle:Ljava/util/ResourceBundle;

.field private greylist-max-o resourceBundleName:Ljava/lang/String;

.field private greylist-max-o sequenceNumber:J

.field private greylist-max-o sourceClassName:Ljava/lang/String;

.field private greylist-max-o sourceMethodName:Ljava/lang/String;

.field private greylist-max-o threadID:I

.field private greylist-max-o thrown:Ljava/lang/Throwable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljava/util/logging/LogRecord;->globalSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x3fffffff    # 1.9999999f

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Ljava/util/logging/LogRecord;->nextThreadId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ljava/util/logging/LogRecord;->threadIds:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/logging/Level;Ljava/lang/String;)V
    .registers 5
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    iput-object p1, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    .line 180
    iput-object p2, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    .line 182
    sget-object v0, Ljava/util/logging/LogRecord;->globalSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    .line 183
    invoke-direct {p0}, Ljava/util/logging/LogRecord;->defaultThreadID()I

    move-result v0

    iput v0, p0, Ljava/util/logging/LogRecord;->threadID:I

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/logging/LogRecord;->millis:J

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    .line 186
    return-void
.end method

.method private greylist-max-o defaultThreadID()I
    .registers 5

    .line 147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 148
    .local v0, "tid":J
    const-wide/32 v2, 0x3fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_11

    .line 149
    long-to-int v2, v0

    return v2

    .line 151
    :cond_11
    sget-object v2, Ljava/util/logging/LogRecord;->threadIds:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 152
    .local v2, "id":Ljava/lang/Integer;
    if-nez v2, :cond_2a

    .line 153
    sget-object v3, Ljava/util/logging/LogRecord;->nextThreadId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 154
    sget-object v3, Ljava/util/logging/LogRecord;->threadIds:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 156
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3
.end method

.method private greylist-max-o inferCaller()V
    .registers 9

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    .line 560
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/VMStack;->getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 561
    .local v0, "stack":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    .line 564
    .local v1, "depth":I
    const/4 v2, 0x1

    .line 565
    .local v2, "lookingForLogger":Z
    const/4 v3, 0x0

    .local v3, "ix":I
    :goto_e
    if-ge v3, v1, :cond_40

    .line 572
    aget-object v4, v0, v3

    .line 573
    .local v4, "frame":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 574
    .local v5, "cname":Ljava/lang/String;
    invoke-direct {p0, v5}, Ljava/util/logging/LogRecord;->isLoggerImplFrame(Ljava/lang/String;)Z

    move-result v6

    .line 575
    .local v6, "isLoggerImpl":Z
    if-eqz v2, :cond_20

    .line 577
    if-eqz v6, :cond_3d

    .line 578
    const/4 v2, 0x0

    goto :goto_3d

    .line 581
    :cond_20
    if-nez v6, :cond_3d

    .line 583
    const-string v7, "java.lang.reflect."

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3d

    const-string v7, "sun.reflect."

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 585
    invoke-virtual {p0, v5}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 587
    return-void

    .line 565
    .end local v4    # "frame":Ljava/lang/StackTraceElement;
    .end local v5    # "cname":Ljava/lang/String;
    .end local v6    # "isLoggerImpl":Z
    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 594
    .end local v3    # "ix":I
    :cond_40
    return-void
.end method

.method private greylist-max-o isLoggerImplFrame(Ljava/lang/String;)Z
    .registers 3
    .param p1, "cname"    # Ljava/lang/String;

    .line 598
    const-string v0, "java.util.logging.Logger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 599
    const-string v0, "java.util.logging.LoggingProxyImpl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 600
    const-string v0, "sun.util.logging."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 598
    :goto_1c
    return v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 495
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 498
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v0

    .line 499
    .local v0, "major":B
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v1

    .line 500
    .local v1, "minor":B
    const/4 v2, 0x1

    if-ne v0, v2, :cond_91

    .line 503
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 504
    .local v2, "len":I
    const/4 v3, -0x1

    if-lt v2, v3, :cond_8b

    .line 506
    const/4 v4, 0x0

    if-ne v2, v3, :cond_1b

    .line 507
    iput-object v4, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    goto :goto_59

    .line 508
    :cond_1b
    const/16 v3, 0xff

    if-ge v2, v3, :cond_35

    .line 509
    new-array v3, v2, [Ljava/lang/Object;

    iput-object v3, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    .line 510
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_24
    iget-object v5, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    array-length v5, v5

    if-ge v3, v5, :cond_34

    .line 511
    iget-object v5, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v3

    .line 510
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .end local v3    # "i":I
    :cond_34
    goto :goto_59

    .line 514
    :cond_35
    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0x400

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 515
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_41
    if-ge v5, v2, :cond_4d

    .line 516
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 518
    .end local v5    # "i":I
    :cond_4d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    .line 521
    .end local v3    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_59
    iget-object v3, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    if-eqz v3, :cond_87

    .line 525
    :try_start_5d
    iget-object v3, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    .line 527
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 528
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 526
    invoke-static {v3, v5, v6}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v3

    .line 529
    .local v3, "bundle":Ljava/util/ResourceBundle;
    iput-object v3, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;
    :try_end_6d
    .catch Ljava/util/MissingResourceException; {:try_start_5d .. :try_end_6d} :catch_6e

    .line 545
    .end local v3    # "bundle":Ljava/util/ResourceBundle;
    goto :goto_87

    .line 530
    :catch_6e
    move-exception v3

    .line 538
    .local v3, "ex":Ljava/util/MissingResourceException;
    :try_start_6f
    iget-object v5, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 539
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 538
    invoke-static {v5, v6, v7}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v5

    iput-object v5, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;
    :try_end_83
    .catch Ljava/util/MissingResourceException; {:try_start_6f .. :try_end_83} :catch_84

    .line 544
    goto :goto_87

    .line 540
    :catch_84
    move-exception v5

    .line 543
    .local v5, "innerE":Ljava/util/MissingResourceException;
    iput-object v4, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    .line 548
    .end local v3    # "ex":Ljava/util/MissingResourceException;
    .end local v5    # "innerE":Ljava/util/MissingResourceException;
    :cond_87
    :goto_87
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    .line 549
    return-void

    .line 505
    :cond_8b
    new-instance v3, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v3}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v3

    .line 501
    .end local v2    # "len":I
    :cond_91
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LogRecord: bad version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 475
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    .line 476
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    .line 477
    iget-object v0, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    if-nez v0, :cond_14

    .line 478
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 479
    return-void

    .line 481
    :cond_14
    iget-object v0, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 483
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    iget-object v1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_39

    .line 484
    iget-object v1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_2b

    .line 485
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_36

    .line 487
    :cond_2b
    iget-object v1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 483
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 490
    .end local v0    # "i":I
    :cond_39
    return-void
.end method


# virtual methods
.method public whitelist test-api getLevel()Ljava/util/logging/Level;
    .registers 2

    .line 254
    iget-object v0, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    return-object v0
.end method

.method public whitelist test-api getLoggerName()Ljava/lang/String;
    .registers 2

    .line 194
    iget-object v0, p0, Ljava/util/logging/LogRecord;->loggerName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 2

    .line 368
    iget-object v0, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMillis()J
    .registers 3

    .line 425
    iget-wide v0, p0, Ljava/util/logging/LogRecord;->millis:J

    return-wide v0
.end method

.method public whitelist test-api getParameters()[Ljava/lang/Object;
    .registers 2

    .line 387
    iget-object v0, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api getResourceBundle()Ljava/util/ResourceBundle;
    .registers 2

    .line 216
    iget-object v0, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    return-object v0
.end method

.method public whitelist test-api getResourceBundleName()Ljava/lang/String;
    .registers 2

    .line 237
    iget-object v0, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSequenceNumber()J
    .registers 3

    .line 277
    iget-wide v0, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    return-wide v0
.end method

.method public whitelist test-api getSourceClassName()Ljava/lang/String;
    .registers 2

    .line 306
    iget-boolean v0, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    if-eqz v0, :cond_7

    .line 307
    invoke-direct {p0}, Ljava/util/logging/LogRecord;->inferCaller()V

    .line 309
    :cond_7
    iget-object v0, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSourceMethodName()Ljava/lang/String;
    .registers 2

    .line 337
    iget-boolean v0, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    if-eqz v0, :cond_7

    .line 338
    invoke-direct {p0}, Ljava/util/logging/LogRecord;->inferCaller()V

    .line 340
    :cond_7
    iget-object v0, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getThreadID()I
    .registers 2

    .line 408
    iget v0, p0, Ljava/util/logging/LogRecord;->threadID:I

    return v0
.end method

.method public whitelist test-api getThrown()Ljava/lang/Throwable;
    .registers 2

    .line 446
    iget-object v0, p0, Ljava/util/logging/LogRecord;->thrown:Ljava/lang/Throwable;

    return-object v0
.end method

.method public whitelist test-api setLevel(Ljava/util/logging/Level;)V
    .registers 3
    .param p1, "level"    # Ljava/util/logging/Level;

    .line 262
    if-eqz p1, :cond_5

    .line 265
    iput-object p1, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    .line 266
    return-void

    .line 263
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setLoggerName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 203
    iput-object p1, p0, Ljava/util/logging/LogRecord;->loggerName:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public whitelist test-api setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 377
    iput-object p1, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public whitelist test-api setMillis(J)V
    .registers 3
    .param p1, "millis"    # J

    .line 434
    iput-wide p1, p0, Ljava/util/logging/LogRecord;->millis:J

    .line 435
    return-void
.end method

.method public whitelist test-api setParameters([Ljava/lang/Object;)V
    .registers 2
    .param p1, "parameters"    # [Ljava/lang/Object;

    .line 396
    iput-object p1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    .line 397
    return-void
.end method

.method public whitelist test-api setResourceBundle(Ljava/util/ResourceBundle;)V
    .registers 2
    .param p1, "bundle"    # Ljava/util/ResourceBundle;

    .line 225
    iput-object p1, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    .line 226
    return-void
.end method

.method public whitelist test-api setResourceBundleName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 246
    iput-object p1, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public whitelist test-api setSequenceNumber(J)V
    .registers 3
    .param p1, "seq"    # J

    .line 288
    iput-wide p1, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    .line 289
    return-void
.end method

.method public whitelist test-api setSourceClassName(Ljava/lang/String;)V
    .registers 3
    .param p1, "sourceClassName"    # Ljava/lang/String;

    .line 318
    iput-object p1, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    .line 320
    return-void
.end method

.method public whitelist test-api setSourceMethodName(Ljava/lang/String;)V
    .registers 3
    .param p1, "sourceMethodName"    # Ljava/lang/String;

    .line 349
    iput-object p1, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    .line 351
    return-void
.end method

.method public whitelist test-api setThreadID(I)V
    .registers 2
    .param p1, "threadID"    # I

    .line 416
    iput p1, p0, Ljava/util/logging/LogRecord;->threadID:I

    .line 417
    return-void
.end method

.method public whitelist test-api setThrown(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .line 455
    iput-object p1, p0, Ljava/util/logging/LogRecord;->thrown:Ljava/lang/Throwable;

    .line 456
    return-void
.end method
