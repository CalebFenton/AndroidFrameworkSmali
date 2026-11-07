.class public Ljava/util/logging/ConsoleHandler;
.super Ljava/util/logging/StreamHandler;
.source "ConsoleHandler.java"


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 98
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/ConsoleHandler;->sealed:Z

    .line 100
    invoke-direct {p0}, Ljava/util/logging/ConsoleHandler;->configure()V

    .line 101
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/util/logging/ConsoleHandler;->setOutputStream(Ljava/io/OutputStream;)V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/ConsoleHandler;->sealed:Z

    .line 103
    return-void
.end method

.method private greylist-max-o configure()V
    .registers 6

    .line 73
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 74
    .local v0, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "cname":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".level"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/ConsoleHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".filter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/LogManager;->getFilterProperty(Ljava/lang/String;Ljava/util/logging/Filter;)Ljava/util/logging/Filter;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/ConsoleHandler;->setFilter(Ljava/util/logging/Filter;)V

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".formatter"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v4}, Ljava/util/logging/SimpleFormatter;-><init>()V

    invoke-virtual {v0, v2, v4}, Ljava/util/logging/LogManager;->getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/ConsoleHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 80
    :try_start_62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".encoding"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/LogManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/ConsoleHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7c} :catch_7d

    .line 88
    goto :goto_83

    .line 81
    :catch_7d
    move-exception v2

    .line 83
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_7e
    invoke-virtual {p0, v3}, Ljava/util/logging/ConsoleHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_82

    .line 87
    goto :goto_83

    .line 84
    :catch_82
    move-exception v3

    .line 89
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_83
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 127
    invoke-virtual {p0}, Ljava/util/logging/ConsoleHandler;->flush()V

    .line 128
    return-void
.end method

.method public whitelist test-api publish(Ljava/util/logging/LogRecord;)V
    .registers 2
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 116
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 117
    invoke-virtual {p0}, Ljava/util/logging/ConsoleHandler;->flush()V

    .line 118
    return-void
.end method
