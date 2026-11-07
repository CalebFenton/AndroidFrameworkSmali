.class public Ljava/io/PrintStream;
.super Ljava/io/FilterOutputStream;
.source "PrintStream.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Closeable;


# instance fields
.field private final greylist-max-o autoFlush:Z

.field private greylist-max-o charOut:Ljava/io/OutputStreamWriter;

.field private greylist-max-o charset:Ljava/nio/charset/Charset;

.field private greylist-max-o closing:Z

.field private greylist-max-o formatter:Ljava/util/Formatter;

.field private greylist-max-o textOut:Ljava/io/BufferedWriter;

.field private greylist-max-o trouble:Z


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/File;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;)V

    .line 338
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 377
    invoke-static {p2}, Ljava/io/PrintStream;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Ljava/io/PrintStream;-><init>(ZLjava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 378
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    const-string v0, "charset"

    invoke-static {p2, v0}, Ljava/io/PrintStream;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Ljava/io/PrintStream;-><init>(ZLjava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 409
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 140
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Z)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z

    .line 157
    const-string v0, "Null output stream"

    invoke-static {p1, v0}, Ljava/io/PrintStream;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    invoke-direct {p0, p2, v0}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;)V

    .line 158
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 182
    const-string v0, "Null output stream"

    invoke-static {p1, v0}, Ljava/io/PrintStream;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    invoke-static {p3}, Ljava/io/PrintStream;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/nio/charset/Charset;)V

    .line 183
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;ZLjava/nio/charset/Charset;)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 202
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    .line 436
    iput-boolean v0, p0, Ljava/io/PrintStream;->closing:Z

    .line 203
    iput-boolean p2, p0, Ljava/io/PrintStream;->autoFlush:Z

    .line 204
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p0, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    .line 205
    new-instance v0, Ljava/io/BufferedWriter;

    iget-object v1, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    .line 206
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;)V

    .line 237
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 276
    invoke-static {p2}, Ljava/io/PrintStream;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Ljava/io/PrintStream;-><init>(ZLjava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 277
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    const-string v0, "charset"

    invoke-static {p2, v0}, Ljava/io/PrintStream;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Ljava/io/PrintStream;-><init>(ZLjava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 307
    return-void
.end method

.method private constructor greylist-max-o <init>(ZLjava/io/OutputStream;)V
    .registers 4
    .param p1, "autoFlush"    # Z
    .param p2, "out"    # Ljava/io/OutputStream;

    .line 112
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    .line 436
    iput-boolean v0, p0, Ljava/io/PrintStream;->closing:Z

    .line 113
    iput-boolean p1, p0, Ljava/io/PrintStream;->autoFlush:Z

    .line 117
    return-void
.end method

.method private constructor greylist-max-o <init>(ZLjava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "autoFlush"    # Z
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "out"    # Ljava/io/OutputStream;

    .line 125
    invoke-direct {p0, p3, p1, p2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/nio/charset/Charset;)V

    .line 126
    return-void
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_5

    .line 415
    return-void

    .line 414
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getTextOut()Ljava/io/BufferedWriter;
    .registers 3

    .line 440
    iget-object v0, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    if-nez v0, :cond_20

    .line 441
    iget-object v0, p0, Ljava/io/PrintStream;->charset:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Ljava/io/PrintStream;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    goto :goto_15

    .line 442
    :cond_10
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    :goto_15
    iput-object v0, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    .line 443
    new-instance v0, Ljava/io/BufferedWriter;

    iget-object v1, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    .line 445
    :cond_20
    iget-object v0, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    return-object v0
.end method

.method private greylist-max-o newLine()V
    .registers 3

    .line 767
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_21

    .line 768
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 770
    invoke-direct {p0}, Ljava/io/PrintStream;->getTextOut()Ljava/io/BufferedWriter;

    move-result-object v0

    .line 771
    .local v0, "textOut":Ljava/io/BufferedWriter;
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 772
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 773
    iget-object v1, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flushBuffer()V

    .line 774
    iget-boolean v1, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v1, :cond_1c

    .line 775
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 776
    .end local v0    # "textOut":Ljava/io/BufferedWriter;
    :cond_1c
    monitor-exit p0

    goto :goto_2e

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    .end local p0    # "this":Ljava/io/PrintStream;
    :try_start_20
    throw v0
    :try_end_21
    .catch Ljava/io/InterruptedIOException; {:try_start_20 .. :try_end_21} :catch_26
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_21} :catch_21

    .line 781
    .restart local p0    # "this":Ljava/io/PrintStream;
    :catch_21
    move-exception v0

    .line 782
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_2f

    .line 778
    .end local v0    # "x":Ljava/io/IOException;
    :catch_26
    move-exception v0

    .line 779
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 783
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_2e
    nop

    .line 784
    :goto_2f
    return-void
.end method

.method private static greylist-max-o requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
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

    .line 88
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 90
    return-object p0

    .line 89
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .param p0, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 101
    const-string v0, "charsetName"

    invoke-static {p0, v0}, Ljava/io/PrintStream;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    :try_start_5
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_9
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_5 .. :try_end_9} :catch_a
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_5 .. :try_end_9} :catch_a

    return-object v0

    .line 104
    :catch_a
    move-exception v0

    .line 106
    .local v0, "unused":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o write(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 720
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_29

    .line 721
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 723
    invoke-direct {p0}, Ljava/io/PrintStream;->getTextOut()Ljava/io/BufferedWriter;

    move-result-object v0

    .line 724
    .local v0, "textOut":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 726
    iget-object v1, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flushBuffer()V

    .line 727
    iget-boolean v1, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v1, :cond_24

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_24

    .line 728
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 729
    .end local v0    # "textOut":Ljava/io/BufferedWriter;
    :cond_24
    monitor-exit p0

    goto :goto_36

    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_26

    .end local p0    # "this":Ljava/io/PrintStream;
    .end local p1    # "s":Ljava/lang/String;
    :try_start_28
    throw v0
    :try_end_29
    .catch Ljava/io/InterruptedIOException; {:try_start_28 .. :try_end_29} :catch_2e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_29} :catch_29

    .line 734
    .restart local p0    # "this":Ljava/io/PrintStream;
    .restart local p1    # "s":Ljava/lang/String;
    :catch_29
    move-exception v0

    .line 735
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_37

    .line 731
    .end local v0    # "x":Ljava/io/IOException;
    :catch_2e
    move-exception v0

    .line 732
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 736
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_36
    nop

    .line 737
    :goto_37
    return-void
.end method

.method private greylist-max-o write([C)V
    .registers 6
    .param p1, "buf"    # [C

    .line 670
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_34
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_2f

    .line 671
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 673
    invoke-direct {p0}, Ljava/io/PrintStream;->getTextOut()Ljava/io/BufferedWriter;

    move-result-object v0

    .line 674
    .local v0, "textOut":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write([C)V

    .line 675
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 676
    iget-object v1, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flushBuffer()V

    .line 677
    iget-boolean v1, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v1, :cond_2a

    .line 678
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_2a

    .line 679
    aget-char v2, p1, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_27

    .line 680
    iget-object v2, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 681
    goto :goto_2a

    .line 678
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 684
    .end local v0    # "textOut":Ljava/io/BufferedWriter;
    .end local v1    # "i":I
    :cond_2a
    :goto_2a
    monitor-exit p0

    goto :goto_3c

    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    .end local p0    # "this":Ljava/io/PrintStream;
    .end local p1    # "buf":[C
    :try_start_2e
    throw v0
    :try_end_2f
    .catch Ljava/io/InterruptedIOException; {:try_start_2e .. :try_end_2f} :catch_34
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2f} :catch_2f

    .line 687
    .restart local p0    # "this":Ljava/io/PrintStream;
    .restart local p1    # "buf":[C
    :catch_2f
    move-exception v0

    .line 688
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_3d

    .line 685
    .end local v0    # "x":Ljava/io/IOException;
    :catch_34
    move-exception v0

    .line 686
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 689
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_3c
    nop

    .line 690
    :goto_3d
    return-void
.end method

.method private blacklist writeln(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 745
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_29
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_24

    .line 746
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 748
    invoke-direct {p0}, Ljava/io/PrintStream;->getTextOut()Ljava/io/BufferedWriter;

    move-result-object v0

    .line 749
    .local v0, "textOut":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 751
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 752
    iget-object v1, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flushBuffer()V

    .line 753
    iget-boolean v1, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v1, :cond_1f

    .line 754
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 755
    .end local v0    # "textOut":Ljava/io/BufferedWriter;
    :cond_1f
    monitor-exit p0

    goto :goto_31

    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    .end local p0    # "this":Ljava/io/PrintStream;
    .end local p1    # "s":Ljava/lang/String;
    :try_start_23
    throw v0
    :try_end_24
    .catch Ljava/io/InterruptedIOException; {:try_start_23 .. :try_end_24} :catch_29
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_24} :catch_24

    .line 760
    .restart local p0    # "this":Ljava/io/PrintStream;
    .restart local p1    # "s":Ljava/lang/String;
    :catch_24
    move-exception v0

    .line 761
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_32

    .line 757
    .end local v0    # "x":Ljava/io/IOException;
    :catch_29
    move-exception v0

    .line 758
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 762
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_31
    nop

    .line 763
    :goto_32
    return-void
.end method

.method private blacklist writeln([C)V
    .registers 4
    .param p1, "buf"    # [C

    .line 698
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_29
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_24

    .line 699
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 701
    invoke-direct {p0}, Ljava/io/PrintStream;->getTextOut()Ljava/io/BufferedWriter;

    move-result-object v0

    .line 702
    .local v0, "textOut":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write([C)V

    .line 703
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 704
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 705
    iget-object v1, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flushBuffer()V

    .line 706
    iget-boolean v1, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v1, :cond_1f

    .line 707
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 708
    .end local v0    # "textOut":Ljava/io/BufferedWriter;
    :cond_1f
    monitor-exit p0

    goto :goto_31

    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    .end local p0    # "this":Ljava/io/PrintStream;
    .end local p1    # "buf":[C
    :try_start_23
    throw v0
    :try_end_24
    .catch Ljava/io/InterruptedIOException; {:try_start_23 .. :try_end_24} :catch_29
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_24} :catch_24

    .line 713
    .restart local p0    # "this":Ljava/io/PrintStream;
    .restart local p1    # "buf":[C
    :catch_24
    move-exception v0

    .line 714
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_32

    .line 710
    .end local v0    # "x":Ljava/io/IOException;
    :catch_29
    move-exception v0

    .line 711
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 715
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_31
    nop

    .line 716
    :goto_32
    return-void
.end method


# virtual methods
.method public whitelist test-api append(C)Ljava/io/PrintStream;
    .registers 2
    .param p1, "c"    # C

    .line 1396
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(C)V

    .line 1397
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;
    .registers 3
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 1334
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1335
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;
    .registers 5
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1374
    if-nez p1, :cond_4

    const-string p1, "null"

    .line 1375
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
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

    .line 64
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(C)Ljava/io/PrintStream;

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

    .line 64
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

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

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api checkError()Z
    .registers 3

    .line 498
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_7

    .line 499
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    .line 500
    :cond_7
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    instance-of v1, v0, Ljava/io/PrintStream;

    if-eqz v1, :cond_14

    check-cast v0, Ljava/io/PrintStream;

    .line 501
    .local v0, "ps":Ljava/io/PrintStream;
    invoke-virtual {v0}, Ljava/io/PrintStream;->checkError()Z

    move-result v1

    return v1

    .line 503
    .end local v0    # "ps":Ljava/io/PrintStream;
    :cond_14
    iget-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    return v0
.end method

.method protected whitelist test-api clearError()V
    .registers 2

    .line 529
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    .line 530
    return-void
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 457
    monitor-enter p0

    .line 458
    :try_start_1
    iget-boolean v0, p0, Ljava/io/PrintStream;->closing:Z

    if-nez v0, :cond_21

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PrintStream;->closing:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_23

    .line 463
    :try_start_8
    iget-object v1, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_11

    .line 464
    iget-object v1, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 467
    :cond_11
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_16} :catch_17
    .catchall {:try_start_8 .. :try_end_16} :catchall_23

    .line 471
    goto :goto_1a

    .line 469
    :catch_17
    move-exception v1

    .line 470
    .local v1, "x":Ljava/io/IOException;
    :try_start_18
    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    .line 472
    .end local v1    # "x":Ljava/io/IOException;
    :goto_1a
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    .line 473
    iput-object v0, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    .line 474
    iput-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    .line 476
    :cond_21
    monitor-exit p0

    .line 477
    return-void

    .line 476
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public whitelist test-api flush()V
    .registers 3

    .line 425
    monitor-enter p0

    .line 427
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 428
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_c
    .catchall {:try_start_1 .. :try_end_9} :catchall_a

    .line 432
    goto :goto_10

    .line 433
    :catchall_a
    move-exception v0

    goto :goto_12

    .line 430
    :catch_c
    move-exception v0

    .line 431
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    :try_start_e
    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    .line 433
    .end local v0    # "x":Ljava/io/IOException;
    :goto_10
    monitor-exit p0

    .line 434
    return-void

    .line 433
    :goto_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_a

    throw v0
.end method

.method public varargs whitelist test-api format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 1234
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_32
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_2d

    .line 1235
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 1236
    iget-object v0, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    if-eqz v0, :cond_16

    iget-object v0, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    .line 1237
    invoke-virtual {v0}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    .line 1238
    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    if-eq v0, v1, :cond_1d

    .line 1239
    :cond_16
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    .line 1240
    :cond_1d
    iget-object v0, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1242
    monitor-exit p0

    goto :goto_3a

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    .end local p0    # "this":Ljava/io/PrintStream;
    .end local p1    # "format":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    :try_start_2c
    throw v0
    :try_end_2d
    .catch Ljava/io/InterruptedIOException; {:try_start_2c .. :try_end_2d} :catch_32
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2d} :catch_2d

    .line 1245
    .restart local p0    # "this":Ljava/io/PrintStream;
    .restart local p1    # "format":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :catch_2d
    move-exception v0

    .line 1246
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_3b

    .line 1243
    .end local v0    # "x":Ljava/io/IOException;
    :catch_32
    move-exception v0

    .line 1244
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1247
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_3a
    nop

    .line 1248
    :goto_3b
    return-object p0
.end method

.method public varargs whitelist test-api format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 6
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 1293
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_21

    .line 1294
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 1295
    iget-object v0, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    .line 1296
    invoke-virtual {v0}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v0

    if-eq v0, p1, :cond_17

    .line 1297
    :cond_10
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    .line 1298
    :cond_17
    iget-object v0, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1299
    monitor-exit p0

    goto :goto_2e

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    .end local p0    # "this":Ljava/io/PrintStream;
    .end local p1    # "l":Ljava/util/Locale;
    .end local p2    # "format":Ljava/lang/String;
    .end local p3    # "args":[Ljava/lang/Object;
    :try_start_20
    throw v0
    :try_end_21
    .catch Ljava/io/InterruptedIOException; {:try_start_20 .. :try_end_21} :catch_26
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_21} :catch_21

    .line 1302
    .restart local p0    # "this":Ljava/io/PrintStream;
    .restart local p1    # "l":Ljava/util/Locale;
    .restart local p2    # "format":Ljava/lang/String;
    .restart local p3    # "args":[Ljava/lang/Object;
    :catch_21
    move-exception v0

    .line 1303
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_2f

    .line 1300
    .end local v0    # "x":Ljava/io/IOException;
    :catch_26
    move-exception v0

    .line 1301
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1304
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_2e
    nop

    .line 1305
    :goto_2f
    return-object p0
.end method

.method public whitelist test-api print(C)V
    .registers 3
    .param p1, "c"    # C

    .line 810
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method public whitelist test-api print(D)V
    .registers 4
    .param p1, "d"    # D

    .line 866
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 867
    return-void
.end method

.method public whitelist test-api print(F)V
    .registers 3
    .param p1, "f"    # F

    .line 852
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 853
    return-void
.end method

.method public whitelist test-api print(I)V
    .registers 3
    .param p1, "i"    # I

    .line 824
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 825
    return-void
.end method

.method public whitelist test-api print(J)V
    .registers 4
    .param p1, "l"    # J

    .line 838
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 839
    return-void
.end method

.method public whitelist test-api print(Ljava/lang/Object;)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 908
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 909
    return-void
.end method

.method public whitelist test-api print(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 894
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 895
    return-void
.end method

.method public whitelist test-api print(Z)V
    .registers 3
    .param p1, "b"    # Z

    .line 798
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 799
    return-void
.end method

.method public whitelist test-api print([C)V
    .registers 2
    .param p1, "s"    # [C

    .line 880
    invoke-direct {p0, p1}, Ljava/io/PrintStream;->write([C)V

    .line 881
    return-void
.end method

.method public varargs whitelist test-api printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 1136
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist test-api printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 5
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 1188
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api println()V
    .registers 1

    .line 921
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    .line 922
    return-void
.end method

.method public whitelist test-api println(C)V
    .registers 4
    .param p1, "x"    # C

    .line 950
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/io/PrintStream;

    if-ne v0, v1, :cond_10

    .line 951
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->writeln(Ljava/lang/String;)V

    goto :goto_18

    .line 953
    :cond_10
    monitor-enter p0

    .line 954
    :try_start_11
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(C)V

    .line 955
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    .line 956
    monitor-exit p0

    .line 958
    :goto_18
    return-void

    .line 956
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public whitelist test-api println(D)V
    .registers 5
    .param p1, "x"    # D

    .line 1022
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/io/PrintStream;

    if-ne v0, v1, :cond_10

    .line 1023
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->writeln(Ljava/lang/String;)V

    goto :goto_18

    .line 1025
    :cond_10
    monitor-enter p0

    .line 1026
    :try_start_11
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->print(D)V

    .line 1027
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    .line 1028
    monitor-exit p0

    .line 1030
    :goto_18
    return-void

    .line 1028
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public whitelist test-api println(F)V
    .registers 4
    .param p1, "x"    # F

    .line 1004
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/io/PrintStream;

    if-ne v0, v1, :cond_10

    .line 1005
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->writeln(Ljava/lang/String;)V

    goto :goto_18

    .line 1007
    :cond_10
    monitor-enter p0

    .line 1008
    :try_start_11
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(F)V

    .line 1009
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    .line 1010
    monitor-exit p0

    .line 1012
    :goto_18
    return-void

    .line 1010
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public whitelist test-api println(I)V
    .registers 4
    .param p1, "x"    # I

    .line 968
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/io/PrintStream;

    if-ne v0, v1, :cond_10

    .line 969
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->writeln(Ljava/lang/String;)V

    goto :goto_18

    .line 971
    :cond_10
    monitor-enter p0

    .line 972
    :try_start_11
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(I)V

    .line 973
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    .line 974
    monitor-exit p0

    .line 976
    :goto_18
    return-void

    .line 974
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public whitelist test-api println(J)V
    .registers 5
    .param p1, "x"    # J

    .line 986
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/io/PrintStream;

    if-ne v0, v1, :cond_10

    .line 987
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->writeln(Ljava/lang/String;)V

    goto :goto_18

    .line 989
    :cond_10
    monitor-enter p0

    .line 990
    :try_start_11
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->print(J)V

    .line 991
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    .line 992
    monitor-exit p0

    .line 994
    :goto_18
    return-void

    .line 992
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public whitelist test-api println(Ljava/lang/Object;)V
    .registers 5
    .param p1, "x"    # Ljava/lang/Object;

    .line 1078
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1079
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/io/PrintStream;

    if-ne v1, v2, :cond_14

    .line 1082
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/PrintStream;->writeln(Ljava/lang/String;)V

    goto :goto_1c

    .line 1084
    :cond_14
    monitor-enter p0

    .line 1085
    :try_start_15
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1086
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    .line 1087
    monitor-exit p0

    .line 1089
    :goto_1c
    return-void

    .line 1087
    :catchall_1d
    move-exception v1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public whitelist test-api println(Ljava/lang/String;)V
    .registers 4
    .param p1, "x"    # Ljava/lang/String;

    .line 1058
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/io/PrintStream;

    if-ne v0, v1, :cond_10

    .line 1059
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->writeln(Ljava/lang/String;)V

    goto :goto_18

    .line 1061
    :cond_10
    monitor-enter p0

    .line 1062
    :try_start_11
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1063
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    .line 1064
    monitor-exit p0

    .line 1066
    :goto_18
    return-void

    .line 1064
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public whitelist test-api println(Z)V
    .registers 4
    .param p1, "x"    # Z

    .line 932
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/io/PrintStream;

    if-ne v0, v1, :cond_10

    .line 933
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->writeln(Ljava/lang/String;)V

    goto :goto_18

    .line 935
    :cond_10
    monitor-enter p0

    .line 936
    :try_start_11
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Z)V

    .line 937
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    .line 938
    monitor-exit p0

    .line 940
    :goto_18
    return-void

    .line 938
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public whitelist test-api println([C)V
    .registers 4
    .param p1, "x"    # [C

    .line 1040
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/io/PrintStream;

    if-ne v0, v1, :cond_c

    .line 1041
    invoke-direct {p0, p1}, Ljava/io/PrintStream;->writeln([C)V

    goto :goto_14

    .line 1043
    :cond_c
    monitor-enter p0

    .line 1044
    :try_start_d
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print([C)V

    .line 1045
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    .line 1046
    monitor-exit p0

    .line 1048
    :goto_14
    return-void

    .line 1046
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v0
.end method

.method protected whitelist test-api setError()V
    .registers 2

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    .line 517
    return-void
.end method

.method public whitelist test-api write(I)V
    .registers 4
    .param p1, "b"    # I

    .line 554
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_1b

    .line 555
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 556
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 557
    const/16 v0, 0xa

    if-ne p1, v0, :cond_16

    iget-boolean v0, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v0, :cond_16

    .line 558
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 559
    :cond_16
    monitor-exit p0

    goto :goto_28

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    .end local p0    # "this":Ljava/io/PrintStream;
    .end local p1    # "b":I
    :try_start_1a
    throw v0
    :try_end_1b
    .catch Ljava/io/InterruptedIOException; {:try_start_1a .. :try_end_1b} :catch_20
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1b} :catch_1b

    .line 564
    .restart local p0    # "this":Ljava/io/PrintStream;
    .restart local p1    # "b":I
    :catch_1b
    move-exception v0

    .line 565
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_29

    .line 561
    .end local v0    # "x":Ljava/io/IOException;
    :catch_20
    move-exception v0

    .line 562
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 566
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_28
    nop

    .line 567
    :goto_29
    return-void
.end method

.method public whitelist test-api write([B)V
    .registers 4
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 637
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/PrintStream;->write([BII)V

    .line 638
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 587
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_17

    .line 588
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 589
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 590
    iget-boolean v0, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v0, :cond_12

    .line 591
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 592
    :cond_12
    monitor-exit p0

    goto :goto_24

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    .end local p0    # "this":Ljava/io/PrintStream;
    .end local p1    # "buf":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :try_start_16
    throw v0
    :try_end_17
    .catch Ljava/io/InterruptedIOException; {:try_start_16 .. :try_end_17} :catch_1c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_17} :catch_17

    .line 597
    .restart local p0    # "this":Ljava/io/PrintStream;
    .restart local p1    # "buf":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catch_17
    move-exception v0

    .line 598
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_25

    .line 594
    .end local v0    # "x":Ljava/io/IOException;
    :catch_1c
    move-exception v0

    .line 595
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 599
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_24
    nop

    .line 600
    :goto_25
    return-void
.end method

.method public whitelist test-api writeBytes([B)V
    .registers 4
    .param p1, "buf"    # [B

    .line 659
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/PrintStream;->write([BII)V

    .line 660
    return-void
.end method
