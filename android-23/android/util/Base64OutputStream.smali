.class public Landroid/util/Base64OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64OutputStream.java"


# static fields
.field private static EMPTY:[B


# instance fields
.field private bpos:I

.field private buffer:[B

.field private final coder:Landroid/util/Base64$Coder;

.field private final flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 34
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [B

    #@3
    sput-object v0, Landroid/util/Base64OutputStream;->EMPTY:[B

    #@5
    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 45
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    #@4
    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "flags"    # I
    .param p3, "encode"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 61
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@4
    .line 31
    iput-object v1, p0, Landroid/util/Base64OutputStream;->buffer:[B

    #@6
    .line 32
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/util/Base64OutputStream;->bpos:I

    #@9
    .line 62
    iput p2, p0, Landroid/util/Base64OutputStream;->flags:I

    #@b
    .line 63
    if-eqz p3, :cond_0

    #@d
    .line 64
    new-instance v0, Landroid/util/Base64$Encoder;

    #@f
    invoke-direct {v0, p2, v1}, Landroid/util/Base64$Encoder;-><init>(I[B)V

    #@12
    iput-object v0, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    #@14
    .line 60
    :goto_0
    return-void

    #@15
    .line 66
    :cond_0
    new-instance v0, Landroid/util/Base64$Decoder;

    #@17
    invoke-direct {v0, p2, v1}, Landroid/util/Base64$Decoder;-><init>(I[B)V

    #@1a
    iput-object v0, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    #@1c
    goto :goto_0
.end method

.method private embiggen([BI)[B
    .locals 1
    .param p1, "b"    # [B
    .param p2, "len"    # I

    #@0
    .prologue
    .line 149
    if-eqz p1, :cond_0

    #@2
    array-length v0, p1

    #@3
    if-ge v0, p2, :cond_1

    #@5
    .line 150
    :cond_0
    new-array v0, p2, [B

    #@7
    return-object v0

    #@8
    .line 152
    :cond_1
    return-object p1
.end method

.method private flushBuffer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 92
    iget v0, p0, Landroid/util/Base64OutputStream;->bpos:I

    #@3
    if-lez v0, :cond_0

    #@5
    .line 93
    iget-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    #@7
    iget v1, p0, Landroid/util/Base64OutputStream;->bpos:I

    #@9
    invoke-direct {p0, v0, v2, v1, v2}, Landroid/util/Base64OutputStream;->internalWrite([BIIZ)V

    #@c
    .line 94
    iput v2, p0, Landroid/util/Base64OutputStream;->bpos:I

    #@e
    .line 91
    :cond_0
    return-void
.end method

.method private internalWrite([BIIZ)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    #@2
    iget-object v1, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    #@4
    iget-object v1, v1, Landroid/util/Base64$Coder;->output:[B

    #@6
    iget-object v2, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    #@8
    invoke-virtual {v2, p3}, Landroid/util/Base64$Coder;->maxOutputSize(I)I

    #@b
    move-result v2

    #@c
    invoke-direct {p0, v1, v2}, Landroid/util/Base64OutputStream;->embiggen([BI)[B

    #@f
    move-result-object v1

    #@10
    iput-object v1, v0, Landroid/util/Base64$Coder;->output:[B

    #@12
    .line 138
    iget-object v0, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    #@14
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/util/Base64$Coder;->process([BIIZ)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 139
    new-instance v0, Landroid/util/Base64DataException;

    #@1c
    const-string/jumbo v1, "bad base-64"

    #@1f
    invoke-direct {v0, v1}, Landroid/util/Base64DataException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 141
    :cond_0
    iget-object v0, p0, Landroid/util/Base64OutputStream;->out:Ljava/io/OutputStream;

    #@25
    iget-object v1, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    #@27
    iget-object v1, v1, Landroid/util/Base64$Coder;->output:[B

    #@29
    iget-object v2, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    #@2b
    iget v2, v2, Landroid/util/Base64$Coder;->op:I

    #@2d
    const/4 v3, 0x0

    #@2e
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    #@31
    .line 136
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    const/4 v1, 0x0

    #@1
    .line 107
    .local v1, "thrown":Ljava/io/IOException;
    :try_start_0
    invoke-direct {p0}, Landroid/util/Base64OutputStream;->flushBuffer()V

    #@4
    .line 108
    sget-object v2, Landroid/util/Base64OutputStream;->EMPTY:[B

    #@6
    const/4 v3, 0x0

    #@7
    const/4 v4, 0x0

    #@8
    const/4 v5, 0x1

    #@9
    invoke-direct {p0, v2, v3, v4, v5}, Landroid/util/Base64OutputStream;->internalWrite([BIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 114
    .end local v1    # "thrown":Ljava/io/IOException;
    :goto_0
    :try_start_1
    iget v2, p0, Landroid/util/Base64OutputStream;->flags:I

    #@e
    and-int/lit8 v2, v2, 0x10

    #@10
    if-nez v2, :cond_1

    #@12
    .line 115
    iget-object v2, p0, Landroid/util/Base64OutputStream;->out:Ljava/io/OutputStream;

    #@14
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@17
    .line 125
    :cond_0
    :goto_1
    if-eqz v1, :cond_2

    #@19
    .line 126
    throw v1

    #@1a
    .line 109
    .restart local v1    # "thrown":Ljava/io/IOException;
    :catch_0
    move-exception v0

    #@1b
    .line 110
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v0

    #@1c
    .local v1, "thrown":Ljava/io/IOException;
    goto :goto_0

    #@1d
    .line 117
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "thrown":Ljava/io/IOException;
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/util/Base64OutputStream;->out:Ljava/io/OutputStream;

    #@1f
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@22
    goto :goto_1

    #@23
    .line 119
    :catch_1
    move-exception v0

    #@24
    .line 120
    .restart local v0    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    #@26
    .line 121
    move-object v1, v0

    #@27
    .restart local v1    # "thrown":Ljava/io/IOException;
    goto :goto_1

    #@28
    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "thrown":Ljava/io/IOException;
    :cond_2
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 76
    iget-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    #@3
    if-nez v0, :cond_0

    #@5
    .line 77
    const/16 v0, 0x400

    #@7
    new-array v0, v0, [B

    #@9
    iput-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    #@b
    .line 79
    :cond_0
    iget v0, p0, Landroid/util/Base64OutputStream;->bpos:I

    #@d
    iget-object v1, p0, Landroid/util/Base64OutputStream;->buffer:[B

    #@f
    array-length v1, v1

    #@10
    if-lt v0, v1, :cond_1

    #@12
    .line 81
    iget-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    #@14
    iget v1, p0, Landroid/util/Base64OutputStream;->bpos:I

    #@16
    invoke-direct {p0, v0, v2, v1, v2}, Landroid/util/Base64OutputStream;->internalWrite([BIIZ)V

    #@19
    .line 82
    iput v2, p0, Landroid/util/Base64OutputStream;->bpos:I

    #@1b
    .line 84
    :cond_1
    iget-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    #@1d
    iget v1, p0, Landroid/util/Base64OutputStream;->bpos:I

    #@1f
    add-int/lit8 v2, v1, 0x1

    #@21
    iput v2, p0, Landroid/util/Base64OutputStream;->bpos:I

    #@23
    int-to-byte v2, p1

    #@24
    aput-byte v2, v0, v1

    #@26
    .line 70
    return-void
.end method

.method public write([BII)V
    .locals 1
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
    const/4 v0, 0x0

    #@1
    .line 99
    if-gtz p3, :cond_0

    #@3
    return-void

    #@4
    .line 100
    :cond_0
    invoke-direct {p0}, Landroid/util/Base64OutputStream;->flushBuffer()V

    #@7
    .line 101
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/util/Base64OutputStream;->internalWrite([BIIZ)V

    #@a
    .line 98
    return-void
.end method
