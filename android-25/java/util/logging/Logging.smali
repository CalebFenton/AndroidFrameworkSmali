.class Ljava/util/logging/Logging;
.super Ljava/lang/Object;
.source "Logging.java"

# interfaces
.implements Ljava/util/logging/LoggingMXBean;


# static fields
.field private static EMPTY_STRING:Ljava/lang/String;

.field private static logManager:Ljava/util/logging/LogManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Ljava/util/logging/Logging;->logManager:Ljava/util/logging/LogManager;

    #@6
    .line 67
    const-string/jumbo v0, ""

    #@9
    sput-object v0, Ljava/util/logging/Logging;->EMPTY_STRING:Ljava/lang/String;

    #@b
    .line 47
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "loggerName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 69
    sget-object v2, Ljava/util/logging/Logging;->logManager:Ljava/util/logging/LogManager;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@6
    move-result-object v0

    #@7
    .line 70
    .local v0, "l":Ljava/util/logging/Logger;
    if-nez v0, :cond_0

    #@9
    .line 71
    return-object v3

    #@a
    .line 74
    :cond_0
    invoke-virtual {v0}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    #@d
    move-result-object v1

    #@e
    .line 75
    .local v1, "level":Ljava/util/logging/Level;
    if-nez v1, :cond_1

    #@10
    .line 76
    sget-object v2, Ljava/util/logging/Logging;->EMPTY_STRING:Ljava/lang/String;

    #@12
    return-object v2

    #@13
    .line 78
    :cond_1
    invoke-virtual {v1}, Ljava/util/logging/Level;->getLevelName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    return-object v2
.end method

.method public getLoggerNames()Ljava/util/List;
    .locals 3
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
    .line 58
    sget-object v2, Ljava/util/logging/Logging;->logManager:Ljava/util/logging/LogManager;

    #@2
    invoke-virtual {v2}, Ljava/util/logging/LogManager;->getLoggerNames()Ljava/util/Enumeration;

    #@5
    move-result-object v1

    #@6
    .line 59
    .local v1, "loggers":Ljava/util/Enumeration;
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    .line 61
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 62
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/lang/String;

    #@17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    goto :goto_0

    #@1b
    .line 64
    :cond_0
    return-object v0
.end method

.method public getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "loggerName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 106
    sget-object v2, Ljava/util/logging/Logging;->logManager:Ljava/util/logging/LogManager;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@6
    move-result-object v0

    #@7
    .line 107
    .local v0, "l":Ljava/util/logging/Logger;
    if-nez v0, :cond_0

    #@9
    .line 108
    return-object v3

    #@a
    .line 111
    :cond_0
    invoke-virtual {v0}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    #@d
    move-result-object v1

    #@e
    .line 112
    .local v1, "p":Ljava/util/logging/Logger;
    if-nez v1, :cond_1

    #@10
    .line 114
    sget-object v2, Ljava/util/logging/Logging;->EMPTY_STRING:Ljava/lang/String;

    #@12
    return-object v2

    #@13
    .line 116
    :cond_1
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    return-object v2
.end method

.method public setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "levelName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    if-nez p1, :cond_0

    #@2
    .line 84
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "loggerName is null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 87
    :cond_0
    sget-object v2, Ljava/util/logging/Logging;->logManager:Ljava/util/logging/LogManager;

    #@d
    invoke-virtual {v2, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@10
    move-result-object v1

    #@11
    .line 88
    .local v1, "logger":Ljava/util/logging/Logger;
    if-nez v1, :cond_1

    #@13
    .line 89
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "Logger "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    .line 90
    const-string/jumbo v4, "does not exist"

    #@28
    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v2

    #@34
    .line 93
    :cond_1
    const/4 v0, 0x0

    #@35
    .line 94
    .local v0, "level":Ljava/util/logging/Level;
    if-eqz p2, :cond_2

    #@37
    .line 96
    invoke-static {p2}, Ljava/util/logging/Level;->findLevel(Ljava/lang/String;)Ljava/util/logging/Level;

    #@3a
    move-result-object v0

    #@3b
    .line 97
    .local v0, "level":Ljava/util/logging/Level;
    if-nez v0, :cond_2

    #@3d
    .line 98
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3f
    new-instance v3, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v4, "Unknown level \""

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    const-string/jumbo v4, "\""

    #@52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v2

    #@5e
    .line 102
    .end local v0    # "level":Ljava/util/logging/Level;
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    #@61
    .line 82
    return-void
.end method
