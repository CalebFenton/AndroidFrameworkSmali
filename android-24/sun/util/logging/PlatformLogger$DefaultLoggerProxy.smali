.class final Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
.super Lsun/util/logging/PlatformLogger$LoggerProxy;
.source "PlatformLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/PlatformLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultLoggerProxy"
.end annotation


# static fields
.field private static final formatString:Ljava/lang/String;


# instance fields
.field private date:Ljava/util/Date;

.field volatile effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

.field volatile level:Lsun/util/logging/PlatformLogger$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 556
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Lsun/util/logging/LoggingSupport;->getSimpleFormat(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 555
    sput-object v0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->formatString:Ljava/lang/String;

    #@7
    .line 468
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 481
    invoke-direct {p0, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;-><init>(Ljava/lang/String;)V

    #@4
    .line 559
    new-instance v0, Ljava/util/Date;

    #@6
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@9
    iput-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->date:Ljava/util/Date;

    #@b
    .line 482
    invoke-direct {p0, v1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->deriveEffectiveLevel(Lsun/util/logging/PlatformLogger$Level;)Lsun/util/logging/PlatformLogger$Level;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

    #@11
    .line 483
    iput-object v1, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    #@13
    .line 480
    return-void
.end method

.method private deriveEffectiveLevel(Lsun/util/logging/PlatformLogger$Level;)Lsun/util/logging/PlatformLogger$Level;
    .locals 0
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;

    #@0
    .prologue
    .line 528
    if-nez p1, :cond_0

    #@2
    invoke-static {}, Lsun/util/logging/PlatformLogger;->-get0()Lsun/util/logging/PlatformLogger$Level;

    #@5
    move-result-object p1

    #@6
    .end local p1    # "level":Lsun/util/logging/PlatformLogger$Level;
    :cond_0
    return-object p1
.end method

.method private declared-synchronized format(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 561
    :try_start_0
    iget-object v3, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->date:Ljava/util/Date;

    #@3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v4

    #@7
    invoke-virtual {v3, v4, v5}, Ljava/util/Date;->setTime(J)V

    #@a
    .line 562
    const-string/jumbo v2, ""

    #@d
    .line 563
    .local v2, "throwable":Ljava/lang/String;
    if-eqz p3, :cond_0

    #@f
    .line 564
    new-instance v1, Ljava/io/StringWriter;

    #@11
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    #@14
    .line 565
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    #@16
    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@19
    .line 566
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@1c
    .line 567
    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@1f
    .line 568
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    #@22
    .line 569
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 572
    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local v1    # "sw":Ljava/io/StringWriter;
    :cond_0
    sget-object v3, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->formatString:Ljava/lang/String;

    #@28
    const/4 v4, 0x6

    #@29
    new-array v4, v4, [Ljava/lang/Object;

    #@2b
    .line 573
    iget-object v5, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->date:Ljava/util/Date;

    #@2d
    const/4 v6, 0x0

    #@2e
    aput-object v5, v4, v6

    #@30
    .line 574
    invoke-direct {p0}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->getCallerInfo()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    const/4 v6, 0x1

    #@35
    aput-object v5, v4, v6

    #@37
    .line 575
    iget-object v5, p0, Lsun/util/logging/PlatformLogger$LoggerProxy;->name:Ljava/lang/String;

    #@39
    const/4 v6, 0x2

    #@3a
    aput-object v5, v4, v6

    #@3c
    .line 576
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    #@3f
    move-result-object v5

    #@40
    const/4 v6, 0x3

    #@41
    aput-object v5, v4, v6

    #@43
    .line 577
    const/4 v5, 0x4

    #@44
    aput-object p2, v4, v5

    #@46
    .line 578
    const/4 v5, 0x5

    #@47
    aput-object v2, v4, v5

    #@49
    .line 572
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    move-result-object v3

    #@4d
    monitor-exit p0

    #@4e
    return-object v3

    #@4f
    .end local v2    # "throwable":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@50
    monitor-exit p0

    #@51
    throw v3
.end method

.method private varargs formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 535
    if-eqz p2, :cond_0

    #@2
    :try_start_0
    array-length v1, p2

    #@3
    if-nez v1, :cond_1

    #@5
    .line 537
    :cond_0
    return-object p1

    #@6
    .line 544
    :cond_1
    const-string/jumbo v1, "{0"

    #@9
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@c
    move-result v1

    #@d
    if-gez v1, :cond_2

    #@f
    const-string/jumbo v1, "{1"

    #@12
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@15
    move-result v1

    #@16
    if-ltz v1, :cond_3

    #@18
    .line 546
    :cond_2
    invoke-static {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    return-object v1

    #@1d
    .line 545
    :cond_3
    const-string/jumbo v1, "{2"

    #@20
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@23
    move-result v1

    #@24
    if-gez v1, :cond_2

    #@26
    const-string/jumbo v1, "{3"

    #@29
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    move-result v1

    #@2d
    if-gez v1, :cond_2

    #@2f
    .line 548
    return-object p1

    #@30
    .line 549
    :catch_0
    move-exception v0

    #@31
    .line 551
    .local v0, "ex":Ljava/lang/Exception;
    return-object p1
.end method

.method private getCallerInfo()Ljava/lang/String;
    .locals 11

    #@0
    .prologue
    .line 584
    const/4 v4, 0x0

    #@1
    .line 585
    .local v4, "sourceClassName":Ljava/lang/String;
    const/4 v5, 0x0

    #@2
    .line 587
    .local v5, "sourceMethodName":Ljava/lang/String;
    new-instance v6, Ljava/lang/Throwable;

    #@4
    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    #@7
    .line 589
    .local v6, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v2, "sun.util.logging.PlatformLogger"

    #@a
    .line 590
    .local v2, "logClassName":Ljava/lang/String;
    const/4 v3, 0x1

    #@b
    .line 591
    .local v3, "lookingForLogger":Z
    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@e
    move-result-object v8

    #@f
    const/4 v7, 0x0

    #@10
    array-length v9, v8

    #@11
    :goto_0
    if-ge v7, v9, :cond_2

    #@13
    aget-object v1, v8, v7

    #@15
    .line 592
    .local v1, "frame":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 593
    .local v0, "cname":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@1b
    .line 595
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v10

    #@1f
    if-eqz v10, :cond_0

    #@21
    .line 596
    const/4 v3, 0x0

    #@22
    .line 591
    :cond_0
    add-int/lit8 v7, v7, 0x1

    #@24
    goto :goto_0

    #@25
    .line 599
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v10

    #@29
    if-nez v10, :cond_0

    #@2b
    .line 601
    move-object v4, v0

    #@2c
    .line 602
    .local v4, "sourceClassName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    .line 608
    .end local v0    # "cname":Ljava/lang/String;
    .end local v1    # "frame":Ljava/lang/StackTraceElement;
    .end local v4    # "sourceClassName":Ljava/lang/String;
    .end local v5    # "sourceMethodName":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    #@32
    .line 609
    new-instance v7, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    const-string/jumbo v8, " "

    #@3e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v7

    #@42
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    return-object v7

    #@4b
    .line 611
    :cond_3
    iget-object v7, p0, Lsun/util/logging/PlatformLogger$LoggerProxy;->name:Ljava/lang/String;

    #@4d
    return-object v7
.end method

.method private static outputStream()Ljava/io/PrintStream;
    .locals 1

    #@0
    .prologue
    .line 474
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    return-object v0
.end method


# virtual methods
.method doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V
    .locals 2
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 503
    invoke-virtual {p0, p1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 504
    invoke-static {}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->outputStream()Ljava/io/PrintStream;

    #@9
    move-result-object v0

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {p0, p1, p2, v1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->format(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@12
    .line 502
    :cond_0
    return-void
.end method

.method doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 509
    invoke-virtual {p0, p1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 510
    invoke-static {}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->outputStream()Ljava/io/PrintStream;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, p1, p2, p3}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->format(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@11
    .line 508
    :cond_0
    return-void
.end method

.method varargs doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 515
    invoke-virtual {p0, p1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 516
    invoke-direct {p0, p2, p3}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 517
    .local v0, "newMsg":Ljava/lang/String;
    invoke-static {}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->outputStream()Ljava/io/PrintStream;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x0

    #@f
    invoke-direct {p0, p1, v0, v2}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->format(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@16
    .line 514
    .end local v0    # "newMsg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method getLevel()Lsun/util/logging/PlatformLogger$Level;
    .locals 1

    #@0
    .prologue
    .line 491
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    #@2
    return-object v0
.end method

.method isEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 487
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z
    .locals 4
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 522
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

    #@3
    .line 523
    .local v0, "effectiveLevel":Lsun/util/logging/PlatformLogger$Level;
    invoke-virtual {p1}, Lsun/util/logging/PlatformLogger$Level;->intValue()I

    #@6
    move-result v2

    #@7
    invoke-virtual {v0}, Lsun/util/logging/PlatformLogger$Level;->intValue()I

    #@a
    move-result v3

    #@b
    if-lt v2, v3, :cond_0

    #@d
    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    #@f
    if-eq v0, v2, :cond_0

    #@11
    const/4 v1, 0x1

    #@12
    :cond_0
    return v1
.end method

.method setLevel(Lsun/util/logging/PlatformLogger$Level;)V
    .locals 2
    .param p1, "newLevel"    # Lsun/util/logging/PlatformLogger$Level;

    #@0
    .prologue
    .line 495
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    #@2
    .line 496
    .local v0, "oldLevel":Lsun/util/logging/PlatformLogger$Level;
    if-eq v0, p1, :cond_0

    #@4
    .line 497
    iput-object p1, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    #@6
    .line 498
    invoke-direct {p0, p1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->deriveEffectiveLevel(Lsun/util/logging/PlatformLogger$Level;)Lsun/util/logging/PlatformLogger$Level;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

    #@c
    .line 494
    :cond_0
    return-void
.end method
