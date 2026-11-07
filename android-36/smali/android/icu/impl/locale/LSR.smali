.class public final Landroid/icu/impl/locale/LSR;
.super Ljava/lang/Object;
.source "LSR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/locale/LSR$CachedDecoder;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist DEBUG_OUTPUT:Z = false

.field public static final blacklist DONT_CARE_FLAGS:I = 0x0

.field public static final blacklist EXPLICIT_LANGUAGE:I = 0x4

.field public static final blacklist EXPLICIT_LSR:I = 0x7

.field public static final blacklist EXPLICIT_REGION:I = 0x1

.field public static final blacklist EXPLICIT_SCRIPT:I = 0x2

.field public static final blacklist IMPLICIT_LSR:I = 0x0

.field public static final blacklist REGION_INDEX_LIMIT:I = 0x68d


# instance fields
.field public final blacklist flags:I

.field public final blacklist language:Ljava/lang/String;

.field public final blacklist region:Ljava/lang/String;

.field final blacklist regionIndex:I

.field public final blacklist script:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 17
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "flags"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    .line 40
    invoke-static {p3}, Landroid/icu/impl/locale/LSR;->indexForRegion(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/locale/LSR;->regionIndex:I

    .line 41
    iput p4, p0, Landroid/icu/impl/locale/LSR;->flags:I

    .line 42
    return-void
.end method

.method public static blacklist decodeInts([I[Ljava/lang/String;)[Landroid/icu/impl/locale/LSR;
    .registers 12
    .param p0, "nums"    # [I
    .param p1, "m49"    # [Ljava/lang/String;

    .line 233
    array-length v0, p0

    new-array v0, v0, [Landroid/icu/impl/locale/LSR;

    .line 235
    .local v0, "lsrs":[Landroid/icu/impl/locale/LSR;
    new-instance v1, Landroid/icu/impl/locale/LSR$CachedDecoder;

    invoke-direct {v1, p1}, Landroid/icu/impl/locale/LSR$CachedDecoder;-><init>([Ljava/lang/String;)V

    .line 236
    .local v1, "decoder":Landroid/icu/impl/locale/LSR$CachedDecoder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    array-length v3, p0

    if-ge v2, v3, :cond_25

    .line 237
    aget v3, p0, v2

    .line 238
    .local v3, "encoded":I
    invoke-virtual {v1, v3}, Landroid/icu/impl/locale/LSR$CachedDecoder;->decode(I)[Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, "lsrStrings":[Ljava/lang/String;
    new-instance v5, Landroid/icu/impl/locale/LSR;

    const/4 v6, 0x0

    aget-object v7, v4, v6

    const/4 v8, 0x1

    aget-object v8, v4, v8

    const/4 v9, 0x2

    aget-object v9, v4, v9

    invoke-direct {v5, v7, v8, v9, v6}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v5, v0, v2

    .line 236
    .end local v3    # "encoded":I
    .end local v4    # "lsrStrings":[Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 241
    .end local v2    # "i":I
    :cond_25
    return-object v0
.end method

.method private blacklist encodeLanguageToInt()I
    .registers 6

    .line 106
    nop

    .line 107
    nop

    .line 108
    nop

    .line 109
    nop

    .line 110
    nop

    .line 111
    nop

    .line 112
    nop

    .line 113
    nop

    .line 114
    iget-object v0, p0, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x61

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iget-object v3, p0, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    .line 115
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x61

    add-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x1b

    add-int/2addr v0, v3

    .line 116
    iget-object v3, p0, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_29

    goto :goto_34

    :cond_29
    iget-object v1, p0, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x61

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x2d9

    :goto_34
    add-int/2addr v0, v1

    .line 114
    return v0
.end method

.method private blacklist encodeRegionToInt(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 128
    .local p1, "m49":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 129
    nop

    .line 130
    iget-object v0, p0, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_36

    .line 131
    iget-object v0, p0, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 132
    .local v0, "index":I
    nop

    .line 133
    if-ltz v0, :cond_15

    .line 137
    return v0

    .line 134
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Please add \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' to M49 in LocaleDistanceMapper.java"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    .end local v0    # "index":I
    :cond_36
    nop

    .line 140
    nop

    .line 141
    nop

    .line 142
    nop

    .line 150
    iget-object v0, p0, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x41

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x41

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1b

    add-int/2addr v0, v2

    return v0
.end method

.method private blacklist encodeScriptToInt()I
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/lang/UScript;->getCodeFromName(Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, "ret":I
    nop

    .line 123
    return v0
.end method

.method public static final blacklist indexForRegion(Ljava/lang/String;)I
    .registers 7
    .param p0, "region"    # Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_29

    .line 51
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x41

    .line 52
    .local v0, "a":I
    if-ltz v0, :cond_28

    const/16 v3, 0x19

    if-ge v3, v0, :cond_16

    goto :goto_28

    .line 53
    :cond_16
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x41

    .line 54
    .local v1, "b":I
    if-ltz v1, :cond_27

    if-ge v3, v1, :cond_21

    goto :goto_27

    .line 55
    :cond_21
    mul-int/lit8 v2, v0, 0x1a

    add-int/2addr v2, v1

    add-int/lit16 v2, v2, 0x3e9

    return v2

    .line 54
    :cond_27
    :goto_27
    return v2

    .line 52
    .end local v1    # "b":I
    :cond_28
    :goto_28
    return v2

    .line 56
    .end local v0    # "a":I
    :cond_29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_5e

    .line 57
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 58
    .restart local v0    # "a":I
    if-ltz v0, :cond_5d

    const/16 v4, 0x9

    if-ge v4, v0, :cond_3d

    goto :goto_5d

    .line 59
    :cond_3d
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    .line 60
    .local v5, "b":I
    if-ltz v5, :cond_5c

    if-ge v4, v5, :cond_48

    goto :goto_5c

    .line 61
    :cond_48
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 62
    .local v3, "c":I
    if-ltz v3, :cond_5b

    if-ge v4, v3, :cond_53

    goto :goto_5b

    .line 63
    :cond_53
    mul-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    return v2

    .line 62
    :cond_5b
    :goto_5b
    return v2

    .line 60
    .end local v3    # "c":I
    :cond_5c
    :goto_5c
    return v2

    .line 58
    .end local v5    # "b":I
    :cond_5d
    :goto_5d
    return v2

    .line 65
    .end local v0    # "a":I
    :cond_5e
    return v2
.end method


# virtual methods
.method public blacklist encodeToIntForResource(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 154
    .local p1, "m49":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/icu/impl/locale/LSR;->encodeLanguageToInt()I

    move-result v0

    invoke-direct {p0, p1}, Landroid/icu/impl/locale/LSR;->encodeRegionToInt(Ljava/util/List;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x4ce3

    add-int/2addr v0, v1

    .line 155
    invoke-direct {p0}, Landroid/icu/impl/locale/LSR;->encodeScriptToInt()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 154
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 89
    if-eq p0, p1, :cond_39

    if-eqz p1, :cond_37

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_37

    iget-object v0, p0, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/icu/impl/locale/LSR;

    move-object v2, v1

    .local v2, "other":Landroid/icu/impl/locale/LSR;
    iget-object v1, v1, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    iget-object v1, v2, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    iget-object v1, v2, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget v0, p0, Landroid/icu/impl/locale/LSR;->flags:I

    iget v1, v2, Landroid/icu/impl/locale/LSR;->flags:I

    if-ne v0, v1, :cond_37

    goto :goto_39

    .end local v2    # "other":Landroid/icu/impl/locale/LSR;
    :cond_37
    const/4 v0, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 v0, 0x1

    .line 89
    :goto_3a
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 100
    iget-object v0, p0, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    iget v3, p0, Landroid/icu/impl/locale/LSR;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isEquivalentTo(Landroid/icu/impl/locale/LSR;)Z
    .registers 4
    .param p1, "other"    # Landroid/icu/impl/locale/LSR;

    .line 81
    iget-object v0, p0, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object v1, p1, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    iget-object v1, p1, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    iget-object v1, p1, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 81
    :goto_21
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x2d

    if-nez v1, :cond_1a

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_1a
    iget-object v1, p0, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
