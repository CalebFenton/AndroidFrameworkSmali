.class public Lorg/apache/http/conn/EofSensorInputStream;
.super Ljava/io/InputStream;
.source "EofSensorInputStream.java"

# interfaces
.implements Lorg/apache/http/conn/ConnectionReleaseTrigger;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

.field private selfClosed:Z

.field protected wrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/conn/EofSensorWatcher;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "watcher"    # Lorg/apache/http/conn/EofSensorWatcher;

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 110
    if-nez p1, :cond_0

    #@5
    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 112
    const-string/jumbo v1, "Wrapped stream may not be null."

    #@a
    .line 111
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 115
    :cond_0
    iput-object p1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    #@10
    .line 116
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->selfClosed:Z

    #@13
    .line 117
    iput-object p2, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    #@15
    .line 109
    return-void
.end method


# virtual methods
.method public abortConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 326
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->selfClosed:Z

    #@3
    .line 327
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkAbort()V

    #@6
    .line 324
    return-void
.end method

.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 197
    const/4 v0, 0x0

    #@1
    .line 199
    .local v0, "a":I
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->isReadAllowed()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 201
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    #@9
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v0

    #@d
    .line 209
    :cond_0
    return v0

    #@e
    .line 203
    :catch_0
    move-exception v1

    #@f
    .line 204
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkAbort()V

    #@12
    .line 205
    throw v1
.end method

.method protected checkAbort()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 296
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    #@3
    if-eqz v1, :cond_2

    #@5
    .line 298
    const/4 v0, 0x1

    #@6
    .line 299
    .local v0, "scws":Z
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 300
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    #@c
    iget-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    #@e
    invoke-interface {v1, v2}, Lorg/apache/http/conn/EofSensorWatcher;->streamAbort(Ljava/io/InputStream;)Z

    #@11
    move-result v0

    #@12
    .line 301
    .end local v0    # "scws":Z
    :cond_0
    if-eqz v0, :cond_1

    #@14
    .line 302
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    #@16
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 304
    :cond_1
    iput-object v3, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    #@1b
    .line 294
    :cond_2
    return-void

    #@1c
    .line 303
    :catchall_0
    move-exception v1

    #@1d
    .line 304
    iput-object v3, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    #@1f
    .line 303
    throw v1
.end method

.method protected checkClose()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 267
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    #@3
    if-eqz v1, :cond_2

    #@5
    .line 269
    const/4 v0, 0x1

    #@6
    .line 270
    .local v0, "scws":Z
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 271
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    #@c
    iget-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    #@e
    invoke-interface {v1, v2}, Lorg/apache/http/conn/EofSensorWatcher;->streamClosed(Ljava/io/InputStream;)Z

    #@11
    move-result v0

    #@12
    .line 272
    .end local v0    # "scws":Z
    :cond_0
    if-eqz v0, :cond_1

    #@14
    .line 273
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    #@16
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 275
    :cond_1
    iput-object v3, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    #@1b
    .line 265
    :cond_2
    return-void

    #@1c
    .line 274
    :catchall_0
    move-exception v1

    #@1d
    .line 275
    iput-object v3, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    #@1f
    .line 274
    throw v1
.end method

.method protected checkEOF(I)V
    .locals 4
    .param p1, "eof"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 240
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    #@3
    if-eqz v1, :cond_2

    #@5
    if-gez p1, :cond_2

    #@7
    .line 242
    const/4 v0, 0x1

    #@8
    .line 243
    .local v0, "scws":Z
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 244
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    #@e
    iget-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    #@10
    invoke-interface {v1, v2}, Lorg/apache/http/conn/EofSensorWatcher;->eofDetected(Ljava/io/InputStream;)Z

    #@13
    move-result v0

    #@14
    .line 245
    .end local v0    # "scws":Z
    :cond_0
    if-eqz v0, :cond_1

    #@16
    .line 246
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    #@18
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 248
    :cond_1
    iput-object v3, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    #@1d
    .line 238
    :cond_2
    return-void

    #@1e
    .line 247
    :catchall_0
    move-exception v1

    #@1f
    .line 248
    iput-object v3, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    #@21
    .line 247
    throw v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 217
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->selfClosed:Z

    #@3
    .line 218
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkClose()V

    #@6
    .line 215
    return-void
.end method

.method protected isReadAllowed()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    iget-boolean v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->selfClosed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 132
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Attempted read on closed stream."

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 134
    :cond_0
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    #@f
    if-eqz v0, :cond_1

    #@11
    const/4 v0, 0x1

    #@12
    :goto_0
    return v0

    #@13
    :cond_1
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    const/4 v1, -0x1

    #@1
    .line 143
    .local v1, "l":I
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->isReadAllowed()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 145
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    #@9
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    #@c
    move-result v1

    #@d
    .line 146
    invoke-virtual {p0, v1}, Lorg/apache/http/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 153
    :cond_0
    return v1

    #@11
    .line 147
    :catch_0
    move-exception v0

    #@12
    .line 148
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkAbort()V

    #@15
    .line 149
    throw v0
.end method

.method public read([B)I
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    const/4 v1, -0x1

    #@1
    .line 181
    .local v1, "l":I
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->isReadAllowed()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 183
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    #@9
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    #@c
    move-result v1

    #@d
    .line 184
    invoke-virtual {p0, v1}, Lorg/apache/http/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 190
    :cond_0
    return v1

    #@11
    .line 185
    :catch_0
    move-exception v0

    #@12
    .line 186
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkAbort()V

    #@15
    .line 187
    throw v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    const/4 v1, -0x1

    #@1
    .line 162
    .local v1, "l":I
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->isReadAllowed()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 164
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    #@9
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@c
    move-result v1

    #@d
    .line 165
    invoke-virtual {p0, v1}, Lorg/apache/http/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 172
    :cond_0
    return v1

    #@11
    .line 166
    :catch_0
    move-exception v0

    #@12
    .line 167
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkAbort()V

    #@15
    .line 168
    throw v0
.end method

.method public releaseConnection()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 314
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->close()V

    #@3
    .line 313
    return-void
.end method
