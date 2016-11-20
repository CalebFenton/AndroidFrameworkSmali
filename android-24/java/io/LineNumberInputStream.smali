.class public Ljava/io/LineNumberInputStream;
.super Ljava/io/FilterInputStream;
.source "LineNumberInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field lineNumber:I

.field markLineNumber:I

.field markPushBack:I

.field pushBack:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 64
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@4
    .line 52
    iput v0, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    #@6
    .line 55
    iput v0, p0, Ljava/io/LineNumberInputStream;->markPushBack:I

    #@8
    .line 63
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 240
    iget v0, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    #@8
    move-result v0

    #@9
    div-int/lit8 v0, v0, 0x2

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    #@f
    move-result v0

    #@10
    div-int/lit8 v0, v0, 0x2

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 1

    #@0
    .prologue
    .line 217
    iget v0, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    #@2
    return v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    #@0
    .prologue
    .line 259
    iget v0, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    #@2
    iput v0, p0, Ljava/io/LineNumberInputStream;->markLineNumber:I

    #@4
    .line 260
    iget v0, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    #@6
    iput v0, p0, Ljava/io/LineNumberInputStream;->markPushBack:I

    #@8
    .line 261
    iget-object v0, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    #@a
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    #@d
    .line 258
    return-void
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
    const/16 v3, 0xa

    #@2
    const/4 v2, -0x1

    #@3
    .line 91
    iget v0, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    #@5
    .line 93
    .local v0, "c":I
    if-eq v0, v2, :cond_0

    #@7
    .line 94
    iput v2, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    #@9
    .line 99
    :goto_0
    packed-switch v0, :pswitch_data_0

    #@c
    .line 109
    :pswitch_0
    return v0

    #@d
    .line 96
    :cond_0
    iget-object v1, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    #@f
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@12
    move-result v0

    #@13
    goto :goto_0

    #@14
    .line 101
    :pswitch_1
    iget-object v1, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    #@16
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@19
    move-result v1

    #@1a
    iput v1, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    #@1c
    .line 102
    iget v1, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    #@1e
    if-ne v1, v3, :cond_1

    #@20
    .line 103
    iput v2, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    #@22
    .line 106
    :cond_1
    :pswitch_2
    iget v1, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    #@24
    add-int/lit8 v1, v1, 0x1

    #@26
    iput v1, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    #@28
    .line 107
    return v3

    #@29
    .line 99
    nop

    #@2a
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public read([BII)I
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 130
    if-nez p1, :cond_0

    #@4
    .line 131
    new-instance v3, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v3

    #@a
    .line 132
    :cond_0
    if-ltz p2, :cond_1

    #@c
    array-length v3, p1

    #@d
    if-le p2, v3, :cond_2

    #@f
    .line 134
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@11
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@14
    throw v3

    #@15
    .line 132
    :cond_2
    if-ltz p3, :cond_1

    #@17
    .line 133
    add-int v3, p2, p3

    #@19
    array-length v4, p1

    #@1a
    if-gt v3, v4, :cond_1

    #@1c
    add-int v3, p2, p3

    #@1e
    if-ltz v3, :cond_1

    #@20
    .line 135
    if-nez p3, :cond_3

    #@22
    .line 136
    return v5

    #@23
    .line 139
    :cond_3
    invoke-virtual {p0}, Ljava/io/LineNumberInputStream;->read()I

    #@26
    move-result v0

    #@27
    .line 140
    .local v0, "c":I
    if-ne v0, v6, :cond_4

    #@29
    .line 141
    return v6

    #@2a
    .line 143
    :cond_4
    int-to-byte v3, v0

    #@2b
    aput-byte v3, p1, p2

    #@2d
    .line 145
    const/4 v2, 0x1

    #@2e
    .line 147
    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_5

    #@30
    .line 148
    :try_start_0
    invoke-virtual {p0}, Ljava/io/LineNumberInputStream;->read()I

    #@33
    move-result v0

    #@34
    .line 149
    if-ne v0, v6, :cond_6

    #@36
    .line 158
    :cond_5
    :goto_1
    return v2

    #@37
    .line 152
    :cond_6
    if-eqz p1, :cond_7

    #@39
    .line 153
    add-int v3, p2, v2

    #@3b
    int-to-byte v4, v0

    #@3c
    aput-byte v4, p1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 147
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@40
    goto :goto_0

    #@41
    .line 156
    :catch_0
    move-exception v1

    #@42
    .local v1, "ee":Ljava/io/IOException;
    goto :goto_1
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    iget v0, p0, Ljava/io/LineNumberInputStream;->markLineNumber:I

    #@2
    iput v0, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    #@4
    .line 289
    iget v0, p0, Ljava/io/LineNumberInputStream;->markPushBack:I

    #@6
    iput v0, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    #@8
    .line 290
    iget-object v0, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    #@a
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    #@d
    .line 287
    return-void
.end method

.method public setLineNumber(I)V
    .locals 0
    .param p1, "lineNumber"    # I

    #@0
    .prologue
    .line 207
    iput p1, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    #@2
    .line 206
    return-void
.end method

.method public skip(J)J
    .locals 11
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const-wide/16 v8, 0x0

    #@3
    .line 179
    const/16 v0, 0x800

    #@5
    .line 180
    .local v0, "chunk":I
    move-wide v4, p1

    #@6
    .line 184
    .local v4, "remaining":J
    cmp-long v3, p1, v8

    #@8
    if-gtz v3, :cond_0

    #@a
    .line 185
    return-wide v8

    #@b
    .line 188
    :cond_0
    new-array v1, v0, [B

    #@d
    .line 189
    .local v1, "data":[B
    :goto_0
    cmp-long v3, v4, v8

    #@f
    if-lez v3, :cond_1

    #@11
    .line 190
    const-wide/16 v6, 0x800

    #@13
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@16
    move-result-wide v6

    #@17
    long-to-int v3, v6

    #@18
    invoke-virtual {p0, v1, v10, v3}, Ljava/io/LineNumberInputStream;->read([BII)I

    #@1b
    move-result v2

    #@1c
    .line 191
    .local v2, "nr":I
    if-gez v2, :cond_2

    #@1e
    .line 197
    .end local v2    # "nr":I
    :cond_1
    sub-long v6, p1, v4

    #@20
    return-wide v6

    #@21
    .line 194
    .restart local v2    # "nr":I
    :cond_2
    int-to-long v6, v2

    #@22
    sub-long/2addr v4, v6

    #@23
    goto :goto_0
.end method
