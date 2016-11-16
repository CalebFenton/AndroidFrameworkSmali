.class public abstract Ljava/util/logging/Handler;
.super Ljava/lang/Object;
.source "Handler.java"


# static fields
.field private static final offValue:I


# instance fields
.field private encoding:Ljava/lang/String;

.field private errorManager:Ljava/util/logging/ErrorManager;

.field private filter:Ljava/util/logging/Filter;

.field private formatter:Ljava/util/logging/Formatter;

.field private logLevel:Ljava/util/logging/Level;

.field private manager:Ljava/util/logging/LogManager;

.field sealed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    #@2
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    #@5
    move-result v0

    #@6
    sput v0, Ljava/util/logging/Handler;->offValue:I

    #@8
    .line 48
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/util/logging/Handler;->manager:Ljava/util/logging/LogManager;

    #@9
    .line 53
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    #@b
    iput-object v0, p0, Ljava/util/logging/Handler;->logLevel:Ljava/util/logging/Level;

    #@d
    .line 54
    new-instance v0, Ljava/util/logging/ErrorManager;

    #@f
    invoke-direct {v0}, Ljava/util/logging/ErrorManager;-><init>()V

    #@12
    iput-object v0, p0, Ljava/util/logging/Handler;->errorManager:Ljava/util/logging/ErrorManager;

    #@14
    .line 59
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Ljava/util/logging/Handler;->sealed:Z

    #@17
    .line 67
    return-void
.end method


# virtual methods
.method checkPermission()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 300
    iget-boolean v0, p0, Ljava/util/logging/Handler;->sealed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 301
    iget-object v0, p0, Ljava/util/logging/Handler;->manager:Ljava/util/logging/LogManager;

    #@6
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkPermission()V

    #@9
    .line 299
    :cond_0
    return-void
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public abstract flush()V
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Ljava/util/logging/Handler;->encoding:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getErrorManager()Ljava/util/logging/ErrorManager;
    .locals 1

    #@0
    .prologue
    .line 216
    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    #@3
    .line 217
    iget-object v0, p0, Ljava/util/logging/Handler;->errorManager:Ljava/util/logging/ErrorManager;

    #@5
    return-object v0
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .locals 1

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    #@2
    return-object v0
.end method

.method public getFormatter()Ljava/util/logging/Formatter;
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;

    #@2
    return-object v0
.end method

.method public declared-synchronized getLevel()Ljava/util/logging/Level;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 267
    :try_start_0
    iget-object v0, p0, Ljava/util/logging/Handler;->logLevel:Ljava/util/logging/Level;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    .line 284
    invoke-virtual {p0}, Ljava/util/logging/Handler;->getLevel()Ljava/util/logging/Level;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    #@7
    move-result v1

    #@8
    .line 285
    .local v1, "levelValue":I
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    #@f
    move-result v2

    #@10
    if-lt v2, v1, :cond_0

    #@12
    sget v2, Ljava/util/logging/Handler;->offValue:I

    #@14
    if-ne v1, v2, :cond_1

    #@16
    .line 286
    :cond_0
    const/4 v2, 0x0

    #@17
    return v2

    #@18
    .line 288
    :cond_1
    invoke-virtual {p0}, Ljava/util/logging/Handler;->getFilter()Ljava/util/logging/Filter;

    #@1b
    move-result-object v0

    #@1c
    .line 289
    .local v0, "filter":Ljava/util/logging/Filter;
    if-nez v0, :cond_2

    #@1e
    .line 290
    const/4 v2, 0x1

    #@1f
    return v2

    #@20
    .line 292
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    #@23
    move-result v2

    #@24
    return v2
.end method

.method public abstract publish(Ljava/util/logging/LogRecord;)V
.end method

.method protected reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;
    .param p3, "code"    # I

    #@0
    .prologue
    .line 232
    :try_start_0
    iget-object v1, p0, Ljava/util/logging/Handler;->errorManager:Ljava/util/logging/ErrorManager;

    #@2
    invoke-virtual {v1, p1, p2, p3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 230
    :goto_0
    return-void

    #@6
    .line 233
    :catch_0
    move-exception v0

    #@7
    .line 234
    .local v0, "ex2":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9
    const-string/jumbo v2, "Handler.reportError caught:"

    #@c
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f
    .line 235
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@12
    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    #@3
    .line 144
    if-eqz p1, :cond_0

    #@5
    .line 146
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 147
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    #@d
    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 149
    :catch_0
    move-exception v0

    #@12
    .line 150
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    #@14
    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 153
    .end local v0    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    :cond_0
    iput-object p1, p0, Ljava/util/logging/Handler;->encoding:Ljava/lang/String;

    #@1a
    .line 142
    return-void
.end method

.method public setErrorManager(Ljava/util/logging/ErrorManager;)V
    .locals 1
    .param p1, "em"    # Ljava/util/logging/ErrorManager;

    #@0
    .prologue
    .line 202
    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    #@3
    .line 203
    if-nez p1, :cond_0

    #@5
    .line 204
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 206
    :cond_0
    iput-object p1, p0, Ljava/util/logging/Handler;->errorManager:Ljava/util/logging/ErrorManager;

    #@d
    .line 201
    return-void
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .locals 0
    .param p1, "newFilter"    # Ljava/util/logging/Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    #@3
    .line 179
    iput-object p1, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    #@5
    .line 177
    return-void
.end method

.method public setFormatter(Ljava/util/logging/Formatter;)V
    .locals 0
    .param p1, "newFormatter"    # Ljava/util/logging/Formatter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    #@3
    .line 116
    invoke-virtual {p1}, Ljava/util/logging/Formatter;->getClass()Ljava/lang/Class;

    #@6
    .line 117
    iput-object p1, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;

    #@8
    .line 113
    return-void
.end method

.method public declared-synchronized setLevel(Ljava/util/logging/Level;)V
    .locals 1
    .param p1, "newLevel"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 253
    if-nez p1, :cond_0

    #@3
    .line 254
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0

    #@c
    .line 256
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    #@f
    .line 257
    iput-object p1, p0, Ljava/util/logging/Handler;->logLevel:Ljava/util/logging/Level;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    monitor-exit p0

    #@12
    .line 252
    return-void
.end method
