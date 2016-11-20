.class public final Landroid/media/AmrInputStream;
.super Ljava/io/InputStream;
.source "AmrInputStream.java"


# static fields
.field private static final SAMPLES_PER_FRAME:I = 0xa0

.field private static final TAG:Ljava/lang/String; = "AmrInputStream"


# instance fields
.field private final mBuf:[B

.field private mBufIn:I

.field private mBufOut:I

.field private mGae:J

.field private mInputStream:Ljava/io/InputStream;

.field private mOneByte:[B


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

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 56
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@4
    .line 45
    const/16 v0, 0x140

    #@6
    new-array v0, v0, [B

    #@8
    iput-object v0, p0, Landroid/media/AmrInputStream;->mBuf:[B

    #@a
    .line 46
    iput v1, p0, Landroid/media/AmrInputStream;->mBufIn:I

    #@c
    .line 47
    iput v1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    #@e
    .line 50
    const/4 v0, 0x1

    #@f
    new-array v0, v0, [B

    #@11
    iput-object v0, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    #@13
    .line 57
    iput-object p1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    #@15
    .line 58
    invoke-static {}, Landroid/media/AmrInputStream;->GsmAmrEncoderNew()J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    #@1b
    .line 59
    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    #@1d
    invoke-static {v0, v1}, Landroid/media/AmrInputStream;->GsmAmrEncoderInitialize(J)V

    #@20
    .line 56
    return-void
.end method

.method private static native GsmAmrEncoderCleanup(J)V
.end method

.method private static native GsmAmrEncoderDelete(J)V
.end method

.method private static native GsmAmrEncoderEncode(J[BI[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native GsmAmrEncoderInitialize(J)V
.end method

.method private static native GsmAmrEncoderNew()J
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
    const/4 v1, 0x0

    #@1
    const-wide/16 v4, 0x0

    #@3
    .line 105
    :try_start_0
    iget-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    #@9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    #@c
    .line 107
    :cond_0
    iput-object v1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    #@e
    .line 109
    :try_start_1
    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    #@10
    cmp-long v0, v0, v4

    #@12
    if-eqz v0, :cond_1

    #@14
    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    #@16
    invoke-static {v0, v1}, Landroid/media/AmrInputStream;->GsmAmrEncoderCleanup(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@19
    .line 112
    :cond_1
    :try_start_2
    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    #@1b
    cmp-long v0, v0, v4

    #@1d
    if-eqz v0, :cond_2

    #@1f
    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    #@21
    invoke-static {v0, v1}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@24
    .line 114
    :cond_2
    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    #@26
    .line 103
    return-void

    #@27
    .line 113
    :catchall_0
    move-exception v0

    #@28
    .line 114
    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    #@2a
    .line 113
    throw v0

    #@2b
    .line 110
    :catchall_1
    move-exception v0

    #@2c
    .line 112
    :try_start_3
    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    #@2e
    cmp-long v1, v2, v4

    #@30
    if-eqz v1, :cond_3

    #@32
    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    #@34
    invoke-static {v2, v3}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@37
    .line 114
    :cond_3
    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    #@39
    .line 110
    throw v0

    #@3a
    .line 113
    :catchall_2
    move-exception v0

    #@3b
    .line 114
    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    #@3d
    .line 113
    throw v0

    #@3e
    .line 106
    :catchall_3
    move-exception v0

    #@3f
    .line 107
    iput-object v1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    #@41
    .line 109
    :try_start_4
    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    #@43
    cmp-long v1, v2, v4

    #@45
    if-eqz v1, :cond_4

    #@47
    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    #@49
    invoke-static {v2, v3}, Landroid/media/AmrInputStream;->GsmAmrEncoderCleanup(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    #@4c
    .line 112
    :cond_4
    :try_start_5
    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    #@4e
    cmp-long v1, v2, v4

    #@50
    if-eqz v1, :cond_5

    #@52
    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    #@54
    invoke-static {v2, v3}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@57
    .line 114
    :cond_5
    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    #@59
    .line 106
    throw v0

    #@5a
    .line 113
    :catchall_4
    move-exception v0

    #@5b
    .line 114
    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    #@5d
    .line 113
    throw v0

    #@5e
    .line 110
    :catchall_5
    move-exception v0

    #@5f
    .line 112
    :try_start_6
    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    #@61
    cmp-long v1, v2, v4

    #@63
    if-eqz v1, :cond_6

    #@65
    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    #@67
    invoke-static {v2, v3}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    #@6a
    .line 114
    :cond_6
    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    #@6c
    .line 110
    throw v0

    #@6d
    .line 113
    :catchall_6
    move-exception v0

    #@6e
    .line 114
    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    #@70
    .line 113
    throw v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 123
    invoke-virtual {p0}, Landroid/media/AmrInputStream;->close()V

    #@b
    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    const-string/jumbo v1, "someone forgot to close AmrInputStream"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 121
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
    .line 64
    iget-object v1, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    #@4
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/AmrInputStream;->read([BII)I

    #@7
    move-result v0

    #@8
    .line 65
    .local v0, "rtn":I
    if-ne v0, v3, :cond_0

    #@a
    iget-object v1, p0, Landroid/media/AmrInputStream;->mOneByte:[B

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
    .line 70
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Landroid/media/AmrInputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
    .locals 9
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
    const/4 v8, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 75
    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    #@4
    const-wide/16 v4, 0x0

    #@6
    cmp-long v0, v0, v4

    #@8
    if-nez v0, :cond_0

    #@a
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v1, "not open"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 78
    :cond_0
    iget v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    #@15
    iget v1, p0, Landroid/media/AmrInputStream;->mBufIn:I

    #@17
    if-lt v0, v1, :cond_3

    #@19
    .line 80
    iput v3, p0, Landroid/media/AmrInputStream;->mBufOut:I

    #@1b
    .line 81
    iput v3, p0, Landroid/media/AmrInputStream;->mBufIn:I

    #@1d
    .line 84
    const/4 v6, 0x0

    #@1e
    .local v6, "i":I
    :goto_0
    const/16 v0, 0x140

    #@20
    if-ge v6, v0, :cond_2

    #@22
    .line 85
    iget-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    #@24
    iget-object v1, p0, Landroid/media/AmrInputStream;->mBuf:[B

    #@26
    rsub-int v2, v6, 0x140

    #@28
    invoke-virtual {v0, v1, v6, v2}, Ljava/io/InputStream;->read([BII)I

    #@2b
    move-result v7

    #@2c
    .line 86
    .local v7, "n":I
    if-ne v7, v8, :cond_1

    #@2e
    return v8

    #@2f
    .line 87
    :cond_1
    add-int/2addr v6, v7

    #@30
    goto :goto_0

    #@31
    .line 91
    .end local v7    # "n":I
    :cond_2
    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    #@33
    iget-object v2, p0, Landroid/media/AmrInputStream;->mBuf:[B

    #@35
    iget-object v4, p0, Landroid/media/AmrInputStream;->mBuf:[B

    #@37
    move v5, v3

    #@38
    invoke-static/range {v0 .. v5}, Landroid/media/AmrInputStream;->GsmAmrEncoderEncode(J[BI[BI)I

    #@3b
    move-result v0

    #@3c
    iput v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    #@3e
    .line 95
    .end local v6    # "i":I
    :cond_3
    iget v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    #@40
    iget v1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    #@42
    sub-int/2addr v0, v1

    #@43
    if-le p3, v0, :cond_4

    #@45
    iget v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    #@47
    iget v1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    #@49
    sub-int p3, v0, v1

    #@4b
    .line 96
    :cond_4
    iget-object v0, p0, Landroid/media/AmrInputStream;->mBuf:[B

    #@4d
    iget v1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    #@4f
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@52
    .line 97
    iget v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    #@54
    add-int/2addr v0, p3

    #@55
    iput v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    #@57
    .line 99
    return p3
.end method
