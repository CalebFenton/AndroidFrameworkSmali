.class public Lsun/misc/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist readFully(Ljava/io/InputStream;IZ)[B
    .registers 9
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .param p2, "readAll"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 53
    .local v0, "output":[B
    const/4 v1, -0x1

    if-ne p1, v1, :cond_9

    const p1, 0x7fffffff

    .line 54
    :cond_9
    const/4 v1, 0x0

    .line 55
    .local v1, "pos":I
    :goto_a
    if-ge v1, p1, :cond_46

    .line 57
    array-length v2, v0

    if-lt v1, v2, :cond_24

    .line 58
    sub-int v2, p1, v1

    array-length v3, v0

    add-int/lit16 v3, v3, 0x400

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 59
    .local v2, "bytesToRead":I
    array-length v3, v0

    add-int v4, v1, v2

    if-ge v3, v4, :cond_26

    .line 60
    add-int v3, v1, v2

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_26

    .line 63
    .end local v2    # "bytesToRead":I
    :cond_24
    array-length v2, v0

    sub-int/2addr v2, v1

    .line 65
    .restart local v2    # "bytesToRead":I
    :cond_26
    :goto_26
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 66
    .local v3, "cc":I
    if-gez v3, :cond_44

    .line 67
    if-eqz p2, :cond_3c

    const v4, 0x7fffffff

    if-ne p1, v4, :cond_34

    goto :goto_3c

    .line 68
    :cond_34
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "Detect premature EOF"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 70
    :cond_3c
    :goto_3c
    array-length v4, v0

    if-eq v4, v1, :cond_46

    .line 71
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_46

    .line 76
    :cond_44
    add-int/2addr v1, v3

    .line 77
    .end local v2    # "bytesToRead":I
    .end local v3    # "cc":I
    goto :goto_a

    .line 78
    :cond_46
    :goto_46
    return-object v0
.end method
