.class public Ljava/io/StringBufferInputStream;
.super Ljava/io/InputStream;
.source "StringBufferInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected whitelist test-api buffer:Ljava/lang/String;

.field protected whitelist test-api count:I

.field protected whitelist test-api pos:I


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 73
    iput-object p1, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/io/StringBufferInputStream;->count:I

    .line 75
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api available()I
    .registers 3

    monitor-enter p0

    .line 162
    :try_start_1
    iget v0, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 162
    .end local p0    # "this":Ljava/io/StringBufferInputStream;
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized whitelist test-api read()I
    .registers 4

    monitor-enter p0

    .line 92
    :try_start_1
    iget v0, p0, Ljava/io/StringBufferInputStream;->pos:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->count:I

    if-ge v0, v1, :cond_16

    iget-object v0, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/StringBufferInputStream;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_19

    and-int/lit16 v0, v0, 0xff

    goto :goto_17

    .end local p0    # "this":Ljava/io/StringBufferInputStream;
    :cond_16
    const/4 v0, -0x1

    :goto_17
    monitor-exit p0

    return v0

    .line 92
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public declared-synchronized whitelist test-api read([BII)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    monitor-enter p0

    .line 113
    if-eqz p1, :cond_40

    .line 115
    if-ltz p2, :cond_3a

    :try_start_5
    array-length v0, p1

    if-gt p2, v0, :cond_3a

    if-ltz p3, :cond_3a

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3a

    add-int v0, p2, p3

    if-ltz v0, :cond_3a

    .line 119
    iget v0, p0, Ljava/io/StringBufferInputStream;->pos:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->count:I
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_46

    if-lt v0, v1, :cond_1c

    .line 120
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 123
    :cond_1c
    :try_start_1c
    iget v0, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_46

    sub-int/2addr v0, v1

    .line 124
    .local v0, "avail":I
    if-le p3, v0, :cond_24

    .line 125
    move p3, v0

    .line 128
    :cond_24
    if-gtz p3, :cond_29

    .line 129
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 131
    :cond_29
    :try_start_29
    iget-object v1, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    iget v2, p0, Ljava/io/StringBufferInputStream;->pos:I

    iget v3, p0, Ljava/io/StringBufferInputStream;->pos:I

    add-int/2addr v3, p3

    invoke-virtual {v1, v2, v3, p1, p2}, Ljava/lang/String;->getBytes(II[BI)V

    .line 132
    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_46

    .line 133
    monitor-exit p0

    return p3

    .line 117
    .end local v0    # "avail":I
    .end local p0    # "this":Ljava/io/StringBufferInputStream;
    :cond_3a
    :try_start_3a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 114
    :cond_40
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 112
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_46
    move-exception p1

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_46

    throw p1
.end method

.method public declared-synchronized whitelist test-api reset()V
    .registers 2

    monitor-enter p0

    .line 170
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 171
    monitor-exit p0

    return-void

    .line 169
    .end local p0    # "this":Ljava/io/StringBufferInputStream;
    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public declared-synchronized whitelist test-api skip(J)J
    .registers 6
    .param p1, "n"    # J

    monitor-enter p0

    .line 144
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_9

    .line 145
    monitor-exit p0

    return-wide v0

    .line 147
    :cond_9
    :try_start_9
    iget v0, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_19

    .line 148
    iget v0, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    sub-int/2addr v0, v1

    int-to-long p1, v0

    .line 150
    .end local p0    # "this":Ljava/io/StringBufferInputStream;
    :cond_19
    iget v0, p0, Ljava/io/StringBufferInputStream;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_22

    .line 151
    monitor-exit p0

    return-wide p1

    .line 143
    .end local p1    # "n":J
    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method
