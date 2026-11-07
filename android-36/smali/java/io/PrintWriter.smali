.class public Ljava/io/PrintWriter;
.super Ljava/io/Writer;
.source "PrintWriter.java"


# instance fields
.field private final greylist-max-o autoFlush:Z

.field private greylist-max-o formatter:Ljava/util/Formatter;

.field protected whitelist test-api out:Ljava/io/Writer;

.field private greylist-max-o psOut:Ljava/io/PrintStream;

.field private greylist-max-o trouble:Z


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/File;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 311
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 349
    invoke-static {p2}, Ljava/io/PrintWriter;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/nio/charset/Charset;Ljava/io/File;)V

    .line 350
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    const-string v0, "charset"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/nio/charset/Charset;Ljava/io/File;)V

    .line 380
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 129
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Z)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z

    .line 145
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;ZLjava/nio/charset/Charset;)V

    .line 146
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;ZLjava/nio/charset/Charset;)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 164
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 167
    instance-of v0, p1, Ljava/io/PrintStream;

    if-eqz v0, :cond_16

    .line 168
    move-object v0, p1

    check-cast v0, Ljava/io/PrintStream;

    iput-object v0, p0, Ljava/io/PrintWriter;->psOut:Ljava/io/PrintStream;

    .line 170
    :cond_16
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/Writer;)V
    .registers 3
    .param p1, "out"    # Ljava/io/Writer;

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 100
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/Writer;Z)V
    .registers 4
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "autoFlush"    # Z

    .line 112
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PrintWriter;->trouble:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/PrintWriter;->psOut:Ljava/io/PrintStream;

    .line 113
    iput-object p1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    .line 114
    iput-boolean p2, p0, Ljava/io/PrintWriter;->autoFlush:Z

    .line 115
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 202
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 248
    invoke-static {p2}, Ljava/io/PrintWriter;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/nio/charset/Charset;Ljava/io/File;)V

    .line 249
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    const-string v0, "charset"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/nio/charset/Charset;Ljava/io/File;)V

    .line 279
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/nio/charset/Charset;Ljava/io/File;)V
    .registers 6
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 210
    return-void
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    iget-object v0, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    if-eqz v0, :cond_5

    .line 386
    return-void

    .line 385
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o newLine()V
    .registers 4

    .line 564
    :try_start_0
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_3} :catch_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_1d

    .line 565
    :try_start_3
    invoke-direct {p0}, Ljava/io/PrintWriter;->ensureOpen()V

    .line 566
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 567
    iget-boolean v1, p0, Ljava/io/PrintWriter;->autoFlush:Z

    if-eqz v1, :cond_18

    .line 568
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 569
    :cond_18
    monitor-exit v0

    goto :goto_2a

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    .end local p0    # "this":Ljava/io/PrintWriter;
    :try_start_1c
    throw v1
    :try_end_1d
    .catch Ljava/io/InterruptedIOException; {:try_start_1c .. :try_end_1d} :catch_22
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1d} :catch_1d

    .line 574
    .restart local p0    # "this":Ljava/io/PrintWriter;
    :catch_1d
    move-exception v0

    .line 575
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintWriter;->trouble:Z

    goto :goto_2b

    .line 571
    .end local v0    # "x":Ljava/io/IOException;
    :catch_22
    move-exception v0

    .line 572
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 576
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_2a
    nop

    .line 577
    :goto_2b
    return-void
.end method

.method private static greylist-max-o toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .param p0, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 84
    const-string v0, "charsetName"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    :try_start_5
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_9
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_5 .. :try_end_9} :catch_a
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_5 .. :try_end_9} :catch_a

    return-object v0

    .line 87
    :catch_a
    move-exception v0

    .line 89
    .local v0, "unused":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api append(C)Ljava/io/PrintWriter;
    .registers 2
    .param p1, "c"    # C

    .line 1150
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(I)V

    .line 1151
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    .registers 3
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 1089
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 1090
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;
    .registers 5
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1128
    if-nez p1, :cond_4

    const-string p1, "null"

    .line 1129
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api append(C)Ljava/io/Writer;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(C)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api checkError()Z
    .registers 3

    .line 432
    iget-object v0, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    if-eqz v0, :cond_7

    .line 433
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 435
    :cond_7
    iget-object v0, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    instance-of v0, v0, Ljava/io/PrintWriter;

    if-eqz v0, :cond_16

    .line 436
    iget-object v0, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    check-cast v0, Ljava/io/PrintWriter;

    .line 437
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v0}, Ljava/io/PrintWriter;->checkError()Z

    move-result v1

    return v1

    .line 438
    .end local v0    # "pw":Ljava/io/PrintWriter;
    :cond_16
    iget-object v0, p0, Ljava/io/PrintWriter;->psOut:Ljava/io/PrintStream;

    if-eqz v0, :cond_21

    .line 439
    iget-object v0, p0, Ljava/io/PrintWriter;->psOut:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->checkError()Z

    move-result v0

    return v0

    .line 441
    :cond_21
    iget-boolean v0, p0, Ljava/io/PrintWriter;->trouble:Z

    return v0
.end method

.method protected whitelist test-api clearError()V
    .registers 2

    .line 465
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PrintWriter;->trouble:Z

    .line 466
    return-void
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 412
    :try_start_0
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_16

    .line 413
    :try_start_3
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    if-nez v1, :cond_9

    .line 414
    monitor-exit v0

    return-void

    .line 415
    :cond_9
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 416
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    .line 417
    monitor-exit v0

    .line 421
    goto :goto_1a

    .line 417
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    .end local p0    # "this":Ljava/io/PrintWriter;
    :try_start_15
    throw v1
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_16} :catch_16

    .line 419
    .restart local p0    # "this":Ljava/io/PrintWriter;
    :catch_16
    move-exception v0

    .line 420
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintWriter;->trouble:Z

    .line 422
    .end local v0    # "x":Ljava/io/IOException;
    :goto_1a
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 3

    .line 394
    :try_start_0
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_10

    .line 395
    :try_start_3
    invoke-direct {p0}, Ljava/io/PrintWriter;->ensureOpen()V

    .line 396
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 397
    monitor-exit v0

    .line 401
    goto :goto_14

    .line 397
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    .end local p0    # "this":Ljava/io/PrintWriter;
    :try_start_f
    throw v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_10} :catch_10

    .line 399
    .restart local p0    # "this":Ljava/io/PrintWriter;
    :catch_10
    move-exception v0

    .line 400
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintWriter;->trouble:Z

    .line 402
    .end local v0    # "x":Ljava/io/IOException;
    :goto_14
    return-void
.end method

.method public varargs whitelist test-api format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .registers 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 987
    :try_start_0
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_3} :catch_39
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_34

    .line 988
    :try_start_3
    invoke-direct {p0}, Ljava/io/PrintWriter;->ensureOpen()V

    .line 989
    iget-object v1, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    if-eqz v1, :cond_16

    iget-object v1, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    .line 990
    invoke-virtual {v1}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    if-eq v1, v2, :cond_1d

    .line 991
    :cond_16
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v1, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    .line 992
    :cond_1d
    iget-object v1, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 993
    iget-boolean v1, p0, Ljava/io/PrintWriter;->autoFlush:Z

    if-eqz v1, :cond_2f

    .line 994
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 995
    :cond_2f
    monitor-exit v0

    goto :goto_41

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    .end local p0    # "this":Ljava/io/PrintWriter;
    .end local p1    # "format":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    :try_start_33
    throw v1
    :try_end_34
    .catch Ljava/io/InterruptedIOException; {:try_start_33 .. :try_end_34} :catch_39
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_34} :catch_34

    .line 998
    .restart local p0    # "this":Ljava/io/PrintWriter;
    .restart local p1    # "format":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :catch_34
    move-exception v0

    .line 999
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintWriter;->trouble:Z

    goto :goto_42

    .line 996
    .end local v0    # "x":Ljava/io/IOException;
    :catch_39
    move-exception v0

    .line 997
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1000
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_41
    nop

    .line 1001
    :goto_42
    return-object p0
.end method

.method public varargs whitelist test-api format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .registers 6
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 1047
    :try_start_0
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_3} :catch_31
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_2c

    .line 1048
    :try_start_3
    invoke-direct {p0}, Ljava/io/PrintWriter;->ensureOpen()V

    .line 1049
    iget-object v1, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    if-eqz v1, :cond_12

    iget-object v1, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    invoke-virtual {v1}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v1

    if-eq v1, p1, :cond_19

    .line 1050
    :cond_12
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    .line 1051
    :cond_19
    iget-object v1, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1052
    iget-boolean v1, p0, Ljava/io/PrintWriter;->autoFlush:Z

    if-eqz v1, :cond_27

    .line 1053
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 1054
    :cond_27
    monitor-exit v0

    goto :goto_39

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    .end local p0    # "this":Ljava/io/PrintWriter;
    .end local p1    # "l":Ljava/util/Locale;
    .end local p2    # "format":Ljava/lang/String;
    .end local p3    # "args":[Ljava/lang/Object;
    :try_start_2b
    throw v1
    :try_end_2c
    .catch Ljava/io/InterruptedIOException; {:try_start_2b .. :try_end_2c} :catch_31
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2c} :catch_2c

    .line 1057
    .restart local p0    # "this":Ljava/io/PrintWriter;
    .restart local p1    # "l":Ljava/util/Locale;
    .restart local p2    # "format":Ljava/lang/String;
    .restart local p3    # "args":[Ljava/lang/Object;
    :catch_2c
    move-exception v0

    .line 1058
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintWriter;->trouble:Z

    goto :goto_3a

    .line 1055
    .end local v0    # "x":Ljava/io/IOException;
    :catch_31
    move-exception v0

    .line 1056
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1059
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_39
    nop

    .line 1060
    :goto_3a
    return-object p0
.end method

.method public whitelist test-api print(C)V
    .registers 2
    .param p1, "c"    # C

    .line 603
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(I)V

    .line 604
    return-void
.end method

.method public whitelist test-api print(D)V
    .registers 4
    .param p1, "d"    # D

    .line 659
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 660
    return-void
.end method

.method public whitelist test-api print(F)V
    .registers 3
    .param p1, "f"    # F

    .line 645
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 646
    return-void
.end method

.method public whitelist test-api print(I)V
    .registers 3
    .param p1, "i"    # I

    .line 617
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method public whitelist test-api print(J)V
    .registers 4
    .param p1, "l"    # J

    .line 631
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method public whitelist test-api print(Ljava/lang/Object;)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 700
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method public whitelist test-api print(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 686
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method public whitelist test-api print(Z)V
    .registers 3
    .param p1, "b"    # Z

    .line 591
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method public whitelist test-api print([C)V
    .registers 2
    .param p1, "s"    # [C

    .line 673
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write([C)V

    .line 674
    return-void
.end method

.method public varargs whitelist test-api printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 889
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist test-api printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .registers 5
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 942
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api println()V
    .registers 1

    .line 712
    invoke-direct {p0}, Ljava/io/PrintWriter;->newLine()V

    .line 713
    return-void
.end method

.method public whitelist test-api println(C)V
    .registers 4
    .param p1, "x"    # C

    .line 737
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 738
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(C)V

    .line 739
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 740
    monitor-exit v0

    .line 741
    return-void

    .line 740
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api println(D)V
    .registers 5
    .param p1, "x"    # D

    .line 793
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 794
    :try_start_3
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->print(D)V

    .line 795
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 796
    monitor-exit v0

    .line 797
    return-void

    .line 796
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api println(F)V
    .registers 4
    .param p1, "x"    # F

    .line 779
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 780
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(F)V

    .line 781
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 782
    monitor-exit v0

    .line 783
    return-void

    .line 782
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api println(I)V
    .registers 4
    .param p1, "x"    # I

    .line 751
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 752
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 753
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 754
    monitor-exit v0

    .line 755
    return-void

    .line 754
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api println(J)V
    .registers 5
    .param p1, "x"    # J

    .line 765
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 766
    :try_start_3
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    .line 767
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 768
    monitor-exit v0

    .line 769
    return-void

    .line 768
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api println(Ljava/lang/Object;)V
    .registers 5
    .param p1, "x"    # Ljava/lang/Object;

    .line 837
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 839
    :try_start_7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 841
    monitor-exit v1

    .line 842
    return-void

    .line 841
    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v2
.end method

.method public whitelist test-api println(Ljava/lang/String;)V
    .registers 4
    .param p1, "x"    # Ljava/lang/String;

    .line 821
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 822
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 824
    monitor-exit v0

    .line 825
    return-void

    .line 824
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api println(Z)V
    .registers 4
    .param p1, "x"    # Z

    .line 723
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 724
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 725
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 726
    monitor-exit v0

    .line 727
    return-void

    .line 726
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api println([C)V
    .registers 4
    .param p1, "x"    # [C

    .line 807
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 808
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print([C)V

    .line 809
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 810
    monitor-exit v0

    .line 811
    return-void

    .line 810
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method protected whitelist test-api setError()V
    .registers 2

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PrintWriter;->trouble:Z

    .line 453
    return-void
.end method

.method public whitelist test-api write(I)V
    .registers 4
    .param p1, "c"    # I

    .line 479
    :try_start_0
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_3} :catch_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_10

    .line 480
    :try_start_3
    invoke-direct {p0}, Ljava/io/PrintWriter;->ensureOpen()V

    .line 481
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(I)V

    .line 482
    monitor-exit v0

    goto :goto_1d

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    .end local p0    # "this":Ljava/io/PrintWriter;
    .end local p1    # "c":I
    :try_start_f
    throw v1
    :try_end_10
    .catch Ljava/io/InterruptedIOException; {:try_start_f .. :try_end_10} :catch_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_10} :catch_10

    .line 487
    .restart local p0    # "this":Ljava/io/PrintWriter;
    .restart local p1    # "c":I
    :catch_10
    move-exception v0

    .line 488
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintWriter;->trouble:Z

    goto :goto_1e

    .line 484
    .end local v0    # "x":Ljava/io/IOException;
    :catch_15
    move-exception v0

    .line 485
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 489
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_1d
    nop

    .line 490
    :goto_1e
    return-void
.end method

.method public whitelist test-api write(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 559
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 560
    return-void
.end method

.method public whitelist test-api write(Ljava/lang/String;II)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 540
    :try_start_0
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_3} :catch_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_10

    .line 541
    :try_start_3
    invoke-direct {p0}, Ljava/io/PrintWriter;->ensureOpen()V

    .line 542
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 543
    monitor-exit v0

    goto :goto_1d

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    .end local p0    # "this":Ljava/io/PrintWriter;
    .end local p1    # "s":Ljava/lang/String;
    .end local p2    # "off":I
    .end local p3    # "len":I
    :try_start_f
    throw v1
    :try_end_10
    .catch Ljava/io/InterruptedIOException; {:try_start_f .. :try_end_10} :catch_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_10} :catch_10

    .line 548
    .restart local p0    # "this":Ljava/io/PrintWriter;
    .restart local p1    # "s":Ljava/lang/String;
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catch_10
    move-exception v0

    .line 549
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintWriter;->trouble:Z

    goto :goto_1e

    .line 545
    .end local v0    # "x":Ljava/io/IOException;
    :catch_15
    move-exception v0

    .line 546
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 550
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_1d
    nop

    .line 551
    :goto_1e
    return-void
.end method

.method public whitelist test-api write([C)V
    .registers 4
    .param p1, "buf"    # [C

    .line 524
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/PrintWriter;->write([CII)V

    .line 525
    return-void
.end method

.method public whitelist test-api write([CII)V
    .registers 6
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 505
    :try_start_0
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_3} :catch_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_10

    .line 506
    :try_start_3
    invoke-direct {p0}, Ljava/io/PrintWriter;->ensureOpen()V

    .line 507
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 508
    monitor-exit v0

    goto :goto_1d

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    .end local p0    # "this":Ljava/io/PrintWriter;
    .end local p1    # "buf":[C
    .end local p2    # "off":I
    .end local p3    # "len":I
    :try_start_f
    throw v1
    :try_end_10
    .catch Ljava/io/InterruptedIOException; {:try_start_f .. :try_end_10} :catch_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_10} :catch_10

    .line 513
    .restart local p0    # "this":Ljava/io/PrintWriter;
    .restart local p1    # "buf":[C
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catch_10
    move-exception v0

    .line 514
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintWriter;->trouble:Z

    goto :goto_1e

    .line 510
    .end local v0    # "x":Ljava/io/IOException;
    :catch_15
    move-exception v0

    .line 511
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 515
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_1d
    nop

    .line 516
    :goto_1e
    return-void
.end method
