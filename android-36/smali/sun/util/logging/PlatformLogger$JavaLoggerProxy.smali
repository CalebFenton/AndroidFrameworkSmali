.class final Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
.super Lsun/util/logging/PlatformLogger$LoggerProxy;
.source "PlatformLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/PlatformLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JavaLoggerProxy"
.end annotation


# instance fields
.field private final blacklist javaLogger:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 595
    invoke-static {}, Lsun/util/logging/PlatformLogger$Level;->values()[Lsun/util/logging/PlatformLogger$Level;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    .line 596
    .local v3, "level":Lsun/util/logging/PlatformLogger$Level;
    invoke-virtual {v3}, Lsun/util/logging/PlatformLogger$Level;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsun/util/logging/LoggingSupport;->parseLevel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    .line 595
    .end local v3    # "level":Lsun/util/logging/PlatformLogger$Level;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 598
    :cond_17
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 603
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;-><init>(Ljava/lang/String;Lsun/util/logging/PlatformLogger$Level;)V

    .line 604
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Lsun/util/logging/PlatformLogger$Level;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # Lsun/util/logging/PlatformLogger$Level;

    .line 607
    invoke-direct {p0, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;-><init>(Ljava/lang/String;)V

    .line 608
    invoke-static {p1}, Lsun/util/logging/LoggingSupport;->getLogger(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    .line 609
    if-eqz p2, :cond_12

    .line 611
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    iget-object v1, p2, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    invoke-static {v0, v1}, Lsun/util/logging/LoggingSupport;->setLevel(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 613
    :cond_12
    return-void
.end method


# virtual methods
.method blacklist doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V
    .registers 5
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;
    .param p2, "msg"    # Ljava/lang/String;

    .line 616
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    iget-object v1, p1, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    invoke-static {v0, v1, p2}, Lsun/util/logging/LoggingSupport;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method blacklist doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 620
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    iget-object v1, p1, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    invoke-static {v0, v1, p2, p3}, Lsun/util/logging/LoggingSupport;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 621
    return-void
.end method

.method varargs blacklist doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .line 624
    invoke-virtual {p0, p1}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 625
    return-void

    .line 629
    :cond_7
    if-eqz p3, :cond_b

    array-length v0, p3

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 630
    .local v0, "len":I
    :goto_c
    new-array v1, v0, [Ljava/lang/String;

    .line 631
    .local v1, "sparams":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_1c

    .line 632
    aget-object v3, p3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 631
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 634
    .end local v2    # "i":I
    :cond_1c
    iget-object v2, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    iget-object v3, p1, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    invoke-static {v2, v3, p2, v1}, Lsun/util/logging/LoggingSupport;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 635
    return-void
.end method

.method blacklist getLevel()Lsun/util/logging/PlatformLogger$Level;
    .registers 4

    .line 647
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    invoke-static {v0}, Lsun/util/logging/LoggingSupport;->getLevel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 648
    .local v0, "javaLevel":Ljava/lang/Object;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    return-object v1

    .line 651
    :cond_a
    :try_start_a
    invoke-static {v0}, Lsun/util/logging/LoggingSupport;->getLevelName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/util/logging/PlatformLogger$Level;->valueOf(Ljava/lang/String;)Lsun/util/logging/PlatformLogger$Level;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_12} :catch_13

    return-object v1

    .line 652
    :catch_13
    move-exception v1

    .line 653
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v0}, Lsun/util/logging/LoggingSupport;->getLevelValue(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Lsun/util/logging/PlatformLogger$Level;->valueOf(I)Lsun/util/logging/PlatformLogger$Level;

    move-result-object v2

    return-object v2
.end method

.method blacklist isEnabled()Z
    .registers 3

    .line 638
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    iget-object v1, v1, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    invoke-static {v0, v1}, Lsun/util/logging/LoggingSupport;->isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method blacklist isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z
    .registers 4
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;

    .line 662
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    iget-object v1, p1, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    invoke-static {v0, v1}, Lsun/util/logging/LoggingSupport;->isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method blacklist setLevel(Lsun/util/logging/PlatformLogger$Level;)V
    .registers 4
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;

    .line 658
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    if-nez p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    iget-object v1, p1, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    :goto_8
    invoke-static {v0, v1}, Lsun/util/logging/LoggingSupport;->setLevel(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 659
    return-void
.end method
