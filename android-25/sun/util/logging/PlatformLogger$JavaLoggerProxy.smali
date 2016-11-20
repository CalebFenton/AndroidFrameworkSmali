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
.field private final javaLogger:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 623
    invoke-static {}, Lsun/util/logging/PlatformLogger$Level;->values()[Lsun/util/logging/PlatformLogger$Level;

    #@3
    move-result-object v2

    #@4
    const/4 v1, 0x0

    #@5
    array-length v3, v2

    #@6
    .local v0, "level":Lsun/util/logging/PlatformLogger$Level;
    :goto_0
    if-ge v1, v3, :cond_0

    #@8
    aget-object v0, v2, v1

    #@a
    .line 624
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    invoke-static {v4}, Lsun/util/logging/LoggingSupport;->parseLevel(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v4

    #@12
    iput-object v4, v0, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    #@14
    .line 623
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 620
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 631
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;-><init>(Ljava/lang/String;Lsun/util/logging/PlatformLogger$Level;)V

    #@4
    .line 630
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lsun/util/logging/PlatformLogger$Level;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # Lsun/util/logging/PlatformLogger$Level;

    #@0
    .prologue
    .line 635
    invoke-direct {p0, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;-><init>(Ljava/lang/String;)V

    #@3
    .line 636
    invoke-static {p1}, Lsun/util/logging/LoggingSupport;->getLogger(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    #@9
    .line 637
    if-eqz p2, :cond_0

    #@b
    .line 639
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    #@d
    iget-object v1, p2, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    #@f
    invoke-static {v0, v1}, Lsun/util/logging/LoggingSupport;->setLevel(Ljava/lang/Object;Ljava/lang/Object;)V

    #@12
    .line 634
    :cond_0
    return-void
.end method


# virtual methods
.method doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V
    .locals 2
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 644
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    #@2
    iget-object v1, p1, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    #@4
    invoke-static {v0, v1, p2}, Lsun/util/logging/LoggingSupport;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    #@7
    .line 643
    return-void
.end method

.method doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 648
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    #@2
    iget-object v1, p1, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    #@4
    invoke-static {v0, v1, p2, p3}, Lsun/util/logging/LoggingSupport;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7
    .line 647
    return-void
.end method

.method varargs doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 652
    invoke-virtual {p0, p1}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 653
    return-void

    #@7
    .line 657
    :cond_0
    if-eqz p3, :cond_1

    #@9
    array-length v1, p3

    #@a
    .line 658
    .local v1, "len":I
    :goto_0
    new-array v2, v1, [Ljava/lang/String;

    #@c
    .line 659
    .local v2, "sparams":[Ljava/lang/Object;
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    #@f
    .line 660
    aget-object v3, p3, v0

    #@11
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    aput-object v3, v2, v0

    #@17
    .line 659
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_1

    #@1a
    .line 657
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "sparams":[Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    #@1b
    goto :goto_0

    #@1c
    .line 662
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "sparams":[Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    #@1e
    iget-object v4, p1, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    #@20
    invoke-static {v3, v4, p2, v2}, Lsun/util/logging/LoggingSupport;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@23
    .line 651
    return-void
.end method

.method getLevel()Lsun/util/logging/PlatformLogger$Level;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 675
    iget-object v2, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    #@3
    invoke-static {v2}, Lsun/util/logging/LoggingSupport;->getLevel(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    .line 676
    .local v1, "javaLevel":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@9
    return-object v3

    #@a
    .line 679
    :cond_0
    :try_start_0
    invoke-static {v1}, Lsun/util/logging/LoggingSupport;->getLevelName(Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-static {v2}, Lsun/util/logging/PlatformLogger$Level;->valueOf(Ljava/lang/String;)Lsun/util/logging/PlatformLogger$Level;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v2

    #@12
    return-object v2

    #@13
    .line 680
    :catch_0
    move-exception v0

    #@14
    .line 681
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v1}, Lsun/util/logging/LoggingSupport;->getLevelValue(Ljava/lang/Object;)I

    #@17
    move-result v2

    #@18
    invoke-static {v2}, Lsun/util/logging/PlatformLogger$Level;->valueOf(I)Lsun/util/logging/PlatformLogger$Level;

    #@1b
    move-result-object v2

    #@1c
    return-object v2
.end method

.method isEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 666
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    #@4
    iget-object v1, v1, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    #@6
    invoke-static {v0, v1}, Lsun/util/logging/LoggingSupport;->isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z
    .locals 2
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;

    #@0
    .prologue
    .line 690
    iget-object v0, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    #@2
    iget-object v1, p1, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    #@4
    invoke-static {v0, v1}, Lsun/util/logging/LoggingSupport;->isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method setLevel(Lsun/util/logging/PlatformLogger$Level;)V
    .locals 2
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 686
    iget-object v1, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    #@3
    if-nez p1, :cond_0

    #@5
    :goto_0
    invoke-static {v1, v0}, Lsun/util/logging/LoggingSupport;->setLevel(Ljava/lang/Object;Ljava/lang/Object;)V

    #@8
    .line 685
    return-void

    #@9
    .line 686
    :cond_0
    iget-object v0, p1, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    #@b
    goto :goto_0
.end method
