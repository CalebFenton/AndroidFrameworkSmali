.class public Ljava/io/LineNumberInputStream;
.super Ljava/io/FilterInputStream;
.source "LineNumberInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private lastChar:I

.field private lineNumber:I

.field private markedLastChar:I

.field private markedLineNumber:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 54
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@4
    .line 37
    iput v0, p0, Ljava/io/LineNumberInputStream;->markedLineNumber:I

    #@6
    .line 39
    iput v0, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    #@8
    .line 53
    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    #@5
    move-result v0

    #@6
    div-int/lit8 v1, v0, 0x2

    #@8
    iget v0, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    #@a
    const/4 v2, -0x1

    #@b
    if-ne v0, v2, :cond_0

    #@d
    const/4 v0, 0x0

    #@e
    :goto_0
    add-int/2addr v0, v1

    #@f
    return v0

    #@10
    :cond_0
    const/4 v0, 0x1

    #@11
    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget v0, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    #@2
    return v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    #@5
    .line 98
    iget v0, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    #@7
    iput v0, p0, Ljava/io/LineNumberInputStream;->markedLineNumber:I

    #@9
    .line 99
    iget v0, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    #@b
    iput v0, p0, Ljava/io/LineNumberInputStream;->markedLastChar:I

    #@d
    .line 96
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
    const/4 v3, -0x1

    #@1
    .line 120
    iget v0, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    #@3
    .line 121
    .local v0, "currentChar":I
    if-ne v0, v3, :cond_0

    #@5
    .line 122
    iget-object v1, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    #@7
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@a
    move-result v0

    #@b
    .line 126
    :goto_0
    packed-switch v0, :pswitch_data_0

    #@e
    .line 137
    :goto_1
    :pswitch_0
    return v0

    #@f
    .line 124
    :cond_0
    iput v3, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    #@11
    goto :goto_0

    #@12
    .line 128
    :pswitch_1
    const/16 v0, 0xa

    #@14
    .line 129
    iget-object v1, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    #@16
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@19
    move-result v1

    #@1a
    iput v1, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    #@1c
    .line 130
    iget v1, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    #@1e
    const/16 v2, 0xa

    #@20
    if-ne v1, v2, :cond_1

    #@22
    .line 131
    iput v3, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    #@24
    .line 135
    :cond_1
    :pswitch_2
    iget v1, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    #@26
    add-int/lit8 v1, v1, 0x1

    #@28
    iput v1, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    #@2a
    goto :goto_1

    #@2b
    .line 126
    nop

    #@2c
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 160
    array-length v4, p1

    #@2
    invoke-static {v4, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@5
    .line 161
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_3

    #@8
    .line 164
    :try_start_0
    invoke-virtual {p0}, Ljava/io/LineNumberInputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v0

    #@c
    .line 171
    .local v0, "currentChar":I
    if-ne v0, v3, :cond_2

    #@e
    .line 172
    if-nez v2, :cond_0

    #@10
    move v2, v3

    #@11
    .end local v2    # "i":I
    :cond_0
    return v2

    #@12
    .line 165
    .end local v0    # "currentChar":I
    .restart local v2    # "i":I
    :catch_0
    move-exception v1

    #@13
    .line 166
    .local v1, "e":Ljava/io/IOException;
    if-eqz v2, :cond_1

    #@15
    .line 167
    return v2

    #@16
    .line 169
    :cond_1
    throw v1

    #@17
    .line 174
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "currentChar":I
    :cond_2
    add-int v4, p2, v2

    #@19
    int-to-byte v5, v0

    #@1a
    aput-byte v5, p1, v4

    #@1c
    .line 161
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 176
    .end local v0    # "currentChar":I
    :cond_3
    return p3
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
    .line 192
    iget-object v0, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    #@5
    .line 193
    iget v0, p0, Ljava/io/LineNumberInputStream;->markedLineNumber:I

    #@7
    iput v0, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    #@9
    .line 194
    iget v0, p0, Ljava/io/LineNumberInputStream;->markedLastChar:I

    #@b
    iput v0, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    #@d
    .line 191
    return-void
.end method

.method public setLineNumber(I)V
    .locals 0
    .param p1, "lineNumber"    # I

    #@0
    .prologue
    .line 208
    iput p1, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    #@2
    .line 207
    return-void
.end method

.method public skip(J)J
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 229
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method
