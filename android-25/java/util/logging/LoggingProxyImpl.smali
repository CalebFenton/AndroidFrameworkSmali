.class Ljava/util/logging/LoggingProxyImpl;
.super Ljava/lang/Object;
.source "LoggingProxyImpl.java"

# interfaces
.implements Lsun/util/logging/LoggingProxy;


# static fields
.field static final INSTANCE:Lsun/util/logging/LoggingProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 34
    new-instance v0, Ljava/util/logging/LoggingProxyImpl;

    #@2
    invoke-direct {v0}, Ljava/util/logging/LoggingProxyImpl;-><init>()V

    #@5
    sput-object v0, Ljava/util/logging/LoggingProxyImpl;->INSTANCE:Lsun/util/logging/LoggingProxy;

    #@7
    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLevel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "logger"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 46
    check-cast p1, Ljava/util/logging/Logger;

    #@2
    .end local p1    # "logger":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLevelName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "level"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 105
    check-cast p1, Ljava/util/logging/Level;

    #@2
    .end local p1    # "level":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/logging/Level;->getLevelName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLevelValue(Ljava/lang/Object;)I
    .locals 1
    .param p1, "level"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 110
    check-cast p1, Ljava/util/logging/Level;

    #@2
    .end local p1    # "level":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLogger(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 41
    invoke-static {p1}, Ljava/util/logging/Logger;->getPlatformLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "loggerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 81
    invoke-static {}, Ljava/util/logging/LogManager;->getLoggingMXBean()Ljava/util/logging/LoggingMXBean;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Ljava/util/logging/LoggingMXBean;->getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getLoggerNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 76
    invoke-static {}, Ljava/util/logging/LogManager;->getLoggingMXBean()Ljava/util/logging/LoggingMXBean;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/logging/LoggingMXBean;->getLoggerNames()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "loggerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    invoke-static {}, Ljava/util/logging/LogManager;->getLoggingMXBean()Ljava/util/logging/LoggingMXBean;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Ljava/util/logging/LoggingMXBean;->getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "logger"    # Ljava/lang/Object;
    .param p2, "level"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 56
    check-cast p1, Ljava/util/logging/Logger;

    #@2
    .end local p1    # "logger":Ljava/lang/Object;
    check-cast p2, Ljava/util/logging/Level;

    #@4
    .end local p2    # "level":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Ljava/lang/Object;
    .param p2, "level"    # Ljava/lang/Object;
    .param p3, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 61
    check-cast p1, Ljava/util/logging/Logger;

    #@2
    .end local p1    # "logger":Ljava/lang/Object;
    check-cast p2, Ljava/util/logging/Level;

    #@4
    .end local p2    # "level":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@7
    .line 60
    return-void
.end method

.method public log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "logger"    # Ljava/lang/Object;
    .param p2, "level"    # Ljava/lang/Object;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 66
    check-cast p1, Ljava/util/logging/Logger;

    #@2
    .end local p1    # "logger":Ljava/lang/Object;
    check-cast p2, Ljava/util/logging/Level;

    #@4
    .end local p2    # "level":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7
    .line 65
    return-void
.end method

.method public varargs log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "logger"    # Ljava/lang/Object;
    .param p2, "level"    # Ljava/lang/Object;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 71
    check-cast p1, Ljava/util/logging/Logger;

    #@2
    .end local p1    # "logger":Ljava/lang/Object;
    check-cast p2, Ljava/util/logging/Level;

    #@4
    .end local p2    # "level":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    #@7
    .line 70
    return-void
.end method

.method public parseLevel(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "levelName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 96
    invoke-static {p1}, Ljava/util/logging/Level;->findLevel(Ljava/lang/String;)Ljava/util/logging/Level;

    #@3
    move-result-object v0

    #@4
    .line 97
    .local v0, "level":Ljava/util/logging/Level;
    if-nez v0, :cond_0

    #@6
    .line 98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Unknown level \""

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, "\""

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 100
    :cond_0
    return-object v0
.end method

.method public setLevel(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "logger"    # Ljava/lang/Object;
    .param p2, "newLevel"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 51
    check-cast p1, Ljava/util/logging/Logger;

    #@2
    .end local p1    # "logger":Ljava/lang/Object;
    check-cast p2, Ljava/util/logging/Level;

    #@4
    .end local p2    # "newLevel":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    #@7
    .line 50
    return-void
.end method

.method public setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "levelName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    invoke-static {}, Ljava/util/logging/LogManager;->getLoggingMXBean()Ljava/util/logging/LoggingMXBean;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1, p2}, Ljava/util/logging/LoggingMXBean;->setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 85
    return-void
.end method
