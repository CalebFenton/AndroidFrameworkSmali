.class public final Lcom/android/internal/util/StringPool;
.super Ljava/lang/Object;
.source "StringPool.java"


# instance fields
.field private final blacklist mPool:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/util/StringPool;->mPool:[Ljava/lang/String;

    .line 35
    return-void
.end method

.method private static blacklist contentEquals(Ljava/lang/String;[CII)Z
    .registers 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p3, :cond_8

    .line 39
    return v1

    .line 41
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, p3, :cond_19

    .line 42
    add-int v2, p2, v0

    aget-char v2, p1, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_16

    .line 43
    return v1

    .line 41
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 46
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist get([CII)Ljava/lang/String;
    .registers 9
    .param p1, "array"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "hashCode":I
    move v1, p2

    .local v1, "i":I
    :goto_2
    add-int v2, p2, p3

    if-ge v1, v2, :cond_f

    .line 61
    mul-int/lit8 v2, v0, 0x1f

    aget-char v3, p1, v1

    add-int v0, v2, v3

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 65
    .end local v1    # "i":I
    :cond_f
    ushr-int/lit8 v1, v0, 0x14

    ushr-int/lit8 v2, v0, 0xc

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 66
    ushr-int/lit8 v1, v0, 0x7

    ushr-int/lit8 v2, v0, 0x4

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 67
    iget-object v1, p0, Lcom/android/internal/util/StringPool;->mPool:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v0

    .line 69
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/internal/util/StringPool;->mPool:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 70
    .local v2, "pooled":Ljava/lang/String;
    if-eqz v2, :cond_2e

    invoke-static {v2, p1, p2, p3}, Lcom/android/internal/util/StringPool;->contentEquals(Ljava/lang/String;[CII)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 71
    return-object v2

    .line 74
    :cond_2e
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 75
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/util/StringPool;->mPool:[Ljava/lang/String;

    aput-object v3, v4, v1

    .line 76
    return-object v3
.end method
