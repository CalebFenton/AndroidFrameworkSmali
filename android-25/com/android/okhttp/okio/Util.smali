.class final Lcom/android/okhttp/okio/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 22
    const-string/jumbo v0, "UTF-8"

    #@3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/android/okhttp/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    #@9
    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static arrayRangeEquals([BI[BII)Z
    .locals 3
    .param p0, "a"    # [B
    .param p1, "aOffset"    # I
    .param p2, "b"    # [B
    .param p3, "bOffset"    # I
    .param p4, "byteCount"    # I

    #@0
    .prologue
    .line 75
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    #@3
    .line 76
    add-int v1, v0, p1

    #@5
    aget-byte v1, p0, v1

    #@7
    add-int v2, v0, p3

    #@9
    aget-byte v2, p2, v2

    #@b
    if-eq v1, v2, :cond_0

    #@d
    const/4 v1, 0x0

    #@e
    return v1

    #@f
    .line 75
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 78
    :cond_1
    const/4 v1, 0x1

    #@13
    return v1
.end method

.method public static checkOffsetAndCount(JJJ)V
    .locals 6
    .param p0, "size"    # J
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    #@0
    .prologue
    .line 28
    or-long v0, p2, p4

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-ltz v0, :cond_0

    #@8
    cmp-long v0, p2, p0

    #@a
    if-lez v0, :cond_1

    #@c
    .line 29
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@e
    .line 30
    const-string/jumbo v1, "size=%s offset=%s byteCount=%s"

    #@11
    const/4 v2, 0x3

    #@12
    new-array v2, v2, [Ljava/lang/Object;

    #@14
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@17
    move-result-object v3

    #@18
    const/4 v4, 0x0

    #@19
    aput-object v3, v2, v4

    #@1b
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1e
    move-result-object v3

    #@1f
    const/4 v4, 0x1

    #@20
    aput-object v3, v2, v4

    #@22
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@25
    move-result-object v3

    #@26
    const/4 v4, 0x2

    #@27
    aput-object v3, v2, v4

    #@29
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 28
    :cond_1
    sub-long v0, p0, p2

    #@33
    cmp-long v0, v0, p4

    #@35
    if-ltz v0, :cond_0

    #@37
    .line 27
    return-void
.end method

.method public static reverseBytesInt(I)I
    .locals 2
    .param p0, "i"    # I

    #@0
    .prologue
    .line 42
    const/high16 v0, -0x1000000

    #@2
    and-int/2addr v0, p0

    #@3
    ushr-int/lit8 v0, v0, 0x18

    #@5
    .line 43
    const/high16 v1, 0xff0000

    #@7
    and-int/2addr v1, p0

    #@8
    ushr-int/lit8 v1, v1, 0x8

    #@a
    .line 42
    or-int/2addr v0, v1

    #@b
    .line 44
    const v1, 0xff00

    #@e
    and-int/2addr v1, p0

    #@f
    shl-int/lit8 v1, v1, 0x8

    #@11
    .line 42
    or-int/2addr v0, v1

    #@12
    .line 45
    and-int/lit16 v1, p0, 0xff

    #@14
    shl-int/lit8 v1, v1, 0x18

    #@16
    .line 42
    or-int/2addr v0, v1

    #@17
    return v0
.end method

.method public static reverseBytesLong(J)J
    .locals 8
    .param p0, "v"    # J

    #@0
    .prologue
    const/16 v7, 0x38

    #@2
    const/16 v6, 0x28

    #@4
    const/16 v5, 0x18

    #@6
    const/16 v4, 0x8

    #@8
    .line 49
    const-wide/high16 v0, -0x100000000000000L

    #@a
    and-long/2addr v0, p0

    #@b
    ushr-long/2addr v0, v7

    #@c
    .line 50
    const-wide/high16 v2, 0xff000000000000L

    #@e
    and-long/2addr v2, p0

    #@f
    ushr-long/2addr v2, v6

    #@10
    .line 49
    or-long/2addr v0, v2

    #@11
    .line 51
    const-wide v2, 0xff0000000000L

    #@16
    and-long/2addr v2, p0

    #@17
    ushr-long/2addr v2, v5

    #@18
    .line 49
    or-long/2addr v0, v2

    #@19
    .line 52
    const-wide v2, 0xff00000000L

    #@1e
    and-long/2addr v2, p0

    #@1f
    ushr-long/2addr v2, v4

    #@20
    .line 49
    or-long/2addr v0, v2

    #@21
    .line 53
    const-wide v2, 0xff000000L

    #@26
    and-long/2addr v2, p0

    #@27
    shl-long/2addr v2, v4

    #@28
    .line 49
    or-long/2addr v0, v2

    #@29
    .line 54
    const-wide/32 v2, 0xff0000

    #@2c
    and-long/2addr v2, p0

    #@2d
    shl-long/2addr v2, v5

    #@2e
    .line 49
    or-long/2addr v0, v2

    #@2f
    .line 55
    const-wide/32 v2, 0xff00

    #@32
    and-long/2addr v2, p0

    #@33
    shl-long/2addr v2, v6

    #@34
    .line 49
    or-long/2addr v0, v2

    #@35
    .line 56
    const-wide/16 v2, 0xff

    #@37
    and-long/2addr v2, p0

    #@38
    shl-long/2addr v2, v7

    #@39
    .line 49
    or-long/2addr v0, v2

    #@3a
    return-wide v0
.end method

.method public static reverseBytesShort(S)S
    .locals 4
    .param p0, "s"    # S

    #@0
    .prologue
    .line 35
    const v2, 0xffff

    #@3
    and-int v0, p0, v2

    #@5
    .line 36
    .local v0, "i":I
    const v2, 0xff00

    #@8
    and-int/2addr v2, v0

    #@9
    ushr-int/lit8 v2, v2, 0x8

    #@b
    .line 37
    and-int/lit16 v3, v0, 0xff

    #@d
    shl-int/lit8 v3, v3, 0x8

    #@f
    .line 36
    or-int v1, v2, v3

    #@11
    .line 38
    .local v1, "reversed":I
    int-to-short v2, v1

    #@12
    return v2
.end method

.method public static sneakyRethrow(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/okhttp/okio/Util;->sneakyThrow2(Ljava/lang/Throwable;)V

    #@3
    .line 64
    return-void
.end method

.method private static sneakyThrow2(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 70
    throw p0
.end method
