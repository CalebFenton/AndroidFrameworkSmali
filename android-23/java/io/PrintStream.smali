.class public Ljava/io/PrintStream;
.super Ljava/io/FilterOutputStream;
.source "PrintStream.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Closeable;


# instance fields
.field private autoFlush:Z

.field private encoding:Ljava/lang/String;

.field private ioError:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 136
    new-instance v0, Ljava/io/FileOutputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@5
    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@8
    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 157
    new-instance v0, Ljava/io/FileOutputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@5
    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@8
    .line 158
    if-nez p2, :cond_0

    #@a
    .line 159
    new-instance v0, Ljava/lang/NullPointerException;

    #@c
    const-string/jumbo v1, "charsetName == null"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 161
    :cond_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1

    #@19
    .line 162
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    #@1b
    invoke-direct {v0, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 164
    :cond_1
    iput-object p2, p0, Ljava/io/PrintStream;->encoding:Ljava/lang/String;

    #@21
    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 61
    if-nez p1, :cond_0

    #@5
    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "out == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 59
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z

    #@0
    .prologue
    .line 81
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 82
    if-nez p1, :cond_0

    #@5
    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "out == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 85
    :cond_0
    iput-boolean p2, p0, Ljava/io/PrintStream;->autoFlush:Z

    #@10
    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z
    .param p3, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 109
    if-nez p1, :cond_0

    #@5
    .line 110
    new-instance v1, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v2, "out == null"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 111
    :cond_0
    if-nez p3, :cond_1

    #@10
    .line 112
    new-instance v1, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v2, "charsetName == null"

    #@15
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1

    #@19
    .line 114
    :cond_1
    iput-boolean p2, p0, Ljava/io/PrintStream;->autoFlush:Z

    #@1b
    .line 116
    :try_start_0
    invoke-static {p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_2

    #@21
    .line 117
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    #@23
    invoke-direct {v1, p3}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 119
    :catch_0
    move-exception v0

    #@28
    .line 120
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    #@2a
    invoke-direct {v1, p3}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1

    #@2e
    .line 122
    .end local v0    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    :cond_2
    iput-object p3, p0, Ljava/io/PrintStream;->encoding:Ljava/lang/String;

    #@30
    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    invoke-direct {p0, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V

    #@8
    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    invoke-direct {p0, v0, p2}, Ljava/io/PrintStream;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@8
    .line 200
    return-void
.end method

.method private newline()V
    .locals 1

    #@0
    .prologue
    .line 364
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@7
    .line 363
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/PrintStream;
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 617
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(C)V

    #@3
    .line 618
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 626
    if-nez p1, :cond_0

    #@2
    .line 627
    const-string/jumbo v0, "null"

    #@5
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@8
    .line 631
    :goto_0
    return-object p0

    #@9
    .line 629
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
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 652
    if-nez p1, :cond_0

    #@2
    .line 653
    const-string/jumbo p1, "null"

    #@5
    .line 655
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@10
    .line 656
    return-object p0
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
    .line 616
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(C)Ljava/io/PrintStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 625
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 651
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
    .line 213
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    #@2
    .line 214
    .local v0, "delegate":Ljava/io/OutputStream;
    if-nez v0, :cond_0

    #@4
    .line 215
    iget-boolean v1, p0, Ljava/io/PrintStream;->ioError:Z

    #@6
    return v1

    #@7
    .line 218
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    #@a
    .line 219
    iget-boolean v1, p0, Ljava/io/PrintStream;->ioError:Z

    #@c
    if-nez v1, :cond_1

    #@e
    invoke-virtual {v0}, Ljava/io/OutputStream;->checkError()Z

    #@11
    move-result v1

    #@12
    :goto_0
    return v1

    #@13
    :cond_1
    const/4 v1, 0x1

    #@14
    goto :goto_0
.end method

.method protected clearError()V
    .locals 1

    #@0
    .prologue
    .line 227
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Ljava/io/PrintStream;->ioError:Z

    #@3
    .line 226
    return-void
.end method

.method public declared-synchronized close()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 237
    :try_start_0
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    #@4
    .line 238
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 240
    :try_start_1
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    #@a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    #@d
    .line 241
    const/4 v1, 0x0

    #@e
    iput-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    :cond_0
    :goto_0
    monitor-exit p0

    #@11
    .line 236
    return-void

    #@12
    .line 242
    :catch_0
    move-exception v0

    #@13
    .line 243
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@16
    goto :goto_0

    #@17
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@18
    monitor-exit p0

    #@19
    throw v1
.end method

.method public declared-synchronized flush()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 255
    :try_start_0
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 257
    :try_start_1
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    #@7
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 258
    return-void

    #@c
    .line 259
    :catch_0
    move-exception v0

    #@d
    .line 263
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 254
    return-void

    #@12
    :catchall_0
    move-exception v1

    #@13
    monitor-exit p0

    #@14
    throw v1
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 284
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p1, p2}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 2
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 307
    if-nez p2, :cond_0

    #@2
    .line 308
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "format == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 310
    :cond_0
    new-instance v0, Ljava/util/Formatter;

    #@d
    invoke-direct {v0, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    #@10
    invoke-virtual {v0, p2, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@13
    .line 311
    return-object p0
.end method

.method public print(C)V
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 378
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@7
    .line 377
    return-void
.end method

.method public print(D)V
    .locals 1
    .param p1, "d"    # D

    #@0
    .prologue
    .line 385
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@7
    .line 384
    return-void
.end method

.method public print(F)V
    .locals 1
    .param p1, "f"    # F

    #@0
    .prologue
    .line 392
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@7
    .line 391
    return-void
.end method

.method public print(I)V
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 399
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@7
    .line 398
    return-void
.end method

.method public print(J)V
    .locals 1
    .param p1, "l"    # J

    #@0
    .prologue
    .line 406
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@7
    .line 405
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 413
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@7
    .line 412
    return-void
.end method

.method public declared-synchronized print(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 429
    :try_start_0
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 430
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 431
    return-void

    #@a
    .line 433
    :cond_0
    if-nez p1, :cond_1

    #@c
    .line 434
    :try_start_1
    const-string/jumbo v1, "null"

    #@f
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    monitor-exit p0

    #@13
    .line 435
    return-void

    #@14
    .line 439
    :cond_1
    :try_start_2
    iget-object v1, p0, Ljava/io/PrintStream;->encoding:Ljava/lang/String;

    #@16
    if-nez v1, :cond_2

    #@18
    .line 440
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f
    :goto_0
    monitor-exit p0

    #@20
    .line 428
    return-void

    #@21
    .line 442
    :cond_2
    :try_start_3
    iget-object v1, p0, Ljava/io/PrintStream;->encoding:Ljava/lang/String;

    #@23
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@26
    move-result-object v1

    #@27
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2a
    goto :goto_0

    #@2b
    .line 444
    :catch_0
    move-exception v0

    #@2c
    .line 445
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@31
    monitor-exit p0

    #@32
    throw v1
.end method

.method public print(Z)V
    .locals 1
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 453
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@7
    .line 452
    return-void
.end method

.method public print([C)V
    .locals 3
    .param p1, "chars"    # [C

    #@0
    .prologue
    .line 371
    new-instance v0, Ljava/lang/String;

    #@2
    array-length v1, p1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, p1, v2, v1}, Ljava/lang/String;-><init>([CII)V

    #@7
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@a
    .line 370
    return-void
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 334
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
    .line 357
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
    .line 460
    invoke-direct {p0}, Ljava/io/PrintStream;->newline()V

    #@3
    .line 459
    return-void
.end method

.method public println(C)V
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 474
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7
    .line 473
    return-void
.end method

.method public println(D)V
    .locals 1
    .param p1, "d"    # D

    #@0
    .prologue
    .line 481
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7
    .line 480
    return-void
.end method

.method public println(F)V
    .locals 1
    .param p1, "f"    # F

    #@0
    .prologue
    .line 488
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7
    .line 487
    return-void
.end method

.method public println(I)V
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 495
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7
    .line 494
    return-void
.end method

.method public println(J)V
    .locals 1
    .param p1, "l"    # J

    #@0
    .prologue
    .line 502
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7
    .line 501
    return-void
.end method

.method public println(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 510
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7
    .line 509
    return-void
.end method

.method public declared-synchronized println(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 525
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@4
    .line 526
    invoke-direct {p0}, Ljava/io/PrintStream;->newline()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 524
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public println(Z)V
    .locals 1
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 533
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7
    .line 532
    return-void
.end method

.method public println([C)V
    .locals 3
    .param p1, "chars"    # [C

    #@0
    .prologue
    .line 467
    new-instance v0, Ljava/lang/String;

    #@2
    array-length v1, p1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, p1, v2, v1}, Ljava/lang/String;-><init>([CII)V

    #@7
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a
    .line 466
    return-void
.end method

.method protected setError()V
    .locals 1

    #@0
    .prologue
    .line 540
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/io/PrintStream;->ioError:Z

    #@3
    .line 539
    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 4
    .param p1, "oneByte"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 595
    :try_start_0
    iget-object v3, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 596
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 597
    return-void

    #@a
    .line 600
    :cond_0
    :try_start_1
    iget-object v3, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    #@c
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write(I)V

    #@f
    .line 601
    and-int/lit16 v0, p1, 0xff

    #@11
    .line 603
    .local v0, "b":I
    const/16 v3, 0xa

    #@13
    if-eq v0, v3, :cond_1

    #@15
    const/16 v3, 0x15

    #@17
    if-ne v0, v3, :cond_3

    #@19
    :cond_1
    const/4 v2, 0x1

    #@1a
    .line 604
    .local v2, "isNewline":Z
    :goto_0
    iget-boolean v3, p0, Ljava/io/PrintStream;->autoFlush:Z

    #@1c
    if-eqz v3, :cond_2

    #@1e
    if-eqz v2, :cond_2

    #@20
    .line 605
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    .end local v0    # "b":I
    .end local v2    # "isNewline":Z
    :cond_2
    :goto_1
    monitor-exit p0

    #@24
    .line 594
    return-void

    #@25
    .line 603
    .restart local v0    # "b":I
    :cond_3
    const/4 v2, 0x0

    #@26
    .restart local v2    # "isNewline":Z
    goto :goto_0

    #@27
    .line 607
    .end local v0    # "b":I
    .end local v2    # "isNewline":Z
    :catch_0
    move-exception v1

    #@28
    .line 608
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    goto :goto_1

    #@2c
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@2d
    monitor-exit p0

    #@2e
    throw v3
.end method

.method public write([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 564
    array-length v1, p1

    #@1
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 565
    monitor-enter p0

    #@5
    .line 566
    :try_start_0
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 567
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 568
    return-void

    #@e
    .line 571
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    #@10
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@13
    .line 572
    iget-boolean v1, p0, Ljava/io/PrintStream;->autoFlush:Z

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 573
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    :cond_1
    :goto_0
    monitor-exit p0

    #@1b
    .line 563
    return-void

    #@1c
    .line 575
    :catch_0
    move-exception v0

    #@1d
    .line 576
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    goto :goto_0

    #@21
    .line 565
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@22
    monitor-exit p0

    #@23
    throw v1
.end method
