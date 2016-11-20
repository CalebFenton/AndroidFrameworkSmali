.class Landroid/os/MemoryFile$MemoryInputStream;
.super Ljava/io/InputStream;
.source "MemoryFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MemoryFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryInputStream"
.end annotation


# instance fields
.field private mMark:I

.field private mOffset:I

.field private mSingleByte:[B

.field final synthetic this$0:Landroid/os/MemoryFile;


# direct methods
.method private constructor <init>(Landroid/os/MemoryFile;)V
    .locals 1
    .param p1, "this$0"    # Landroid/os/MemoryFile;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 261
    iput-object p1, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    #@3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@6
    .line 263
    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mMark:I

    #@8
    .line 264
    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    #@a
    .line 261
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$MemoryInputStream;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/MemoryFile;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/os/MemoryFile$MemoryInputStream;-><init>(Landroid/os/MemoryFile;)V

    #@3
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
    .line 269
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    #@2
    iget-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    #@4
    invoke-static {v1}, Landroid/os/MemoryFile;->-get0(Landroid/os/MemoryFile;)I

    #@7
    move-result v1

    #@8
    if-lt v0, v1, :cond_0

    #@a
    .line 270
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 272
    :cond_0
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    #@e
    invoke-static {v0}, Landroid/os/MemoryFile;->-get0(Landroid/os/MemoryFile;)I

    #@11
    move-result v0

    #@12
    iget v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    #@14
    sub-int/2addr v0, v1

    #@15
    return v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    #@0
    .prologue
    .line 282
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    #@2
    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mMark:I

    #@4
    .line 281
    return-void
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 277
    const/4 v0, 0x1

    #@1
    return v0
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
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 292
    iget-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mSingleByte:[B

    #@4
    if-nez v1, :cond_0

    #@6
    .line 293
    new-array v1, v2, [B

    #@8
    iput-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mSingleByte:[B

    #@a
    .line 295
    :cond_0
    iget-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mSingleByte:[B

    #@c
    invoke-virtual {p0, v1, v3, v2}, Landroid/os/MemoryFile$MemoryInputStream;->read([BII)I

    #@f
    move-result v0

    #@10
    .line 296
    .local v0, "result":I
    if-eq v0, v2, :cond_1

    #@12
    .line 297
    const/4 v1, -0x1

    #@13
    return v1

    #@14
    .line 299
    :cond_1
    iget-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mSingleByte:[B

    #@16
    aget-byte v1, v1, v3

    #@18
    return v1
.end method

.method public read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 304
    if-ltz p2, :cond_0

    #@2
    if-gez p3, :cond_1

    #@4
    .line 307
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v1

    #@a
    .line 304
    :cond_1
    add-int v1, p2, p3

    #@c
    array-length v2, p1

    #@d
    if-gt v1, v2, :cond_0

    #@f
    .line 309
    invoke-virtual {p0}, Landroid/os/MemoryFile$MemoryInputStream;->available()I

    #@12
    move-result v1

    #@13
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    #@16
    move-result p3

    #@17
    .line 310
    const/4 v1, 0x1

    #@18
    if-ge p3, v1, :cond_2

    #@1a
    .line 311
    const/4 v1, -0x1

    #@1b
    return v1

    #@1c
    .line 313
    :cond_2
    iget-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    #@1e
    iget v2, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    #@20
    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/os/MemoryFile;->readBytes([BIII)I

    #@23
    move-result v0

    #@24
    .line 314
    .local v0, "result":I
    if-lez v0, :cond_3

    #@26
    .line 315
    iget v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    #@28
    add-int/2addr v1, v0

    #@29
    iput v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    #@2b
    .line 317
    :cond_3
    return v0
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
    .line 287
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mMark:I

    #@2
    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    #@4
    .line 286
    return-void
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
    .line 322
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    #@2
    int-to-long v0, v0

    #@3
    add-long/2addr v0, p1

    #@4
    iget-object v2, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    #@6
    invoke-static {v2}, Landroid/os/MemoryFile;->-get0(Landroid/os/MemoryFile;)I

    #@9
    move-result v2

    #@a
    int-to-long v2, v2

    #@b
    cmp-long v0, v0, v2

    #@d
    if-lez v0, :cond_0

    #@f
    .line 323
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    #@11
    invoke-static {v0}, Landroid/os/MemoryFile;->-get0(Landroid/os/MemoryFile;)I

    #@14
    move-result v0

    #@15
    iget v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    #@17
    sub-int/2addr v0, v1

    #@18
    int-to-long p1, v0

    #@19
    .line 325
    :cond_0
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    #@1b
    int-to-long v0, v0

    #@1c
    add-long/2addr v0, p1

    #@1d
    long-to-int v0, v0

    #@1e
    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    #@20
    .line 326
    return-wide p1
.end method
