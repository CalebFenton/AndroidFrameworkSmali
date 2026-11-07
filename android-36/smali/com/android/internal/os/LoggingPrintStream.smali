.class public abstract Lcom/android/internal/os/LoggingPrintStream;
.super Ljava/io/PrintStream;
.source "LoggingPrintStream.java"


# instance fields
.field private final blacklist builder:Ljava/lang/StringBuilder;

.field private blacklist decodedChars:Ljava/nio/CharBuffer;

.field private blacklist decoder:Ljava/nio/charset/CharsetDecoder;

.field private blacklist encodedBytes:Ljava/nio/ByteBuffer;

.field private final blacklist formatter:Ljava/util/Formatter;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 4

    .line 66
    new-instance v0, Lcom/android/internal/os/LoggingPrintStream$1;

    invoke-direct {v0}, Lcom/android/internal/os/LoggingPrintStream$1;-><init>()V

    invoke-direct {p0, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    .line 186
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->formatter:Ljava/util/Formatter;

    .line 71
    return-void
.end method

.method private blacklist flush(Z)V
    .registers 7
    .param p1, "completely"    # Z

    .line 90
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 92
    .local v0, "length":I
    const/4 v1, 0x0

    .line 96
    .local v1, "start":I
    :goto_7
    if-ge v1, v0, :cond_21

    iget-object v2, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    .line 97
    const-string v3, "\n"

    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    move v3, v2

    .local v3, "nextBreak":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_21

    .line 98
    iget-object v2, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/LoggingPrintStream;->log(Ljava/lang/String;)V

    .line 99
    add-int/lit8 v1, v3, 0x1

    goto :goto_7

    .line 102
    .end local v3    # "nextBreak":I
    :cond_21
    const/4 v2, 0x0

    if-eqz p1, :cond_35

    .line 104
    if-ge v1, v0, :cond_2f

    .line 105
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/os/LoggingPrintStream;->log(Ljava/lang/String;)V

    .line 107
    :cond_2f
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_3a

    .line 110
    :cond_35
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 112
    :goto_3a
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api append(C)Ljava/io/PrintStream;
    .registers 2
    .param p1, "c"    # C

    monitor-enter p0

    .line 331
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->print(C)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 332
    monitor-exit p0

    return-object p0

    .line 330
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    .end local p1    # "c":C
    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public declared-synchronized whitelist test-api append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;
    .registers 3
    .param p1, "csq"    # Ljava/lang/CharSequence;

    monitor-enter p0

    .line 337
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 338
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 339
    monitor-exit p0

    return-object p0

    .line 336
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    .end local p1    # "csq":Ljava/lang/CharSequence;
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;
    .registers 5
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    monitor-enter p0

    .line 345
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 347
    monitor-exit p0

    return-object p0

    .line 344
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    .end local p1    # "csq":Ljava/lang/CharSequence;
    .end local p2    # "start":I
    .end local p3    # "end":I
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
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

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->append(C)Ljava/io/PrintStream;

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

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

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

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/LoggingPrintStream;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api checkError()Z
    .registers 2

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api close()V
    .registers 1

    .line 169
    return-void
.end method

.method public declared-synchronized whitelist test-api flush()V
    .registers 2

    monitor-enter p0

    .line 80
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 81
    monitor-exit p0

    return-void

    .line 79
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public varargs whitelist test-api format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 173
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/os/LoggingPrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs declared-synchronized whitelist test-api format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 6
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    monitor-enter p0

    .line 191
    if-eqz p2, :cond_10

    .line 195
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->formatter:Ljava/util/Formatter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 197
    monitor-exit p0

    return-object p0

    .line 190
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    .end local p1    # "l":Ljava/util/Locale;
    .end local p2    # "format":Ljava/lang/String;
    .end local p3    # "args":[Ljava/lang/Object;
    :catchall_e
    move-exception p1

    goto :goto_18

    .line 192
    .restart local p1    # "l":Ljava/util/Locale;
    .restart local p2    # "format":Ljava/lang/String;
    .restart local p3    # "args":[Ljava/lang/Object;
    :cond_10
    :try_start_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "format"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    .end local p1    # "l":Ljava/util/Locale;
    .end local p2    # "format":Ljava/lang/String;
    .end local p3    # "args":[Ljava/lang/Object;
    :goto_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_e

    throw p1
.end method

.method protected abstract blacklist log(Ljava/lang/String;)V
.end method

.method public declared-synchronized whitelist test-api print(C)V
    .registers 3
    .param p1, "ch"    # C

    monitor-enter p0

    .line 208
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    const/16 v0, 0xa

    if-ne p1, v0, :cond_e

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 212
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    :cond_e
    monitor-exit p0

    return-void

    .line 207
    .end local p1    # "ch":C
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public declared-synchronized whitelist test-api print(D)V
    .registers 4
    .param p1, "dnum"    # D

    monitor-enter p0

    .line 216
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 217
    monitor-exit p0

    return-void

    .line 215
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    .end local p1    # "dnum":D
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized whitelist test-api print(F)V
    .registers 3
    .param p1, "fnum"    # F

    monitor-enter p0

    .line 221
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 222
    monitor-exit p0

    return-void

    .line 220
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    .end local p1    # "fnum":F
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized whitelist test-api print(I)V
    .registers 3
    .param p1, "inum"    # I

    monitor-enter p0

    .line 226
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 227
    monitor-exit p0

    return-void

    .line 225
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    .end local p1    # "inum":I
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized whitelist test-api print(J)V
    .registers 4
    .param p1, "lnum"    # J

    monitor-enter p0

    .line 231
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 232
    monitor-exit p0

    return-void

    .line 230
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    .end local p1    # "lnum":J
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized whitelist test-api print(Ljava/lang/Object;)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    monitor-enter p0

    .line 236
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 238
    monitor-exit p0

    return-void

    .line 235
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    .end local p1    # "obj":Ljava/lang/Object;
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api print(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    monitor-enter p0

    .line 242
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 244
    monitor-exit p0

    return-void

    .line 241
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    .end local p1    # "str":Ljava/lang/String;
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api print(Z)V
    .registers 3
    .param p1, "bool"    # Z

    monitor-enter p0

    .line 248
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 249
    monitor-exit p0

    return-void

    .line 247
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    .end local p1    # "bool":Z
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized whitelist test-api print([C)V
    .registers 3
    .param p1, "charArray"    # [C

    monitor-enter p0

    .line 202
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 204
    monitor-exit p0

    return-void

    .line 201
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    .end local p1    # "charArray":[C
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public varargs whitelist test-api printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/LoggingPrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist test-api printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 5
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 183
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/LoggingPrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist test-api println()V
    .registers 2

    monitor-enter p0

    .line 253
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 254
    monitor-exit p0

    return-void

    .line 252
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public declared-synchronized whitelist test-api println(C)V
    .registers 3
    .param p1, "ch"    # C

    monitor-enter p0

    .line 264
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 266
    monitor-exit p0

    return-void

    .line 263
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    .end local p1    # "ch":C
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api println(D)V
    .registers 4
    .param p1, "dnum"    # D

    monitor-enter p0

    .line 270
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 271
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 272
    monitor-exit p0

    return-void

    .line 269
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    .end local p1    # "dnum":D
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api println(F)V
    .registers 3
    .param p1, "fnum"    # F

    monitor-enter p0

    .line 276
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 277
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 278
    monitor-exit p0

    return-void

    .line 275
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    .end local p1    # "fnum":F
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api println(I)V
    .registers 3
    .param p1, "inum"    # I

    monitor-enter p0

    .line 282
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 284
    monitor-exit p0

    return-void

    .line 281
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    .end local p1    # "inum":I
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api println(J)V
    .registers 4
    .param p1, "lnum"    # J

    monitor-enter p0

    .line 288
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 289
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 290
    monitor-exit p0

    return-void

    .line 287
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    .end local p1    # "lnum":J
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api println(Ljava/lang/Object;)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    monitor-enter p0

    .line 294
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 296
    monitor-exit p0

    return-void

    .line 293
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    .end local p1    # "obj":Ljava/lang/Object;
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api println(Ljava/lang/String;)V
    .registers 7
    .param p1, "s"    # Ljava/lang/String;

    monitor-enter p0

    .line 300
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_30

    if-eqz p1, :cond_30

    .line 302
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 304
    .local v0, "length":I
    const/4 v1, 0x0

    .line 308
    .local v1, "start":I
    :goto_10
    if-ge v1, v0, :cond_26

    .line 309
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    move v3, v2

    .local v3, "nextBreak":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_26

    .line 310
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/LoggingPrintStream;->log(Ljava/lang/String;)V

    .line 311
    add-int/lit8 v1, v3, 0x1

    goto :goto_10

    .line 314
    .end local v3    # "nextBreak":I
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    :cond_26
    if-ge v1, v0, :cond_2f

    .line 315
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/LoggingPrintStream;->log(Ljava/lang/String;)V

    .line 317
    .end local v0    # "length":I
    .end local v1    # "start":I
    :cond_2f
    goto :goto_39

    .line 318
    :cond_30
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 321
    :goto_39
    monitor-exit p0

    return-void

    .line 299
    .end local p1    # "s":Ljava/lang/String;
    :catchall_3b
    move-exception p1

    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public declared-synchronized whitelist test-api println(Z)V
    .registers 3
    .param p1, "bool"    # Z

    monitor-enter p0

    .line 325
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 326
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 327
    monitor-exit p0

    return-void

    .line 324
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    .end local p1    # "bool":Z
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api println([C)V
    .registers 3
    .param p1, "charArray"    # [C

    monitor-enter p0

    .line 258
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 259
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 260
    monitor-exit p0

    return-void

    .line 257
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    .end local p1    # "charArray":[C
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method protected whitelist test-api setError()V
    .registers 1

    .line 165
    return-void
.end method

.method public whitelist test-api write(I)V
    .registers 6
    .param p1, "oneByte"    # I

    .line 115
    int-to-byte v0, p1

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/internal/os/LoggingPrintStream;->write([BII)V

    .line 116
    return-void
.end method

.method public whitelist test-api write([B)V
    .registers 4
    .param p1, "buffer"    # [B

    .line 120
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/LoggingPrintStream;->write([BII)V

    .line 121
    return-void
.end method

.method public declared-synchronized whitelist test-api write([BII)V
    .registers 10
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "count"    # I

    monitor-enter p0

    .line 125
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v0, :cond_29

    .line 126
    const/16 v0, 0x50

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    .line 127
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->decodedChars:Ljava/nio/CharBuffer;

    .line 128
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 129
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 130
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 133
    .end local p0    # "this":Lcom/android/internal/os/LoggingPrintStream;
    :cond_29
    add-int v0, p2, p3

    .line 134
    .local v0, "end":I
    :goto_2b
    const/4 v1, 0x0

    if-ge p2, v0, :cond_6d

    .line 137
    iget-object v2, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int v3, v0, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 138
    .local v2, "numBytes":I
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1, p2, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 139
    add-int/2addr p2, v2

    .line 141
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 145
    :cond_45
    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v4, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/android/internal/os/LoggingPrintStream;->decodedChars:Ljava/nio/CharBuffer;

    invoke-virtual {v3, v4, v5, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 148
    .local v3, "coderResult":Ljava/nio/charset/CoderResult;
    iget-object v4, p0, Lcom/android/internal/os/LoggingPrintStream;->decodedChars:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 149
    iget-object v4, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/os/LoggingPrintStream;->decodedChars:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v4, p0, Lcom/android/internal/os/LoggingPrintStream;->decodedChars:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 151
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-nez v4, :cond_45

    .line 152
    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 153
    nop

    .end local v2    # "numBytes":I
    .end local v3    # "coderResult":Ljava/nio/charset/CoderResult;
    goto :goto_2b

    .line 154
    :cond_6d
    invoke-direct {p0, v1}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_70
    .catchall {:try_start_1 .. :try_end_70} :catchall_72

    .line 155
    monitor-exit p0

    return-void

    .line 124
    .end local v0    # "end":I
    .end local p1    # "bytes":[B
    .end local p2    # "start":I
    .end local p3    # "count":I
    :catchall_72
    move-exception p1

    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p1
.end method
