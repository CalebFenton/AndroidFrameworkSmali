.class public Ljava/io/StringReader;
.super Ljava/io/Reader;
.source "StringReader.java"


# instance fields
.field private greylist-max-o length:I

.field private greylist-max-o mark:I

.field private greylist-max-o next:I

.field private greylist-max-o str:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/StringReader;->next:I

    .line 41
    iput v0, p0, Ljava/io/StringReader;->mark:I

    .line 49
    iput-object p1, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/io/StringReader;->length:I

    .line 51
    return-void
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 57
    return-void

    .line 56
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 201
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    .line 203
    monitor-exit v0

    .line 204
    return-void

    .line 203
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public whitelist test-api mark(I)V
    .registers 4
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    if-ltz p1, :cond_11

    .line 174
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_5
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    .line 176
    iget v1, p0, Ljava/io/StringReader;->next:I

    iput v1, p0, Ljava/io/StringReader;->mark:I

    .line 177
    monitor-exit v0

    .line 178
    return-void

    .line 177
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1

    .line 172
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Read-ahead limit < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    .line 70
    iget v1, p0, Ljava/io/StringReader;->next:I

    iget v2, p0, Ljava/io/StringReader;->length:I

    if-lt v1, v2, :cond_f

    .line 71
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 72
    :cond_f
    iget-object v1, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    iget v2, p0, Ljava/io/StringReader;->next:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/StringReader;->next:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    monitor-exit v0

    return v1

    .line 73
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public whitelist test-api read([CII)I
    .registers 9
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    .line 92
    if-ltz p2, :cond_3e

    array-length v1, p1

    if-gt p2, v1, :cond_3e

    if-ltz p3, :cond_3e

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_3e

    add-int v1, p2, p3

    if-ltz v1, :cond_3e

    .line 95
    if-nez p3, :cond_1b

    .line 96
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 98
    :cond_1b
    iget v1, p0, Ljava/io/StringReader;->next:I

    iget v2, p0, Ljava/io/StringReader;->length:I

    if-lt v1, v2, :cond_24

    .line 99
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 100
    :cond_24
    iget v1, p0, Ljava/io/StringReader;->length:I

    iget v2, p0, Ljava/io/StringReader;->next:I

    sub-int/2addr v1, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 101
    .local v1, "n":I
    iget-object v2, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    iget v3, p0, Ljava/io/StringReader;->next:I

    iget v4, p0, Ljava/io/StringReader;->next:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v4, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 102
    iget v2, p0, Ljava/io/StringReader;->next:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/StringReader;->next:I

    .line 103
    monitor-exit v0

    return v1

    .line 94
    .end local v1    # "n":I
    :cond_3e
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Ljava/io/StringReader;
    .end local p1    # "cbuf":[C
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v1

    .line 104
    .restart local p0    # "this":Ljava/io/StringReader;
    .restart local p1    # "cbuf":[C
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public whitelist test-api ready()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    .line 146
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 147
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public whitelist test-api reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    .line 189
    iget v1, p0, Ljava/io/StringReader;->mark:I

    iput v1, p0, Ljava/io/StringReader;->next:I

    .line 190
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist test-api skip(J)J
    .registers 8
    .param p1, "ns"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    .line 126
    iget v1, p0, Ljava/io/StringReader;->next:I

    iget v2, p0, Ljava/io/StringReader;->length:I

    if-lt v1, v2, :cond_10

    .line 127
    monitor-exit v0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 129
    :cond_10
    iget v1, p0, Ljava/io/StringReader;->length:I

    iget v2, p0, Ljava/io/StringReader;->next:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 130
    .local v1, "n":J
    iget v3, p0, Ljava/io/StringReader;->next:I

    neg-int v3, v3

    int-to-long v3, v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 131
    .end local v1    # "n":J
    .local v3, "n":J
    iget v1, p0, Ljava/io/StringReader;->next:I

    int-to-long v1, v1

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Ljava/io/StringReader;->next:I

    .line 132
    monitor-exit v0

    return-wide v3

    .line 133
    .end local v3    # "n":J
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method
