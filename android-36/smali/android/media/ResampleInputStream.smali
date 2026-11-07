.class public final Landroid/media/ResampleInputStream;
.super Ljava/io/InputStream;
.source "ResampleInputStream.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ResampleInputStream"

.field private static final greylist-max-o mFirLength:I = 0x1d


# instance fields
.field private greylist-max-o mBuf:[B

.field private greylist-max-o mBufCount:I

.field private greylist-max-o mInputStream:Ljava/io/InputStream;

.field private final greylist-max-o mOneByte:[B

.field private final greylist-max-o mRateIn:I

.field private final greylist-max-o mRateOut:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/InputStream;II)V
    .registers 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "rateIn"    # I
    .param p3, "rateOut"    # I

    .line 59
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    .line 61
    mul-int/lit8 v0, p3, 0x2

    if-ne p2, v0, :cond_15

    .line 62
    const/4 p2, 0x2

    .line 63
    const/4 p3, 0x1

    .line 65
    iput-object p1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    .line 66
    iput p2, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    .line 67
    iput p3, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    .line 68
    return-void

    .line 61
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only support 2:1 at the moment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native greylist-max-o fir21([BI[BII)V
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    .line 132
    :cond_a
    iput-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    .line 133
    nop

    .line 134
    return-void

    .line 132
    :catchall_e
    move-exception v1

    iput-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    .line 133
    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_5

    .line 142
    return-void

    .line 139
    :cond_5
    invoke-virtual {p0}, Landroid/media/ResampleInputStream;->close()V

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "someone forgot to close ResampleInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/ResampleInputStream;->read([BII)I

    move-result v0

    .line 73
    .local v0, "rtn":I
    if-ne v0, v2, :cond_11

    iget-object v2, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    goto :goto_12

    :cond_11
    const/4 v1, -0x1

    :goto_12
    return v1
.end method

.method public whitelist test-api read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/ResampleInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 12
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_7d

    .line 86
    div-int/lit8 v0, p3, 0x2

    iget v1, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1d

    mul-int/lit8 v0, v0, 0x2

    .line 87
    .local v0, "nIn":I
    iget-object v1, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    .line 88
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    goto :goto_2a

    .line 89
    :cond_1a
    iget-object v1, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    array-length v1, v1

    if-le v0, v1, :cond_2a

    .line 90
    new-array v1, v0, [B

    .line 91
    .local v1, "bf":[B
    iget-object v3, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v4, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iput-object v1, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    .line 97
    .end local v1    # "bf":[B
    :cond_2a
    :goto_2a
    iget v1, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1d

    iget v3, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    mul-int/2addr v1, v3

    iget v3, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    div-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x2

    .line 98
    .local v1, "len":I
    if-lez v1, :cond_63

    .line 99
    if-ge v1, p3, :cond_3e

    move v3, v1

    goto :goto_42

    :cond_3e
    div-int/lit8 v3, p3, 0x2

    mul-int/lit8 v3, v3, 0x2

    .line 100
    .end local p3    # "length":I
    .local v3, "length":I
    :goto_42
    nop

    .line 109
    .end local v1    # "len":I
    iget-object p3, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    div-int/lit8 v1, v3, 0x2

    invoke-static {p3, v2, p1, p2, v1}, Landroid/media/ResampleInputStream;->fir21([BI[BII)V

    .line 112
    iget p3, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    mul-int/2addr p3, v3

    iget v1, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    div-int/2addr p3, v1

    .line 113
    .local p3, "nFwd":I
    iget v1, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    sub-int/2addr v1, p3

    iput v1, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    .line 114
    iget v1, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    if-lez v1, :cond_62

    iget-object v1, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget-object v4, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    invoke-static {v1, p3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    :cond_62
    return v3

    .line 103
    .end local v3    # "length":I
    .restart local v1    # "len":I
    .local p3, "length":I
    :cond_63
    iget-object v3, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v4, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    iget-object v6, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    array-length v6, v6

    iget v7, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 104
    .local v3, "n":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_77

    return v4

    .line 105
    :cond_77
    iget v4, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    add-int/2addr v4, v3

    iput v4, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    .line 106
    .end local v1    # "len":I
    .end local v3    # "n":I
    goto :goto_2a

    .line 83
    .end local v0    # "nIn":I
    :cond_7d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
