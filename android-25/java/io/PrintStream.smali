.class public Ljava/io/PrintStream;
.super Ljava/io/FilterOutputStream;
.source "PrintStream.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Closeable;


# instance fields
.field private final autoFlush:Z

.field private charOut:Ljava/io/OutputStreamWriter;

.field private charset:Ljava/nio/charset/Charset;

.field private closing:Z

.field private formatter:Ljava/util/Formatter;

.field private textOut:Ljava/io/BufferedWriter;

.field private trouble:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 278
    new-instance v0, Ljava/io/FileOutputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {p0, v1, v0}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;)V

    #@9
    .line 277
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 318
    invoke-static {p2}, Ljava/io/PrintStream;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Ljava/io/FileOutputStream;

    #@6
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@9
    const/4 v2, 0x0

    #@a
    invoke-direct {p0, v2, v0, v1}, Ljava/io/PrintStream;-><init>(ZLjava/nio/charset/Charset;Ljava/io/OutputStream;)V

    #@d
    .line 315
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 134
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    #@4
    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z

    #@0
    .prologue
    .line 150
    const-string/jumbo v0, "Null output stream"

    #@3
    invoke-static {p1, v0}, Ljava/io/PrintStream;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/io/OutputStream;

    #@9
    invoke-direct {p0, p2, v0}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;)V

    #@c
    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    const-string/jumbo v0, "Null output stream"

    #@3
    invoke-static {p1, v0}, Ljava/io/PrintStream;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/io/OutputStream;

    #@9
    .line 176
    invoke-static {p3}, Ljava/io/PrintStream;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@c
    move-result-object v1

    #@d
    .line 174
    invoke-direct {p0, p2, v0, v1}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;Ljava/nio/charset/Charset;)V

    #@10
    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 207
    new-instance v0, Ljava/io/FileOutputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {p0, v1, v0}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;)V

    #@9
    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 247
    invoke-static {p2}, Ljava/io/PrintStream;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Ljava/io/FileOutputStream;

    #@6
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@9
    const/4 v2, 0x0

    #@a
    invoke-direct {p0, v2, v0, v1}, Ljava/io/PrintStream;-><init>(ZLjava/nio/charset/Charset;Ljava/io/OutputStream;)V

    #@d
    .line 244
    return-void
.end method

.method private constructor <init>(ZLjava/io/OutputStream;)V
    .locals 1
    .param p1, "autoFlush"    # Z
    .param p2, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 105
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@4
    .line 63
    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    #@6
    .line 345
    iput-boolean v0, p0, Ljava/io/PrintStream;->closing:Z

    #@8
    .line 106
    iput-boolean p1, p0, Ljava/io/PrintStream;->autoFlush:Z

    #@a
    .line 104
    return-void
.end method

.method private constructor <init>(ZLjava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "autoFlush"    # Z
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 110
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@4
    .line 63
    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    #@6
    .line 345
    iput-boolean v0, p0, Ljava/io/PrintStream;->closing:Z

    #@8
    .line 111
    iput-boolean p1, p0, Ljava/io/PrintStream;->autoFlush:Z

    #@a
    .line 109
    return-void
.end method

.method private constructor <init>(ZLjava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "autoFlush"    # Z
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    invoke-direct {p0, p1, p3, p2}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;Ljava/nio/charset/Charset;)V

    #@3
    .line 120
    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 323
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 324
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 322
    :cond_0
    return-void
.end method

.method private getTextOut()Ljava/io/BufferedWriter;
    .locals 2

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 350
    iget-object v0, p0, Ljava/io/PrintStream;->charset:Ljava/nio/charset/Charset;

    #@6
    if-eqz v0, :cond_1

    #@8
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@a
    iget-object v1, p0, Ljava/io/PrintStream;->charset:Ljava/nio/charset/Charset;

    #@c
    invoke-direct {v0, p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    #@f
    :goto_0
    iput-object v0, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    #@11
    .line 352
    new-instance v0, Ljava/io/BufferedWriter;

    #@13
    iget-object v1, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    #@15
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@18
    iput-object v0, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    #@1a
    .line 354
    :cond_0
    iget-object v0, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    #@1c
    return-object v0

    #@1d
    .line 351
    :cond_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@1f
    invoke-direct {v0, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@22
    goto :goto_0
.end method

.method private newLine()V
    .locals 4

    #@0
    .prologue
    .line 558
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@1
    .line 559
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    #@4
    .line 561
    invoke-direct {p0}, Ljava/io/PrintStream;->getTextOut()Ljava/io/BufferedWriter;

    #@7
    move-result-object v0

    #@8
    .line 562
    .local v0, "textOut":Ljava/io/BufferedWriter;
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    #@b
    .line 563
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flushBuffer()V

    #@e
    .line 564
    iget-object v3, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    #@10
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flushBuffer()V

    #@13
    .line 565
    iget-boolean v3, p0, Ljava/io/PrintStream;->autoFlush:Z

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 566
    iget-object v3, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    #@19
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    :cond_0
    :try_start_2
    monitor-exit p0

    #@1d
    .line 556
    .end local v0    # "textOut":Ljava/io/BufferedWriter;
    :goto_0
    return-void

    #@1e
    .line 558
    :catchall_0
    move-exception v3

    #@1f
    monitor-exit p0

    #@20
    throw v3
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@21
    .line 569
    :catch_0
    move-exception v2

    #@22
    .line 570
    .local v2, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    #@29
    goto :goto_0

    #@2a
    .line 572
    .end local v2    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v1

    #@2b
    .line 573
    .local v1, "x":Ljava/io/IOException;
    const/4 v3, 0x1

    #@2c
    iput-boolean v3, p0, Ljava/io/PrintStream;->trouble:Z

    #@2e
    goto :goto_0
.end method

.method private static requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 81
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    #@2
    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0

    #@8
    .line 83
    :cond_0
    return-object p0
.end method

.method private static toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2
    .param p0, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    const-string/jumbo v1, "charsetName"

    #@3
    invoke-static {p0, v1}, Ljava/io/PrintStream;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    .line 96
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 97
    :catch_0
    move-exception v0

    #@c
    .line 99
    .local v0, "unused":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    #@e
    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1
.end method

.method private write(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 537
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@1
    .line 538
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    #@4
    .line 540
    invoke-direct {p0}, Ljava/io/PrintStream;->getTextOut()Ljava/io/BufferedWriter;

    #@7
    move-result-object v0

    #@8
    .line 541
    .local v0, "textOut":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@b
    .line 542
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flushBuffer()V

    #@e
    .line 543
    iget-object v3, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    #@10
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flushBuffer()V

    #@13
    .line 544
    iget-boolean v3, p0, Ljava/io/PrintStream;->autoFlush:Z

    #@15
    if-eqz v3, :cond_0

    #@17
    const/16 v3, 0xa

    #@19
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    #@1c
    move-result v3

    #@1d
    if-ltz v3, :cond_0

    #@1f
    .line 545
    iget-object v3, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    #@21
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    :cond_0
    :try_start_2
    monitor-exit p0

    #@25
    .line 535
    .end local v0    # "textOut":Ljava/io/BufferedWriter;
    :goto_0
    return-void

    #@26
    .line 537
    :catchall_0
    move-exception v3

    #@27
    monitor-exit p0

    #@28
    throw v3
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    .line 548
    :catch_0
    move-exception v2

    #@2a
    .line 549
    .local v2, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    #@31
    goto :goto_0

    #@32
    .line 551
    .end local v2    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v1

    #@33
    .line 552
    .local v1, "x":Ljava/io/IOException;
    const/4 v3, 0x1

    #@34
    iput-boolean v3, p0, Ljava/io/PrintStream;->trouble:Z

    #@36
    goto :goto_0
.end method

.method private write([C)V
    .locals 6
    .param p1, "buf"    # [C

    #@0
    .prologue
    .line 513
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@1
    .line 514
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    #@4
    .line 516
    invoke-direct {p0}, Ljava/io/PrintStream;->getTextOut()Ljava/io/BufferedWriter;

    #@7
    move-result-object v1

    #@8
    .line 517
    .local v1, "textOut":Ljava/io/BufferedWriter;
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write([C)V

    #@b
    .line 518
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flushBuffer()V

    #@e
    .line 519
    iget-object v4, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    #@10
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flushBuffer()V

    #@13
    .line 520
    iget-boolean v4, p0, Ljava/io/PrintStream;->autoFlush:Z

    #@15
    if-eqz v4, :cond_1

    #@17
    .line 521
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    array-length v4, p1

    #@19
    if-ge v0, v4, :cond_1

    #@1b
    .line 522
    aget-char v4, p1, v0

    #@1d
    const/16 v5, 0xa

    #@1f
    if-ne v4, v5, :cond_0

    #@21
    .line 523
    iget-object v4, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    #@23
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    .line 521
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .end local v0    # "i":I
    :cond_1
    :try_start_2
    monitor-exit p0

    #@2a
    .line 511
    .end local v1    # "textOut":Ljava/io/BufferedWriter;
    :goto_1
    return-void

    #@2b
    .line 513
    :catchall_0
    move-exception v4

    #@2c
    monitor-exit p0

    #@2d
    throw v4
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@2e
    .line 527
    :catch_0
    move-exception v3

    #@2f
    .line 528
    .local v3, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    #@36
    goto :goto_1

    #@37
    .line 530
    .end local v3    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v2

    #@38
    .line 531
    .local v2, "x":Ljava/io/IOException;
    const/4 v4, 0x1

    #@39
    iput-boolean v4, p0, Ljava/io/PrintStream;->trouble:Z

    #@3b
    goto :goto_1
.end method


# virtual methods
.method public append(C)Ljava/io/PrintStream;
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 1143
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(C)V

    #@3
    .line 1144
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1080
    if-nez p1, :cond_0

    #@2
    .line 1081
    const-string/jumbo v0, "null"

    #@5
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@8
    .line 1084
    :goto_0
    return-object p0

    #@9
    .line 1083
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@10
    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 1121
    if-nez p1, :cond_0

    #@2
    const-string/jumbo v0, "null"

    #@5
    .line 1122
    .local v0, "cs":Ljava/lang/CharSequence;
    :goto_0
    invoke-interface {v0, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v1}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    #@10
    .line 1123
    return-object p0

    #@11
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    move-object v0, p1

    #@12
    .line 1121
    goto :goto_0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1142
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(C)Ljava/io/PrintStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1079
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1120
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public checkError()Z
    .locals 2

    #@0
    .prologue
    .line 403
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 404
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    #@7
    .line 405
    :cond_0
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    #@9
    instance-of v1, v1, Ljava/io/PrintStream;

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 406
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    #@f
    check-cast v0, Ljava/io/PrintStream;

    #@11
    .line 407
    .local v0, "ps":Ljava/io/PrintStream;
    invoke-virtual {v0}, Ljava/io/PrintStream;->checkError()Z

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 409
    .end local v0    # "ps":Ljava/io/PrintStream;
    :cond_1
    iget-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    #@18
    return v1
.end method

.method protected clearError()V
    .locals 1

    #@0
    .prologue
    .line 435
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    #@3
    .line 434
    return-void
.end method

.method public close()V
    .locals 2

    #@0
    .prologue
    .line 364
    monitor-enter p0

    #@1
    .line 365
    :try_start_0
    iget-boolean v1, p0, Ljava/io/PrintStream;->closing:Z

    #@3
    if-nez v1, :cond_1

    #@5
    .line 366
    const/4 v1, 0x1

    #@6
    iput-boolean v1, p0, Ljava/io/PrintStream;->closing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 369
    :try_start_1
    iget-object v1, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 370
    iget-object v1, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    #@e
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    #@11
    .line 372
    :cond_0
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    #@13
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .line 377
    :goto_0
    const/4 v1, 0x0

    #@17
    :try_start_2
    iput-object v1, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    #@19
    .line 378
    const/4 v1, 0x0

    #@1a
    iput-object v1, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    #@1c
    .line 379
    const/4 v1, 0x0

    #@1d
    iput-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f
    :cond_1
    monitor-exit p0

    #@20
    .line 363
    return-void

    #@21
    .line 374
    :catch_0
    move-exception v0

    #@22
    .line 375
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    #@23
    :try_start_3
    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@25
    goto :goto_0

    #@26
    .line 364
    .end local v0    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@27
    monitor-exit p0

    #@28
    throw v1
.end method

.method public flush()V
    .locals 2

    #@0
    .prologue
    .line 334
    monitor-enter p0

    #@1
    .line 336
    :try_start_0
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    #@4
    .line 337
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    #@6
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    :goto_0
    monitor-exit p0

    #@a
    .line 333
    return-void

    #@b
    .line 339
    :catch_0
    move-exception v0

    #@c
    .line 340
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    #@d
    :try_start_1
    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    goto :goto_0

    #@10
    .line 334
    .end local v0    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit p0

    #@12
    throw v1
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 983
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@1
    .line 984
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    #@4
    .line 985
    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 986
    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    #@a
    invoke-virtual {v2}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    #@d
    move-result-object v2

    #@e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@11
    move-result-object v3

    #@12
    if-eq v2, v3, :cond_1

    #@14
    .line 987
    :cond_0
    new-instance v2, Ljava/util/Formatter;

    #@16
    invoke-direct {v2, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    #@19
    iput-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    #@1b
    .line 988
    :cond_1
    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    #@1d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v2, v3, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    :try_start_2
    monitor-exit p0

    #@25
    .line 995
    :goto_0
    return-object p0

    #@26
    .line 983
    :catchall_0
    move-exception v2

    #@27
    monitor-exit p0

    #@28
    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    .line 990
    :catch_0
    move-exception v1

    #@2a
    .line 991
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    #@31
    goto :goto_0

    #@32
    .line 992
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    #@33
    .line 993
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    #@34
    iput-boolean v2, p0, Ljava/io/PrintStream;->trouble:Z

    #@36
    goto :goto_0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 3
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1040
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@1
    .line 1041
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    #@4
    .line 1042
    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1043
    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    #@a
    invoke-virtual {v2}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    #@d
    move-result-object v2

    #@e
    if-eq v2, p1, :cond_1

    #@10
    .line 1044
    :cond_0
    new-instance v2, Ljava/util/Formatter;

    #@12
    invoke-direct {v2, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    #@15
    iput-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    #@17
    .line 1045
    :cond_1
    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    #@19
    invoke-virtual {v2, p1, p2, p3}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    :try_start_2
    monitor-exit p0

    #@1d
    .line 1052
    :goto_0
    return-object p0

    #@1e
    .line 1040
    :catchall_0
    move-exception v2

    #@1f
    monitor-exit p0

    #@20
    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@21
    .line 1047
    :catch_0
    move-exception v1

    #@22
    .line 1048
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    #@29
    goto :goto_0

    #@2a
    .line 1049
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    #@2b
    .line 1050
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    #@2c
    iput-boolean v2, p0, Ljava/io/PrintStream;->trouble:Z

    #@2e
    goto :goto_0
.end method

.method public print(C)V
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 601
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    #@7
    .line 600
    return-void
.end method

.method public print(D)V
    .locals 1
    .param p1, "d"    # D

    #@0
    .prologue
    .line 657
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    #@7
    .line 656
    return-void
.end method

.method public print(F)V
    .locals 1
    .param p1, "f"    # F

    #@0
    .prologue
    .line 643
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    #@7
    .line 642
    return-void
.end method

.method public print(I)V
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 615
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    #@7
    .line 614
    return-void
.end method

.method public print(J)V
    .locals 1
    .param p1, "l"    # J

    #@0
    .prologue
    .line 629
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    #@7
    .line 628
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 701
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    #@7
    .line 700
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 684
    if-nez p1, :cond_0

    #@2
    .line 685
    const-string/jumbo p1, "null"

    #@5
    .line 687
    :cond_0
    invoke-direct {p0, p1}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    #@8
    .line 683
    return-void
.end method

.method public print(Z)V
    .locals 1
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 589
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, "true"

    #@5
    :goto_0
    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    #@8
    .line 588
    return-void

    #@9
    .line 589
    :cond_0
    const-string/jumbo v0, "false"

    #@c
    goto :goto_0
.end method

.method public print([C)V
    .locals 0
    .param p1, "s"    # [C

    #@0
    .prologue
    .line 671
    invoke-direct {p0, p1}, Ljava/io/PrintStream;->write([C)V

    #@3
    .line 670
    return-void
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 889
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public varargs printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 1
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 939
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public println()V
    .locals 0

    #@0
    .prologue
    .line 714
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    #@3
    .line 713
    return-void
.end method

.method public println(C)V
    .locals 1
    .param p1, "x"    # C

    #@0
    .prologue
    .line 739
    monitor-enter p0

    #@1
    .line 740
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(C)V

    #@4
    .line 741
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 738
    return-void

    #@9
    .line 739
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public println(D)V
    .locals 1
    .param p1, "x"    # D

    #@0
    .prologue
    .line 795
    monitor-enter p0

    #@1
    .line 796
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->print(D)V

    #@4
    .line 797
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 794
    return-void

    #@9
    .line 795
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public println(F)V
    .locals 1
    .param p1, "x"    # F

    #@0
    .prologue
    .line 781
    monitor-enter p0

    #@1
    .line 782
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(F)V

    #@4
    .line 783
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 780
    return-void

    #@9
    .line 781
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public println(I)V
    .locals 1
    .param p1, "x"    # I

    #@0
    .prologue
    .line 753
    monitor-enter p0

    #@1
    .line 754
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(I)V

    #@4
    .line 755
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 752
    return-void

    #@9
    .line 753
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public println(J)V
    .locals 1
    .param p1, "x"    # J

    #@0
    .prologue
    .line 767
    monitor-enter p0

    #@1
    .line 768
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->print(J)V

    #@4
    .line 769
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 766
    return-void

    #@9
    .line 767
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public println(Ljava/lang/Object;)V
    .locals 2
    .param p1, "x"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 839
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 840
    .local v0, "s":Ljava/lang/String;
    monitor-enter p0

    #@5
    .line 841
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@8
    .line 842
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    .line 838
    return-void

    #@d
    .line 840
    :catchall_0
    move-exception v1

    #@e
    monitor-exit p0

    #@f
    throw v1
.end method

.method public println(Ljava/lang/String;)V
    .locals 1
    .param p1, "x"    # Ljava/lang/String;

    #@0
    .prologue
    .line 823
    monitor-enter p0

    #@1
    .line 824
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@4
    .line 825
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 822
    return-void

    #@9
    .line 823
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public println(Z)V
    .locals 1
    .param p1, "x"    # Z

    #@0
    .prologue
    .line 725
    monitor-enter p0

    #@1
    .line 726
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Z)V

    #@4
    .line 727
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 724
    return-void

    #@9
    .line 725
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public println([C)V
    .locals 1
    .param p1, "x"    # [C

    #@0
    .prologue
    .line 809
    monitor-enter p0

    #@1
    .line 810
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print([C)V

    #@4
    .line 811
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 808
    return-void

    #@9
    .line 809
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method protected setError()V
    .locals 1

    #@0
    .prologue
    .line 422
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    #@3
    .line 421
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I

    #@0
    .prologue
    .line 459
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@1
    .line 460
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    #@4
    .line 461
    iget-object v2, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    #@6
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    #@9
    .line 462
    const/16 v2, 0xa

    #@b
    if-ne p1, v2, :cond_0

    #@d
    iget-boolean v2, p0, Ljava/io/PrintStream;->autoFlush:Z

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 463
    iget-object v2, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    #@13
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    :cond_0
    :try_start_2
    monitor-exit p0

    #@17
    .line 457
    :goto_0
    return-void

    #@18
    .line 459
    :catchall_0
    move-exception v2

    #@19
    monitor-exit p0

    #@1a
    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@1b
    .line 466
    :catch_0
    move-exception v1

    #@1c
    .line 467
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    #@23
    goto :goto_0

    #@24
    .line 469
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    #@25
    .line 470
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    #@26
    iput-boolean v2, p0, Ljava/io/PrintStream;->trouble:Z

    #@28
    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 490
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@1
    .line 491
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    #@4
    .line 492
    iget-object v2, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    #@6
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@9
    .line 493
    iget-boolean v2, p0, Ljava/io/PrintStream;->autoFlush:Z

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 494
    iget-object v2, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    #@f
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    :cond_0
    :try_start_2
    monitor-exit p0

    #@13
    .line 488
    :goto_0
    return-void

    #@14
    .line 490
    :catchall_0
    move-exception v2

    #@15
    monitor-exit p0

    #@16
    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@17
    .line 497
    :catch_0
    move-exception v1

    #@18
    .line 498
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    #@1f
    goto :goto_0

    #@20
    .line 500
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    #@21
    .line 501
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    #@22
    iput-boolean v2, p0, Ljava/io/PrintStream;->trouble:Z

    #@24
    goto :goto_0
.end method
