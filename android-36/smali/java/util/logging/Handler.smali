.class public abstract Ljava/util/logging/Handler;
.super Ljava/lang/Object;
.source "Handler.java"


# static fields
.field private static final greylist-max-o offValue:I


# instance fields
.field private volatile greylist-max-o encoding:Ljava/lang/String;

.field private volatile greylist-max-o errorManager:Ljava/util/logging/ErrorManager;

.field private volatile greylist-max-o filter:Ljava/util/logging/Filter;

.field private volatile greylist-max-o formatter:Ljava/util/logging/Formatter;

.field private volatile greylist-max-o logLevel:Ljava/util/logging/Level;

.field private final greylist-max-o manager:Ljava/util/logging/LogManager;

.field greylist-max-r sealed:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    sput v0, Ljava/util/logging/Handler;->offValue:I

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Handler;->manager:Ljava/util/logging/LogManager;

    .line 61
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    iput-object v0, p0, Ljava/util/logging/Handler;->logLevel:Ljava/util/logging/Level;

    .line 62
    new-instance v0, Ljava/util/logging/ErrorManager;

    invoke-direct {v0}, Ljava/util/logging/ErrorManager;-><init>()V

    iput-object v0, p0, Ljava/util/logging/Handler;->errorManager:Ljava/util/logging/ErrorManager;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/Handler;->sealed:Z

    .line 76
    return-void
.end method


# virtual methods
.method greylist-max-o checkPermission()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 309
    iget-boolean v0, p0, Ljava/util/logging/Handler;->sealed:Z

    if-eqz v0, :cond_9

    .line 310
    iget-object v0, p0, Ljava/util/logging/Handler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 312
    :cond_9
    return-void
.end method

.method public abstract whitelist test-api close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api flush()V
.end method

.method public whitelist test-api getEncoding()Ljava/lang/String;
    .registers 2

    .line 171
    iget-object v0, p0, Ljava/util/logging/Handler;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getErrorManager()Ljava/util/logging/ErrorManager;
    .registers 2

    .line 225
    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    .line 226
    iget-object v0, p0, Ljava/util/logging/Handler;->errorManager:Ljava/util/logging/ErrorManager;

    return-object v0
.end method

.method public whitelist test-api getFilter()Ljava/util/logging/Filter;
    .registers 2

    .line 196
    iget-object v0, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    return-object v0
.end method

.method public whitelist test-api getFormatter()Ljava/util/logging/Formatter;
    .registers 2

    .line 133
    iget-object v0, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;

    return-object v0
.end method

.method public whitelist test-api getLevel()Ljava/util/logging/Level;
    .registers 2

    .line 276
    iget-object v0, p0, Ljava/util/logging/Handler;->logLevel:Ljava/util/logging/Level;

    return-object v0
.end method

.method public whitelist test-api isLoggable(Ljava/util/logging/LogRecord;)Z
    .registers 5
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 293
    invoke-virtual {p0}, Ljava/util/logging/Handler;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    .line 294
    .local v0, "levelValue":I
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    if-lt v1, v0, :cond_24

    sget v1, Ljava/util/logging/Handler;->offValue:I

    if-ne v0, v1, :cond_17

    goto :goto_24

    .line 297
    :cond_17
    invoke-virtual {p0}, Ljava/util/logging/Handler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v1

    .line 298
    .local v1, "filter":Ljava/util/logging/Filter;
    if-nez v1, :cond_1f

    .line 299
    const/4 v2, 0x1

    return v2

    .line 301
    :cond_1f
    invoke-interface {v1, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v2

    return v2

    .line 295
    .end local v1    # "filter":Ljava/util/logging/Filter;
    :cond_24
    :goto_24
    const/4 v1, 0x0

    return v1
.end method

.method public abstract whitelist test-api publish(Ljava/util/logging/LogRecord;)V
.end method

.method protected whitelist test-api reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    .registers 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;
    .param p3, "code"    # I

    .line 241
    :try_start_0
    iget-object v0, p0, Ljava/util/logging/Handler;->errorManager:Ljava/util/logging/ErrorManager;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 245
    goto :goto_11

    .line 242
    :catch_6
    move-exception v0

    .line 243
    .local v0, "ex2":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Handler.reportError caught:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    .end local v0    # "ex2":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method public declared-synchronized whitelist test-api setEncoding(Ljava/lang/String;)V
    .registers 4
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    monitor-enter p0

    .line 151
    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1e

    .line 152
    if-eqz p1, :cond_1a

    .line 154
    :try_start_6
    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 159
    goto :goto_1a

    .line 155
    :cond_d
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/logging/Handler;
    .end local p1    # "encoding":Ljava/lang/String;
    throw v0
    :try_end_13
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_6 .. :try_end_13} :catch_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_1e

    .line 157
    .restart local p1    # "encoding":Ljava/lang/String;
    :catch_13
    move-exception v0

    .line 158
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    :try_start_14
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    .end local v0    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    :cond_1a
    :goto_1a
    iput-object p1, p0, Ljava/util/logging/Handler;->encoding:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1e

    .line 162
    monitor-exit p0

    return-void

    .line 150
    .end local p1    # "encoding":Ljava/lang/String;
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public declared-synchronized whitelist test-api setErrorManager(Ljava/util/logging/ErrorManager;)V
    .registers 3
    .param p1, "em"    # Ljava/util/logging/ErrorManager;

    monitor-enter p0

    .line 210
    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    .line 211
    if-eqz p1, :cond_a

    .line 214
    iput-object p1, p0, Ljava/util/logging/Handler;->errorManager:Ljava/util/logging/ErrorManager;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    .line 215
    monitor-exit p0

    return-void

    .line 212
    .end local p0    # "this":Ljava/util/logging/Handler;
    :cond_a
    :try_start_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 209
    .end local p1    # "em":Ljava/util/logging/ErrorManager;
    :catchall_10
    move-exception p1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_10

    throw p1
.end method

.method public declared-synchronized whitelist test-api setFilter(Ljava/util/logging/Filter;)V
    .registers 2
    .param p1, "newFilter"    # Ljava/util/logging/Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 186
    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    .line 187
    iput-object p1, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 188
    monitor-exit p0

    return-void

    .line 185
    .end local p0    # "this":Ljava/util/logging/Handler;
    .end local p1    # "newFilter":Ljava/util/logging/Filter;
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized whitelist test-api setFormatter(Ljava/util/logging/Formatter;)V
    .registers 2
    .param p1, "newFormatter"    # Ljava/util/logging/Formatter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 122
    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    iput-object p1, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 126
    monitor-exit p0

    return-void

    .line 121
    .end local p0    # "this":Ljava/util/logging/Handler;
    .end local p1    # "newFormatter":Ljava/util/logging/Formatter;
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api setLevel(Ljava/util/logging/Level;)V
    .registers 3
    .param p1, "newLevel"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 262
    if-eqz p1, :cond_c

    .line 265
    :try_start_3
    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    .line 266
    iput-object p1, p0, Ljava/util/logging/Handler;->logLevel:Ljava/util/logging/Level;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 267
    monitor-exit p0

    return-void

    .line 261
    .end local p0    # "this":Ljava/util/logging/Handler;
    .end local p1    # "newLevel":Ljava/util/logging/Level;
    :catchall_a
    move-exception p1

    goto :goto_12

    .line 263
    .restart local p1    # "newLevel":Ljava/util/logging/Level;
    :cond_c
    :try_start_c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 261
    .end local p1    # "newLevel":Ljava/util/logging/Level;
    :goto_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_a

    throw p1
.end method
