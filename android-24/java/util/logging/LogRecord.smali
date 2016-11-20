.class public Ljava/util/logging/LogRecord;
.super Ljava/lang/Object;
.source "LogRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MIN_SEQUENTIAL_THREAD_ID:I = 0x3fffffff

.field private static final globalSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final nextThreadId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final serialVersionUID:J = 0x4a8d593df3695196L

.field private static final threadIds:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private level:Ljava/util/logging/Level;

.field private loggerName:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private millis:J

.field private transient needToInferCaller:Z

.field private transient parameters:[Ljava/lang/Object;

.field private transient resourceBundle:Ljava/util/ResourceBundle;

.field private resourceBundleName:Ljava/lang/String;

.field private sequenceNumber:J

.field private sourceClassName:Ljava/lang/String;

.field private sourceMethodName:Ljava/lang/String;

.field private threadID:I

.field private thrown:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    const-wide/16 v2, 0x0

    #@4
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    #@7
    .line 71
    sput-object v0, Ljava/util/logging/LogRecord;->globalSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    #@9
    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@b
    const v1, 0x3fffffff    # 1.9999999f

    #@e
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@11
    .line 84
    sput-object v0, Ljava/util/logging/LogRecord;->nextThreadId:Ljava/util/concurrent/atomic/AtomicInteger;

    #@13
    .line 87
    new-instance v0, Ljava/lang/ThreadLocal;

    #@15
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@18
    sput-object v0, Ljava/util/logging/LogRecord;->threadIds:Ljava/lang/ThreadLocal;

    #@1a
    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 2
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 178
    invoke-virtual {p1}, Ljava/util/logging/Level;->getClass()Ljava/lang/Class;

    #@6
    .line 179
    iput-object p1, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    #@8
    .line 180
    iput-object p2, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    #@a
    .line 182
    sget-object v0, Ljava/util/logging/LogRecord;->globalSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    #@c
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    #@f
    move-result-wide v0

    #@10
    iput-wide v0, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    #@12
    .line 183
    invoke-direct {p0}, Ljava/util/logging/LogRecord;->defaultThreadID()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Ljava/util/logging/LogRecord;->threadID:I

    #@18
    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1b
    move-result-wide v0

    #@1c
    iput-wide v0, p0, Ljava/util/logging/LogRecord;->millis:J

    #@1e
    .line 185
    const/4 v0, 0x1

    #@1f
    iput-boolean v0, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    #@21
    .line 176
    return-void
.end method

.method private defaultThreadID()I
    .locals 6

    #@0
    .prologue
    .line 147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    #@7
    move-result-wide v2

    #@8
    .line 148
    .local v2, "tid":J
    const-wide/32 v4, 0x3fffffff

    #@b
    cmp-long v1, v2, v4

    #@d
    if-gez v1, :cond_0

    #@f
    .line 149
    long-to-int v1, v2

    #@10
    return v1

    #@11
    .line 151
    :cond_0
    sget-object v1, Ljava/util/logging/LogRecord;->threadIds:Ljava/lang/ThreadLocal;

    #@13
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/lang/Integer;

    #@19
    .line 152
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_1

    #@1b
    .line 153
    sget-object v1, Ljava/util/logging/LogRecord;->nextThreadId:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1d
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@20
    move-result v1

    #@21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v0

    #@25
    .line 154
    sget-object v1, Ljava/util/logging/LogRecord;->threadIds:Ljava/lang/ThreadLocal;

    #@27
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@2a
    .line 156
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@2d
    move-result v1

    #@2e
    return v1
.end method

.method private inferCaller()V
    .locals 8

    #@0
    .prologue
    .line 530
    const/4 v7, 0x0

    #@1
    iput-boolean v7, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    #@3
    .line 532
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@6
    move-result-object v7

    #@7
    invoke-static {v7}, Ldalvik/system/VMStack;->getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    #@a
    move-result-object v6

    #@b
    .line 533
    .local v6, "stack":[Ljava/lang/StackTraceElement;
    array-length v1, v6

    #@c
    .line 535
    .local v1, "depth":I
    const/4 v5, 0x1

    #@d
    .line 536
    .local v5, "lookingForLogger":Z
    const/4 v4, 0x0

    #@e
    .local v4, "ix":I
    :goto_0
    if-ge v4, v1, :cond_2

    #@10
    .line 541
    aget-object v2, v6, v4

    #@12
    .line 542
    .local v2, "frame":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 543
    .local v0, "cname":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/util/logging/LogRecord;->isLoggerImplFrame(Ljava/lang/String;)Z

    #@19
    move-result v3

    #@1a
    .line 544
    .local v3, "isLoggerImpl":Z
    if-eqz v5, :cond_1

    #@1c
    .line 546
    if-eqz v3, :cond_0

    #@1e
    .line 547
    const/4 v5, 0x0

    #@1f
    .line 536
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@21
    goto :goto_0

    #@22
    .line 550
    :cond_1
    if-nez v3, :cond_0

    #@24
    .line 552
    const-string/jumbo v7, "java.lang.reflect."

    #@27
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2a
    move-result v7

    #@2b
    if-nez v7, :cond_0

    #@2d
    const-string/jumbo v7, "sun.reflect."

    #@30
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@33
    move-result v7

    #@34
    if-nez v7, :cond_0

    #@36
    .line 554
    invoke-virtual {p0, v0}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@39
    .line 555
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {p0, v7}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@40
    .line 556
    return-void

    #@41
    .line 529
    .end local v0    # "cname":Ljava/lang/String;
    .end local v2    # "frame":Ljava/lang/StackTraceElement;
    .end local v3    # "isLoggerImpl":Z
    :cond_2
    return-void
.end method

.method private isLoggerImplFrame(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 567
    const-string/jumbo v0, "java.util.logging.Logger"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 568
    const-string/jumbo v0, "java.util.logging.LoggingProxyImpl"

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    .line 567
    if-nez v0, :cond_0

    #@12
    .line 569
    const-string/jumbo v0, "sun.util.logging."

    #@15
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    .line 567
    :goto_0
    return v0

    #@1a
    :cond_0
    const/4 v0, 0x1

    #@1b
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 492
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 495
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    #@7
    move-result v4

    #@8
    .line 496
    .local v4, "major":B
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    #@b
    move-result v5

    #@c
    .line 497
    .local v5, "minor":B
    const/4 v6, 0x1

    #@d
    if-eq v4, v6, :cond_0

    #@f
    .line 498
    new-instance v6, Ljava/io/IOException;

    #@11
    new-instance v7, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v8, "LogRecord: bad version: "

    #@19
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v7

    #@1d
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    const-string/jumbo v8, "."

    #@24
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v7

    #@30
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@33
    throw v6

    #@34
    .line 500
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@37
    move-result v3

    #@38
    .line 501
    .local v3, "len":I
    const/4 v6, -0x1

    #@39
    if-ne v3, v6, :cond_3

    #@3b
    .line 502
    iput-object v9, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    #@3d
    .line 510
    :cond_1
    iget-object v6, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    #@3f
    if-eqz v6, :cond_2

    #@41
    .line 512
    :try_start_0
    iget-object v6, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    #@43
    invoke-static {v6}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    #@46
    move-result-object v6

    #@47
    iput-object v6, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    .line 525
    :cond_2
    :goto_0
    const/4 v6, 0x0

    #@4a
    iput-boolean v6, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    #@4c
    .line 490
    return-void

    #@4d
    .line 504
    :cond_3
    new-array v6, v3, [Ljava/lang/Object;

    #@4f
    iput-object v6, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    #@51
    .line 505
    const/4 v1, 0x0

    #@52
    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    #@54
    array-length v6, v6

    #@55
    if-ge v1, v6, :cond_1

    #@57
    .line 506
    iget-object v6, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    #@59
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@5c
    move-result-object v7

    #@5d
    aput-object v7, v6, v1

    #@5f
    .line 505
    add-int/lit8 v1, v1, 0x1

    #@61
    goto :goto_1

    #@62
    .line 513
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    #@63
    .line 515
    .local v0, "ex":Ljava/util/MissingResourceException;
    :try_start_1
    iget-object v6, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    #@65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@68
    move-result-object v7

    #@69
    .line 516
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@6c
    move-result-object v8

    #@6d
    invoke-virtual {v8}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@70
    move-result-object v8

    #@71
    .line 515
    invoke-static {v6, v7, v8}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    #@74
    move-result-object v6

    #@75
    iput-object v6, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@77
    goto :goto_0

    #@78
    .line 517
    :catch_1
    move-exception v2

    #@79
    .line 520
    .local v2, "innerE":Ljava/util/MissingResourceException;
    iput-object v9, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    #@7b
    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 469
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@4
    .line 472
    const/4 v1, 0x1

    #@5
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    #@8
    .line 473
    const/4 v1, 0x0

    #@9
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    #@c
    .line 474
    iget-object v1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    #@e
    if-nez v1, :cond_0

    #@10
    .line 475
    const/4 v1, -0x1

    #@11
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@14
    .line 476
    return-void

    #@15
    .line 478
    :cond_0
    iget-object v1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    #@17
    array-length v1, v1

    #@18
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@1b
    .line 480
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    #@1e
    array-length v1, v1

    #@1f
    if-ge v0, v1, :cond_2

    #@21
    .line 481
    iget-object v1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    #@23
    aget-object v1, v1, v0

    #@25
    if-nez v1, :cond_1

    #@27
    .line 482
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@2a
    .line 480
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 484
    :cond_1
    iget-object v1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    #@2f
    aget-object v1, v1, v0

    #@31
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@38
    goto :goto_1

    #@39
    .line 467
    :cond_2
    return-void
.end method


# virtual methods
.method public getLevel()Ljava/util/logging/Level;
    .locals 1

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    #@2
    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Ljava/util/logging/LogRecord;->loggerName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 365
    iget-object v0, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMillis()J
    .locals 2

    #@0
    .prologue
    .line 422
    iget-wide v0, p0, Ljava/util/logging/LogRecord;->millis:J

    #@2
    return-wide v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 384
    iget-object v0, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .locals 1

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    #@2
    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSequenceNumber()J
    .locals 2

    #@0
    .prologue
    .line 275
    iget-wide v0, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    #@2
    return-wide v0
.end method

.method public getSourceClassName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 303
    iget-boolean v0, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 304
    invoke-direct {p0}, Ljava/util/logging/LogRecord;->inferCaller()V

    #@7
    .line 306
    :cond_0
    iget-object v0, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    #@9
    return-object v0
.end method

.method public getSourceMethodName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 334
    iget-boolean v0, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 335
    invoke-direct {p0}, Ljava/util/logging/LogRecord;->inferCaller()V

    #@7
    .line 337
    :cond_0
    iget-object v0, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    #@9
    return-object v0
.end method

.method public getThreadID()I
    .locals 1

    #@0
    .prologue
    .line 405
    iget v0, p0, Ljava/util/logging/LogRecord;->threadID:I

    #@2
    return v0
.end method

.method public getThrown()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 443
    iget-object v0, p0, Ljava/util/logging/LogRecord;->thrown:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .locals 1
    .param p1, "level"    # Ljava/util/logging/Level;

    #@0
    .prologue
    .line 260
    if-nez p1, :cond_0

    #@2
    .line 261
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 263
    :cond_0
    iput-object p1, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    #@a
    .line 259
    return-void
.end method

.method public setLoggerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 203
    iput-object p1, p0, Ljava/util/logging/LogRecord;->loggerName:Ljava/lang/String;

    #@2
    .line 202
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 374
    iput-object p1, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    #@2
    .line 373
    return-void
.end method

.method public setMillis(J)V
    .locals 1
    .param p1, "millis"    # J

    #@0
    .prologue
    .line 431
    iput-wide p1, p0, Ljava/util/logging/LogRecord;->millis:J

    #@2
    .line 430
    return-void
.end method

.method public setParameters([Ljava/lang/Object;)V
    .locals 0
    .param p1, "parameters"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 393
    iput-object p1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    #@2
    .line 392
    return-void
.end method

.method public setResourceBundle(Ljava/util/ResourceBundle;)V
    .locals 0
    .param p1, "bundle"    # Ljava/util/ResourceBundle;

    #@0
    .prologue
    .line 224
    iput-object p1, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    #@2
    .line 223
    return-void
.end method

.method public setResourceBundleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 244
    iput-object p1, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    #@2
    .line 243
    return-void
.end method

.method public setSequenceNumber(J)V
    .locals 1
    .param p1, "seq"    # J

    #@0
    .prologue
    .line 285
    iput-wide p1, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    #@2
    .line 284
    return-void
.end method

.method public setSourceClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceClassName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 315
    iput-object p1, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    #@2
    .line 316
    const/4 v0, 0x0

    #@3
    iput-boolean v0, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    #@5
    .line 314
    return-void
.end method

.method public setSourceMethodName(Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceMethodName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 346
    iput-object p1, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    #@2
    .line 347
    const/4 v0, 0x0

    #@3
    iput-boolean v0, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    #@5
    .line 345
    return-void
.end method

.method public setThreadID(I)V
    .locals 0
    .param p1, "threadID"    # I

    #@0
    .prologue
    .line 413
    iput p1, p0, Ljava/util/logging/LogRecord;->threadID:I

    #@2
    .line 412
    return-void
.end method

.method public setThrown(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "thrown"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 452
    iput-object p1, p0, Ljava/util/logging/LogRecord;->thrown:Ljava/lang/Throwable;

    #@2
    .line 451
    return-void
.end method
