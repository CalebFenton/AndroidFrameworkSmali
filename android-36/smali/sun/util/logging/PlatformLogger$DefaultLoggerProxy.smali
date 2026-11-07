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
.field private static final blacklist formatString:Ljava/lang/String;


# instance fields
.field private blacklist date:Ljava/util/Date;

.field volatile blacklist effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

.field volatile blacklist level:Lsun/util/logging/PlatformLogger$Level;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 517
    nop

    .line 518
    const/4 v0, 0x0

    invoke-static {v0}, Lsun/util/logging/LoggingSupport;->getSimpleFormat(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->formatString:Ljava/lang/String;

    .line 517
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 443
    invoke-direct {p0, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;-><init>(Ljava/lang/String;)V

    .line 521
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->date:Ljava/util/Date;

    .line 444
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->deriveEffectiveLevel(Lsun/util/logging/PlatformLogger$Level;)Lsun/util/logging/PlatformLogger$Level;

    move-result-object v1

    iput-object v1, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

    .line 445
    iput-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    .line 446
    return-void
.end method

.method private blacklist deriveEffectiveLevel(Lsun/util/logging/PlatformLogger$Level;)Lsun/util/logging/PlatformLogger$Level;
    .registers 3
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;

    .line 490
    if-nez p1, :cond_7

    invoke-static {}, Lsun/util/logging/PlatformLogger;->-$$Nest$sfgetDEFAULT_LEVEL()Lsun/util/logging/PlatformLogger$Level;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p1

    :goto_8
    return-object v0
.end method

.method private declared-synchronized blacklist format(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 11
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 523
    :try_start_1
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->date:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 524
    const-string v0, ""

    .line 525
    .local v0, "throwable":Ljava/lang/String;
    if-eqz p3, :cond_28

    .line 526
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 527
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 528
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 529
    invoke-virtual {p3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 530
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 531
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object v5, v0

    goto :goto_29

    .line 525
    .end local v1    # "sw":Ljava/io/StringWriter;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    :cond_28
    move-object v5, v0

    .line 534
    .end local v0    # "throwable":Ljava/lang/String;
    .local v5, "throwable":Ljava/lang/String;
    :goto_29
    sget-object v6, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->formatString:Ljava/lang/String;

    iget-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->date:Ljava/util/Date;

    .line 536
    invoke-direct {p0}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->getCallerInfo()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->name:Ljava/lang/String;

    .line 538
    invoke-virtual {p1}, Lsun/util/logging/PlatformLogger$Level;->name()Ljava/lang/String;

    move-result-object v3

    move-object v4, p2

    .end local p2    # "msg":Ljava/lang/String;
    .local v4, "msg":Ljava/lang/String;
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p2

    .line 534
    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    monitor-exit p0

    return-object p2

    .line 522
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "throwable":Ljava/lang/String;
    .end local p1    # "level":Lsun/util/logging/PlatformLogger$Level;
    .end local p3    # "thrown":Ljava/lang/Throwable;
    :catchall_42
    move-exception v0

    move-object p1, v0

    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_42

    throw p1
.end method

.method private varargs blacklist formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ljava/lang/Object;

    .line 497
    if-eqz p2, :cond_2f

    :try_start_2
    array-length v0, p2

    if-nez v0, :cond_6

    goto :goto_2f

    .line 506
    :cond_6
    const-string v0, "{0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_28

    const-string v0, "{1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_28

    const-string v0, "{2"

    .line 507
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_28

    const-string v0, "{3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_27

    goto :goto_28

    .line 510
    :cond_27
    return-object p1

    .line 508
    :cond_28
    :goto_28
    invoke-static {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_2d

    return-object v0

    .line 511
    :catch_2d
    move-exception v0

    .line 513
    .local v0, "ex":Ljava/lang/Exception;
    return-object p1

    .line 499
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2f
    :goto_2f
    return-object p1
.end method

.method private blacklist getCallerInfo()Ljava/lang/String;
    .registers 12

    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, "sourceClassName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 549
    .local v1, "sourceMethodName":Ljava/lang/String;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 551
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "sun.util.logging.PlatformLogger"

    .line 552
    .local v3, "logClassName":Ljava/lang/String;
    const/4 v4, 0x1

    .line 563
    .local v4, "lookingForLogger":Z
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v6, :cond_31

    aget-object v8, v5, v7

    .line 564
    .local v8, "frame":Ljava/lang/StackTraceElement;
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 565
    .local v9, "cname":Ljava/lang/String;
    if-eqz v4, :cond_22

    .line 567
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2e

    .line 568
    const/4 v4, 0x0

    goto :goto_2e

    .line 571
    :cond_22
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2e

    .line 573
    move-object v0, v9

    .line 574
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 575
    goto :goto_31

    .line 563
    .end local v8    # "frame":Ljava/lang/StackTraceElement;
    .end local v9    # "cname":Ljava/lang/String;
    :cond_2e
    :goto_2e
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 580
    :cond_31
    :goto_31
    if-eqz v0, :cond_4b

    .line 581
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 583
    :cond_4b
    iget-object v5, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->name:Ljava/lang/String;

    return-object v5
.end method

.method private static blacklist outputStream()Ljava/io/PrintStream;
    .registers 1

    .line 436
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    return-object v0
.end method


# virtual methods
.method blacklist doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V
    .registers 5
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;
    .param p2, "msg"    # Ljava/lang/String;

    .line 465
    invoke-virtual {p0, p1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 466
    invoke-static {}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->outputStream()Ljava/io/PrintStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->format(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 468
    :cond_12
    return-void
.end method

.method blacklist doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    .line 471
    invoke-virtual {p0, p1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 472
    invoke-static {}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->outputStream()Ljava/io/PrintStream;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->format(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 474
    :cond_11
    return-void
.end method

.method varargs blacklist doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .line 477
    invoke-virtual {p0, p1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 478
    invoke-direct {p0, p2, p3}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "newMsg":Ljava/lang/String;
    invoke-static {}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->outputStream()Ljava/io/PrintStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->format(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 481
    .end local v0    # "newMsg":Ljava/lang/String;
    :cond_16
    return-void
.end method

.method blacklist getLevel()Lsun/util/logging/PlatformLogger$Level;
    .registers 2

    .line 453
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    return-object v0
.end method

.method blacklist isEnabled()Z
    .registers 3

    .line 449
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method blacklist isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z
    .registers 5
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;

    .line 484
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

    .line 485
    .local v0, "effectiveLevel":Lsun/util/logging/PlatformLogger$Level;
    invoke-virtual {p1}, Lsun/util/logging/PlatformLogger$Level;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lsun/util/logging/PlatformLogger$Level;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_12

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    if-eq v0, v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method blacklist setLevel(Lsun/util/logging/PlatformLogger$Level;)V
    .registers 4
    .param p1, "newLevel"    # Lsun/util/logging/PlatformLogger$Level;

    .line 457
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    .line 458
    .local v0, "oldLevel":Lsun/util/logging/PlatformLogger$Level;
    if-eq v0, p1, :cond_c

    .line 459
    iput-object p1, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    .line 460
    invoke-direct {p0, p1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->deriveEffectiveLevel(Lsun/util/logging/PlatformLogger$Level;)Lsun/util/logging/PlatformLogger$Level;

    move-result-object v1

    iput-object v1, p0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

    .line 462
    :cond_c
    return-void
.end method
