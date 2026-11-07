.class Ljava/util/logging/LoggingProxyImpl;
.super Ljava/lang/Object;
.source "LoggingProxyImpl.java"

# interfaces
.implements Lsun/util/logging/LoggingProxy;


# static fields
.field static final blacklist INSTANCE:Lsun/util/logging/LoggingProxy;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Ljava/util/logging/LoggingProxyImpl;

    invoke-direct {v0}, Ljava/util/logging/LoggingProxyImpl;-><init>()V

    sput-object v0, Ljava/util/logging/LoggingProxyImpl;->INSTANCE:Lsun/util/logging/LoggingProxy;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getLevel(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "logger"    # Ljava/lang/Object;

    .line 46
    move-object v0, p1

    check-cast v0, Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLevelName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "level"    # Ljava/lang/Object;

    .line 105
    move-object v0, p1

    check-cast v0, Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->getLevelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLevelValue(Ljava/lang/Object;)I
    .registers 3
    .param p1, "level"    # Ljava/lang/Object;

    .line 110
    move-object v0, p1

    check-cast v0, Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getLogger(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 41
    invoke-static {p1}, Ljava/util/logging/Logger;->getPlatformLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "loggerName"    # Ljava/lang/String;

    .line 81
    invoke-static {}, Ljava/util/logging/LogManager;->getLoggingMXBean()Ljava/util/logging/LoggingMXBean;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/logging/LoggingMXBean;->getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLoggerNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-static {}, Ljava/util/logging/LogManager;->getLoggingMXBean()Ljava/util/logging/LoggingMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/logging/LoggingMXBean;->getLoggerNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "loggerName"    # Ljava/lang/String;

    .line 91
    invoke-static {}, Ljava/util/logging/LogManager;->getLoggingMXBean()Ljava/util/logging/LoggingMXBean;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/logging/LoggingMXBean;->getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 115
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "logger"    # Ljava/lang/Object;
    .param p2, "level"    # Ljava/lang/Object;

    .line 56
    move-object v0, p1

    check-cast v0, Ljava/util/logging/Logger;

    move-object v1, p2

    check-cast v1, Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public blacklist log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6
    .param p1, "logger"    # Ljava/lang/Object;
    .param p2, "level"    # Ljava/lang/Object;
    .param p3, "msg"    # Ljava/lang/String;

    .line 61
    move-object v0, p1

    check-cast v0, Ljava/util/logging/Logger;

    move-object v1, p2

    check-cast v1, Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public blacklist log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "logger"    # Ljava/lang/Object;
    .param p2, "level"    # Ljava/lang/Object;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;

    .line 66
    move-object v0, p1

    check-cast v0, Ljava/util/logging/Logger;

    move-object v1, p2

    check-cast v1, Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p3, p4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method

.method public varargs blacklist log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .param p1, "logger"    # Ljava/lang/Object;
    .param p2, "level"    # Ljava/lang/Object;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/Object;

    .line 71
    move-object v0, p1

    check-cast v0, Ljava/util/logging/Logger;

    move-object v1, p2

    check-cast v1, Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p3, p4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public blacklist parseLevel(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "levelName"    # Ljava/lang/String;

    .line 96
    invoke-static {p1}, Ljava/util/logging/Level;->findLevel(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0

    .line 97
    .local v0, "level":Ljava/util/logging/Level;
    if-eqz v0, :cond_7

    .line 100
    return-object v0

    .line 98
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown level \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setLevel(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p1, "logger"    # Ljava/lang/Object;
    .param p2, "newLevel"    # Ljava/lang/Object;

    .line 51
    move-object v0, p1

    check-cast v0, Ljava/util/logging/Logger;

    move-object v1, p2

    check-cast v1, Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 52
    return-void
.end method

.method public blacklist setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "levelName"    # Ljava/lang/String;

    .line 86
    invoke-static {}, Ljava/util/logging/LogManager;->getLoggingMXBean()Ljava/util/logging/LoggingMXBean;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/logging/LoggingMXBean;->setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method
