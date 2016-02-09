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
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 56
    if-nez p1, :cond_0

    #@5
    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "str == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 59
    :cond_0
    iput-object p1, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    #@10
    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Ljava/io/StringBufferInputStream;->count:I

    #@16
    .line 55
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 65
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
    .line 78
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
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 82
    if-nez p1, :cond_0

    #@4
    .line 83
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v3, "buffer == null"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :catchall_0
    move-exception v2

    #@e
    monitor-exit p0

    #@f
    throw v2

    #@10
    .line 85
    :cond_0
    :try_start_1
    array-length v2, p1

    #@11
    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    .line 86
    if-nez p3, :cond_1

    #@16
    monitor-exit p0

    #@17
    .line 87
    return v3

    #@18
    .line 90
    :cond_1
    :try_start_2
    iget v2, p0, Ljava/io/StringBufferInputStream;->count:I

    #@1a
    iget v3, p0, Ljava/io/StringBufferInputStream;->pos:I

    #@1c
    sub-int/2addr v2, v3

    #@1d
    if-ge v2, p3, :cond_2

    #@1f
    iget v2, p0, Ljava/io/StringBufferInputStream;->count:I

    #@21
    iget v3, p0, Ljava/io/StringBufferInputStream;->pos:I

    #@23
    sub-int v0, v2, v3

    #@25
    .line 91
    .local v0, "copylen":I
    :goto_0
    const/4 v1, 0x0

    #@26
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    #@28
    .line 92
    add-int v2, p2, v1

    #@2a
    iget-object v3, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    #@2c
    iget v4, p0, Ljava/io/StringBufferInputStream;->pos:I

    #@2e
    add-int/2addr v4, v1

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@32
    move-result v3

    #@33
    int-to-byte v3, v3

    #@34
    aput-byte v3, p1, v2

    #@36
    .line 91
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_1

    #@39
    .line 90
    .end local v0    # "copylen":I
    .end local v1    # "i":I
    :cond_2
    move v0, p3

    #@3a
    .restart local v0    # "copylen":I
    goto :goto_0

    #@3b
    .line 94
    .restart local v1    # "i":I
    :cond_3
    iget v2, p0, Ljava/io/StringBufferInputStream;->pos:I

    #@3d
    add-int/2addr v2, v0

    #@3e
    iput v2, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    monitor-exit p0

    #@41
    .line 95
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 103
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput v0, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 102
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
    .param p1, "charCount"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 116
    cmp-long v1, p1, v2

    #@5
    if-gtz v1, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 117
    return-wide v2

    #@9
    .line 121
    :cond_0
    :try_start_0
    iget v1, p0, Ljava/io/StringBufferInputStream;->count:I

    #@b
    iget v2, p0, Ljava/io/StringBufferInputStream;->pos:I

    #@d
    sub-int/2addr v1, v2

    #@e
    int-to-long v2, v1

    #@f
    cmp-long v1, v2, p1

    #@11
    if-gez v1, :cond_1

    #@13
    .line 122
    iget v1, p0, Ljava/io/StringBufferInputStream;->count:I

    #@15
    iget v2, p0, Ljava/io/StringBufferInputStream;->pos:I

    #@17
    sub-int v0, v1, v2

    #@19
    .line 123
    .local v0, "numskipped":I
    iget v1, p0, Ljava/io/StringBufferInputStream;->count:I

    #@1b
    iput v1, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 128
    :goto_0
    int-to-long v2, v0

    #@1e
    monitor-exit p0

    #@1f
    return-wide v2

    #@20
    .line 125
    .end local v0    # "numskipped":I
    :cond_1
    long-to-int v0, p1

    #@21
    .line 126
    .restart local v0    # "numskipped":I
    :try_start_1
    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    #@23
    int-to-long v2, v1

    #@24
    add-long/2addr v2, p1

    #@25
    long-to-int v1, v2

    #@26
    iput v1, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    goto :goto_0

    #@29
    .end local v0    # "numskipped":I
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit p0

    #@2b
    throw v1
.end method
