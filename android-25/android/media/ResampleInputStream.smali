.class public final Landroid/media/ResampleInputStream;
.super Ljava/io/InputStream;
.source "ResampleInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResampleInputStream"

.field private static final mFirLength:I = 0x1d


# instance fields
.field private mBuf:[B

.field private mBufCount:I

.field private mInputStream:Ljava/io/InputStream;

.field private final mOneByte:[B

.field private final mRateIn:I

.field private final mRateOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 30
    const-string/jumbo v0, "media_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "rateIn"    # I
    .param p3, "rateOut"    # I

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v1, 0x1

    #@2
    .line 59
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@5
    .line 50
    new-array v0, v1, [B

    #@7
    iput-object v0, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    #@9
    .line 61
    mul-int/lit8 v0, p3, 0x2

    #@b
    if-eq p2, v0, :cond_0

    #@d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "only support 2:1 at the moment"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 65
    :cond_0
    iput-object p1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    #@18
    .line 66
    iput v2, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    #@1a
    .line 67
    iput v1, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    #@1c
    .line 59
    return-void
.end method

.method private static native fir21([BI[BII)V
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 130
    :try_start_0
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    #@7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 132
    :cond_0
    iput-object v1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    #@c
    .line 128
    return-void

    #@d
    .line 131
    :catchall_0
    move-exception v0

    #@e
    .line 132
    iput-object v1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    #@10
    .line 131
    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 139
    invoke-virtual {p0}, Landroid/media/ResampleInputStream;->close()V

    #@7
    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "someone forgot to close ResampleInputStream"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 137
    :cond_0
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
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 72
    iget-object v1, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    #@4
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/ResampleInputStream;->read([BII)I

    #@7
    move-result v0

    #@8
    .line 73
    .local v0, "rtn":I
    if-ne v0, v3, :cond_0

    #@a
    iget-object v1, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    #@c
    aget-byte v1, v1, v2

    #@e
    and-int/lit16 v1, v1, 0xff

    #@10
    :goto_0
    return v1

    #@11
    :cond_0
    const/4 v1, -0x1

    #@12
    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Landroid/media/ResampleInputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
    .locals 12
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, -0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 83
    iget-object v5, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    #@4
    if-nez v5, :cond_0

    #@6
    new-instance v5, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v6, "not open"

    #@b
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v5

    #@f
    .line 86
    :cond_0
    div-int/lit8 v5, p3, 0x2

    #@11
    iget v6, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    #@13
    mul-int/2addr v5, v6

    #@14
    iget v6, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    #@16
    div-int/2addr v5, v6

    #@17
    add-int/lit8 v5, v5, 0x1d

    #@19
    mul-int/lit8 v4, v5, 0x2

    #@1b
    .line 87
    .local v4, "nIn":I
    iget-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    #@1d
    if-nez v5, :cond_3

    #@1f
    .line 88
    new-array v5, v4, [B

    #@21
    iput-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    #@23
    .line 97
    :cond_1
    :goto_0
    iget v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    #@25
    div-int/lit8 v5, v5, 0x2

    #@27
    add-int/lit8 v5, v5, -0x1d

    #@29
    iget v6, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    #@2b
    mul-int/2addr v5, v6

    #@2c
    iget v6, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    #@2e
    div-int/2addr v5, v6

    #@2f
    mul-int/lit8 v1, v5, 0x2

    #@31
    .line 98
    .local v1, "len":I
    if-lez v1, :cond_5

    #@33
    .line 99
    if-ge v1, p3, :cond_4

    #@35
    move p3, v1

    #@36
    .line 109
    :goto_1
    iget-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    #@38
    div-int/lit8 v6, p3, 0x2

    #@3a
    invoke-static {v5, v10, p1, p2, v6}, Landroid/media/ResampleInputStream;->fir21([BI[BII)V

    #@3d
    .line 112
    iget v5, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    #@3f
    mul-int/2addr v5, p3

    #@40
    iget v6, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    #@42
    div-int v3, v5, v6

    #@44
    .line 113
    .local v3, "nFwd":I
    iget v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    #@46
    sub-int/2addr v5, v3

    #@47
    iput v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    #@49
    .line 114
    iget v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    #@4b
    if-lez v5, :cond_2

    #@4d
    iget-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    #@4f
    iget-object v6, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    #@51
    iget v7, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    #@53
    invoke-static {v5, v3, v6, v10, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@56
    .line 116
    :cond_2
    return p3

    #@57
    .line 89
    .end local v1    # "len":I
    .end local v3    # "nFwd":I
    :cond_3
    iget-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    #@59
    array-length v5, v5

    #@5a
    if-le v4, v5, :cond_1

    #@5c
    .line 90
    new-array v0, v4, [B

    #@5e
    .line 91
    .local v0, "bf":[B
    iget-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    #@60
    iget v6, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    #@62
    invoke-static {v5, v10, v0, v10, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@65
    .line 92
    iput-object v0, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    #@67
    goto :goto_0

    #@68
    .line 99
    .end local v0    # "bf":[B
    .restart local v1    # "len":I
    :cond_4
    div-int/lit8 v5, p3, 0x2

    #@6a
    mul-int/lit8 p3, v5, 0x2

    #@6c
    goto :goto_1

    #@6d
    .line 103
    :cond_5
    iget-object v5, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    #@6f
    iget-object v6, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    #@71
    iget v7, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    #@73
    iget-object v8, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    #@75
    array-length v8, v8

    #@76
    iget v9, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    #@78
    sub-int/2addr v8, v9

    #@79
    invoke-virtual {v5, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    #@7c
    move-result v2

    #@7d
    .line 104
    .local v2, "n":I
    if-ne v2, v11, :cond_6

    #@7f
    return v11

    #@80
    .line 105
    :cond_6
    iget v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    #@82
    add-int/2addr v5, v2

    #@83
    iput v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    #@85
    goto :goto_0
.end method
