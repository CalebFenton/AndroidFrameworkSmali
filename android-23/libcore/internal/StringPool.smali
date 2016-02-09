.class public final Llibcore/internal/StringPool;
.super Ljava/lang/Object;
.source "StringPool.java"


# instance fields
.field private final pool:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    const/16 v0, 0x200

    #@5
    new-array v0, v0, [Ljava/lang/String;

    #@7
    iput-object v0, p0, Llibcore/internal/StringPool;->pool:[Ljava/lang/String;

    #@9
    .line 24
    return-void
.end method

.method private static contentEquals(Ljava/lang/String;[CII)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    if-eq v1, p3, :cond_0

    #@7
    .line 30
    return v3

    #@8
    .line 32
    :cond_0
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    #@b
    .line 33
    add-int v1, p2, v0

    #@d
    aget-char v1, p1, v1

    #@f
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v2

    #@13
    if-eq v1, v2, :cond_1

    #@15
    .line 34
    return v3

    #@16
    .line 32
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 37
    :cond_2
    const/4 v1, 0x1

    #@1a
    return v1
.end method


# virtual methods
.method public get([CII)Ljava/lang/String;
    .locals 7
    .param p1, "array"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 45
    const/4 v0, 0x0

    #@1
    .line 46
    .local v0, "hashCode":I
    move v1, p2

    #@2
    .local v1, "i":I
    :goto_0
    add-int v5, p2, p3

    #@4
    if-ge v1, v5, :cond_0

    #@6
    .line 47
    mul-int/lit8 v5, v0, 0x1f

    #@8
    aget-char v6, p1, v1

    #@a
    add-int v0, v5, v6

    #@c
    .line 46
    add-int/lit8 v1, v1, 0x1

    #@e
    goto :goto_0

    #@f
    .line 51
    :cond_0
    ushr-int/lit8 v5, v0, 0x14

    #@11
    ushr-int/lit8 v6, v0, 0xc

    #@13
    xor-int/2addr v5, v6

    #@14
    xor-int/2addr v0, v5

    #@15
    .line 52
    ushr-int/lit8 v5, v0, 0x7

    #@17
    ushr-int/lit8 v6, v0, 0x4

    #@19
    xor-int/2addr v5, v6

    #@1a
    xor-int/2addr v0, v5

    #@1b
    .line 53
    iget-object v5, p0, Llibcore/internal/StringPool;->pool:[Ljava/lang/String;

    #@1d
    array-length v5, v5

    #@1e
    add-int/lit8 v5, v5, -0x1

    #@20
    and-int v2, v0, v5

    #@22
    .line 55
    .local v2, "index":I
    iget-object v5, p0, Llibcore/internal/StringPool;->pool:[Ljava/lang/String;

    #@24
    aget-object v3, v5, v2

    #@26
    .line 56
    .local v3, "pooled":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@28
    invoke-static {v3, p1, p2, p3}, Llibcore/internal/StringPool;->contentEquals(Ljava/lang/String;[CII)Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_1

    #@2e
    .line 57
    return-object v3

    #@2f
    .line 60
    :cond_1
    new-instance v4, Ljava/lang/String;

    #@31
    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    #@34
    .line 61
    .local v4, "result":Ljava/lang/String;
    iget-object v5, p0, Llibcore/internal/StringPool;->pool:[Ljava/lang/String;

    #@36
    aput-object v4, v5, v2

    #@38
    .line 62
    return-object v4
.end method
