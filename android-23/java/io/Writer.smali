.class public abstract Ljava/io/Writer;
.super Ljava/lang/Object;
.source "Writer.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field protected lock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    iput-object p0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    #@5
    .line 47
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    if-nez p1, :cond_0

    #@5
    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "lock == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 64
    :cond_0
    iput-object p1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    #@10
    .line 60
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 0
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    #@3
    .line 183
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    if-nez p1, :cond_0

    #@2
    .line 200
    const-string/jumbo p1, "null"

    #@5
    .line 202
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@c
    .line 203
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
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
    .line 230
    if-nez p1, :cond_0

    #@2
    .line 231
    const-string/jumbo p1, "null"

    #@5
    .line 233
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@10
    .line 234
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
    .line 181
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

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
    .line 198
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

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
    .line 229
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method checkError()Z
    .locals 1

    #@0
    .prologue
    .line 242
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(I)V
    .locals 4
    .param p1, "oneChar"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    iget-object v2, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 126
    const/4 v1, 0x1

    #@4
    :try_start_0
    new-array v0, v1, [C

    #@6
    .line 127
    .local v0, "oneCharArray":[C
    int-to-char v1, p1

    #@7
    const/4 v3, 0x0

    #@8
    aput-char v1, v0, v3

    #@a
    .line 128
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v2

    #@e
    .line 124
    return-void

    #@f
    .line 125
    .end local v0    # "oneCharArray":[C
    :catchall_0
    move-exception v1

    #@10
    monitor-exit v2

    #@11
    throw v1
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    #@8
    .line 140
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 161
    or-int v1, p2, p3

    #@3
    if-ltz v1, :cond_0

    #@5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    sub-int/2addr v1, p3

    #@a
    if-le p2, v1, :cond_1

    #@c
    .line 162
    :cond_0
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    #@e
    invoke-direct {v1, p1, p2, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    #@11
    throw v1

    #@12
    .line 164
    :cond_1
    new-array v0, p3, [C

    #@14
    .line 165
    .local v0, "buf":[C
    add-int v1, p2, p3

    #@16
    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    #@19
    .line 166
    iget-object v2, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    #@1b
    monitor-enter v2

    #@1c
    .line 167
    :try_start_0
    array-length v1, v0

    #@1d
    const/4 v3, 0x0

    #@1e
    invoke-virtual {p0, v0, v3, v1}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 160
    return-void

    #@23
    .line 166
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public write([C)V
    .locals 2
    .param p1, "buf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/Writer;->write([CII)V

    #@5
    .line 93
    return-void
.end method

.method public abstract write([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
