.class public Ljava/util/logging/ConsoleHandler;
.super Ljava/util/logging/StreamHandler;
.source "ConsoleHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    #@3
    .line 89
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/util/logging/Handler;->sealed:Z

    #@6
    .line 90
    invoke-direct {p0}, Ljava/util/logging/ConsoleHandler;->configure()V

    #@9
    .line 91
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@b
    invoke-virtual {p0, v0}, Ljava/util/logging/StreamHandler;->setOutputStream(Ljava/io/OutputStream;)V

    #@e
    .line 92
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Ljava/util/logging/Handler;->sealed:Z

    #@11
    .line 88
    return-void
.end method

.method private configure()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 63
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@4
    move-result-object v3

    #@5
    .line 64
    .local v3, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v4

    #@9
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 66
    .local v0, "cname":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    const-string/jumbo v5, ".level"

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@23
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {p0, v4}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V

    #@2a
    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    const-string/jumbo v5, ".filter"

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v3, v4, v6}, Ljava/util/logging/LogManager;->getFilterProperty(Ljava/lang/String;Ljava/util/logging/Filter;)Ljava/util/logging/Filter;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {p0, v4}, Ljava/util/logging/Handler;->setFilter(Ljava/util/logging/Filter;)V

    #@45
    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    const-string/jumbo v5, ".formatter"

    #@51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    new-instance v5, Ljava/util/logging/SimpleFormatter;

    #@5b
    invoke-direct {v5}, Ljava/util/logging/SimpleFormatter;-><init>()V

    #@5e
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {p0, v4}, Ljava/util/logging/Handler;->setFormatter(Ljava/util/logging/Formatter;)V

    #@65
    .line 70
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    const-string/jumbo v5, ".encoding"

    #@71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v4

    #@79
    const/4 v5, 0x0

    #@7a
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7d
    move-result-object v4

    #@7e
    invoke-virtual {p0, v4}, Ljava/util/logging/StreamHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@81
    .line 62
    :goto_0
    return-void

    #@82
    .line 71
    :catch_0
    move-exception v1

    #@83
    .line 73
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    #@84
    :try_start_1
    invoke-virtual {p0, v4}, Ljava/util/logging/StreamHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@87
    goto :goto_0

    #@88
    .line 74
    :catch_1
    move-exception v2

    #@89
    .local v2, "ex2":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    #@0
    .prologue
    .line 115
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->flush()V

    #@3
    .line 114
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 0
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    .line 105
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    #@3
    .line 106
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->flush()V

    #@6
    .line 104
    return-void
.end method
