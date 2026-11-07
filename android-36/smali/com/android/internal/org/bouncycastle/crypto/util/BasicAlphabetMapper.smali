.class public Lcom/android/internal/org/bouncycastle/crypto/util/BasicAlphabetMapper;
.super Ljava/lang/Object;
.source "BasicAlphabetMapper.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/AlphabetMapper;


# instance fields
.field private blacklist charMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist indexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "alphabet"    # Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/BasicAlphabetMapper;-><init>([C)V

    .line 28
    return-void
.end method

.method public constructor blacklist <init>([C)V
    .registers 6
    .param p1, "alphabet"    # [C

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/util/BasicAlphabetMapper;->indexMap:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/util/BasicAlphabetMapper;->charMap:Ljava/util/Map;

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    array-length v1, p1

    if-eq v0, v1, :cond_5f

    .line 39
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/util/BasicAlphabetMapper;->indexMap:Ljava/util/Map;

    aget-char v2, p1, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 43
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/util/BasicAlphabetMapper;->indexMap:Ljava/util/Map;

    aget-char v2, p1, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/util/BasicAlphabetMapper;->charMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-char v3, p1, v0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 41
    :cond_44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicate key detected in alphabet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    .end local v0    # "i":I
    :cond_5f
    return-void
.end method


# virtual methods
.method public blacklist convertToChars([B)[C
    .registers 8
    .param p1, "input"    # [B

    .line 83
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/util/BasicAlphabetMapper;->charMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_2b

    .line 85
    array-length v0, p1

    new-array v0, v0, [C

    .line 86
    .local v0, "out":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p1

    if-eq v1, v2, :cond_2a

    .line 88
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/util/BasicAlphabetMapper;->charMap:Ljava/util/Map;

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v0, v1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .end local v1    # "i":I
    :cond_2a
    goto :goto_5f

    .line 93
    .end local v0    # "out":[C
    :cond_2b
    array-length v0, p1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_60

    .line 98
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 99
    .restart local v0    # "out":[C
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_36
    array-length v2, p1

    if-eq v1, v2, :cond_5f

    .line 101
    div-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/util/BasicAlphabetMapper;->charMap:Ljava/util/Map;

    aget-byte v4, p1, v1

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    aput-char v3, v0, v2

    .line 99
    add-int/lit8 v1, v1, 0x2

    goto :goto_36

    .line 105
    .end local v1    # "i":I
    :cond_5f
    :goto_5f
    return-object v0

    .line 95
    .end local v0    # "out":[C
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "two byte radix and input string odd length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist convertToIndexes([C)[B
    .registers 7
    .param p1, "input"    # [C

    .line 57
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/util/BasicAlphabetMapper;->indexMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_29

    .line 59
    array-length v0, p1

    new-array v0, v0, [B

    .line 60
    .local v0, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p1

    if-eq v1, v2, :cond_28

    .line 62
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/util/BasicAlphabetMapper;->indexMap:Ljava/util/Map;

    aget-char v3, p1, v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .end local v1    # "i":I
    :cond_28
    goto :goto_59

    .line 67
    .end local v0    # "out":[B
    :cond_29
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 68
    .restart local v0    # "out":[B
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2f
    array-length v2, p1

    if-eq v1, v2, :cond_59

    .line 70
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/util/BasicAlphabetMapper;->indexMap:Ljava/util/Map;

    aget-char v3, p1, v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 71
    .local v2, "idx":I
    mul-int/lit8 v3, v1, 0x2

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 72
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 68
    .end local v2    # "idx":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 76
    .end local v1    # "i":I
    :cond_59
    :goto_59
    return-object v0
.end method

.method public blacklist getRadix()I
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/util/BasicAlphabetMapper;->indexMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
