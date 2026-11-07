.class public Ljava/io/LineNumberInputStream;
.super Ljava/io/FilterInputStream;
.source "LineNumberInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-o lineNumber:I

.field greylist-max-o markLineNumber:I

.field greylist-max-o markPushBack:I

.field greylist-max-o pushBack:I


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 64
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    .line 55
    iput v0, p0, Ljava/io/LineNumberInputStream;->markPushBack:I

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    iget v0, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_14

    :cond_c
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_14
    return v0
.end method

.method public whitelist test-api getLineNumber()I
    .registers 2

    .line 218
    iget v0, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    return v0
.end method

.method public whitelist test-api mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    .line 260
    iget v0, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->markLineNumber:I

    .line 261
    iget v0, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->markPushBack:I

    .line 262
    iget-object v0, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 263
    return-void
.end method

.method public whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget v0, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    .line 94
    .local v0, "c":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 95
    iput v1, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    goto :goto_e

    .line 97
    :cond_8
    iget-object v2, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 100
    :goto_e
    const/16 v2, 0xa

    sparse-switch v0, :sswitch_data_2a

    .line 110
    return v0

    .line 102
    :sswitch_14
    iget-object v3, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    iput v3, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    .line 103
    iget v3, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    if-ne v3, v2, :cond_22

    .line 104
    iput v1, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    .line 107
    :cond_22
    :sswitch_22
    iget v1, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    .line 108
    return v2

    nop

    :sswitch_data_2a
    .sparse-switch
        0xa -> :sswitch_22
        0xd -> :sswitch_14
    .end sparse-switch
.end method

.method public whitelist test-api read([BII)I
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    if-eqz p1, :cond_40

    .line 133
    if-ltz p2, :cond_3a

    array-length v0, p1

    if-gt p2, v0, :cond_3a

    if-ltz p3, :cond_3a

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3a

    add-int v0, p2, p3

    if-ltz v0, :cond_3a

    .line 136
    if-nez p3, :cond_16

    .line 137
    const/4 v0, 0x0

    return v0

    .line 140
    :cond_16
    invoke-virtual {p0}, Ljava/io/LineNumberInputStream;->read()I

    move-result v0

    .line 141
    .local v0, "c":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    .line 142
    return v1

    .line 144
    :cond_1e
    int-to-byte v2, v0

    aput-byte v2, p1, p2

    .line 146
    const/4 v2, 0x1

    .line 148
    .local v2, "i":I
    :goto_22
    if-ge v2, p3, :cond_38

    .line 149
    :try_start_24
    invoke-virtual {p0}, Ljava/io/LineNumberInputStream;->read()I

    move-result v3

    move v0, v3

    .line 150
    if-ne v0, v1, :cond_2c

    .line 151
    goto :goto_38

    .line 153
    :cond_2c
    if-eqz p1, :cond_33

    .line 154
    add-int v3, p2, v2

    int-to-byte v4, v0

    aput-byte v4, p1, v3
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_33} :catch_36

    .line 148
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 157
    :catch_36
    move-exception v1

    goto :goto_39

    .line 158
    :cond_38
    :goto_38
    nop

    .line 159
    :goto_39
    return v2

    .line 135
    .end local v0    # "c":I
    .end local v2    # "i":I
    :cond_3a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 132
    :cond_40
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iget v0, p0, Ljava/io/LineNumberInputStream;->markLineNumber:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    .line 290
    iget v0, p0, Ljava/io/LineNumberInputStream;->markPushBack:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->pushBack:I

    .line 291
    iget-object v0, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 292
    return-void
.end method

.method public whitelist test-api setLineNumber(I)V
    .registers 2
    .param p1, "lineNumber"    # I

    .line 208
    iput p1, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    .line 209
    return-void
.end method

.method public whitelist test-api skip(J)J
    .registers 12
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    const/16 v0, 0x800

    .line 181
    .local v0, "chunk":I
    move-wide v1, p1

    .line 185
    .local v1, "remaining":J
    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-gtz v5, :cond_a

    .line 186
    return-wide v3

    .line 189
    :cond_a
    new-array v5, v0, [B

    .line 190
    .local v5, "data":[B
    :goto_c
    cmp-long v6, v1, v3

    if-lez v6, :cond_21

    .line 191
    int-to-long v6, v0

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7, v6}, Ljava/io/LineNumberInputStream;->read([BII)I

    move-result v6

    .line 192
    .local v6, "nr":I
    if-gez v6, :cond_1e

    .line 193
    goto :goto_21

    .line 195
    :cond_1e
    int-to-long v7, v6

    sub-long/2addr v1, v7

    goto :goto_c

    .line 198
    .end local v6    # "nr":I
    :cond_21
    :goto_21
    sub-long v3, p1, v1

    return-wide v3
.end method
