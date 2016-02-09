.class public Ljava/util/logging/StreamHandler;
.super Ljava/util/logging/Handler;
.source "StreamHandler.java"


# instance fields
.field private os:Ljava/io/OutputStream;

.field private writer:Ljava/io/Writer;

.field private writerNotInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 63
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    #@4
    .line 64
    const-string/jumbo v0, "INFO"

    #@7
    const-string/jumbo v1, "java.util.logging.SimpleFormatter"

    #@a
    invoke-virtual {p0, v0, v2, v1, v2}, Ljava/util/logging/StreamHandler;->initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 65
    iput-object v2, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    #@f
    .line 66
    iput-object v2, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@11
    .line 67
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    #@14
    .line 63
    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    #@3
    .line 79
    iput-object p1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    #@5
    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/logging/Formatter;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "formatter"    # Ljava/util/logging/Formatter;

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    #@3
    .line 109
    if-nez p1, :cond_0

    #@5
    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "os == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 112
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "formatter == null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 115
    :cond_1
    iput-object p1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    #@1b
    .line 116
    invoke-virtual {p0, p2}, Ljava/util/logging/StreamHandler;->internalSetFormatter(Ljava/util/logging/Formatter;)V

    #@1e
    .line 107
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "defaultLevel"    # Ljava/lang/String;
    .param p2, "defaultFilter"    # Ljava/lang/String;
    .param p3, "defaultFormatter"    # Ljava/lang/String;
    .param p4, "defaultEncoding"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 87
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    #@4
    .line 89
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/logging/StreamHandler;->initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 91
    iput-object v0, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    #@9
    .line 92
    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@b
    .line 93
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    #@e
    .line 88
    return-void
.end method

.method private initializeWriter()V
    .locals 4

    #@0
    .prologue
    .line 121
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    #@3
    .line 122
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getEncoding()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 123
    new-instance v1, Ljava/io/OutputStreamWriter;

    #@b
    iget-object v2, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    #@d
    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@10
    iput-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@12
    .line 134
    :goto_0
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p0}, Ljava/util/logging/Formatter;->getHead(Ljava/util/logging/Handler;)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {p0, v1}, Ljava/util/logging/StreamHandler;->write(Ljava/lang/String;)V

    #@1d
    .line 120
    return-void

    #@1e
    .line 126
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    #@20
    iget-object v2, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    #@22
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getEncoding()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@29
    iput-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    goto :goto_0

    #@2c
    .line 127
    :catch_0
    move-exception v0

    #@2d
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private write(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@2
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 138
    :goto_0
    return-void

    #@6
    .line 141
    :catch_0
    move-exception v0

    #@7
    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, "Exception occurred when writing to the output stream"

    #@e
    .line 143
    const/4 v3, 0x1

    #@f
    .line 142
    invoke-virtual {v1, v2, v0, v3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    #@12
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    #@0
    .prologue
    .line 243
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    #@7
    .line 244
    const/4 v0, 0x1

    #@8
    invoke-virtual {p0, v0}, Ljava/util/logging/StreamHandler;->close(Z)V

    #@b
    .line 242
    return-void
.end method

.method close(Z)V
    .locals 4
    .param p1, "closeStream"    # Z

    #@0
    .prologue
    .line 216
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 217
    iget-boolean v1, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 218
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->initializeWriter()V

    #@b
    .line 220
    :cond_0
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p0}, Ljava/util/logging/Formatter;->getTail(Ljava/util/logging/Handler;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v1}, Ljava/util/logging/StreamHandler;->write(Ljava/lang/String;)V

    #@16
    .line 222
    :try_start_0
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@18
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    #@1b
    .line 223
    if-eqz p1, :cond_1

    #@1d
    .line 224
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@1f
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    #@22
    .line 225
    const/4 v1, 0x0

    #@23
    iput-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@25
    .line 226
    const/4 v1, 0x0

    #@26
    iput-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 215
    :cond_1
    :goto_0
    return-void

    #@29
    .line 228
    :catch_0
    move-exception v0

    #@2a
    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, "Exception occurred when closing the output stream"

    #@31
    .line 230
    const/4 v3, 0x3

    #@32
    .line 229
    invoke-virtual {v1, v2, v0, v3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    #@35
    goto :goto_0
.end method

.method public flush()V
    .locals 4

    #@0
    .prologue
    .line 252
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 254
    :try_start_0
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 255
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@a
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    #@d
    .line 251
    :cond_0
    :goto_0
    return-void

    #@e
    .line 257
    :cond_1
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    #@10
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    goto :goto_0

    #@14
    .line 259
    :catch_0
    move-exception v0

    #@15
    .line 260
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "Exception occurred when flushing the output stream"

    #@1c
    .line 261
    const/4 v3, 0x2

    #@1d
    .line 260
    invoke-virtual {v1, v2, v0, v3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    #@20
    goto :goto_0
.end method

.method internalSetOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "newOs"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 154
    iput-object p1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    #@2
    .line 153
    return-void
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 2
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 318
    if-nez p1, :cond_0

    #@3
    .line 319
    return v1

    #@4
    .line 321
    :cond_0
    iget-object v0, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    #@6
    if-eqz v0, :cond_1

    #@8
    invoke-super {p0, p1}, Ljava/util/logging/Handler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 322
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 324
    :cond_1
    return v1
.end method

.method public declared-synchronized publish(Ljava/util/logging/LogRecord;)V
    .locals 5
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 284
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/logging/StreamHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_1

    #@7
    .line 285
    iget-boolean v2, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 286
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->initializeWriter()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 288
    :cond_0
    const/4 v1, 0x0

    #@f
    .line 290
    .local v1, "msg":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result-object v1

    #@17
    .line 295
    .end local v1    # "msg":Ljava/lang/String;
    :goto_0
    :try_start_2
    invoke-direct {p0, v1}, Ljava/util/logging/StreamHandler;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1a
    :cond_1
    :goto_1
    monitor-exit p0

    #@1b
    .line 282
    return-void

    #@1c
    .line 291
    .restart local v1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@1d
    .line 292
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    #@20
    move-result-object v2

    #@21
    const-string/jumbo v3, "Exception occurred when formatting the log record"

    #@24
    .line 293
    const/4 v4, 0x5

    #@25
    .line 292
    invoke-virtual {v2, v3, v0, v4}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@28
    goto :goto_0

    #@29
    .line 297
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v0

    #@2a
    .line 298
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    #@2d
    move-result-object v2

    #@2e
    const-string/jumbo v3, "Exception occurred when logging the record"

    #@31
    .line 299
    const/4 v4, 0x0

    #@32
    .line 298
    invoke-virtual {v2, v3, v0, v4}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@35
    goto :goto_1

    #@36
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@37
    monitor-exit p0

    #@38
    throw v2
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 4
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 188
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->flush()V

    #@3
    .line 189
    invoke-super {p0, p1}, Ljava/util/logging/Handler;->setEncoding(Ljava/lang/String;)V

    #@6
    .line 191
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 192
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getEncoding()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 193
    new-instance v1, Ljava/io/OutputStreamWriter;

    #@12
    iget-object v2, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    #@14
    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@17
    iput-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@19
    .line 186
    :cond_0
    :goto_0
    return-void

    #@1a
    .line 196
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    #@1c
    iget-object v2, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    #@1e
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getEncoding()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@25
    iput-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    goto :goto_0

    #@28
    .line 197
    :catch_0
    move-exception v0

    #@29
    .line 202
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    #@2b
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2e
    throw v1
.end method

.method protected setOutputStream(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 169
    if-nez p1, :cond_0

    #@4
    .line 170
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v1, "os == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 172
    :cond_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    #@14
    .line 173
    invoke-virtual {p0, v1}, Ljava/util/logging/StreamHandler;->close(Z)V

    #@17
    .line 174
    iput-object v2, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@19
    .line 175
    iput-object p1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    #@1b
    .line 176
    iput-boolean v1, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    #@1d
    .line 168
    return-void
.end method
