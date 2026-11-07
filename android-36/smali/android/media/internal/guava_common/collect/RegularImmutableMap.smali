.class final Landroid/media/internal/guava_common/collect/RegularImmutableMap;
.super Landroid/media/internal/guava_common/collect/ImmutableMap;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/RegularImmutableMap$EntrySet;,
        Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeysOrValuesAsList;,
        Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/ImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final blacklist EMPTY:Landroid/media/internal/guava_common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/ImmutableMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J


# instance fields
.field final transient blacklist alternatingKeysAndValues:[Ljava/lang/Object;

.field private final transient blacklist hashTable:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final transient blacklist size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 52
    new-instance v0, Landroid/media/internal/guava_common/collect/RegularImmutableMap;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Landroid/media/internal/guava_common/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Landroid/media/internal/guava_common/collect/RegularImmutableMap;->EMPTY:Landroid/media/internal/guava_common/collect/ImmutableMap;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 298
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap;-><init>()V

    .line 299
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap;->hashTable:Ljava/lang/Object;

    .line 300
    iput-object p2, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 301
    iput p3, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap;->size:I

    return-void
.end method

.method static blacklist create(I[Ljava/lang/Object;Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;)Landroid/media/internal/guava_common/collect/RegularImmutableMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            "Landroid/media/internal/guava_common/collect/ImmutableMap$Builder<",
            "TK;TV;>;)",
            "Landroid/media/internal/guava_common/collect/RegularImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_7

    .line 106
    sget-object p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap;->EMPTY:Landroid/media/internal/guava_common/collect/ImmutableMap;

    check-cast p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap;

    return-object p0

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1f

    .line 110
    aget-object p0, p1, v0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object p2, p1, v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    invoke-static {p0, p2}, Landroid/media/internal/guava_common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    new-instance p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1, v1}, Landroid/media/internal/guava_common/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object p0

    .line 114
    :cond_1f
    array-length v2, p1

    shr-int/2addr v2, v1

    invoke-static {p0, v2}, Landroid/media/internal/guava_common/base/Preconditions;->checkPositionIndex(II)I

    .line 115
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v2

    .line 121
    invoke-static {p1, p0, v2, v0}, Landroid/media/internal/guava_common/collect/RegularImmutableMap;->createHashTable([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v2

    .line 123
    instance-of v3, v2, [Ljava/lang/Object;

    if-eqz v3, :cond_53

    .line 124
    check-cast v2, [Ljava/lang/Object;

    const/4 p0, 0x2

    .line 125
    aget-object p0, v2, p0

    check-cast p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder$DuplicateKey;

    if-eqz p2, :cond_4e

    .line 129
    iput-object p0, p2, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->duplicateKey:Landroid/media/internal/guava_common/collect/ImmutableMap$Builder$DuplicateKey;

    .line 130
    aget-object p0, v2, v0

    .line 131
    aget-object p2, v2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit8 v0, p2, 0x2

    .line 132
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    move-object v2, p0

    move p0, p2

    goto :goto_53

    .line 127
    :cond_4e
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder$DuplicateKey;->exception()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 136
    :cond_53
    :goto_53
    new-instance p2, Landroid/media/internal/guava_common/collect/RegularImmutableMap;

    invoke-direct {p2, v2, p1, p0}, Landroid/media/internal/guava_common/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object p2
.end method

.method private static blacklist createHashTable([Ljava/lang/Object;III)Ljava/lang/Object;
    .registers 21
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_18

    .line 158
    aget-object v0, p0, p3

    .line 159
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/lit8 v1, p3, 0x1

    aget-object v1, p0, v1

    .line 160
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    invoke-static {v0, v1}, Landroid/media/internal/guava_common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_18
    add-int/lit8 v4, v1, -0x1

    const/16 v5, 0x80

    const/4 v6, 0x3

    const/4 v7, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-gt v1, v5, :cond_8b

    .line 172
    new-array v1, v1, [B

    .line 173
    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([BB)V

    move v5, v9

    move v7, v5

    :goto_29
    if-ge v5, v0, :cond_7b

    mul-int/lit8 v10, v5, 0x2

    add-int v10, v10, p3

    mul-int/lit8 v11, v7, 0x2

    add-int v11, v11, p3

    .line 181
    aget-object v12, p0, v10

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/2addr v10, v3

    .line 182
    aget-object v10, p0, v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    invoke-static {v12, v10}, Landroid/media/internal/guava_common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Landroid/media/internal/guava_common/collect/Hashing;->smear(I)I

    move-result v13

    :goto_49
    and-int/2addr v13, v4

    .line 186
    aget-byte v14, v1, v13

    const/16 v15, 0xff

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_5f

    int-to-byte v14, v11

    .line 188
    aput-byte v14, v1, v13

    if-ge v7, v5, :cond_5c

    .line 199
    aput-object v12, p0, v11

    xor-int/lit8 v11, v11, 0x1

    .line 200
    aput-object v10, p0, v11

    :cond_5c
    add-int/lit8 v7, v7, 0x1

    goto :goto_75

    .line 190
    :cond_5f
    aget-object v15, p0, v14

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_78

    .line 191
    new-instance v2, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder$DuplicateKey;

    xor-int/lit8 v11, v14, 0x1

    aget-object v13, p0, v11

    .line 193
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v12, v10, v13}, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder$DuplicateKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    aput-object v10, p0, v11

    :goto_75
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_78
    add-int/lit8 v13, v13, 0x1

    goto :goto_49

    :cond_7b
    if-ne v7, v0, :cond_7e

    return-object v1

    .line 204
    :cond_7e
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v1, v0, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object v2, v0, v8

    return-object v0

    :cond_8b
    const v5, 0x8000

    if-gt v1, v5, :cond_fa

    .line 212
    new-array v1, v1, [S

    .line 213
    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([SS)V

    move v5, v9

    move v7, v5

    :goto_97
    if-ge v5, v0, :cond_ea

    mul-int/lit8 v10, v5, 0x2

    add-int v10, v10, p3

    mul-int/lit8 v11, v7, 0x2

    add-int v11, v11, p3

    .line 221
    aget-object v12, p0, v10

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/2addr v10, v3

    .line 222
    aget-object v10, p0, v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    invoke-static {v12, v10}, Landroid/media/internal/guava_common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Landroid/media/internal/guava_common/collect/Hashing;->smear(I)I

    move-result v13

    :goto_b7
    and-int/2addr v13, v4

    .line 226
    aget-short v14, v1, v13

    const v15, 0xffff

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_ce

    int-to-short v14, v11

    .line 228
    aput-short v14, v1, v13

    if-ge v7, v5, :cond_cb

    .line 239
    aput-object v12, p0, v11

    xor-int/lit8 v11, v11, 0x1

    .line 240
    aput-object v10, p0, v11

    :cond_cb
    add-int/lit8 v7, v7, 0x1

    goto :goto_e4

    .line 230
    :cond_ce
    aget-object v15, p0, v14

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e7

    .line 231
    new-instance v2, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder$DuplicateKey;

    xor-int/lit8 v11, v14, 0x1

    aget-object v13, p0, v11

    .line 233
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v12, v10, v13}, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder$DuplicateKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    aput-object v10, p0, v11

    :goto_e4
    add-int/lit8 v5, v5, 0x1

    goto :goto_97

    :cond_e7
    add-int/lit8 v13, v13, 0x1

    goto :goto_b7

    :cond_ea
    if-ne v7, v0, :cond_ed

    return-object v1

    .line 244
    :cond_ed
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v1, v0, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object v2, v0, v8

    return-object v0

    .line 249
    :cond_fa
    new-array v1, v1, [I

    .line 250
    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([II)V

    move v5, v9

    move v10, v5

    :goto_101
    if-ge v5, v0, :cond_157

    mul-int/lit8 v11, v5, 0x2

    add-int v11, v11, p3

    mul-int/lit8 v12, v10, 0x2

    add-int v12, v12, p3

    .line 258
    aget-object v13, p0, v11

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/2addr v11, v3

    .line 259
    aget-object v11, p0, v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    invoke-static {v13, v11}, Landroid/media/internal/guava_common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Landroid/media/internal/guava_common/collect/Hashing;->smear(I)I

    move-result v14

    :goto_121
    and-int/2addr v14, v4

    .line 263
    aget v15, v1, v14

    if-ne v15, v7, :cond_135

    .line 265
    aput v12, v1, v14

    if-ge v10, v5, :cond_130

    .line 276
    aput-object v13, p0, v12

    xor-int/lit8 v12, v12, 0x1

    .line 277
    aput-object v11, p0, v12

    :cond_130
    add-int/lit8 v10, v10, 0x1

    move/from16 v16, v3

    goto :goto_14d

    :cond_135
    move/from16 v16, v3

    .line 267
    aget-object v3, p0, v15

    invoke-virtual {v13, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_152

    .line 268
    new-instance v2, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder$DuplicateKey;

    xor-int/lit8 v3, v15, 0x1

    aget-object v12, p0, v3

    .line 270
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v13, v11, v12}, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder$DuplicateKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 271
    aput-object v11, p0, v3

    :goto_14d
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v16

    goto :goto_101

    :cond_152
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v16

    goto :goto_121

    :cond_157
    move/from16 v16, v3

    if-ne v10, v0, :cond_15c

    return-object v1

    .line 281
    :cond_15c
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v1, v0, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v16

    aput-object v2, v0, v8

    return-object v0
.end method

.method static blacklist get(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1b

    .line 336
    aget-object p0, p1, p3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    xor-int/lit8 p0, p3, 0x1

    .line 337
    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_1a
    return-object v0

    :cond_1b
    if-nez p0, :cond_1e

    return-object v0

    .line 342
    :cond_1e
    instance-of p2, p0, [B

    if-eqz p2, :cond_49

    .line 343
    move-object p2, p0

    check-cast p2, [B

    .line 344
    array-length p0, p2

    add-int/lit8 p3, p0, -0x1

    .line 345
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Hashing;->smear(I)I

    move-result p0

    :goto_30
    and-int/2addr p0, p3

    .line 347
    aget-byte v2, p2, p0

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_39

    return-object v0

    .line 350
    :cond_39
    aget-object v3, p1, v2

    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    xor-int/lit8 p0, v2, 0x1

    .line 351
    aget-object p0, p1, p0

    return-object p0

    :cond_46
    add-int/lit8 p0, p0, 0x1

    goto :goto_30

    .line 354
    :cond_49
    instance-of p2, p0, [S

    if-eqz p2, :cond_75

    .line 355
    move-object p2, p0

    check-cast p2, [S

    .line 356
    array-length p0, p2

    add-int/lit8 p3, p0, -0x1

    .line 357
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Hashing;->smear(I)I

    move-result p0

    :goto_5b
    and-int/2addr p0, p3

    .line 359
    aget-short v2, p2, p0

    const v3, 0xffff

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_65

    return-object v0

    .line 362
    :cond_65
    aget-object v3, p1, v2

    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    xor-int/lit8 p0, v2, 0x1

    .line 363
    aget-object p0, p1, p0

    return-object p0

    :cond_72
    add-int/lit8 p0, p0, 0x1

    goto :goto_5b

    .line 367
    :cond_75
    check-cast p0, [I

    .line 368
    array-length p2, p0

    sub-int/2addr p2, v1

    .line 369
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-static {p3}, Landroid/media/internal/guava_common/collect/Hashing;->smear(I)I

    move-result p3

    :goto_81
    and-int/2addr p3, p2

    .line 371
    aget v2, p0, p3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_88

    return-object v0

    .line 374
    :cond_88
    aget-object v3, p1, v2

    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    xor-int/lit8 p0, v2, 0x1

    .line 375
    aget-object p0, p1, p0

    return-object p0

    :cond_95
    add-int/lit8 p3, p3, 0x1

    goto :goto_81
.end method


# virtual methods
.method blacklist createEntrySet()Landroid/media/internal/guava_common/collect/ImmutableSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 383
    new-instance v0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$EntrySet;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap;->size:I

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/media/internal/guava_common/collect/RegularImmutableMap$EntrySet;-><init>(Landroid/media/internal/guava_common/collect/ImmutableMap;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method blacklist createKeySet()Landroid/media/internal/guava_common/collect/ImmutableSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 484
    new-instance v0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeysOrValuesAsList;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap;->size:I

    invoke-direct {v0, v1, v2, v3}, Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    .line 486
    new-instance v1, Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeySet;

    invoke-direct {v1, p0, v0}, Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeySet;-><init>(Landroid/media/internal/guava_common/collect/ImmutableMap;Landroid/media/internal/guava_common/collect/ImmutableList;)V

    return-object v1
.end method

.method blacklist createValues()Landroid/media/internal/guava_common/collect/ImmutableCollection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 577
    new-instance v0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeysOrValuesAsList;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 v2, 0x1

    iget p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap;->size:I

    invoke-direct {v0, v1, v2, p0}, Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 313
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap;->hashTable:Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2, p1}, Landroid/media/internal/guava_common/collect/RegularImmutableMap;->get(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    :cond_e
    return-object p0
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 306
    iget p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap;->size:I

    return p0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 1

    .line 591
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap;->writeReplace()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
