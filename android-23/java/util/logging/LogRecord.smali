.class public Ljava/util/logging/LogRecord;
.super Ljava/lang/Object;
.source "LogRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAJOR:I = 0x1

.field private static final MINOR:I = 0x4

.field private static currentSequenceNumber:J = 0x0L

.field private static currentThreadId:Ljava/lang/ThreadLocal; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static initThreadId:I = 0x0

.field private static final serialVersionUID:J = 0x4a8d593df3695196L


# instance fields
.field private level:Ljava/util/logging/Level;

.field private loggerName:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private millis:J

.field private transient parameters:[Ljava/lang/Object;

.field private transient resourceBundle:Ljava/util/ResourceBundle;

.field private resourceBundleName:Ljava/lang/String;

.field private sequenceNumber:J

.field private sourceClassName:Ljava/lang/String;

.field private transient sourceInitialized:Z

.field private sourceMethodName:Ljava/lang/String;

.field private threadID:I

.field private thrown:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 53
    const-wide/16 v0, 0x0

    #@2
    sput-wide v0, Ljava/util/logging/LogRecord;->currentSequenceNumber:J

    #@4
    .line 56
    new-instance v0, Ljava/lang/ThreadLocal;

    #@6
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@9
    sput-object v0, Ljava/util/logging/LogRecord;->currentThreadId:Ljava/lang/ThreadLocal;

    #@b
    .line 59
    const/4 v0, 0x0

    #@c
    sput v0, Ljava/util/logging/LogRecord;->initThreadId:I

    #@e
    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 9
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 155
    if-nez p1, :cond_0

    #@6
    .line 156
    new-instance v1, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v2, "level == null"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 158
    :cond_0
    iput-object p1, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    #@11
    .line 159
    iput-object p2, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    #@13
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@16
    move-result-wide v2

    #@17
    iput-wide v2, p0, Ljava/util/logging/LogRecord;->millis:J

    #@19
    .line 162
    const-class v2, Ljava/util/logging/LogRecord;

    #@1b
    monitor-enter v2

    #@1c
    .line 163
    :try_start_0
    sget-wide v4, Ljava/util/logging/LogRecord;->currentSequenceNumber:J

    #@1e
    const-wide/16 v6, 0x1

    #@20
    add-long/2addr v6, v4

    #@21
    sput-wide v6, Ljava/util/logging/LogRecord;->currentSequenceNumber:J

    #@23
    iput-wide v4, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    #@25
    .line 164
    sget-object v1, Ljava/util/logging/LogRecord;->currentThreadId:Ljava/lang/ThreadLocal;

    #@27
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Ljava/lang/Integer;

    #@2d
    .line 165
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_1

    #@2f
    .line 166
    sget v1, Ljava/util/logging/LogRecord;->initThreadId:I

    #@31
    iput v1, p0, Ljava/util/logging/LogRecord;->threadID:I

    #@33
    .line 167
    sget-object v1, Ljava/util/logging/LogRecord;->currentThreadId:Ljava/lang/ThreadLocal;

    #@35
    sget v3, Ljava/util/logging/LogRecord;->initThreadId:I

    #@37
    add-int/lit8 v4, v3, 0x1

    #@39
    sput v4, Ljava/util/logging/LogRecord;->initThreadId:I

    #@3b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    :goto_0
    monitor-exit v2

    #@43
    .line 173
    iput-object v8, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    #@45
    .line 174
    iput-object v8, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    #@47
    .line 175
    iput-object v8, p0, Ljava/util/logging/LogRecord;->loggerName:Ljava/lang/String;

    #@49
    .line 176
    iput-object v8, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    #@4b
    .line 177
    iput-object v8, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    #@4d
    .line 178
    iput-object v8, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    #@4f
    .line 179
    iput-object v8, p0, Ljava/util/logging/LogRecord;->thrown:Ljava/lang/Throwable;

    #@51
    .line 154
    return-void

    #@52
    .line 169
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@55
    move-result v1

    #@56
    iput v1, p0, Ljava/util/logging/LogRecord;->threadID:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    goto :goto_0

    #@59
    .line 162
    .end local v0    # "id":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    #@5a
    monitor-exit v2

    #@5b
    throw v1
.end method

.method private initSource()V
    .locals 7

    #@0
    .prologue
    .line 363
    iget-boolean v3, p0, Ljava/util/logging/LogRecord;->sourceInitialized:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 364
    return-void

    #@5
    .line 367
    :cond_0
    const/4 v2, 0x0

    #@6
    .line 368
    .local v2, "sawLogger":Z
    new-instance v3, Ljava/lang/Throwable;

    #@8
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    #@b
    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@e
    move-result-object v4

    #@f
    const/4 v3, 0x0

    #@10
    array-length v5, v4

    #@11
    :goto_0
    if-ge v3, v5, :cond_3

    #@13
    aget-object v1, v4, v3

    #@15
    .line 369
    .local v1, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 370
    .local v0, "current":Ljava/lang/String;
    const-class v6, Ljava/util/logging/Logger;

    #@1b
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@22
    move-result v6

    #@23
    if-eqz v6, :cond_2

    #@25
    .line 371
    const/4 v2, 0x1

    #@26
    .line 368
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_0

    #@29
    .line 372
    :cond_2
    if-eqz v2, :cond_1

    #@2b
    .line 373
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    iput-object v3, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    #@31
    .line 374
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    iput-object v3, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    #@37
    .line 379
    .end local v0    # "current":Ljava/lang/String;
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    :cond_3
    const/4 v3, 0x1

    #@38
    iput-boolean v3, p0, Ljava/util/logging/LogRecord;->sourceInitialized:Z

    #@3a
    .line 362
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 481
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 482
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    #@7
    move-result v3

    #@8
    .line 483
    .local v3, "major":B
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    #@b
    move-result v4

    #@c
    .line 485
    .local v4, "minor":B
    const/4 v5, 0x1

    #@d
    if-eq v3, v5, :cond_0

    #@f
    .line 486
    new-instance v5, Ljava/io/IOException;

    #@11
    new-instance v6, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v7, "Different version "

    #@19
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@20
    move-result-object v7

    #@21
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v6

    #@25
    const-string/jumbo v7, "."

    #@28
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v6

    #@2c
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@2f
    move-result-object v7

    #@30
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v6

    #@38
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v5

    #@3c
    .line 489
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@3f
    move-result v2

    #@40
    .line 490
    .local v2, "length":I
    if-ltz v2, :cond_1

    #@42
    .line 491
    new-array v5, v2, [Ljava/lang/Object;

    #@44
    iput-object v5, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    #@46
    .line 492
    const/4 v1, 0x0

    #@47
    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    #@49
    array-length v5, v5

    #@4a
    if-ge v1, v5, :cond_1

    #@4c
    .line 493
    iget-object v5, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    #@4e
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@51
    move-result-object v6

    #@52
    aput-object v6, v5, v1

    #@54
    .line 492
    add-int/lit8 v1, v1, 0x1

    #@56
    goto :goto_0

    #@57
    .line 496
    .end local v1    # "i":I
    :cond_1
    iget-object v5, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    #@59
    if-eqz v5, :cond_2

    #@5b
    .line 498
    :try_start_0
    iget-object v5, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    #@5d
    invoke-static {v5}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    #@60
    move-result-object v5

    #@61
    iput-object v5, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@63
    .line 480
    :cond_2
    :goto_1
    return-void

    #@64
    .line 499
    :catch_0
    move-exception v0

    #@65
    .line 501
    .local v0, "e":Ljava/util/MissingResourceException;
    iput-object v7, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    #@67
    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 6
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
    .line 463
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@4
    .line 464
    const/4 v1, 0x1

    #@5
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    #@8
    .line 465
    const/4 v1, 0x4

    #@9
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    #@c
    .line 466
    iget-object v1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    #@e
    if-nez v1, :cond_1

    #@10
    .line 467
    const/4 v1, -0x1

    #@11
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@14
    .line 462
    :cond_0
    return-void

    #@15
    .line 469
    :cond_1
    iget-object v1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    #@17
    array-length v1, v1

    #@18
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@1b
    .line 470
    iget-object v4, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    #@1d
    const/4 v1, 0x0

    #@1e
    array-length v5, v4

    #@1f
    move v3, v1

    #@20
    :goto_0
    if-ge v3, v5, :cond_0

    #@22
    aget-object v0, v4, v3

    #@24
    .line 471
    .local v0, "element":Ljava/lang/Object;
    if-nez v0, :cond_2

    #@26
    move-object v1, v2

    #@27
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@2a
    .line 470
    add-int/lit8 v1, v3, 0x1

    #@2c
    move v3, v1

    #@2d
    goto :goto_0

    #@2e
    .line 471
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    goto :goto_1
.end method


# virtual methods
.method public getLevel()Ljava/util/logging/Level;
    .locals 1

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    #@2
    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Ljava/util/logging/LogRecord;->loggerName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMillis()J
    .locals 2

    #@0
    .prologue
    .line 252
    iget-wide v0, p0, Ljava/util/logging/LogRecord;->millis:J

    #@2
    return-wide v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .locals 1

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    #@2
    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 314
    iget-object v0, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSequenceNumber()J
    .locals 2

    #@0
    .prologue
    .line 333
    iget-wide v0, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    #@2
    return-wide v0
.end method

.method public getSourceClassName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 355
    invoke-direct {p0}, Ljava/util/logging/LogRecord;->initSource()V

    #@3
    .line 356
    iget-object v0, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    #@5
    return-object v0
.end method

.method public getSourceMethodName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 400
    invoke-direct {p0}, Ljava/util/logging/LogRecord;->initSource()V

    #@3
    .line 401
    iget-object v0, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    #@5
    return-object v0
.end method

.method public getThreadID()I
    .locals 1

    #@0
    .prologue
    .line 426
    iget v0, p0, Ljava/util/logging/LogRecord;->threadID:I

    #@2
    return v0
.end method

.method public getThrown()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 445
    iget-object v0, p0, Ljava/util/logging/LogRecord;->thrown:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .locals 2
    .param p1, "level"    # Ljava/util/logging/Level;

    #@0
    .prologue
    .line 200
    if-nez p1, :cond_0

    #@2
    .line 201
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "level == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 203
    :cond_0
    iput-object p1, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    #@d
    .line 199
    return-void
.end method

.method public setLoggerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "loggerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 222
    iput-object p1, p0, Ljava/util/logging/LogRecord;->loggerName:Ljava/lang/String;

    #@2
    .line 221
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 243
    iput-object p1, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    #@2
    .line 242
    return-void
.end method

.method public setMillis(J)V
    .locals 1
    .param p1, "millis"    # J

    #@0
    .prologue
    .line 262
    iput-wide p1, p0, Ljava/util/logging/LogRecord;->millis:J

    #@2
    .line 261
    return-void
.end method

.method public setParameters([Ljava/lang/Object;)V
    .locals 0
    .param p1, "parameters"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 282
    iput-object p1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    #@2
    .line 281
    return-void
.end method

.method public setResourceBundle(Ljava/util/ResourceBundle;)V
    .locals 0
    .param p1, "resourceBundle"    # Ljava/util/ResourceBundle;

    #@0
    .prologue
    .line 304
    iput-object p1, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    #@2
    .line 303
    return-void
.end method

.method public setResourceBundleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceBundleName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 324
    iput-object p1, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    #@2
    .line 323
    return-void
.end method

.method public setSequenceNumber(J)V
    .locals 1
    .param p1, "sequenceNumber"    # J

    #@0
    .prologue
    .line 345
    iput-wide p1, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    #@2
    .line 344
    return-void
.end method

.method public setSourceClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceClassName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 390
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/util/logging/LogRecord;->sourceInitialized:Z

    #@3
    .line 391
    iput-object p1, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    #@5
    .line 389
    return-void
.end method

.method public setSourceMethodName(Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceMethodName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 412
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/util/logging/LogRecord;->sourceInitialized:Z

    #@3
    .line 413
    iput-object p1, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    #@5
    .line 411
    return-void
.end method

.method public setThreadID(I)V
    .locals 0
    .param p1, "threadID"    # I

    #@0
    .prologue
    .line 436
    iput p1, p0, Ljava/util/logging/LogRecord;->threadID:I

    #@2
    .line 435
    return-void
.end method

.method public setThrown(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "thrown"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 456
    iput-object p1, p0, Ljava/util/logging/LogRecord;->thrown:Ljava/lang/Throwable;

    #@2
    .line 455
    return-void
.end method
