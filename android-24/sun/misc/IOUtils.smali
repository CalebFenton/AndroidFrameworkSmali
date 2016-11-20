.class public Lsun/misc/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;IZ)[B
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .param p2, "readAll"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 52
    new-array v2, v4, [B

    #@3
    .line 53
    .local v2, "output":[B
    const/4 v4, -0x1

    #@4
    if-ne p1, v4, :cond_0

    #@6
    const p1, 0x7fffffff

    #@9
    .line 54
    :cond_0
    const/4 v3, 0x0

    #@a
    .line 55
    .local v3, "pos":I
    :goto_0
    if-ge v3, p1, :cond_4

    #@c
    .line 57
    array-length v4, v2

    #@d
    if-lt v3, v4, :cond_2

    #@f
    .line 58
    sub-int v4, p1, v3

    #@11
    array-length v5, v2

    #@12
    add-int/lit16 v5, v5, 0x400

    #@14
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@17
    move-result v0

    #@18
    .line 59
    .local v0, "bytesToRead":I
    array-length v4, v2

    #@19
    add-int v5, v3, v0

    #@1b
    if-ge v4, v5, :cond_1

    #@1d
    .line 60
    add-int v4, v3, v0

    #@1f
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    #@22
    move-result-object v2

    #@23
    .line 65
    :cond_1
    :goto_1
    invoke-virtual {p0, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    #@26
    move-result v1

    #@27
    .line 66
    .local v1, "cc":I
    if-gez v1, :cond_5

    #@29
    .line 67
    if-eqz p2, :cond_3

    #@2b
    const v4, 0x7fffffff

    #@2e
    if-eq p1, v4, :cond_3

    #@30
    .line 68
    new-instance v4, Ljava/io/EOFException;

    #@32
    const-string/jumbo v5, "Detect premature EOF"

    #@35
    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@38
    throw v4

    #@39
    .line 63
    .end local v0    # "bytesToRead":I
    .end local v1    # "cc":I
    :cond_2
    array-length v4, v2

    #@3a
    sub-int v0, v4, v3

    #@3c
    .restart local v0    # "bytesToRead":I
    goto :goto_1

    #@3d
    .line 70
    .restart local v1    # "cc":I
    :cond_3
    array-length v4, v2

    #@3e
    if-eq v4, v3, :cond_4

    #@40
    .line 71
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    #@43
    move-result-object v2

    #@44
    .line 78
    .end local v0    # "bytesToRead":I
    .end local v1    # "cc":I
    :cond_4
    return-object v2

    #@45
    .line 76
    .restart local v0    # "bytesToRead":I
    .restart local v1    # "cc":I
    :cond_5
    add-int/2addr v3, v1

    #@46
    goto :goto_0
.end method
