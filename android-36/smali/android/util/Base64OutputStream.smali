.class public Landroid/util/Base64OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64OutputStream.java"


# static fields
.field private static greylist-max-o EMPTY:[B


# instance fields
.field private greylist-max-o bpos:I

.field private greylist-max-o buffer:[B

.field private final greylist-max-o coder:Landroid/util/Base64$Coder;

.field private final greylist-max-o flags:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/util/Base64OutputStream;->EMPTY:[B

    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/OutputStream;I)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "flags"    # I

    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    .line 49
    return-void
.end method

.method public constructor greylist <init>(Ljava/io/OutputStream;IZ)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "flags"    # I
    .param p3, "encode"    # Z

    .line 65
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    .line 35
    const/4 v1, 0x0

    iput v1, p0, Landroid/util/Base64OutputStream;->bpos:I

    .line 66
    iput p2, p0, Landroid/util/Base64OutputStream;->flags:I

    .line 67
    if-eqz p3, :cond_15

    .line 68
    new-instance v1, Landroid/util/Base64$Encoder;

    invoke-direct {v1, p2, v0}, Landroid/util/Base64$Encoder;-><init>(I[B)V

    iput-object v1, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    goto :goto_1c

    .line 70
    :cond_15
    new-instance v1, Landroid/util/Base64$Decoder;

    invoke-direct {v1, p2, v0}, Landroid/util/Base64$Decoder;-><init>(I[B)V

    iput-object v1, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    .line 72
    :goto_1c
    return-void
.end method

.method private greylist-max-o embiggen([BI)[B
    .registers 4
    .param p1, "b"    # [B
    .param p2, "len"    # I

    .line 155
    if-eqz p1, :cond_7

    array-length v0, p1

    if-ge v0, p2, :cond_6

    goto :goto_7

    .line 158
    :cond_6
    return-object p1

    .line 156
    :cond_7
    :goto_7
    new-array v0, p2, [B

    return-object v0
.end method

.method private greylist-max-o flushBuffer()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget v0, p0, Landroid/util/Base64OutputStream;->bpos:I

    if-lez v0, :cond_e

    .line 97
    iget-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    iget v1, p0, Landroid/util/Base64OutputStream;->bpos:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Landroid/util/Base64OutputStream;->internalWrite([BIIZ)V

    .line 98
    iput v2, p0, Landroid/util/Base64OutputStream;->bpos:I

    .line 100
    :cond_e
    return-void
.end method

.method private greylist-max-o internalWrite([BIIZ)V
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v1, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v1, v1, Landroid/util/Base64$Coder;->output:[B

    iget-object v2, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    invoke-virtual {v2, p3}, Landroid/util/Base64$Coder;->maxOutputSize(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/util/Base64OutputStream;->embiggen([BI)[B

    move-result-object v1

    iput-object v1, v0, Landroid/util/Base64$Coder;->output:[B

    .line 144
    iget-object v0, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/util/Base64$Coder;->process([BIIZ)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 147
    iget-object v0, p0, Landroid/util/Base64OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v1, v1, Landroid/util/Base64$Coder;->output:[B

    iget-object v2, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    iget v2, v2, Landroid/util/Base64$Coder;->op:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 148
    return-void

    .line 145
    :cond_29
    new-instance v0, Landroid/util/Base64DataException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Landroid/util/Base64DataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, "thrown":Ljava/io/IOException;
    :try_start_1
    invoke-direct {p0}, Landroid/util/Base64OutputStream;->flushBuffer()V

    .line 112
    sget-object v1, Landroid/util/Base64OutputStream;->EMPTY:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v3, v2}, Landroid/util/Base64OutputStream;->internalWrite([BIIZ)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_c

    .line 115
    goto :goto_e

    .line 113
    :catch_c
    move-exception v1

    .line 114
    .local v1, "e":Ljava/io/IOException;
    move-object v0, v1

    .line 118
    .end local v1    # "e":Ljava/io/IOException;
    :goto_e
    :try_start_e
    iget v1, p0, Landroid/util/Base64OutputStream;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_1a

    .line 119
    iget-object v1, p0, Landroid/util/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_1f

    .line 121
    :cond_1a
    iget-object v1, p0, Landroid/util/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1f} :catch_20

    .line 129
    :goto_1f
    goto :goto_28

    .line 123
    :catch_20
    move-exception v1

    .line 124
    .restart local v1    # "e":Ljava/io/IOException;
    if-nez v0, :cond_25

    .line 125
    move-object v0, v1

    goto :goto_28

    .line 127
    :cond_25
    invoke-virtual {v0, v1}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 131
    .end local v1    # "e":Ljava/io/IOException;
    :goto_28
    if-nez v0, :cond_2b

    .line 134
    return-void

    .line 132
    :cond_2b
    throw v0
.end method

.method public whitelist test-api write(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    if-nez v0, :cond_a

    .line 81
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    .line 83
    :cond_a
    iget v0, p0, Landroid/util/Base64OutputStream;->bpos:I

    iget-object v1, p0, Landroid/util/Base64OutputStream;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1b

    .line 85
    iget-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    iget v1, p0, Landroid/util/Base64OutputStream;->bpos:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Landroid/util/Base64OutputStream;->internalWrite([BIIZ)V

    .line 86
    iput v2, p0, Landroid/util/Base64OutputStream;->bpos:I

    .line 88
    :cond_1b
    iget-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    iget v1, p0, Landroid/util/Base64OutputStream;->bpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/Base64OutputStream;->bpos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 89
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    if-gtz p3, :cond_3

    return-void

    .line 104
    :cond_3
    invoke-direct {p0}, Landroid/util/Base64OutputStream;->flushBuffer()V

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/util/Base64OutputStream;->internalWrite([BIIZ)V

    .line 106
    return-void
.end method
