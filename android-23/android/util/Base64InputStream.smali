.class public Landroid/util/Base64InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64InputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static EMPTY:[B


# instance fields
.field private final coder:Landroid/util/Base64$Coder;

.field private eof:Z

.field private inputBuffer:[B

.field private outputEnd:I

.field private outputStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 30
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [B

    #@3
    sput-object v0, Landroid/util/Base64InputStream;->EMPTY:[B

    #@5
    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 47
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;IZ)V

    #@4
    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "flags"    # I
    .param p3, "encode"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/16 v3, 0x800

    #@3
    const/4 v2, 0x0

    #@4
    .line 62
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@7
    .line 63
    iput-boolean v2, p0, Landroid/util/Base64InputStream;->eof:Z

    #@9
    .line 64
    new-array v0, v3, [B

    #@b
    iput-object v0, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    #@d
    .line 65
    if-eqz p3, :cond_0

    #@f
    .line 66
    new-instance v0, Landroid/util/Base64$Encoder;

    #@11
    invoke-direct {v0, p2, v1}, Landroid/util/Base64$Encoder;-><init>(I[B)V

    #@14
    iput-object v0, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    #@16
    .line 70
    :goto_0
    iget-object v0, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    #@18
    iget-object v1, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    #@1a
    invoke-virtual {v1, v3}, Landroid/util/Base64$Coder;->maxOutputSize(I)I

    #@1d
    move-result v1

    #@1e
    new-array v1, v1, [B

    #@20
    iput-object v1, v0, Landroid/util/Base64$Coder;->output:[B

    #@22
    .line 71
    iput v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    #@24
    .line 72
    iput v2, p0, Landroid/util/Base64InputStream;->outputEnd:I

    #@26
    .line 61
    return-void

    #@27
    .line 68
    :cond_0
    new-instance v0, Landroid/util/Base64$Decoder;

    #@29
    invoke-direct {v0, p2, v1}, Landroid/util/Base64$Decoder;-><init>(I[B)V

    #@2c
    iput-object v0, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    #@2e
    goto :goto_0
.end method

.method private refill()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 138
    iget-boolean v2, p0, Landroid/util/Base64InputStream;->eof:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    return-void

    #@7
    .line 139
    :cond_0
    iget-object v2, p0, Landroid/util/Base64InputStream;->in:Ljava/io/InputStream;

    #@9
    iget-object v3, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    #@b
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    #@e
    move-result v0

    #@f
    .line 141
    .local v0, "bytesRead":I
    const/4 v2, -0x1

    #@10
    if-ne v0, v2, :cond_1

    #@12
    .line 142
    iput-boolean v5, p0, Landroid/util/Base64InputStream;->eof:Z

    #@14
    .line 143
    iget-object v2, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    #@16
    sget-object v3, Landroid/util/Base64InputStream;->EMPTY:[B

    #@18
    invoke-virtual {v2, v3, v4, v4, v5}, Landroid/util/Base64$Coder;->process([BIIZ)Z

    #@1b
    move-result v1

    #@1c
    .line 147
    .local v1, "success":Z
    :goto_0
    if-nez v1, :cond_2

    #@1e
    .line 148
    new-instance v2, Landroid/util/Base64DataException;

    #@20
    const-string/jumbo v3, "bad base-64"

    #@23
    invoke-direct {v2, v3}, Landroid/util/Base64DataException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 145
    .end local v1    # "success":Z
    :cond_1
    iget-object v2, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    #@29
    iget-object v3, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    #@2b
    invoke-virtual {v2, v3, v4, v0, v4}, Landroid/util/Base64$Coder;->process([BIIZ)Z

    #@2e
    move-result v1

    #@2f
    .restart local v1    # "success":Z
    goto :goto_0

    #@30
    .line 150
    :cond_2
    iget-object v2, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    #@32
    iget v2, v2, Landroid/util/Base64$Coder;->op:I

    #@34
    iput v2, p0, Landroid/util/Base64InputStream;->outputEnd:I

    #@36
    .line 151
    iput v4, p0, Landroid/util/Base64InputStream;->outputStart:I

    #@38
    .line 137
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    #@0
    .prologue
    .line 93
    iget v0, p0, Landroid/util/Base64InputStream;->outputEnd:I

    #@2
    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Landroid/util/Base64InputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@5
    .line 89
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    #@8
    .line 87
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    #@0
    .prologue
    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 76
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    #@2
    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 110
    invoke-direct {p0}, Landroid/util/Base64InputStream;->refill()V

    #@9
    .line 112
    :cond_0
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    #@b
    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    #@d
    if-lt v0, v1, :cond_1

    #@f
    .line 113
    const/4 v0, -0x1

    #@10
    return v0

    #@11
    .line 115
    :cond_1
    iget-object v0, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    #@13
    iget-object v0, v0, Landroid/util/Base64$Coder;->output:[B

    #@15
    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    #@17
    add-int/lit8 v2, v1, 0x1

    #@19
    iput v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    #@1b
    aget-byte v0, v0, v1

    #@1d
    and-int/lit16 v0, v0, 0xff

    #@1f
    return v0
.end method

.method public read([BII)I
    .locals 3
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
    .line 120
    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    #@2
    iget v2, p0, Landroid/util/Base64InputStream;->outputEnd:I

    #@4
    if-lt v1, v2, :cond_0

    #@6
    .line 121
    invoke-direct {p0}, Landroid/util/Base64InputStream;->refill()V

    #@9
    .line 123
    :cond_0
    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    #@b
    iget v2, p0, Landroid/util/Base64InputStream;->outputEnd:I

    #@d
    if-lt v1, v2, :cond_1

    #@f
    .line 124
    const/4 v1, -0x1

    #@10
    return v1

    #@11
    .line 126
    :cond_1
    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    #@13
    iget v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    #@15
    sub-int/2addr v1, v2

    #@16
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    #@19
    move-result v0

    #@1a
    .line 127
    .local v0, "bytes":I
    iget-object v1, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    #@1c
    iget-object v1, v1, Landroid/util/Base64$Coder;->output:[B

    #@1e
    iget v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    #@20
    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@23
    .line 128
    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    #@25
    add-int/2addr v1, v0

    #@26
    iput v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    #@28
    .line 129
    return v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public skip(J)J
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    iget v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    #@2
    iget v3, p0, Landroid/util/Base64InputStream;->outputEnd:I

    #@4
    if-lt v2, v3, :cond_0

    #@6
    .line 98
    invoke-direct {p0}, Landroid/util/Base64InputStream;->refill()V

    #@9
    .line 100
    :cond_0
    iget v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    #@b
    iget v3, p0, Landroid/util/Base64InputStream;->outputEnd:I

    #@d
    if-lt v2, v3, :cond_1

    #@f
    .line 101
    const-wide/16 v2, 0x0

    #@11
    return-wide v2

    #@12
    .line 103
    :cond_1
    iget v2, p0, Landroid/util/Base64InputStream;->outputEnd:I

    #@14
    iget v3, p0, Landroid/util/Base64InputStream;->outputStart:I

    #@16
    sub-int/2addr v2, v3

    #@17
    int-to-long v2, v2

    #@18
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@1b
    move-result-wide v0

    #@1c
    .line 104
    .local v0, "bytes":J
    iget v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    #@1e
    int-to-long v2, v2

    #@1f
    add-long/2addr v2, v0

    #@20
    long-to-int v2, v2

    #@21
    iput v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    #@23
    .line 105
    return-wide v0
.end method
