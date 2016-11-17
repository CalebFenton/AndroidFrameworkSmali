.class public Ljava/io/PrintWriter;
.super Ljava/io/Writer;
.source "PrintWriter.java"


# instance fields
.field private final autoFlush:Z

.field private formatter:Ljava/util/Formatter;

.field private final lineSeparator:Ljava/lang/String;

.field protected out:Ljava/io/Writer;

.field private psOut:Ljava/io/PrintStream;

.field private trouble:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 263
    new-instance v0, Ljava/io/BufferedWriter;

    #@2
    new-instance v1, Ljava/io/OutputStreamWriter;

    #@4
    new-instance v2, Ljava/io/FileOutputStream;

    #@6
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@9
    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@c
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@f
    .line 264
    const/4 v1, 0x0

    #@10
    .line 263
    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@13
    .line 262
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
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
    .line 303
    invoke-static {p2}, Ljava/io/PrintWriter;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/nio/charset/Charset;Ljava/io/File;)V

    #@7
    .line 301
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 131
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    #@4
    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z

    #@0
    .prologue
    .line 148
    new-instance v0, Ljava/io/BufferedWriter;

    #@2
    new-instance v1, Ljava/io/OutputStreamWriter;

    #@4
    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@7
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@a
    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@d
    .line 151
    instance-of v0, p1, Ljava/io/PrintStream;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 152
    check-cast p1, Ljava/io/PrintStream;

    #@13
    .end local p1    # "out":Ljava/io/OutputStream;
    iput-object p1, p0, Ljava/io/PrintWriter;->psOut:Ljava/io/PrintStream;

    #@15
    .line 147
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 100
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@4
    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "autoFlush"    # Z

    #@0
    .prologue
    .line 113
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    #@3
    .line 67
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/io/PrintWriter;->trouble:Z

    #@6
    .line 69
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Ljava/io/PrintWriter;->psOut:Ljava/io/PrintStream;

    #@9
    .line 114
    iput-object p1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    #@b
    .line 115
    iput-boolean p2, p0, Ljava/io/PrintWriter;->autoFlush:Z

    #@d
    .line 117
    new-instance v0, Lsun/security/action/GetPropertyAction;

    #@f
    const-string/jumbo v1, "line.separator"

    #@12
    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@15
    .line 116
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/String;

    #@1b
    iput-object v0, p0, Ljava/io/PrintWriter;->lineSeparator:Ljava/lang/String;

    #@1d
    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 184
    new-instance v0, Ljava/io/BufferedWriter;

    #@2
    new-instance v1, Ljava/io/OutputStreamWriter;

    #@4
    new-instance v2, Ljava/io/FileOutputStream;

    #@6
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@9
    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@c
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@f
    .line 185
    const/4 v1, 0x0

    #@10
    .line 184
    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@13
    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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
    .line 232
    invoke-static {p2}, Ljava/io/PrintWriter;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Ljava/io/File;

    #@6
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9
    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/nio/charset/Charset;Ljava/io/File;)V

    #@c
    .line 230
    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;Ljava/io/File;)V
    .locals 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 192
    new-instance v0, Ljava/io/BufferedWriter;

    #@2
    new-instance v1, Ljava/io/OutputStreamWriter;

    #@4
    new-instance v2, Ljava/io/FileOutputStream;

    #@6
    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@9
    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    #@c
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@f
    .line 193
    const/4 v1, 0x0

    #@10
    .line 192
    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@13
    .line 190
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
    .line 308
    iget-object v0, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 309
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 307
    :cond_0
    return-void
.end method

.method private newLine()V
    .locals 5

    #@0
    .prologue
    .line 478
    :try_start_0
    iget-object v3, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v3
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@3
    .line 479
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintWriter;->ensureOpen()V

    #@6
    .line 480
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    #@8
    iget-object v4, p0, Ljava/io/PrintWriter;->lineSeparator:Ljava/lang/String;

    #@a
    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@d
    .line 481
    iget-boolean v2, p0, Ljava/io/PrintWriter;->autoFlush:Z

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 482
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    #@13
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    :cond_0
    :try_start_2
    monitor-exit v3

    #@17
    .line 476
    :goto_0
    return-void

    #@18
    .line 478
    :catchall_0
    move-exception v2

    #@19
    monitor-exit v3

    #@1a
    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@1b
    .line 485
    :catch_0
    move-exception v1

    #@1c
    .line 486
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    #@23
    goto :goto_0

    #@24
    .line 488
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    #@25
    .line 489
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    #@26
    iput-boolean v2, p0, Ljava/io/PrintWriter;->trouble:Z

    #@28
    goto :goto_0
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
    .line 85
    const-string/jumbo v1, "charsetName"

    #@3
    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    .line 87
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
    .line 88
    :catch_0
    move-exception v0

    #@c
    .line 90
    .local v0, "unused":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    #@e
    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1
.end method


# virtual methods
.method public append(C)Ljava/io/PrintWriter;
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 1063
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(I)V

    #@3
    .line 1064
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1001
    if-nez p1, :cond_0

    #@2
    .line 1002
    const-string/jumbo v0, "null"

    #@5
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    #@8
    .line 1005
    :goto_0
    return-object p0

    #@9
    .line 1004
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    #@10
    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 1041
    if-nez p1, :cond_0

    #@2
    const-string/jumbo v0, "null"

    #@5
    .line 1042
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
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    #@10
    .line 1043
    return-object p0

    #@11
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    move-object v0, p1

    #@12
    .line 1041
    goto :goto_0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1062
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1000
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
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
    .line 1040
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    return-object v0
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
    .line 1062
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

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
    .line 1000
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

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
    .line 1040
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public checkError()Z
    .locals 2

    #@0
    .prologue
    .line 356
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 357
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    #@7
    .line 359
    :cond_0
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    #@9
    instance-of v1, v1, Ljava/io/PrintWriter;

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 360
    iget-object v0, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    #@f
    check-cast v0, Ljava/io/PrintWriter;

    #@11
    .line 361
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v0}, Ljava/io/PrintWriter;->checkError()Z

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 362
    .end local v0    # "pw":Ljava/io/PrintWriter;
    :cond_1
    iget-object v1, p0, Ljava/io/PrintWriter;->psOut:Ljava/io/PrintStream;

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 363
    iget-object v1, p0, Ljava/io/PrintWriter;->psOut:Ljava/io/PrintStream;

    #@1c
    invoke-virtual {v1}, Ljava/io/PrintStream;->checkError()Z

    #@1f
    move-result v1

    #@20
    return v1

    #@21
    .line 365
    :cond_2
    iget-boolean v1, p0, Ljava/io/PrintWriter;->trouble:Z

    #@23
    return v1
.end method

.method protected clearError()V
    .locals 1

    #@0
    .prologue
    .line 389
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Ljava/io/PrintWriter;->trouble:Z

    #@3
    .line 388
    return-void
.end method

.method public close()V
    .locals 3

    #@0
    .prologue
    .line 336
    :try_start_0
    iget-object v2, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 337
    :try_start_1
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5
    if-nez v1, :cond_0

    #@7
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@8
    .line 338
    return-void

    #@9
    .line 339
    :cond_0
    :try_start_3
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    #@b
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    #@e
    .line 340
    const/4 v1, 0x0

    #@f
    iput-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@11
    :try_start_4
    monitor-exit v2

    #@12
    .line 334
    :goto_0
    return-void

    #@13
    .line 336
    :catchall_0
    move-exception v1

    #@14
    monitor-exit v2

    #@15
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@16
    .line 343
    :catch_0
    move-exception v0

    #@17
    .line 344
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    #@18
    iput-boolean v1, p0, Ljava/io/PrintWriter;->trouble:Z

    #@1a
    goto :goto_0
.end method

.method public flush()V
    .locals 3

    #@0
    .prologue
    .line 318
    :try_start_0
    iget-object v2, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 319
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintWriter;->ensureOpen()V

    #@6
    .line 320
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    #@8
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    :try_start_2
    monitor-exit v2

    #@c
    .line 316
    :goto_0
    return-void

    #@d
    .line 318
    :catchall_0
    move-exception v1

    #@e
    monitor-exit v2

    #@f
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@10
    .line 323
    :catch_0
    move-exception v0

    #@11
    .line 324
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    #@12
    iput-boolean v1, p0, Ljava/io/PrintWriter;->trouble:Z

    #@14
    goto :goto_0
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .locals 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 900
    :try_start_0
    iget-object v3, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v3
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@3
    .line 901
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintWriter;->ensureOpen()V

    #@6
    .line 902
    iget-object v2, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 903
    iget-object v2, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    #@c
    invoke-virtual {v2}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    #@f
    move-result-object v2

    #@10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@13
    move-result-object v4

    #@14
    if-eq v2, v4, :cond_1

    #@16
    .line 904
    :cond_0
    new-instance v2, Ljava/util/Formatter;

    #@18
    invoke-direct {v2, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    #@1b
    iput-object v2, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    #@1d
    .line 905
    :cond_1
    iget-object v2, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    #@1f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v2, v4, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@26
    .line 906
    iget-boolean v2, p0, Ljava/io/PrintWriter;->autoFlush:Z

    #@28
    if-eqz v2, :cond_2

    #@2a
    .line 907
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    #@2c
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    :cond_2
    :try_start_2
    monitor-exit v3

    #@30
    .line 914
    :goto_0
    return-object p0

    #@31
    .line 900
    :catchall_0
    move-exception v2

    #@32
    monitor-exit v3

    #@33
    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@34
    .line 909
    :catch_0
    move-exception v1

    #@35
    .line 910
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    #@3c
    goto :goto_0

    #@3d
    .line 911
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    #@3e
    .line 912
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    #@3f
    iput-boolean v2, p0, Ljava/io/PrintWriter;->trouble:Z

    #@41
    goto :goto_0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .locals 4
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 960
    :try_start_0
    iget-object v3, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v3
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@3
    .line 961
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintWriter;->ensureOpen()V

    #@6
    .line 962
    iget-object v2, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    #@8
    if-eqz v2, :cond_0

    #@a
    iget-object v2, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    #@c
    invoke-virtual {v2}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    #@f
    move-result-object v2

    #@10
    if-eq v2, p1, :cond_1

    #@12
    .line 963
    :cond_0
    new-instance v2, Ljava/util/Formatter;

    #@14
    invoke-direct {v2, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    #@17
    iput-object v2, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    #@19
    .line 964
    :cond_1
    iget-object v2, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    #@1b
    invoke-virtual {v2, p1, p2, p3}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@1e
    .line 965
    iget-boolean v2, p0, Ljava/io/PrintWriter;->autoFlush:Z

    #@20
    if-eqz v2, :cond_2

    #@22
    .line 966
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    #@24
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    :cond_2
    :try_start_2
    monitor-exit v3

    #@28
    .line 973
    :goto_0
    return-object p0

    #@29
    .line 960
    :catchall_0
    move-exception v2

    #@2a
    monitor-exit v3

    #@2b
    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@2c
    .line 968
    :catch_0
    move-exception v1

    #@2d
    .line 969
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    #@34
    goto :goto_0

    #@35
    .line 970
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    #@36
    .line 971
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    #@37
    iput-boolean v2, p0, Ljava/io/PrintWriter;->trouble:Z

    #@39
    goto :goto_0
.end method

.method public print(C)V
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 517
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(I)V

    #@3
    .line 516
    return-void
.end method

.method public print(D)V
    .locals 1
    .param p1, "d"    # D

    #@0
    .prologue
    .line 573
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    #@7
    .line 572
    return-void
.end method

.method public print(F)V
    .locals 1
    .param p1, "f"    # F

    #@0
    .prologue
    .line 559
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    #@7
    .line 558
    return-void
.end method

.method public print(I)V
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 531
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    #@7
    .line 530
    return-void
.end method

.method public print(J)V
    .locals 1
    .param p1, "l"    # J

    #@0
    .prologue
    .line 545
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    #@7
    .line 544
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 617
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    #@7
    .line 616
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 600
    if-nez p1, :cond_0

    #@2
    .line 601
    const-string/jumbo p1, "null"

    #@5
    .line 603
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    #@8
    .line 599
    return-void
.end method

.method public print(Z)V
    .locals 1
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 505
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, "true"

    #@5
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    #@8
    .line 504
    return-void

    #@9
    .line 505
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
    .line 587
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write([C)V

    #@3
    .line 586
    return-void
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 804
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public varargs printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .locals 1
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 855
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public println()V
    .locals 0

    #@0
    .prologue
    .line 629
    invoke-direct {p0}, Ljava/io/PrintWriter;->newLine()V

    #@3
    .line 628
    return-void
.end method

.method public println(C)V
    .locals 2
    .param p1, "x"    # C

    #@0
    .prologue
    .line 654
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 655
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(C)V

    #@6
    .line 656
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 653
    return-void

    #@b
    .line 654
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public println(D)V
    .locals 3
    .param p1, "x"    # D

    #@0
    .prologue
    .line 710
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 711
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->print(D)V

    #@6
    .line 712
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 709
    return-void

    #@b
    .line 710
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public println(F)V
    .locals 2
    .param p1, "x"    # F

    #@0
    .prologue
    .line 696
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 697
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(F)V

    #@6
    .line 698
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 695
    return-void

    #@b
    .line 696
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public println(I)V
    .locals 2
    .param p1, "x"    # I

    #@0
    .prologue
    .line 668
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 669
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    #@6
    .line 670
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 667
    return-void

    #@b
    .line 668
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public println(J)V
    .locals 3
    .param p1, "x"    # J

    #@0
    .prologue
    .line 682
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 683
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    #@6
    .line 684
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 681
    return-void

    #@b
    .line 682
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public println(Ljava/lang/Object;)V
    .locals 3
    .param p1, "x"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 754
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 755
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 756
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a
    .line 757
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v2

    #@e
    .line 753
    return-void

    #@f
    .line 755
    :catchall_0
    move-exception v1

    #@10
    monitor-exit v2

    #@11
    throw v1
.end method

.method public println(Ljava/lang/String;)V
    .locals 2
    .param p1, "x"    # Ljava/lang/String;

    #@0
    .prologue
    .line 738
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 739
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 740
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 737
    return-void

    #@b
    .line 738
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public println(Z)V
    .locals 2
    .param p1, "x"    # Z

    #@0
    .prologue
    .line 640
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 641
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Z)V

    #@6
    .line 642
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 639
    return-void

    #@b
    .line 640
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public println([C)V
    .locals 2
    .param p1, "x"    # [C

    #@0
    .prologue
    .line 724
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 725
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print([C)V

    #@6
    .line 726
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 723
    return-void

    #@b
    .line 724
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method protected setError()V
    .locals 1

    #@0
    .prologue
    .line 376
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/io/PrintWriter;->trouble:Z

    #@3
    .line 375
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "c"    # I

    #@0
    .prologue
    .line 403
    :try_start_0
    iget-object v3, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v3
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@3
    .line 404
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintWriter;->ensureOpen()V

    #@6
    .line 405
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    #@8
    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    :try_start_2
    monitor-exit v3

    #@c
    .line 401
    :goto_0
    return-void

    #@d
    .line 403
    :catchall_0
    move-exception v2

    #@e
    monitor-exit v3

    #@f
    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@10
    .line 408
    :catch_0
    move-exception v1

    #@11
    .line 409
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    #@18
    goto :goto_0

    #@19
    .line 411
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    #@1a
    .line 412
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    #@1b
    iput-boolean v2, p0, Ljava/io/PrintWriter;->trouble:Z

    #@1d
    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 473
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    #@8
    .line 472
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 454
    :try_start_0
    iget-object v3, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v3
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@3
    .line 455
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintWriter;->ensureOpen()V

    #@6
    .line 456
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    #@8
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    :try_start_2
    monitor-exit v3

    #@c
    .line 452
    :goto_0
    return-void

    #@d
    .line 454
    :catchall_0
    move-exception v2

    #@e
    monitor-exit v3

    #@f
    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@10
    .line 459
    :catch_0
    move-exception v1

    #@11
    .line 460
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    #@18
    goto :goto_0

    #@19
    .line 462
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    #@1a
    .line 463
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    #@1b
    iput-boolean v2, p0, Ljava/io/PrintWriter;->trouble:Z

    #@1d
    goto :goto_0
.end method

.method public write([C)V
    .locals 2
    .param p1, "buf"    # [C

    #@0
    .prologue
    .line 443
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/PrintWriter;->write([CII)V

    #@5
    .line 442
    return-void
.end method

.method public write([CII)V
    .locals 4
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 424
    :try_start_0
    iget-object v3, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v3
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@3
    .line 425
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintWriter;->ensureOpen()V

    #@6
    .line 426
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    #@8
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    :try_start_2
    monitor-exit v3

    #@c
    .line 422
    :goto_0
    return-void

    #@d
    .line 424
    :catchall_0
    move-exception v2

    #@e
    monitor-exit v3

    #@f
    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@10
    .line 429
    :catch_0
    move-exception v1

    #@11
    .line 430
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    #@18
    goto :goto_0

    #@19
    .line 432
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    #@1a
    .line 433
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    #@1b
    iput-boolean v2, p0, Ljava/io/PrintWriter;->trouble:Z

    #@1d
    goto :goto_0
.end method
