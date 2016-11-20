.class public Ljava/io/StringBufferInputStream;
.super Ljava/io/InputStream;
.source "StringBufferInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected buffer:Ljava/lang/String;

.field protected count:I

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 73
    iput-object p1, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    #@5
    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Ljava/io/StringBufferInputStream;->count:I

    #@b
    .line 72
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 162
    :try_start_0
    iget v0, p0, Ljava/io/StringBufferInputStream;->count:I

    #@3
    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    sub-int/2addr v0, v1

    #@6
    monitor-exit p0

    #@7
    return v0

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized read()I
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 92
    :try_start_0
    iget v0, p0, Ljava/io/StringBufferInputStream;->pos:I

    #@3
    iget v1, p0, Ljava/io/StringBufferInputStream;->count:I

    #@5
    if-ge v0, v1, :cond_0

    #@7
    iget-object v0, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    #@9
    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    #@b
    add-int/lit8 v2, v1, 0x1

    #@d
    iput v2, p0, Ljava/io/StringBufferInputStream;->pos:I

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v0

    #@13
    and-int/lit16 v0, v0, 0xff

    #@15
    :goto_0
    monitor-exit p0

    #@16
    return v0

    #@17
    :cond_0
    const/4 v0, -0x1

    #@18
    goto :goto_0

    #@19
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p0

    #@1b
    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 112
    if-nez p1, :cond_0

    #@4
    .line 113
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :catchall_0
    move-exception v3

    #@b
    :goto_0
    monitor-exit p0

    #@c
    throw v3

    #@d
    .line 114
    :cond_0
    if-ltz p2, :cond_1

    #@f
    :try_start_1
    array-length v3, p1

    #@10
    if-le p2, v3, :cond_2

    #@12
    .line 116
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@14
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@17
    throw v3

    #@18
    .line 114
    :cond_2
    if-ltz p3, :cond_1

    #@1a
    .line 115
    add-int v3, p2, p3

    #@1c
    array-length v4, p1

    #@1d
    if-gt v3, v4, :cond_1

    #@1f
    add-int v3, p2, p3

    #@21
    if-ltz v3, :cond_1

    #@23
    .line 118
    iget v3, p0, Ljava/io/StringBufferInputStream;->pos:I

    #@25
    iget v4, p0, Ljava/io/StringBufferInputStream;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    if-lt v3, v4, :cond_3

    #@29
    .line 119
    const/4 v3, -0x1

    #@2a
    monitor-exit p0

    #@2b
    return v3

    #@2c
    .line 121
    :cond_3
    :try_start_2
    iget v3, p0, Ljava/io/StringBufferInputStream;->pos:I

    #@2e
    add-int/2addr v3, p3

    #@2f
    iget v4, p0, Ljava/io/StringBufferInputStream;->count:I

    #@31
    if-le v3, v4, :cond_4

    #@33
    .line 122
    iget v3, p0, Ljava/io/StringBufferInputStream;->count:I

    #@35
    iget v4, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    sub-int p3, v3, v4

    #@39
    .line 124
    :cond_4
    if-gtz p3, :cond_5

    #@3b
    monitor-exit p0

    #@3c
    .line 125
    return v5

    #@3d
    .line 127
    :cond_5
    :try_start_3
    iget-object v2, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3f
    .line 128
    .local v2, "s":Ljava/lang/String;
    move v0, p3

    #@40
    .line 129
    .local v0, "cnt":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@42
    if-ltz v0, :cond_6

    #@44
    .line 130
    add-int/lit8 v1, p2, 0x1

    #@46
    .end local p2    # "off":I
    .local v1, "off":I
    :try_start_4
    iget v3, p0, Ljava/io/StringBufferInputStream;->pos:I

    #@48
    add-int/lit8 v4, v3, 0x1

    #@4a
    iput v4, p0, Ljava/io/StringBufferInputStream;->pos:I

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@4f
    move-result v3

    #@50
    int-to-byte v3, v3

    #@51
    aput-byte v3, p1, p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@53
    move p2, v1

    #@54
    .end local v1    # "off":I
    .restart local p2    # "off":I
    goto :goto_1

    #@55
    :cond_6
    monitor-exit p0

    #@56
    .line 133
    return p3

    #@57
    .end local p2    # "off":I
    .restart local v1    # "off":I
    :catchall_1
    move-exception v3

    #@58
    move p2, v1

    #@59
    .end local v1    # "off":I
    .restart local p2    # "off":I
    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 170
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput v0, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 169
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public declared-synchronized skip(J)J
    .locals 5
    .param p1, "n"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 144
    cmp-long v0, p1, v2

    #@5
    if-gez v0, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 145
    return-wide v2

    #@9
    .line 147
    :cond_0
    :try_start_0
    iget v0, p0, Ljava/io/StringBufferInputStream;->count:I

    #@b
    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    #@d
    sub-int/2addr v0, v1

    #@e
    int-to-long v0, v0

    #@f
    cmp-long v0, p1, v0

    #@11
    if-lez v0, :cond_1

    #@13
    .line 148
    iget v0, p0, Ljava/io/StringBufferInputStream;->count:I

    #@15
    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    #@17
    sub-int/2addr v0, v1

    #@18
    int-to-long p1, v0

    #@19
    .line 150
    :cond_1
    iget v0, p0, Ljava/io/StringBufferInputStream;->pos:I

    #@1b
    int-to-long v0, v0

    #@1c
    add-long/2addr v0, p1

    #@1d
    long-to-int v0, v0

    #@1e
    iput v0, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit p0

    #@21
    .line 151
    return-wide p1

    #@22
    :catchall_0
    move-exception v0

    #@23
    monitor-exit p0

    #@24
    throw v0
.end method
