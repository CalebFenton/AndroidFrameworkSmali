.class public Ljava/io/StringReader;
.super Ljava/io/Reader;
.source "StringReader.java"


# instance fields
.field private length:I

.field private mark:I

.field private next:I

.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 48
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    #@4
    .line 40
    iput v0, p0, Ljava/io/StringReader;->next:I

    #@6
    .line 41
    iput v0, p0, Ljava/io/StringReader;->mark:I

    #@8
    .line 49
    iput-object p1, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    #@a
    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Ljava/io/StringReader;->length:I

    #@10
    .line 48
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
    .line 55
    iget-object v0, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 56
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    #@0
    .prologue
    .line 199
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    #@3
    .line 198
    return-void
.end method

.method public mark(I)V
    .locals 2
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    if-gez p1, :cond_0

    #@2
    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Read-ahead limit < 0"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 173
    :cond_0
    iget-object v1, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    #@d
    monitor-enter v1

    #@e
    .line 174
    :try_start_0
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    #@11
    .line 175
    iget v0, p0, Ljava/io/StringReader;->next:I

    #@13
    iput v0, p0, Ljava/io/StringReader;->mark:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 169
    return-void

    #@17
    .line 173
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 153
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    iget-object v1, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 69
    :try_start_0
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    #@6
    .line 70
    iget v0, p0, Ljava/io/StringReader;->next:I

    #@8
    iget v2, p0, Ljava/io/StringReader;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    if-lt v0, v2, :cond_0

    #@c
    .line 71
    const/4 v0, -0x1

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 72
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    #@11
    iget v2, p0, Ljava/io/StringReader;->next:I

    #@13
    add-int/lit8 v3, v2, 0x1

    #@15
    iput v3, p0, Ljava/io/StringReader;->next:I

    #@17
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    move-result v0

    #@1b
    monitor-exit v1

    #@1c
    return v0

    #@1d
    .line 68
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public read([CII)I
    .locals 5
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 89
    iget-object v2, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 90
    :try_start_0
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    #@7
    .line 91
    if-ltz p2, :cond_0

    #@9
    array-length v1, p1

    #@a
    if-le p2, v1, :cond_1

    #@c
    .line 93
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@e
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@11
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 89
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1

    #@15
    .line 91
    :cond_1
    if-ltz p3, :cond_0

    #@17
    .line 92
    add-int v1, p2, p3

    #@19
    :try_start_1
    array-length v3, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    if-gt v1, v3, :cond_0

    #@1c
    add-int v1, p2, p3

    #@1e
    if-ltz v1, :cond_0

    #@20
    .line 94
    if-nez p3, :cond_2

    #@22
    monitor-exit v2

    #@23
    .line 95
    return v4

    #@24
    .line 97
    :cond_2
    :try_start_2
    iget v1, p0, Ljava/io/StringReader;->next:I

    #@26
    iget v3, p0, Ljava/io/StringReader;->length:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@28
    if-lt v1, v3, :cond_3

    #@2a
    .line 98
    const/4 v1, -0x1

    #@2b
    monitor-exit v2

    #@2c
    return v1

    #@2d
    .line 99
    :cond_3
    :try_start_3
    iget v1, p0, Ljava/io/StringReader;->length:I

    #@2f
    iget v3, p0, Ljava/io/StringReader;->next:I

    #@31
    sub-int/2addr v1, v3

    #@32
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    #@35
    move-result v0

    #@36
    .line 100
    .local v0, "n":I
    iget-object v1, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    #@38
    iget v3, p0, Ljava/io/StringReader;->next:I

    #@3a
    iget v4, p0, Ljava/io/StringReader;->next:I

    #@3c
    add-int/2addr v4, v0

    #@3d
    invoke-virtual {v1, v3, v4, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    #@40
    .line 101
    iget v1, p0, Ljava/io/StringReader;->next:I

    #@42
    add-int/2addr v1, v0

    #@43
    iput v1, p0, Ljava/io/StringReader;->next:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@45
    monitor-exit v2

    #@46
    .line 102
    return v0
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 144
    :try_start_0
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .line 145
    const/4 v1, 0x1

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 143
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 186
    iget-object v1, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 187
    :try_start_0
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    #@6
    .line 188
    iget v0, p0, Ljava/io/StringReader;->mark:I

    #@8
    iput v0, p0, Ljava/io/StringReader;->next:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 185
    return-void

    #@c
    .line 186
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "ns"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 123
    iget-object v3, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 124
    :try_start_0
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    #@6
    .line 125
    iget v2, p0, Ljava/io/StringReader;->next:I

    #@8
    iget v4, p0, Ljava/io/StringReader;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    if-lt v2, v4, :cond_0

    #@c
    .line 126
    const-wide/16 v4, 0x0

    #@e
    monitor-exit v3

    #@f
    return-wide v4

    #@10
    .line 128
    :cond_0
    :try_start_1
    iget v2, p0, Ljava/io/StringReader;->length:I

    #@12
    iget v4, p0, Ljava/io/StringReader;->next:I

    #@14
    sub-int/2addr v2, v4

    #@15
    int-to-long v4, v2

    #@16
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    #@19
    move-result-wide v0

    #@1a
    .line 129
    .local v0, "n":J
    iget v2, p0, Ljava/io/StringReader;->next:I

    #@1c
    neg-int v2, v2

    #@1d
    int-to-long v4, v2

    #@1e
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    #@21
    move-result-wide v0

    #@22
    .line 130
    iget v2, p0, Ljava/io/StringReader;->next:I

    #@24
    int-to-long v4, v2

    #@25
    add-long/2addr v4, v0

    #@26
    long-to-int v2, v4

    #@27
    iput v2, p0, Ljava/io/StringReader;->next:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    monitor-exit v3

    #@2a
    .line 131
    return-wide v0

    #@2b
    .line 123
    .end local v0    # "n":J
    :catchall_0
    move-exception v2

    #@2c
    monitor-exit v3

    #@2d
    throw v2
.end method
