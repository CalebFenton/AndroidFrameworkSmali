.class public abstract Ljava/io/Writer;
.super Ljava/lang/Object;
.source "Writer.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final greylist-max-o WRITE_BUFFER_SIZE:I = 0x400


# instance fields
.field protected whitelist test-api lock:Ljava/lang/Object;

.field private greylist-max-o writeBuffer:[C


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    .line 163
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "lock"    # Ljava/lang/Object;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    if-eqz p1, :cond_8

    .line 176
    iput-object p1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    .line 177
    return-void

    .line 174
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api nullWriter()Ljava/io/Writer;
    .registers 1

    .line 83
    new-instance v0, Ljava/io/Writer$1;

    invoke-direct {v0}, Ljava/io/Writer$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api append(C)Ljava/io/Writer;
    .registers 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    .line 390
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 323
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 5
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    if-nez p1, :cond_4

    const-string p1, "null"

    .line 366
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

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

    .line 51
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

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

    .line 51
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

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

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist test-api close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api write(I)V
    .registers 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_3
    iget-object v1, p0, Ljava/io/Writer;->writeBuffer:[C

    if-nez v1, :cond_d

    .line 196
    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Ljava/io/Writer;->writeBuffer:[C

    .line 198
    :cond_d
    iget-object v1, p0, Ljava/io/Writer;->writeBuffer:[C

    int-to-char v2, p1

    const/4 v3, 0x0

    aput-char v2, v1, v3

    .line 199
    iget-object v1, p0, Ljava/io/Writer;->writeBuffer:[C

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 200
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist test-api write(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 250
    return-void
.end method

.method public whitelist test-api write(Ljava/lang/String;II)V
    .registers 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    const/16 v1, 0x400

    if-gt p3, v1, :cond_12

    .line 282
    :try_start_7
    iget-object v2, p0, Ljava/io/Writer;->writeBuffer:[C

    if-nez v2, :cond_f

    .line 283
    new-array v1, v1, [C

    iput-object v1, p0, Ljava/io/Writer;->writeBuffer:[C

    .line 285
    :cond_f
    iget-object v1, p0, Ljava/io/Writer;->writeBuffer:[C

    .local v1, "cbuf":[C
    goto :goto_14

    .line 287
    .end local v1    # "cbuf":[C
    :cond_12
    new-array v1, p3, [C

    .line 289
    .restart local v1    # "cbuf":[C
    :goto_14
    add-int v2, p2, p3

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 290
    invoke-virtual {p0, v1, v3, p3}, Ljava/io/Writer;->write([CII)V

    .line 291
    .end local v1    # "cbuf":[C
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist test-api write([C)V
    .registers 4
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/Writer;->write([CII)V

    .line 214
    return-void
.end method

.method public abstract whitelist test-api write([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
