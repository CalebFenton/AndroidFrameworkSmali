.class Ljava/util/logging/Logging;
.super Ljava/lang/Object;
.source "Logging.java"

# interfaces
.implements Ljava/util/logging/LoggingMXBean;


# static fields
.field private static blacklist EMPTY_STRING:Ljava/lang/String;

.field private static blacklist logManager:Ljava/util/logging/LogManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    sput-object v0, Ljava/util/logging/Logging;->logManager:Ljava/util/logging/LogManager;

    .line 67
    const-string v0, ""

    sput-object v0, Ljava/util/logging/Logging;->EMPTY_STRING:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist test-api getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "loggerName"    # Ljava/lang/String;

    .line 69
    sget-object v0, Ljava/util/logging/Logging;->logManager:Ljava/util/logging/LogManager;

    invoke-virtual {v0, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 70
    .local v0, "l":Ljava/util/logging/Logger;
    if-nez v0, :cond_a

    .line 71
    const/4 v1, 0x0

    return-object v1

    .line 74
    :cond_a
    invoke-virtual {v0}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    .line 75
    .local v1, "level":Ljava/util/logging/Level;
    if-nez v1, :cond_13

    .line 76
    sget-object v2, Ljava/util/logging/Logging;->EMPTY_STRING:Ljava/lang/String;

    return-object v2

    .line 78
    :cond_13
    invoke-virtual {v1}, Ljava/util/logging/Level;->getLevelName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api getLoggerNames()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    sget-object v0, Ljava/util/logging/Logging;->logManager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->getLoggerNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 59
    .local v0, "loggers":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 62
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 64
    :cond_1b
    return-object v1
.end method

.method public whitelist test-api getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "loggerName"    # Ljava/lang/String;

    .line 106
    sget-object v0, Ljava/util/logging/Logging;->logManager:Ljava/util/logging/LogManager;

    invoke-virtual {v0, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 107
    .local v0, "l":Ljava/util/logging/Logger;
    if-nez v0, :cond_a

    .line 108
    const/4 v1, 0x0

    return-object v1

    .line 111
    :cond_a
    invoke-virtual {v0}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v1

    .line 112
    .local v1, "p":Ljava/util/logging/Logger;
    if-nez v1, :cond_13

    .line 114
    sget-object v2, Ljava/util/logging/Logging;->EMPTY_STRING:Ljava/lang/String;

    return-object v2

    .line 116
    :cond_13
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "levelName"    # Ljava/lang/String;

    .line 83
    if-eqz p1, :cond_56

    .line 87
    sget-object v0, Ljava/util/logging/Logging;->logManager:Ljava/util/logging/LogManager;

    invoke-virtual {v0, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 88
    .local v0, "logger":Ljava/util/logging/Logger;
    if-eqz v0, :cond_37

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "level":Ljava/util/logging/Level;
    if-eqz p2, :cond_33

    .line 96
    invoke-static {p2}, Ljava/util/logging/Level;->findLevel(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_14

    goto :goto_33

    .line 98
    :cond_14
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown level \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_33
    :goto_33
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 103
    return-void

    .line 89
    .end local v1    # "level":Ljava/util/logging/Level;
    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logger "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    .end local v0    # "logger":Ljava/util/logging/Logger;
    :cond_56
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "loggerName is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
