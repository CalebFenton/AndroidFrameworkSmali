.class public Landroid/util/Base64InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64InputStream.java"


# static fields
.field private static final greylist-max-o BUFFER_SIZE:I = 0x800

.field private static greylist-max-o EMPTY:[B


# instance fields
.field private final greylist-max-o coder:Landroid/util/Base64$Coder;

.field private greylist-max-o eof:Z

.field private greylist-max-o inputBuffer:[B

.field private greylist-max-o outputEnd:I

.field private greylist-max-o outputStart:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/util/Base64InputStream;->EMPTY:[B

    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/InputStream;I)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "flags"    # I

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 49
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/InputStream;IZ)V
    .registers 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "flags"    # I
    .param p3, "encode"    # Z

    .line 63
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/Base64InputStream;->eof:Z

    .line 65
    const/16 v1, 0x800

    new-array v2, v1, [B

    iput-object v2, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    .line 66
    const/4 v2, 0x0

    if-eqz p3, :cond_17

    .line 67
    new-instance v3, Landroid/util/Base64$Encoder;

    invoke-direct {v3, p2, v2}, Landroid/util/Base64$Encoder;-><init>(I[B)V

    iput-object v3, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    goto :goto_1e

    .line 69
    :cond_17
    new-instance v3, Landroid/util/Base64$Decoder;

    invoke-direct {v3, p2, v2}, Landroid/util/Base64$Decoder;-><init>(I[B)V

    iput-object v3, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    .line 71
    :goto_1e
    iget-object v2, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v3, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    invoke-virtual {v3, v1}, Landroid/util/Base64$Coder;->maxOutputSize(I)I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, v2, Landroid/util/Base64$Coder;->output:[B

    .line 72
    iput v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    .line 73
    iput v0, p0, Landroid/util/Base64InputStream;->outputEnd:I

    .line 74
    return-void
.end method

.method private greylist-max-o refill()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-boolean v0, p0, Landroid/util/Base64InputStream;->eof:Z

    if-eqz v0, :cond_5

    return-void

    .line 140
    :cond_5
    iget-object v0, p0, Landroid/util/Base64InputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 142
    .local v0, "bytesRead":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1d

    .line 143
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/Base64InputStream;->eof:Z

    .line 144
    iget-object v3, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    sget-object v4, Landroid/util/Base64InputStream;->EMPTY:[B

    invoke-virtual {v3, v4, v2, v2, v1}, Landroid/util/Base64$Coder;->process([BIIZ)Z

    move-result v1

    .local v1, "success":Z
    goto :goto_25

    .line 146
    .end local v1    # "success":Z
    :cond_1d
    iget-object v1, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v3, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    invoke-virtual {v1, v3, v2, v0, v2}, Landroid/util/Base64$Coder;->process([BIIZ)Z

    move-result v1

    .line 148
    .restart local v1    # "success":Z
    :goto_25
    if-eqz v1, :cond_30

    .line 151
    iget-object v3, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget v3, v3, Landroid/util/Base64$Coder;->op:I

    iput v3, p0, Landroid/util/Base64InputStream;->outputEnd:I

    .line 152
    iput v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    .line 153
    return-void

    .line 149
    :cond_30
    new-instance v2, Landroid/util/Base64DataException;

    const-string v3, "bad base-64"

    invoke-direct {v2, v3}, Landroid/util/Base64DataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 3

    .line 94
    iget v0, p0, Landroid/util/Base64InputStream;->outputEnd:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Landroid/util/Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    .line 91
    return-void
.end method

.method public whitelist test-api mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_9

    .line 111
    invoke-direct {p0}, Landroid/util/Base64InputStream;->refill()V

    .line 113
    :cond_9
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_11

    .line 114
    const/4 v0, -0x1

    return v0

    .line 116
    :cond_11
    iget-object v0, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v0, v0, Landroid/util/Base64$Coder;->output:[B

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_9

    .line 122
    invoke-direct {p0}, Landroid/util/Base64InputStream;->refill()V

    .line 124
    :cond_9
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_11

    .line 125
    const/4 v0, -0x1

    return v0

    .line 127
    :cond_11
    iget v0, p0, Landroid/util/Base64InputStream;->outputEnd:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 128
    .local v0, "bytes":I
    iget-object v1, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v1, v1, Landroid/util/Base64$Coder;->output:[B

    iget v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    .line 130
    return v0
.end method

.method public whitelist test-api reset()V
    .registers 2

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .registers 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_9

    .line 99
    invoke-direct {p0}, Landroid/util/Base64InputStream;->refill()V

    .line 101
    :cond_9
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_12

    .line 102
    const-wide/16 v0, 0x0

    return-wide v0

    .line 104
    :cond_12
    iget v0, p0, Landroid/util/Base64InputStream;->outputEnd:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 105
    .local v0, "bytes":J
    iget v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    .line 106
    return-wide v0
.end method
