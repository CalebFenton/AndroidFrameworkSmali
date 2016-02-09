.class public abstract Ljava/util/logging/Handler;
.super Ljava/lang/Object;
.source "Handler.java"


# static fields
.field private static final DEFAULT_LEVEL:Ljava/util/logging/Level;


# instance fields
.field private encoding:Ljava/lang/String;

.field private errorMan:Ljava/util/logging/ErrorManager;

.field private filter:Ljava/util/logging/Filter;

.field private formatter:Ljava/util/logging/Formatter;

.field private level:Ljava/util/logging/Level;

.field private prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 30
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    #@2
    sput-object v0, Ljava/util/logging/Handler;->DEFAULT_LEVEL:Ljava/util/logging/Level;

    #@4
    .line 28
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 56
    new-instance v0, Ljava/util/logging/ErrorManager;

    #@6
    invoke-direct {v0}, Ljava/util/logging/ErrorManager;-><init>()V

    #@9
    iput-object v0, p0, Ljava/util/logging/Handler;->errorMan:Ljava/util/logging/ErrorManager;

    #@b
    .line 57
    sget-object v0, Ljava/util/logging/Handler;->DEFAULT_LEVEL:Ljava/util/logging/Level;

    #@d
    iput-object v0, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;

    #@f
    .line 58
    iput-object v1, p0, Ljava/util/logging/Handler;->encoding:Ljava/lang/String;

    #@11
    .line 59
    iput-object v1, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    #@13
    .line 60
    iput-object v1, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;

    #@15
    .line 61
    invoke-virtual {p0}, Ljava/util/logging/Handler;->getClass()Ljava/lang/Class;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Ljava/util/logging/Handler;->prefix:Ljava/lang/String;

    #@1f
    .line 55
    return-void
.end method

.method private getCustomizeInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v1

    #@8
    .line 81
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-nez v1, :cond_0

    #@a
    .line 82
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@d
    move-result-object v1

    #@e
    .line 84
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    .line 85
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    return-object v2
.end method

.method private getDefaultInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 66
    const/4 v1, 0x0

    #@1
    .line 67
    .local v1, "result":Ljava/lang/Object;
    if-nez p1, :cond_0

    #@3
    .line 68
    return-object v1

    #@4
    .line 71
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    .line 75
    .end local v1    # "result":Ljava/lang/Object;
    :goto_0
    return-object v1

    #@d
    .line 72
    .restart local v1    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract flush()V
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Ljava/util/logging/Handler;->encoding:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getErrorManager()Ljava/util/logging/ErrorManager;
    .locals 1

    #@0
    .prologue
    .line 187
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    #@7
    .line 188
    iget-object v0, p0, Ljava/util/logging/Handler;->errorMan:Ljava/util/logging/ErrorManager;

    #@9
    return-object v0
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .locals 1

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    #@2
    return-object v0
.end method

.method public getFormatter()Ljava/util/logging/Formatter;
    .locals 1

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;

    #@2
    return-object v0
.end method

.method public getLevel()Ljava/util/logging/Level;
    .locals 1

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;

    #@2
    return-object v0
.end method

.method initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "defaultLevel"    # Ljava/lang/String;
    .param p2, "defaultFilter"    # Ljava/lang/String;
    .param p3, "defaultFormatter"    # Ljava/lang/String;
    .param p4, "defaultEncoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 100
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@3
    move-result-object v7

    #@4
    .line 103
    .local v7, "manager":Ljava/util/logging/LogManager;
    new-instance v8, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget-object v9, p0, Ljava/util/logging/Handler;->prefix:Ljava/lang/String;

    #@b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v8

    #@f
    const-string/jumbo v9, ".filter"

    #@12
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v8

    #@16
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v8

    #@1a
    invoke-virtual {v7, v8}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    .line 104
    .local v4, "filterName":Ljava/lang/String;
    if-eqz v4, :cond_0

    #@20
    .line 106
    :try_start_0
    invoke-direct {p0, v4}, Ljava/util/logging/Handler;->getCustomizeInstance(Ljava/lang/String;)Ljava/lang/Object;

    #@23
    move-result-object v8

    #@24
    check-cast v8, Ljava/util/logging/Filter;

    #@26
    iput-object v8, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 116
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    iget-object v9, p0, Ljava/util/logging/Handler;->prefix:Ljava/lang/String;

    #@2f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v8

    #@33
    const-string/jumbo v9, ".level"

    #@36
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v8

    #@3a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v8

    #@3e
    invoke-virtual {v7, v8}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    .line 117
    .local v6, "levelName":Ljava/lang/String;
    if-eqz v6, :cond_1

    #@44
    .line 119
    :try_start_1
    invoke-static {v6}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    #@47
    move-result-object v8

    #@48
    iput-object v8, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@4a
    .line 129
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    iget-object v9, p0, Ljava/util/logging/Handler;->prefix:Ljava/lang/String;

    #@51
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v8

    #@55
    const-string/jumbo v9, ".formatter"

    #@58
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v8

    #@5c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v8

    #@60
    invoke-virtual {v7, v8}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@63
    move-result-object v5

    #@64
    .line 130
    .local v5, "formatterName":Ljava/lang/String;
    if-eqz v5, :cond_2

    #@66
    .line 132
    :try_start_2
    invoke-direct {p0, v5}, Ljava/util/logging/Handler;->getCustomizeInstance(Ljava/lang/String;)Ljava/lang/Object;

    #@69
    move-result-object v8

    #@6a
    check-cast v8, Ljava/util/logging/Formatter;

    #@6c
    iput-object v8, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@6e
    .line 142
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    iget-object v9, p0, Ljava/util/logging/Handler;->prefix:Ljava/lang/String;

    #@75
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v8

    #@79
    const-string/jumbo v9, ".encoding"

    #@7c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v8

    #@80
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v8

    #@84
    invoke-virtual {v7, v8}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@87
    move-result-object v3

    #@88
    .line 144
    .local v3, "encodingName":Ljava/lang/String;
    :try_start_3
    invoke-virtual {p0, v3}, Ljava/util/logging/Handler;->internalSetEncoding(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    #@8b
    .line 99
    :goto_3
    return-void

    #@8c
    .line 107
    .end local v3    # "encodingName":Ljava/lang/String;
    .end local v5    # "formatterName":Ljava/lang/String;
    .end local v6    # "levelName":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@8d
    .line 108
    .local v2, "e1":Ljava/lang/Exception;
    const-string/jumbo v8, "filter"

    #@90
    invoke-virtual {p0, v8, v4, v2}, Ljava/util/logging/Handler;->printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    #@93
    .line 109
    invoke-direct {p0, p2}, Ljava/util/logging/Handler;->getDefaultInstance(Ljava/lang/String;)Ljava/lang/Object;

    #@96
    move-result-object v8

    #@97
    check-cast v8, Ljava/util/logging/Filter;

    #@99
    iput-object v8, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    #@9b
    goto :goto_0

    #@9c
    .line 112
    .end local v2    # "e1":Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0, p2}, Ljava/util/logging/Handler;->getDefaultInstance(Ljava/lang/String;)Ljava/lang/Object;

    #@9f
    move-result-object v8

    #@a0
    check-cast v8, Ljava/util/logging/Filter;

    #@a2
    iput-object v8, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    #@a4
    goto :goto_0

    #@a5
    .line 120
    .restart local v6    # "levelName":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@a6
    .line 121
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "level"

    #@a9
    invoke-virtual {p0, v8, v6, v1}, Ljava/util/logging/Handler;->printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    #@ac
    .line 122
    invoke-static {p1}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    #@af
    move-result-object v8

    #@b0
    iput-object v8, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;

    #@b2
    goto :goto_1

    #@b3
    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p1}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    #@b6
    move-result-object v8

    #@b7
    iput-object v8, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;

    #@b9
    goto :goto_1

    #@ba
    .line 133
    .restart local v5    # "formatterName":Ljava/lang/String;
    :catch_2
    move-exception v1

    #@bb
    .line 134
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "formatter"

    #@be
    invoke-virtual {p0, v8, v5, v1}, Ljava/util/logging/Handler;->printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    #@c1
    .line 135
    invoke-direct {p0, p3}, Ljava/util/logging/Handler;->getDefaultInstance(Ljava/lang/String;)Ljava/lang/Object;

    #@c4
    move-result-object v8

    #@c5
    check-cast v8, Ljava/util/logging/Formatter;

    #@c7
    iput-object v8, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;

    #@c9
    goto :goto_2

    #@ca
    .line 138
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0, p3}, Ljava/util/logging/Handler;->getDefaultInstance(Ljava/lang/String;)Ljava/lang/Object;

    #@cd
    move-result-object v8

    #@ce
    check-cast v8, Ljava/util/logging/Formatter;

    #@d0
    iput-object v8, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;

    #@d2
    goto :goto_2

    #@d3
    .line 145
    .restart local v3    # "encodingName":Ljava/lang/String;
    :catch_3
    move-exception v0

    #@d4
    .line 146
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v8, "encoding"

    #@d7
    invoke-virtual {p0, v8, v3, v0}, Ljava/util/logging/Handler;->printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    #@da
    goto :goto_3
.end method

.method internalSetEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "newEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 269
    if-nez p1, :cond_0

    #@3
    .line 270
    iput-object v0, p0, Ljava/util/logging/Handler;->encoding:Ljava/lang/String;

    #@5
    .line 267
    :goto_0
    return-void

    #@6
    .line 272
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 273
    iput-object p1, p0, Ljava/util/logging/Handler;->encoding:Ljava/lang/String;

    #@e
    goto :goto_0

    #@f
    .line 275
    :cond_1
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    #@11
    invoke-direct {v0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0
.end method

.method internalSetFormatter(Ljava/util/logging/Formatter;)V
    .locals 2
    .param p1, "newFormatter"    # Ljava/util/logging/Formatter;

    #@0
    .prologue
    .line 326
    if-nez p1, :cond_0

    #@2
    .line 327
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "newFormatter == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 329
    :cond_0
    iput-object p1, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;

    #@d
    .line 325
    return-void
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 229
    if-nez p1, :cond_0

    #@3
    .line 230
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "record == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 232
    :cond_0
    iget-object v0, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;

    #@e
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    #@11
    move-result v0

    #@12
    sget-object v1, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    #@14
    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    #@17
    move-result v1

    #@18
    if-ne v0, v1, :cond_1

    #@1a
    .line 233
    return v2

    #@1b
    .line 234
    :cond_1
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    #@22
    move-result v0

    #@23
    iget-object v1, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;

    #@25
    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    #@28
    move-result v1

    #@29
    if-lt v0, v1, :cond_3

    #@2b
    .line 235
    iget-object v0, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    #@2d
    if-eqz v0, :cond_2

    #@2f
    iget-object v0, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    #@31
    invoke-interface {v0, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    #@34
    move-result v0

    #@35
    :goto_0
    return v0

    #@36
    :cond_2
    const/4 v0, 0x1

    #@37
    goto :goto_0

    #@38
    .line 237
    :cond_3
    return v2
.end method

.method printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "Invalid property value for "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Ljava/util/logging/Handler;->prefix:Ljava/lang/String;

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, ":"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, "/"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    .line 91
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/logging/Handler;->errorMan:Ljava/util/logging/ErrorManager;

    #@2e
    const/4 v2, 0x0

    #@2f
    invoke-virtual {v1, v0, p3, v2}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    #@32
    .line 89
    return-void
.end method

.method public abstract publish(Ljava/util/logging/LogRecord;)V
.end method

.method protected reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;
    .param p3, "code"    # I

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Ljava/util/logging/Handler;->errorMan:Ljava/util/logging/ErrorManager;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    #@5
    .line 253
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 287
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    #@7
    .line 288
    invoke-virtual {p0, p1}, Ljava/util/logging/Handler;->internalSetEncoding(Ljava/lang/String;)V

    #@a
    .line 286
    return-void
.end method

.method public setErrorManager(Ljava/util/logging/ErrorManager;)V
    .locals 2
    .param p1, "newErrorManager"    # Ljava/util/logging/ErrorManager;

    #@0
    .prologue
    .line 300
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    #@7
    .line 301
    if-nez p1, :cond_0

    #@9
    .line 302
    new-instance v0, Ljava/lang/NullPointerException;

    #@b
    const-string/jumbo v1, "newErrorManager == null"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 304
    :cond_0
    iput-object p1, p0, Ljava/util/logging/Handler;->errorMan:Ljava/util/logging/ErrorManager;

    #@14
    .line 299
    return-void
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .locals 1
    .param p1, "newFilter"    # Ljava/util/logging/Filter;

    #@0
    .prologue
    .line 314
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    #@7
    .line 315
    iput-object p1, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    #@9
    .line 313
    return-void
.end method

.method public setFormatter(Ljava/util/logging/Formatter;)V
    .locals 1
    .param p1, "newFormatter"    # Ljava/util/logging/Formatter;

    #@0
    .prologue
    .line 341
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    #@7
    .line 342
    invoke-virtual {p0, p1}, Ljava/util/logging/Handler;->internalSetFormatter(Ljava/util/logging/Formatter;)V

    #@a
    .line 340
    return-void
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .locals 2
    .param p1, "newLevel"    # Ljava/util/logging/Level;

    #@0
    .prologue
    .line 355
    if-nez p1, :cond_0

    #@2
    .line 356
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "newLevel == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 358
    :cond_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    #@12
    .line 359
    iput-object p1, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;

    #@14
    .line 354
    return-void
.end method
