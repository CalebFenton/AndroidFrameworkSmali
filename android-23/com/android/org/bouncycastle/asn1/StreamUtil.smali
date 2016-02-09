.class Lcom/android/org/bouncycastle/asn1/StreamUtil;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static calculateBodyLength(I)I
    .locals 5
    .param p0, "length"    # I

    #@0
    .prologue
    .line 67
    const/4 v0, 0x1

    #@1
    .line 69
    .local v0, "count":I
    const/16 v4, 0x7f

    #@3
    if-le p0, v4, :cond_1

    #@5
    .line 71
    const/4 v2, 0x1

    #@6
    .line 72
    .local v2, "size":I
    move v3, p0

    #@7
    .line 74
    .local v3, "val":I
    :goto_0
    ushr-int/lit8 v3, v3, 0x8

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 76
    add-int/lit8 v2, v2, 0x1

    #@d
    goto :goto_0

    #@e
    .line 79
    :cond_0
    add-int/lit8 v4, v2, -0x1

    #@10
    mul-int/lit8 v1, v4, 0x8

    #@12
    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    #@14
    .line 81
    add-int/lit8 v0, v0, 0x1

    #@16
    .line 79
    add-int/lit8 v1, v1, -0x8

    #@18
    goto :goto_1

    #@19
    .line 85
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "val":I
    :cond_1
    return v0
.end method

.method static calculateTagLength(I)I
    .locals 4
    .param p0, "tagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    const/4 v0, 0x1

    #@1
    .line 93
    .local v0, "length":I
    const/16 v3, 0x1f

    #@3
    if-lt p0, v3, :cond_0

    #@5
    .line 95
    const/16 v3, 0x80

    #@7
    if-ge p0, v3, :cond_1

    #@9
    .line 97
    const/4 v0, 0x2

    #@a
    .line 117
    :cond_0
    :goto_0
    return v0

    #@b
    .line 101
    :cond_1
    const/4 v3, 0x5

    #@c
    new-array v2, v3, [B

    #@e
    .line 102
    .local v2, "stack":[B
    array-length v1, v2

    #@f
    .line 104
    .local v1, "pos":I
    add-int/lit8 v1, v1, -0x1

    #@11
    and-int/lit8 v3, p0, 0x7f

    #@13
    int-to-byte v3, v3

    #@14
    aput-byte v3, v2, v1

    #@16
    .line 108
    :cond_2
    shr-int/lit8 p0, p0, 0x7

    #@18
    .line 109
    add-int/lit8 v1, v1, -0x1

    #@1a
    and-int/lit8 v3, p0, 0x7f

    #@1c
    or-int/lit16 v3, v3, 0x80

    #@1e
    int-to-byte v3, v3

    #@1f
    aput-byte v3, v2, v1

    #@21
    .line 111
    const/16 v3, 0x7f

    #@23
    if-gt p0, v3, :cond_2

    #@25
    .line 113
    array-length v3, v2

    #@26
    sub-int/2addr v3, v1

    #@27
    add-int/lit8 v0, v3, 0x1

    #@29
    goto :goto_0
.end method

.method static findLimit(Ljava/io/InputStream;)I
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    const-wide/32 v8, 0x7fffffff

    #@3
    .line 23
    instance-of v6, p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;

    #@5
    if-eqz v6, :cond_0

    #@7
    .line 25
    check-cast p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;

    #@9
    .end local p0    # "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->getRemaining()I

    #@c
    move-result v6

    #@d
    return v6

    #@e
    .line 27
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_0
    instance-of v6, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@10
    if-eqz v6, :cond_1

    #@12
    .line 29
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@14
    .end local p0    # "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getLimit()I

    #@17
    move-result v6

    #@18
    return v6

    #@19
    .line 31
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_1
    instance-of v6, p0, Ljava/io/ByteArrayInputStream;

    #@1b
    if-eqz v6, :cond_2

    #@1d
    .line 33
    check-cast p0, Ljava/io/ByteArrayInputStream;

    #@1f
    .end local p0    # "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    #@22
    move-result v6

    #@23
    return v6

    #@24
    .line 35
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_2
    instance-of v6, p0, Ljava/io/FileInputStream;

    #@26
    if-eqz v6, :cond_4

    #@28
    .line 39
    :try_start_0
    check-cast p0, Ljava/io/FileInputStream;

    #@2a
    .end local p0    # "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    #@2d
    move-result-object v0

    #@2e
    .line 40
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    if-eqz v0, :cond_3

    #@30
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    move-result-wide v4

    #@34
    .line 42
    .local v4, "size":J
    :goto_0
    cmp-long v6, v4, v8

    #@36
    if-gez v6, :cond_4

    #@38
    .line 44
    long-to-int v6, v4

    #@39
    return v6

    #@3a
    .line 40
    .end local v4    # "size":J
    :cond_3
    const-wide/32 v4, 0x7fffffff

    #@3d
    .restart local v4    # "size":J
    goto :goto_0

    #@3e
    .line 48
    .end local v4    # "size":J
    :catch_0
    move-exception v1

    #@3f
    .line 54
    .local v1, "e":Ljava/io/IOException;
    :cond_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    #@46
    move-result-wide v2

    #@47
    .line 55
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v1    # "e":Ljava/io/IOException;
    .local v2, "maxMemory":J
    cmp-long v6, v2, v8

    #@49
    if-lez v6, :cond_5

    #@4b
    .line 57
    const v6, 0x7fffffff

    #@4e
    return v6

    #@4f
    .line 60
    :cond_5
    long-to-int v6, v2

    #@50
    return v6
.end method
