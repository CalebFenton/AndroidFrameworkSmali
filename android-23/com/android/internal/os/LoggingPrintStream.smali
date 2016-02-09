.class abstract Lcom/android/internal/os/LoggingPrintStream;
.super Ljava/io/PrintStream;
.source "LoggingPrintStream.java"


# instance fields
.field private final builder:Ljava/lang/StringBuilder;

.field private decodedChars:Ljava/nio/CharBuffer;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private encodedBytes:Ljava/nio/ByteBuffer;

.field private final formatter:Ljava/util/Formatter;


# direct methods
.method protected constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 62
    new-instance v0, Lcom/android/internal/os/LoggingPrintStream$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/os/LoggingPrintStream$1;-><init>()V

    #@5
    invoke-direct {p0, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    #@8
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@f
    .line 182
    new-instance v0, Ljava/util/Formatter;

    #@11
    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@13
    const/4 v2, 0x0

    #@14
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    #@17
    iput-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->formatter:Ljava/util/Formatter;

    #@19
    .line 61
    return-void
.end method

.method private flush(Z)V
    .locals 6
    .param p1, "completely"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 86
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@6
    move-result v0

    #@7
    .line 88
    .local v0, "length":I
    const/4 v2, 0x0

    #@8
    .line 92
    .local v2, "start":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@a
    .line 93
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@c
    const-string/jumbo v4, "\n"

    #@f
    invoke-virtual {v3, v4, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    #@12
    move-result v1

    #@13
    .local v1, "nextBreak":I
    const/4 v3, -0x1

    #@14
    if-eq v1, v3, :cond_0

    #@16
    .line 94
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@18
    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {p0, v3}, Lcom/android/internal/os/LoggingPrintStream;->log(Ljava/lang/String;)V

    #@1f
    .line 95
    add-int/lit8 v2, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 98
    .end local v1    # "nextBreak":I
    :cond_0
    if-eqz p1, :cond_2

    #@24
    .line 100
    if-ge v2, v0, :cond_1

    #@26
    .line 101
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@28
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {p0, v3}, Lcom/android/internal/os/LoggingPrintStream;->log(Ljava/lang/String;)V

    #@2f
    .line 103
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@31
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    #@34
    .line 85
    :goto_1
    return-void

    #@35
    .line 106
    :cond_2
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@37
    invoke-virtual {v3, v5, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@3a
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized append(C)Ljava/io/PrintStream;
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 327
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->print(C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 328
    return-object p0

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@6
    .line 334
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 335
    return-object p0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@6
    .line 342
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 343
    return-object p0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public checkError()Z
    .locals 1

    #@0
    .prologue
    .line 156
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public close()V
    .locals 0

    #@0
    .prologue
    .line 165
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 76
    const/4 v0, 0x1

    #@2
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 75
    return-void

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 169
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/os/LoggingPrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public varargs declared-synchronized format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 2
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 187
    if-nez p2, :cond_0

    #@3
    .line 188
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "format"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0

    #@f
    .line 191
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->formatter:Ljava/util/Formatter;

    #@11
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@14
    .line 192
    const/4 v0, 0x0

    #@15
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit p0

    #@19
    .line 193
    return-object p0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method public declared-synchronized print(C)V
    .locals 1
    .param p1, "ch"    # C

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6
    .line 205
    const/16 v0, 0xa

    #@8
    if-ne p1, v0, :cond_0

    #@a
    .line 206
    const/4 v0, 0x0

    #@b
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit p0

    #@f
    .line 203
    return-void

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public declared-synchronized print(D)V
    .locals 1
    .param p1, "dnum"    # D

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 211
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized print(F)V
    .locals 1
    .param p1, "fnum"    # F

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 216
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized print(I)V
    .locals 1
    .param p1, "inum"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 221
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized print(J)V
    .locals 1
    .param p1, "lnum"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 226
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized print(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6
    .line 233
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 231
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized print(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    .line 239
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 237
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized print(Z)V
    .locals 1
    .param p1, "bool"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 243
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized print([C)V
    .locals 1
    .param p1, "charArray"    # [C

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@6
    .line 199
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 197
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/LoggingPrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

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
    .line 179
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/LoggingPrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public declared-synchronized println()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 249
    const/4 v0, 0x1

    #@2
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 248
    return-void

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized println(C)V
    .locals 1
    .param p1, "ch"    # C

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6
    .line 261
    const/4 v0, 0x1

    #@7
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 259
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized println(D)V
    .locals 1
    .param p1, "dnum"    # D

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@6
    .line 267
    const/4 v0, 0x1

    #@7
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 265
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized println(F)V
    .locals 1
    .param p1, "fnum"    # F

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@6
    .line 273
    const/4 v0, 0x1

    #@7
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 271
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized println(I)V
    .locals 1
    .param p1, "inum"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6
    .line 279
    const/4 v0, 0x1

    #@7
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 277
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized println(J)V
    .locals 1
    .param p1, "lnum"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@6
    .line 285
    const/4 v0, 0x1

    #@7
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 283
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized println(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6
    .line 291
    const/4 v0, 0x1

    #@7
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 289
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized println(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 296
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_2

    #@9
    if-eqz p1, :cond_2

    #@b
    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v0

    #@f
    .line 300
    .local v0, "length":I
    const/4 v2, 0x0

    #@10
    .line 304
    .local v2, "start":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@12
    .line 305
    const/16 v3, 0xa

    #@14
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    #@17
    move-result v1

    #@18
    .local v1, "nextBreak":I
    const/4 v3, -0x1

    #@19
    if-eq v1, v3, :cond_0

    #@1b
    .line 306
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {p0, v3}, Lcom/android/internal/os/LoggingPrintStream;->log(Ljava/lang/String;)V

    #@22
    .line 307
    add-int/lit8 v2, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 310
    .end local v1    # "nextBreak":I
    :cond_0
    if-ge v2, v0, :cond_1

    #@27
    .line 311
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {p0, v3}, Lcom/android/internal/os/LoggingPrintStream;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .end local v0    # "length":I
    .end local v2    # "start":I
    :cond_1
    :goto_1
    monitor-exit p0

    #@2f
    .line 295
    return-void

    #@30
    .line 314
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 315
    const/4 v3, 0x1

    #@36
    invoke-direct {p0, v3}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    goto :goto_1

    #@3a
    :catchall_0
    move-exception v3

    #@3b
    monitor-exit p0

    #@3c
    throw v3
.end method

.method public declared-synchronized println(Z)V
    .locals 1
    .param p1, "bool"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6
    .line 322
    const/4 v0, 0x1

    #@7
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 320
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized println([C)V
    .locals 1
    .param p1, "charArray"    # [C

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@6
    .line 255
    const/4 v0, 0x1

    #@7
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 253
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method protected setError()V
    .locals 0

    #@0
    .prologue
    .line 161
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "oneByte"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 111
    new-array v0, v3, [B

    #@4
    int-to-byte v1, p1

    #@5
    aput-byte v1, v0, v2

    #@7
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/os/LoggingPrintStream;->write([BII)V

    #@a
    .line 110
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "buffer"    # [B

    #@0
    .prologue
    .line 116
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/internal/os/LoggingPrintStream;->write([BII)V

    #@5
    .line 115
    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 7
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 121
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 122
    const/16 v3, 0x50

    #@7
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@a
    move-result-object v3

    #@b
    iput-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    #@d
    .line 123
    const/16 v3, 0x50

    #@f
    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@12
    move-result-object v3

    #@13
    iput-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->decodedChars:Ljava/nio/CharBuffer;

    #@15
    .line 124
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@1c
    move-result-object v3

    #@1d
    .line 125
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@1f
    .line 124
    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@22
    move-result-object v3

    #@23
    .line 126
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@25
    .line 124
    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@28
    move-result-object v3

    #@29
    iput-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@2b
    .line 129
    :cond_0
    add-int v1, p2, p3

    #@2d
    .line 130
    .local v1, "end":I
    :goto_0
    if-ge p2, v1, :cond_2

    #@2f
    .line 133
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    #@31
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    #@34
    move-result v3

    #@35
    sub-int v4, v1, p2

    #@37
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@3a
    move-result v2

    #@3b
    .line 134
    .local v2, "numBytes":I
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    #@3d
    invoke-virtual {v3, p1, p2, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    #@40
    .line 135
    add-int/2addr p2, v2

    #@41
    .line 137
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    #@43
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@46
    .line 141
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@48
    iget-object v4, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    #@4a
    iget-object v5, p0, Lcom/android/internal/os/LoggingPrintStream;->decodedChars:Ljava/nio/CharBuffer;

    #@4c
    const/4 v6, 0x0

    #@4d
    invoke-virtual {v3, v4, v5, v6}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    #@50
    move-result-object v0

    #@51
    .line 144
    .local v0, "coderResult":Ljava/nio/charset/CoderResult;
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->decodedChars:Ljava/nio/CharBuffer;

    #@53
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    #@56
    .line 145
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    #@58
    iget-object v4, p0, Lcom/android/internal/os/LoggingPrintStream;->decodedChars:Ljava/nio/CharBuffer;

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@5d
    .line 146
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->decodedChars:Ljava/nio/CharBuffer;

    #@5f
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    #@62
    .line 147
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    #@65
    move-result v3

    #@66
    if-nez v3, :cond_1

    #@68
    .line 148
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    #@6a
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6d
    goto :goto_0

    #@6e
    .end local v0    # "coderResult":Ljava/nio/charset/CoderResult;
    .end local v1    # "end":I
    .end local v2    # "numBytes":I
    :catchall_0
    move-exception v3

    #@6f
    monitor-exit p0

    #@70
    throw v3

    #@71
    .line 150
    .restart local v1    # "end":I
    :cond_2
    const/4 v3, 0x0

    #@72
    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@75
    monitor-exit p0

    #@76
    .line 120
    return-void
.end method
