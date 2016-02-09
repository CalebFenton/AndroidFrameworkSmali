.class public Ljava/io/PrintWriter;
.super Ljava/io/Writer;
.source "PrintWriter.java"


# instance fields
.field private autoFlush:Z

.field private ioError:Z

.field protected out:Ljava/io/Writer;


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
    .line 127
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@2
    new-instance v1, Ljava/io/BufferedOutputStream;

    #@4
    new-instance v2, Ljava/io/FileOutputStream;

    #@6
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@9
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@c
    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@f
    const/4 v1, 0x0

    #@10
    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@13
    .line 126
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
    .line 150
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@2
    new-instance v1, Ljava/io/BufferedOutputStream;

    #@4
    new-instance v2, Ljava/io/FileOutputStream;

    #@6
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@9
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@c
    invoke-direct {v0, v1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@f
    .line 151
    const/4 v1, 0x0

    #@10
    .line 150
    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@13
    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 59
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@2
    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@9
    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z

    #@0
    .prologue
    .line 77
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@2
    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@5
    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@8
    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "wr"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 91
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@4
    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 0
    .param p1, "wr"    # Ljava/io/Writer;
    .param p2, "autoFlush"    # Z

    #@0
    .prologue
    .line 109
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    #@3
    .line 110
    iput-boolean p2, p0, Ljava/io/PrintWriter;->autoFlush:Z

    #@5
    .line 111
    iput-object p1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    #@7
    .line 108
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
    .line 168
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@2
    new-instance v1, Ljava/io/BufferedOutputStream;

    #@4
    new-instance v2, Ljava/io/FileOutputStream;

    #@6
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@9
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@c
    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@f
    .line 169
    const/4 v1, 0x0

    #@10
    .line 168
    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@13
    .line 167
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
    .line 193
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@2
    new-instance v1, Ljava/io/BufferedOutputStream;

    #@4
    new-instance v2, Ljava/io/FileOutputStream;

    #@6
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@9
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@c
    invoke-direct {v0, v1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@f
    .line 194
    const/4 v1, 0x0

    #@10
    .line 193
    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@13
    .line 192
    return-void
.end method

.method private final doWrite([CII)V
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 620
    iget-object v2, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 621
    :try_start_0
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 623
    :try_start_1
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    #@9
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    :goto_0
    monitor-exit v2

    #@d
    .line 619
    return-void

    #@e
    .line 624
    :catch_0
    move-exception v0

    #@f
    .line 625
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@12
    goto :goto_0

    #@13
    .line 620
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@14
    monitor-exit v2

    #@15
    throw v1

    #@16
    .line 628
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@19
    goto :goto_0
.end method


# virtual methods
.method public append(C)Ljava/io/PrintWriter;
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 672
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(I)V

    #@3
    .line 673
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 688
    if-nez p1, :cond_0

    #@2
    .line 689
    const-string/jumbo p1, "null"

    #@5
    .line 691
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    #@d
    .line 692
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 718
    if-nez p1, :cond_0

    #@2
    .line 719
    const-string/jumbo p1, "null"

    #@5
    .line 721
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 722
    .local v0, "output":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    #@15
    .line 723
    return-object p0
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
    .line 671
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
    .line 687
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
    .line 717
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
    .line 206
    iget-object v0, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    #@2
    .line 207
    .local v0, "delegate":Ljava/io/Writer;
    if-nez v0, :cond_0

    #@4
    .line 208
    iget-boolean v1, p0, Ljava/io/PrintWriter;->ioError:Z

    #@6
    return v1

    #@7
    .line 211
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    #@a
    .line 212
    iget-boolean v1, p0, Ljava/io/PrintWriter;->ioError:Z

    #@c
    if-nez v1, :cond_1

    #@e
    invoke-virtual {v0}, Ljava/io/Writer;->checkError()Z

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
    .locals 2

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 221
    const/4 v1, 0x0

    #@4
    :try_start_0
    iput-boolean v1, p0, Ljava/io/PrintWriter;->ioError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 219
    return-void

    #@8
    .line 220
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method public close()V
    .locals 3

    #@0
    .prologue
    .line 231
    iget-object v2, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 232
    :try_start_0
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 234
    :try_start_1
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    #@9
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    .line 238
    :goto_0
    const/4 v1, 0x0

    #@d
    :try_start_2
    iput-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@f
    :cond_0
    monitor-exit v2

    #@10
    .line 230
    return-void

    #@11
    .line 235
    :catch_0
    move-exception v0

    #@12
    .line 236
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@15
    goto :goto_0

    #@16
    .line 231
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method public flush()V
    .locals 3

    #@0
    .prologue
    .line 250
    iget-object v2, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 251
    :try_start_0
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 253
    :try_start_1
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    #@9
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    :goto_0
    monitor-exit v2

    #@d
    .line 249
    return-void

    #@e
    .line 254
    :catch_0
    move-exception v0

    #@f
    .line 255
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@12
    goto :goto_0

    #@13
    .line 250
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@14
    monitor-exit v2

    #@15
    throw v1

    #@16
    .line 258
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@19
    goto :goto_0
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 282
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p1, p2}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .locals 2
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 306
    if-nez p2, :cond_0

    #@2
    .line 307
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "format == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 309
    :cond_0
    new-instance v0, Ljava/util/Formatter;

    #@d
    invoke-direct {v0, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    #@10
    invoke-virtual {v0, p2, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@13
    .line 310
    iget-boolean v0, p0, Ljava/io/PrintWriter;->autoFlush:Z

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 311
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    #@1a
    .line 313
    :cond_1
    return-object p0
.end method

.method public print(C)V
    .locals 1
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 383
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7
    .line 382
    return-void
.end method

.method public print(D)V
    .locals 1
    .param p1, "dnum"    # D

    #@0
    .prologue
    .line 394
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7
    .line 393
    return-void
.end method

.method public print(F)V
    .locals 1
    .param p1, "fnum"    # F

    #@0
    .prologue
    .line 405
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7
    .line 404
    return-void
.end method

.method public print(I)V
    .locals 1
    .param p1, "inum"    # I

    #@0
    .prologue
    .line 416
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7
    .line 415
    return-void
.end method

.method public print(J)V
    .locals 1
    .param p1, "lnum"    # J

    #@0
    .prologue
    .line 427
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7
    .line 426
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 438
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7
    .line 437
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 453
    if-eqz p1, :cond_0

    #@3
    .end local p1    # "str":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    #@6
    .line 452
    return-void

    #@7
    .line 453
    .restart local p1    # "str":Ljava/lang/String;
    :cond_0
    check-cast v0, Ljava/lang/Object;

    #@9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@c
    move-result-object p1

    #@d
    goto :goto_0
.end method

.method public print(Z)V
    .locals 1
    .param p1, "bool"    # Z

    #@0
    .prologue
    .line 464
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7
    .line 463
    return-void
.end method

.method public print([C)V
    .locals 3
    .param p1, "charArray"    # [C

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
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a
    .line 370
    return-void
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 336
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
    .line 359
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public println()V
    .locals 2

    #@0
    .prologue
    .line 471
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 472
    :try_start_0
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a
    .line 473
    iget-boolean v0, p0, Ljava/io/PrintWriter;->autoFlush:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 474
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit v1

    #@12
    .line 470
    return-void

    #@13
    .line 471
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public println(C)V
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 492
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7
    .line 491
    return-void
.end method

.method public println(D)V
    .locals 1
    .param p1, "d"    # D

    #@0
    .prologue
    .line 500
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7
    .line 499
    return-void
.end method

.method public println(F)V
    .locals 1
    .param p1, "f"    # F

    #@0
    .prologue
    .line 508
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7
    .line 507
    return-void
.end method

.method public println(I)V
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 516
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7
    .line 515
    return-void
.end method

.method public println(J)V
    .locals 1
    .param p1, "l"    # J

    #@0
    .prologue
    .line 524
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7
    .line 523
    return-void
.end method

.method public println(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 533
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7
    .line 532
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 548
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 549
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 550
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 547
    return-void

    #@b
    .line 548
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public println(Z)V
    .locals 1
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 559
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7
    .line 558
    return-void
.end method

.method public println([C)V
    .locals 3
    .param p1, "chars"    # [C

    #@0
    .prologue
    .line 484
    new-instance v0, Ljava/lang/String;

    #@2
    array-length v1, p1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, p1, v2, v1}, Ljava/lang/String;-><init>([CII)V

    #@7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    .line 483
    return-void
.end method

.method protected setError()V
    .locals 2

    #@0
    .prologue
    .line 566
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 567
    const/4 v1, 0x1

    #@4
    :try_start_0
    iput-boolean v1, p0, Ljava/io/PrintWriter;->ioError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 565
    return-void

    #@8
    .line 566
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method public write(I)V
    .locals 4
    .param p1, "oneChar"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 616
    new-array v0, v3, [C

    #@4
    int-to-char v1, p1

    #@5
    aput-char v1, v0, v2

    #@7
    invoke-direct {p0, v0, v2, v3}, Ljava/io/PrintWriter;->doWrite([CII)V

    #@a
    .line 615
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 641
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write([C)V

    #@7
    .line 640
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 660
    add-int v0, p2, p3

    #@2
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write([C)V

    #@d
    .line 659
    return-void
.end method

.method public write([C)V
    .locals 2
    .param p1, "buf"    # [C

    #@0
    .prologue
    .line 579
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/PrintWriter;->write([CII)V

    #@5
    .line 578
    return-void
.end method

.method public write([CII)V
    .locals 0
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 601
    invoke-direct {p0, p1, p2, p3}, Ljava/io/PrintWriter;->doWrite([CII)V

    #@3
    .line 600
    return-void
.end method
