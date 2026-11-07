.class public final Landroid/icu/impl/UnicodeMap;
.super Ljava/lang/Object;
.source "UnicodeMap.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/util/Freezable;
.implements Landroid/icu/text/StringTransform;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UnicodeMap$Composer;,
        Landroid/icu/impl/UnicodeMap$EntryRange;,
        Landroid/icu/impl/UnicodeMap$EntrySetX;,
        Landroid/icu/impl/UnicodeMap$EntryRanges;,
        Landroid/icu/impl/UnicodeMap$IteratorX;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/impl/UnicodeMap<",
        "TT;>;>;",
        "Landroid/icu/text/StringTransform;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final blacklist ASSERTIONS:Z = false

.field static final blacklist DEBUG_WRITE:Z = false

.field static final blacklist GROWTH_GAP:J = 0xaL

.field static final blacklist GROWTH_PERCENT:J = 0xc8L


# instance fields
.field private blacklist availableValues:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "TT;>;"
        }
    .end annotation
.end field

.field private transient blacklist errorOnReset:Z

.field private blacklist lastIndex:I

.field private blacklist length:I

.field private volatile transient blacklist locked:Z

.field private transient blacklist staleAvailableValues:Z

.field private blacklist stringMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private blacklist transitions:[I

.field blacklist values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetlength(Landroid/icu/impl/UnicodeMap;)I
    .registers 1

    iget p0, p0, Landroid/icu/impl/UnicodeMap;->length:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetstringMap(Landroid/icu/impl/UnicodeMap;)Ljava/util/TreeMap;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettransitions(Landroid/icu/impl/UnicodeMap;)[I
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 68
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/UnicodeMap;->availableValues:Ljava/util/LinkedHashSet;

    .line 66
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeMap;->clear()Landroid/icu/impl/UnicodeMap;

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/UnicodeMap;)V
    .registers 3
    .param p1, "other"    # Landroid/icu/impl/UnicodeMap;

    .line 71
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/UnicodeMap;->availableValues:Ljava/util/LinkedHashSet;

    .line 66
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeMap;->clear()Landroid/icu/impl/UnicodeMap;

    .line 72
    invoke-virtual {p0, p1}, Landroid/icu/impl/UnicodeMap;->putAll(Landroid/icu/impl/UnicodeMap;)Landroid/icu/impl/UnicodeMap;

    .line 73
    return-void
.end method

.method private blacklist __findIndex(I)I
    .registers 4
    .param p1, "codepoint"    # I

    .line 207
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    iget v0, p0, Landroid/icu/impl/UnicodeMap;->length:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-lez v0, :cond_10

    .line 208
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aget v1, v1, v0

    if-gt v1, p1, :cond_d

    return v0

    .line 207
    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 210
    .end local v0    # "i":I
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist _checkFind(II)V
    .registers 8
    .param p1, "codepoint"    # I
    .param p2, "value"    # I

    .line 198
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    invoke-direct {p0, p1}, Landroid/icu/impl/UnicodeMap;->__findIndex(I)I

    move-result v0

    .line 199
    .local v0, "other":I
    if-ne v0, p2, :cond_7

    .line 204
    return-void

    .line 200
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invariant failed: binary search\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v3, p1

    .line 201
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->hex(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tshould be: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist _findIndex(I)I
    .registers 6
    .param p1, "c"    # I

    .line 180
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    const/4 v0, 0x0

    .line 181
    .local v0, "lo":I
    iget v1, p0, Landroid/icu/impl/UnicodeMap;->length:I

    add-int/lit8 v1, v1, -0x1

    .line 182
    .local v1, "hi":I
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 185
    .local v2, "i":I
    :goto_9
    if-eq v2, v0, :cond_19

    .line 186
    iget-object v3, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aget v3, v3, v2

    if-ge p1, v3, :cond_13

    .line 187
    move v1, v2

    goto :goto_14

    .line 189
    :cond_13
    move v0, v2

    .line 191
    :goto_14
    add-int v3, v0, v1

    ushr-int/lit8 v2, v3, 0x1

    goto :goto_9

    .line 194
    :cond_19
    return v0
.end method

.method private blacklist _insertGapAt(II)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "count"    # I

    .line 254
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    iget v0, p0, Landroid/icu/impl/UnicodeMap;->length:I

    add-int/2addr v0, p2

    .line 255
    .local v0, "newLength":I
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    .line 256
    .local v1, "oldtransitions":[I
    iget-object v2, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    .line 257
    .local v2, "oldvalues":[Ljava/lang/Object;, "[TT;"
    iget-object v3, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    array-length v3, v3

    if-le v0, v3, :cond_31

    .line 258
    int-to-long v3, v0

    const-wide/16 v5, 0xc8

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    const-wide/16 v5, 0xa

    add-long/2addr v3, v5

    long-to-int v3, v3

    .line 259
    .local v3, "allocation":I
    new-array v4, v3, [I

    iput-object v4, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    .line 260
    new-array v4, v3, [Ljava/lang/Object;

    iput-object v4, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    .line 261
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    if-ge v4, p1, :cond_31

    .line 262
    iget-object v5, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aget v6, v1, v4

    aput v6, v5, v4

    .line 263
    iget-object v5, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v6, v2, v4

    aput-object v6, v5, v4

    .line 261
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 266
    .end local v3    # "allocation":I
    .end local v4    # "i":I
    :cond_31
    iget v3, p0, Landroid/icu/impl/UnicodeMap;->length:I

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_35
    if-lt v3, p1, :cond_4a

    .line 267
    iget-object v4, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    add-int v5, v3, p2

    aget v6, v1, v3

    aput v6, v4, v5

    .line 268
    iget-object v4, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    add-int v5, v3, p2

    aget-object v6, v2, v3

    aput-object v6, v4, v5

    .line 266
    add-int/lit8 v3, v3, -0x1

    goto :goto_35

    .line 270
    .end local v3    # "i":I
    :cond_4a
    iput v0, p0, Landroid/icu/impl/UnicodeMap;->length:I

    .line 271
    return-void
.end method

.method private blacklist _put(ILjava/lang/Object;)Landroid/icu/impl/UnicodeMap;
    .registers 12
    .param p1, "codepoint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "Landroid/icu/impl/UnicodeMap;"
        }
    .end annotation

    .line 285
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    iget v1, p0, Landroid/icu/impl/UnicodeMap;->lastIndex:I

    aget v0, v0, v1

    const/4 v1, 0x1

    if-gt v0, p1, :cond_15

    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    iget v2, p0, Landroid/icu/impl/UnicodeMap;->lastIndex:I

    add-int/2addr v2, v1

    aget v0, v0, v2

    if-ge p1, v0, :cond_15

    .line 287
    iget v0, p0, Landroid/icu/impl/UnicodeMap;->lastIndex:I

    .local v0, "baseIndex":I
    goto :goto_19

    .line 289
    .end local v0    # "baseIndex":I
    :cond_15
    invoke-direct {p0, p1}, Landroid/icu/impl/UnicodeMap;->_findIndex(I)I

    move-result v0

    .line 291
    .restart local v0    # "baseIndex":I
    :goto_19
    add-int/lit8 v2, v0, 0x1

    .line 293
    .local v2, "limitIndex":I
    iget-object v3, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {v3, p2}, Landroid/icu/impl/UnicodeMap;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    return-object p0

    .line 294
    :cond_26
    iget-boolean v3, p0, Landroid/icu/impl/UnicodeMap;->locked:Z

    if-nez v3, :cond_12e

    .line 297
    iget-boolean v3, p0, Landroid/icu/impl/UnicodeMap;->errorOnReset:Z

    if-eqz v3, :cond_6b

    iget-object v3, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-nez v3, :cond_35

    goto :goto_6b

    .line 298
    :cond_35
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to reset value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v4, p1

    invoke-static {v4, v5}, Landroid/icu/impl/Utility;->hex(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when that is disallowed. Old: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; New: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_6b
    :goto_6b
    iput-boolean v1, p0, Landroid/icu/impl/UnicodeMap;->staleAvailableValues:Z

    .line 304
    iget-object v3, p0, Landroid/icu/impl/UnicodeMap;->availableValues:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, p2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v3, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aget v3, v3, v0

    .line 307
    .local v3, "baseCP":I
    iget-object v4, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aget v4, v4, v2

    .line 312
    .local v4, "limitCP":I
    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v3, p1, :cond_de

    .line 314
    if-eqz v0, :cond_8e

    iget-object v7, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    add-int/lit8 v8, v0, -0x1

    aget-object v7, v7, v8

    .line 315
    invoke-static {p2, v7}, Landroid/icu/impl/UnicodeMap;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8e

    move v7, v1

    goto :goto_8f

    :cond_8e
    move v7, v5

    .line 317
    .local v7, "connectsWithPrevious":Z
    :goto_8f
    add-int/lit8 v8, p1, 0x1

    if-ne v4, v8, :cond_c2

    .line 319
    iget v8, p0, Landroid/icu/impl/UnicodeMap;->length:I

    sub-int/2addr v8, v6

    if-ge v0, v8, :cond_a4

    iget-object v8, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v8, v8, v2

    .line 320
    invoke-static {p2, v8}, Landroid/icu/impl/UnicodeMap;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a4

    move v5, v1

    goto :goto_a5

    :cond_a4
    nop

    .line 322
    .local v5, "connectsWithFollowing":Z
    :goto_a5
    if-eqz v7, :cond_b3

    .line 324
    if-eqz v5, :cond_ad

    .line 325
    invoke-direct {p0, v0, v6}, Landroid/icu/impl/UnicodeMap;->_removeAt(II)V

    goto :goto_b0

    .line 327
    :cond_ad
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/UnicodeMap;->_removeAt(II)V

    .line 329
    :goto_b0
    add-int/lit8 v0, v0, -0x1

    goto :goto_c1

    .line 330
    :cond_b3
    if-eqz v5, :cond_bd

    .line 331
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/UnicodeMap;->_removeAt(II)V

    .line 332
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aput p1, v1, v0

    goto :goto_c1

    .line 335
    :cond_bd
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 337
    .end local v5    # "connectsWithFollowing":Z
    :goto_c1
    goto :goto_dd

    :cond_c2
    if-eqz v7, :cond_cc

    .line 340
    iget-object v5, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aget v6, v5, v0

    add-int/2addr v6, v1

    aput v6, v5, v0

    goto :goto_dd

    .line 343
    :cond_cc
    iget-object v5, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    add-int/lit8 v6, p1, 0x1

    aput v6, v5, v0

    .line 344
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/UnicodeMap;->_insertGapAt(II)V

    .line 345
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 346
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aput p1, v1, v0

    .line 348
    .end local v7    # "connectsWithPrevious":Z
    :goto_dd
    goto :goto_12b

    :cond_de
    add-int/lit8 v7, p1, 0x1

    if-ne v4, v7, :cond_10a

    .line 351
    iget v7, p0, Landroid/icu/impl/UnicodeMap;->length:I

    sub-int/2addr v7, v6

    if-ge v0, v7, :cond_f3

    iget-object v6, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v6, v6, v2

    .line 352
    invoke-static {p2, v6}, Landroid/icu/impl/UnicodeMap;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f3

    move v5, v1

    goto :goto_f4

    :cond_f3
    nop

    .line 354
    .restart local v5    # "connectsWithFollowing":Z
    :goto_f4
    if-eqz v5, :cond_fe

    .line 355
    iget-object v6, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aget v7, v6, v2

    sub-int/2addr v7, v1

    aput v7, v6, v2

    .line 356
    return-object p0

    .line 358
    :cond_fe
    invoke-direct {p0, v2, v1}, Landroid/icu/impl/UnicodeMap;->_insertGapAt(II)V

    .line 359
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aput p1, v1, v2

    .line 360
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aput-object p2, v1, v2

    .line 362
    .end local v5    # "connectsWithFollowing":Z
    goto :goto_12b

    .line 365
    :cond_10a
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v6}, Landroid/icu/impl/UnicodeMap;->_insertGapAt(II)V

    .line 366
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aput p1, v1, v0

    .line 367
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 368
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, p1, 0x1

    aput v6, v1, v5

    .line 369
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    add-int/lit8 v7, v0, -0x1

    aget-object v6, v6, v7

    aput-object v6, v1, v5

    .line 371
    :goto_12b
    iput v0, p0, Landroid/icu/impl/UnicodeMap;->lastIndex:I

    .line 372
    return-object p0

    .line 295
    .end local v3    # "baseCP":I
    .end local v4    # "limitCP":I
    :cond_12e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Attempt to modify locked object"

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist _putAll(IILjava/lang/Object;)Landroid/icu/impl/UnicodeMap;
    .registers 5
    .param p1, "startCodePoint"    # I
    .param p2, "endCodePoint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)",
            "Landroid/icu/impl/UnicodeMap;"
        }
    .end annotation

    .line 377
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-gt v0, p2, :cond_9

    .line 378
    invoke-direct {p0, v0, p3}, Landroid/icu/impl/UnicodeMap;->_put(ILjava/lang/Object;)Landroid/icu/impl/UnicodeMap;

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 381
    .end local v0    # "i":I
    :cond_9
    return-object p0
.end method

.method private blacklist _removeAt(II)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "count"    # I

    .line 240
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    add-int v0, p1, p2

    .local v0, "i":I
    :goto_2
    iget v1, p0, Landroid/icu/impl/UnicodeMap;->length:I

    if-ge v0, v1, :cond_1d

    .line 241
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    sub-int v2, v0, p2

    iget-object v3, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aget v3, v3, v0

    aput v3, v1, v2

    .line 242
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    sub-int v2, v0, p2

    iget-object v3, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 244
    .end local v0    # "i":I
    :cond_1d
    iget v0, p0, Landroid/icu/impl/UnicodeMap;->length:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/UnicodeMap;->length:I

    .line 245
    return-void
.end method

.method public static blacklist areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 109
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 110
    :cond_4
    if-eqz p0, :cond_e

    if-nez p1, :cond_9

    goto :goto_e

    .line 111
    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 110
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist findCommonPrefix(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p0, "last"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 772
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 773
    .local v0, "minLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1d

    .line 774
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1a

    return v1

    .line 773
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 776
    .end local v1    # "i":I
    :cond_1d
    return v0
.end method

.method public static blacklist freeze(Ljava/util/Map;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;",
            "Landroid/icu/text/UnicodeSet;",
            ">;)",
            "Ljava/util/Map<",
            "TT;",
            "Landroid/icu/text/UnicodeSet;",
            ">;"
        }
    .end annotation

    .line 1256
    .local p0, "target":Ljava/util/Map;, "Ljava/util/Map<TT;Landroid/icu/text/UnicodeSet;>;"
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/UnicodeSet;

    .line 1257
    .local v1, "entry":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 1258
    .end local v1    # "entry":Landroid/icu/text/UnicodeSet;
    goto :goto_8

    .line 1259
    :cond_18
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private final blacklist removeRetainAll(Landroid/icu/impl/UnicodeMap;Z)Landroid/icu/impl/UnicodeMap;
    .registers 9
    .param p2, "remove"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;Z)",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 1212
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p1, "reference":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 1214
    .local v0, "toNuke":Landroid/icu/text/UnicodeSet;
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeMap;->entryRanges()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/UnicodeMap$EntryRange;

    .line 1215
    .local v2, "ae":Landroid/icu/impl/UnicodeMap$EntryRange;, "Landroid/icu/impl/UnicodeMap$EntryRange<TT;>;"
    iget-object v3, v2, Landroid/icu/impl/UnicodeMap$EntryRange;->string:Ljava/lang/String;

    if-eqz v3, :cond_31

    .line 1216
    iget-object v3, v2, Landroid/icu/impl/UnicodeMap$EntryRange;->value:Ljava/lang/Object;

    iget-object v4, v2, Landroid/icu/impl/UnicodeMap$EntryRange;->string:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/icu/impl/UnicodeMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, p2, :cond_49

    .line 1217
    iget-object v3, v2, Landroid/icu/impl/UnicodeMap$EntryRange;->string:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    goto :goto_49

    .line 1220
    :cond_31
    iget v3, v2, Landroid/icu/impl/UnicodeMap$EntryRange;->codepoint:I

    .local v3, "i":I
    :goto_33
    iget v4, v2, Landroid/icu/impl/UnicodeMap$EntryRange;->codepointEnd:I

    if-gt v3, v4, :cond_49

    .line 1221
    iget-object v4, v2, Landroid/icu/impl/UnicodeMap$EntryRange;->value:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Landroid/icu/impl/UnicodeMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, p2, :cond_46

    .line 1222
    invoke-virtual {v0, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1220
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 1226
    .end local v2    # "ae":Landroid/icu/impl/UnicodeMap$EntryRange;, "Landroid/icu/impl/UnicodeMap$EntryRange<TT;>;"
    .end local v3    # "i":I
    :cond_49
    :goto_49
    goto :goto_d

    .line 1227
    :cond_4a
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/UnicodeMap;->putAll(Landroid/icu/text/UnicodeSet;Ljava/lang/Object;)Landroid/icu/impl/UnicodeMap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method blacklist _checkInvariants()V
    .registers 7

    .line 147
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    iget v0, p0, Landroid/icu/impl/UnicodeMap;->length:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_fc

    iget v0, p0, Landroid/icu/impl/UnicodeMap;->length:I

    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    array-length v1, v1

    if-gt v0, v1, :cond_fc

    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    array-length v0, v0

    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_fc

    .line 152
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_15
    iget v1, p0, Landroid/icu/impl/UnicodeMap;->length:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_7f

    .line 153
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Landroid/icu/impl/UnicodeMap;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 154
    :cond_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invariant failed: values shared at \t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    int-to-long v3, v3

    .line 155
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->hex(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ">\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    .line 156
    invoke-static {v4, v5}, Landroid/icu/impl/Utility;->hex(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    .end local v0    # "i":I
    :cond_7f
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_f4

    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    iget v1, p0, Landroid/icu/impl/UnicodeMap;->length:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/high16 v1, 0x110000

    if-ne v0, v1, :cond_f4

    .line 163
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_93
    iget v1, p0, Landroid/icu/impl/UnicodeMap;->length:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_f3

    .line 164
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_a8

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    .line 165
    :cond_a8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invariant failed: not monotonic\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    int-to-long v3, v3

    .line 166
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->hex(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    .line 167
    invoke-static {v4, v5}, Landroid/icu/impl/Utility;->hex(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    .end local v0    # "i":I
    :cond_f3
    return-void

    .line 161
    :cond_f4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invariant failed: bounds set wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_fc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invariant failed: Lengths bad"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addInverseTo(Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Map<",
            "TT;",
            "Landroid/icu/text/UnicodeSet;",
            ">;>(TU;)TU;"
        }
    .end annotation

    .line 1243
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p1, "target":Ljava/util/Map;, "TU;"
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeMap;->values()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1244
    .local v1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1}, Landroid/icu/impl/UnicodeMap;->getSet(Ljava/lang/Object;)Landroid/icu/text/UnicodeSet;

    move-result-object v2

    .line 1245
    .local v2, "uset":Landroid/icu/text/UnicodeSet;
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    .end local v2    # "uset":Landroid/icu/text/UnicodeSet;
    goto :goto_8

    .line 1247
    :cond_1a
    return-object p1
.end method

.method public blacklist clear()Landroid/icu/impl/UnicodeMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 76
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    iget-boolean v0, p0, Landroid/icu/impl/UnicodeMap;->locked:Z

    if-nez v0, :cond_24

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Landroid/icu/impl/UnicodeMap;->length:I

    .line 80
    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_2c

    iput-object v1, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    .line 81
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->availableValues:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/UnicodeMap;->staleAvailableValues:Z

    .line 86
    iput-boolean v0, p0, Landroid/icu/impl/UnicodeMap;->errorOnReset:Z

    .line 87
    iput v0, p0, Landroid/icu/impl/UnicodeMap;->lastIndex:I

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    .line 89
    return-object p0

    .line 77
    :cond_24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify locked object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_2c
    .array-data 4
        0x0
        0x110000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public blacklist cloneAsThawed()Landroid/icu/impl/UnicodeMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 134
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    new-instance v0, Landroid/icu/impl/UnicodeMap;

    invoke-direct {v0}, Landroid/icu/impl/UnicodeMap;-><init>()V

    .line 135
    .local v0, "that":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    iget v1, p0, Landroid/icu/impl/UnicodeMap;->length:I

    iput v1, v0, Landroid/icu/impl/UnicodeMap;->length:I

    .line 136
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    .line 137
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    .line 138
    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Landroid/icu/impl/UnicodeMap;->availableValues:Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/icu/impl/UnicodeMap;->availableValues:Ljava/util/LinkedHashSet;

    .line 139
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/impl/UnicodeMap;->locked:Z

    .line 140
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    if-nez v1, :cond_2f

    const/4 v1, 0x0

    goto :goto_37

    :cond_2f
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    :goto_37
    iput-object v1, v0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    .line 141
    return-object v0
.end method

.method public bridge synthetic whitelist test-api cloneAsThawed()Ljava/lang/Object;
    .registers 2

    .line 44
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeMap;->cloneAsThawed()Landroid/icu/impl/UnicodeMap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist composeWith(Landroid/icu/impl/UnicodeMap;Landroid/icu/impl/UnicodeMap$Composer;)Landroid/icu/impl/UnicodeMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;",
            "Landroid/icu/impl/UnicodeMap$Composer<",
            "TT;>;)",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 677
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p1, "other":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p2, "composer":Landroid/icu/impl/UnicodeMap$Composer;, "Landroid/icu/impl/UnicodeMap$Composer<TT;>;"
    invoke-virtual {p1}, Landroid/icu/impl/UnicodeMap;->getAvailableValues()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 678
    .local v1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v1}, Landroid/icu/impl/UnicodeMap;->keySet(Ljava/lang/Object;)Landroid/icu/text/UnicodeSet;

    move-result-object v2

    .line 679
    .local v2, "set":Landroid/icu/text/UnicodeSet;
    invoke-virtual {p0, v2, v1, p2}, Landroid/icu/impl/UnicodeMap;->composeWith(Landroid/icu/text/UnicodeSet;Ljava/lang/Object;Landroid/icu/impl/UnicodeMap$Composer;)Landroid/icu/impl/UnicodeMap;

    .line 680
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    .end local v2    # "set":Landroid/icu/text/UnicodeSet;
    goto :goto_8

    .line 681
    :cond_1a
    return-object p0
.end method

.method public blacklist composeWith(Landroid/icu/text/UnicodeSet;Ljava/lang/Object;Landroid/icu/impl/UnicodeMap$Composer;)Landroid/icu/impl/UnicodeMap;
    .registers 10
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/UnicodeSet;",
            "TT;",
            "Landroid/icu/impl/UnicodeMap$Composer<",
            "TT;>;)",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 685
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    .local p3, "composer":Landroid/icu/impl/UnicodeMap$Composer;, "Landroid/icu/impl/UnicodeMap$Composer<TT;>;"
    new-instance v0, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v0, p1}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    .local v0, "it":Landroid/icu/text/UnicodeSetIterator;
    :goto_5
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 686
    iget v1, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    .line 687
    .local v1, "i":I
    sget v2, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-ne v1, v2, :cond_2a

    .line 688
    iget-object v2, v0, Landroid/icu/text/UnicodeSetIterator;->string:Ljava/lang/String;

    .line 689
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/icu/impl/UnicodeMap;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 690
    .local v3, "v1":Ljava/lang/Object;, "TT;"
    const/4 v4, -0x1

    invoke-virtual {p3, v4, v2, v3, p2}, Landroid/icu/impl/UnicodeMap$Composer;->compose(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 691
    .local v4, "v3":Ljava/lang/Object;, "TT;"
    if-eq v3, v4, :cond_29

    if-eqz v3, :cond_26

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 692
    :cond_26
    invoke-virtual {p0, v2, v4}, Landroid/icu/impl/UnicodeMap;->put(Ljava/lang/String;Ljava/lang/Object;)Landroid/icu/impl/UnicodeMap;

    .line 694
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "v1":Ljava/lang/Object;, "TT;"
    .end local v4    # "v3":Ljava/lang/Object;, "TT;"
    :cond_29
    goto :goto_40

    .line 695
    :cond_2a
    invoke-virtual {p0, v1}, Landroid/icu/impl/UnicodeMap;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    .line 696
    .local v2, "v1":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {p3, v1, v3, v2, p2}, Landroid/icu/impl/UnicodeMap$Composer;->compose(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 697
    .local v3, "v3":Ljava/lang/Object;, "TT;"
    if-eq v2, v3, :cond_40

    if-eqz v2, :cond_3d

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 698
    :cond_3d
    invoke-virtual {p0, v1, v3}, Landroid/icu/impl/UnicodeMap;->put(ILjava/lang/Object;)Landroid/icu/impl/UnicodeMap;

    .line 701
    .end local v1    # "i":I
    .end local v2    # "v1":Ljava/lang/Object;, "TT;"
    .end local v3    # "v3":Ljava/lang/Object;, "TT;"
    :cond_40
    :goto_40
    goto :goto_5

    .line 702
    .end local v0    # "it":Landroid/icu/text/UnicodeSetIterator;
    :cond_41
    return-object p0
.end method

.method public blacklist containsKey(I)Z
    .registers 3
    .param p1, "key"    # I

    .line 831
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    invoke-virtual {p0, p1}, Landroid/icu/impl/UnicodeMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist containsKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 824
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    invoke-virtual {p0, p1}, Landroid/icu/impl/UnicodeMap;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist containsValue(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 839
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeMap;->getAvailableValues()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist entryRanges()Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroid/icu/impl/UnicodeMap$EntryRange<",
            "TT;>;>;"
        }
    .end annotation

    .line 1002
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    new-instance v0, Landroid/icu/impl/UnicodeMap$EntryRanges;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/UnicodeMap$EntryRanges;-><init>(Landroid/icu/impl/UnicodeMap;Landroid/icu/impl/UnicodeMap-IA;)V

    return-object v0
.end method

.method public blacklist entrySet()Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "TT;>;>;"
        }
    .end annotation

    .line 932
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    new-instance v0, Landroid/icu/impl/UnicodeMap$EntrySetX;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/UnicodeMap$EntrySetX;-><init>(Landroid/icu/impl/UnicodeMap;Landroid/icu/impl/UnicodeMap-IA;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 94
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 96
    :cond_4
    :try_start_4
    move-object v1, p1

    check-cast v1, Landroid/icu/impl/UnicodeMap;

    .line 97
    .local v1, "that":Landroid/icu/impl/UnicodeMap;
    iget v2, p0, Landroid/icu/impl/UnicodeMap;->length:I

    iget v3, v1, Landroid/icu/impl/UnicodeMap;->length:I

    if-eq v2, v3, :cond_e

    return v0

    .line 98
    :cond_e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget v3, p0, Landroid/icu/impl/UnicodeMap;->length:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_32

    .line 99
    iget-object v3, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aget v3, v3, v2

    iget-object v4, v1, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_20

    return v0

    .line 100
    :cond_20
    iget-object v3, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v2

    iget-object v4, v1, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Landroid/icu/impl/UnicodeMap;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_2c
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_2c} :catch_33

    if-nez v3, :cond_2f

    return v0

    .line 98
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 102
    .end local v2    # "i":I
    :cond_32
    return v4

    .line 103
    .end local v1    # "that":Landroid/icu/impl/UnicodeMap;
    :catch_33
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/ClassCastException;
    return v0
.end method

.method public blacklist freeze()Landroid/icu/impl/UnicodeMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 763
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/UnicodeMap;->locked:Z

    .line 764
    return-object p0
.end method

.method public bridge synthetic whitelist test-api freeze()Ljava/lang/Object;
    .registers 2

    .line 44
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeMap;->freeze()Landroid/icu/impl/UnicodeMap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get(I)Ljava/lang/Object;
    .registers 5
    .param p1, "codepoint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 616
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    if-ltz p1, :cond_10

    const v0, 0x10ffff

    if-gt p1, v0, :cond_10

    .line 619
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/icu/impl/UnicodeMap;->_findIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    .line 617
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Codepoint out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 629
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->hasMoreCodePointsThan(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 630
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    if-nez v0, :cond_d

    .line 631
    const/4 v0, 0x0

    return-object v0

    .line 633
    :cond_d
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 635
    :cond_14
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/UnicodeMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAvailableValues()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 1068
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAvailableValues(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "TT;>;>(TU;)TU;"
        }
    .end annotation

    .line 1075
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p1, "result":Ljava/util/Collection;, "TU;"
    invoke-virtual {p0, p1}, Landroid/icu/impl/UnicodeMap;->values(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getErrorOnReset()Z
    .registers 2

    .line 740
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    iget-boolean v0, p0, Landroid/icu/impl/UnicodeMap;->errorOnReset:Z

    return v0
.end method

.method public blacklist getNonRangeStrings()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 812
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_18

    .line 815
    :cond_d
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 813
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRangeCount()I
    .registers 2

    .line 783
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    iget v0, p0, Landroid/icu/impl/UnicodeMap;->length:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public blacklist getRangeEnd(I)I
    .registers 4
    .param p1, "range"    # I

    .line 797
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public blacklist getRangeStart(I)I
    .registers 3
    .param p1, "range"    # I

    .line 790
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aget v0, v0, p1

    return v0
.end method

.method public blacklist getRangeValue(I)Ljava/lang/Object;
    .registers 3
    .param p1, "range"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 804
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getSet(Ljava/lang/Object;)Landroid/icu/text/UnicodeSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    .line 1082
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Landroid/icu/impl/UnicodeMap;->keySet(Ljava/lang/Object;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSet(Ljava/lang/Object;Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .registers 4
    .param p2, "result"    # Landroid/icu/text/UnicodeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/icu/text/UnicodeSet;",
            ")",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    .line 1089
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/UnicodeMap;->keySet(Ljava/lang/Object;Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getValue(I)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1061
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    invoke-virtual {p0, p1}, Landroid/icu/impl/UnicodeMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1053
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    invoke-virtual {p0, p1}, Landroid/icu/impl/UnicodeMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 115
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    iget v0, p0, Landroid/icu/impl/UnicodeMap;->length:I

    .line 117
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v2, p0, Landroid/icu/impl/UnicodeMap;->length:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_27

    .line 118
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    .line 119
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v2, v2, 0x25

    .line 120
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-eqz v0, :cond_23

    .line 121
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    move v0, v2

    goto :goto_24

    .line 120
    :cond_23
    move v0, v2

    .line 117
    .end local v2    # "result":I
    .restart local v0    # "result":I
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 124
    .end local v1    # "i":I
    :cond_27
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    if-eqz v1, :cond_35

    .line 125
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 127
    :cond_35
    return v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 846
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeMap;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api isFrozen()Z
    .registers 2

    .line 756
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    iget-boolean v0, p0, Landroid/icu/impl/UnicodeMap;->locked:Z

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1046
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeMap;->keySet()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist keySet()Landroid/icu/text/UnicodeSet;
    .registers 6

    .line 563
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 564
    .local v0, "result":Landroid/icu/text/UnicodeSet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget v2, p0, Landroid/icu/impl/UnicodeMap;->length:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_24

    .line 565
    iget-object v2, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_21

    .line 566
    iget-object v2, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aget v2, v2, v1

    iget-object v3, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    .line 564
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 569
    .end local v1    # "i":I
    :cond_24
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    if-eqz v1, :cond_31

    .line 570
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;

    .line 572
    :cond_31
    return-object v0
.end method

.method public blacklist keySet(Ljava/lang/Object;)Landroid/icu/text/UnicodeSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    .line 556
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/UnicodeMap;->keySet(Ljava/lang/Object;Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public blacklist keySet(Ljava/lang/Object;Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .registers 7
    .param p2, "result"    # Landroid/icu/text/UnicodeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/icu/text/UnicodeSet;",
            ")",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    .line 534
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_8

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    move-object p2, v0

    .line 535
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget v1, p0, Landroid/icu/impl/UnicodeMap;->length:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2b

    .line 536
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroid/icu/impl/UnicodeMap;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 537
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aget v1, v1, v0

    iget-object v2, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    .line 535
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 540
    .end local v0    # "i":I
    :cond_2b
    if-eqz p1, :cond_57

    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    if-eqz v0, :cond_57

    .line 541
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 542
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 543
    .local v2, "newValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 544
    invoke-virtual {p2, v1}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 546
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Ljava/lang/Object;, "TT;"
    :cond_56
    goto :goto_3b

    .line 548
    :cond_57
    return-object p2
.end method

.method public blacklist put(ILjava/lang/Object;)Landroid/icu/impl/UnicodeMap;
    .registers 6
    .param p1, "codepoint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 391
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-ltz p1, :cond_b

    const v0, 0x10ffff

    if-gt p1, v0, :cond_b

    .line 394
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UnicodeMap;->_put(ILjava/lang/Object;)Landroid/icu/impl/UnicodeMap;

    .line 396
    return-object p0

    .line 392
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Codepoint out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist put(Ljava/lang/String;Ljava/lang/Object;)Landroid/icu/impl/UnicodeMap;
    .registers 6
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 406
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->getSingleCodePoint(Ljava/lang/CharSequence;)I

    move-result v0

    .line 407
    .local v0, "v":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_3a

    .line 408
    iget-boolean v1, p0, Landroid/icu/impl/UnicodeMap;->locked:Z

    if-nez v1, :cond_32

    .line 411
    const/4 v1, 0x1

    if-eqz p2, :cond_23

    .line 412
    iget-object v2, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    if-nez v2, :cond_1b

    .line 413
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    .line 415
    :cond_1b
    iget-object v2, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iput-boolean v1, p0, Landroid/icu/impl/UnicodeMap;->staleAvailableValues:Z

    goto :goto_31

    .line 417
    :cond_23
    iget-object v2, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    if-eqz v2, :cond_31

    .line 418
    iget-object v2, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 419
    iput-boolean v1, p0, Landroid/icu/impl/UnicodeMap;->staleAvailableValues:Z

    .line 422
    :cond_31
    :goto_31
    return-object p0

    .line 409
    :cond_32
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Attempt to modify locked object"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 424
    :cond_3a
    invoke-virtual {p0, v0, p2}, Landroid/icu/impl/UnicodeMap;->put(ILjava/lang/Object;)Landroid/icu/impl/UnicodeMap;

    move-result-object v1

    return-object v1
.end method

.method public blacklist putAll(IILjava/lang/Object;)Landroid/icu/impl/UnicodeMap;
    .registers 8
    .param p1, "startCodePoint"    # I
    .param p2, "endCodePoint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 453
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Landroid/icu/impl/UnicodeMap;->locked:Z

    if-nez v0, :cond_3d

    .line 456
    if-ltz p1, :cond_10

    const v0, 0x10ffff

    if-gt p2, v0, :cond_10

    .line 460
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/UnicodeMap;->_putAll(IILjava/lang/Object;)Landroid/icu/impl/UnicodeMap;

    move-result-object v0

    return-object v0

    .line 457
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Codepoint out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    .line 458
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->hex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p2

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->hex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_3d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify locked object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist putAll(Landroid/icu/impl/UnicodeMap;)Landroid/icu/impl/UnicodeMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;)",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 469
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p1, "unicodeMap":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p1, Landroid/icu/impl/UnicodeMap;->length:I

    if-ge v0, v1, :cond_1d

    .line 470
    iget-object v1, p1, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 471
    .local v1, "value":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_1a

    .line 472
    iget-object v2, p1, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aget v2, v2, v0

    iget-object v3, p1, Landroid/icu/impl/UnicodeMap;->transitions:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v2, v3, v1}, Landroid/icu/impl/UnicodeMap;->_putAll(IILjava/lang/Object;)Landroid/icu/impl/UnicodeMap;

    .line 469
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 476
    .end local v0    # "i":I
    :cond_1d
    iget-object v0, p1, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    if-eqz v0, :cond_3b

    iget-object v0, p1, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 477
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    if-nez v0, :cond_34

    .line 478
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    .line 480
    :cond_34
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    iget-object v1, p1, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 482
    :cond_3b
    return-object p0
.end method

.method public blacklist putAll(Landroid/icu/text/UnicodeSet;Ljava/lang/Object;)Landroid/icu/impl/UnicodeMap;
    .registers 6
    .param p1, "codepoints"    # Landroid/icu/text/UnicodeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/UnicodeSet;",
            "TT;)",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 434
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v0, p1}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 435
    .local v0, "it":Landroid/icu/text/UnicodeSetIterator;
    :goto_5
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSetIterator;->nextRange()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 436
    iget-object v1, v0, Landroid/icu/text/UnicodeSetIterator;->string:Ljava/lang/String;

    if-nez v1, :cond_17

    .line 437
    iget v1, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    iget v2, v0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    invoke-direct {p0, v1, v2, p2}, Landroid/icu/impl/UnicodeMap;->_putAll(IILjava/lang/Object;)Landroid/icu/impl/UnicodeMap;

    goto :goto_5

    .line 439
    :cond_17
    iget-object v1, v0, Landroid/icu/text/UnicodeSetIterator;->string:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Landroid/icu/impl/UnicodeMap;->put(Ljava/lang/String;Ljava/lang/Object;)Landroid/icu/impl/UnicodeMap;

    goto :goto_5

    .line 442
    :cond_1d
    return-object p0
.end method

.method public blacklist putAll(Ljava/util/Map;)Landroid/icu/impl/UnicodeMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+TT;>;)",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 853
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+TT;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 854
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/icu/impl/UnicodeMap;->put(Ljava/lang/String;Ljava/lang/Object;)Landroid/icu/impl/UnicodeMap;

    .line 855
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_8

    .line 856
    :cond_1c
    return-object p0
.end method

.method public blacklist putAllCodepointsInto(Ljava/util/Map;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT;>;>(TU;)TU;"
        }
    .end annotation

    .line 890
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p1, "map":Ljava/util/Map;, "TU;"
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeMap;->entryRanges()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/UnicodeMap$EntryRange;

    .line 891
    .local v1, "entry":Landroid/icu/impl/UnicodeMap$EntryRange;, "Landroid/icu/impl/UnicodeMap$EntryRange<TT;>;"
    iget-object v2, v1, Landroid/icu/impl/UnicodeMap$EntryRange;->string:Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 892
    goto :goto_2c

    .line 894
    :cond_19
    iget v2, v1, Landroid/icu/impl/UnicodeMap$EntryRange;->codepoint:I

    .local v2, "cp":I
    :goto_1b
    iget v3, v1, Landroid/icu/impl/UnicodeMap$EntryRange;->codepointEnd:I

    if-gt v2, v3, :cond_2b

    .line 895
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v1, Landroid/icu/impl/UnicodeMap$EntryRange;->value:Ljava/lang/Object;

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 897
    .end local v1    # "entry":Landroid/icu/impl/UnicodeMap$EntryRange;, "Landroid/icu/impl/UnicodeMap$EntryRange<TT;>;"
    .end local v2    # "cp":I
    :cond_2b
    goto :goto_8

    .line 898
    :cond_2c
    :goto_2c
    return-object p1
.end method

.method public blacklist putAllFiltered(Landroid/icu/impl/UnicodeMap;Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/UnicodeMap;
    .registers 6
    .param p2, "filter"    # Landroid/icu/text/UnicodeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;",
            "Landroid/icu/text/UnicodeSet;",
            ")",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 492
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p1, "prop":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    new-instance v0, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v0, p2}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    .local v0, "it":Landroid/icu/text/UnicodeSetIterator;
    :cond_5
    :goto_5
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 493
    iget v1, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v2, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v1, v2, :cond_5

    .line 494
    iget v1, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    invoke-virtual {p1, v1}, Landroid/icu/impl/UnicodeMap;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    .line 495
    .local v1, "value":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_1e

    .line 496
    iget v2, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    invoke-direct {p0, v2, v1}, Landroid/icu/impl/UnicodeMap;->_put(ILjava/lang/Object;)Landroid/icu/impl/UnicodeMap;

    .line 498
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :cond_1e
    goto :goto_5

    .line 501
    .end local v0    # "it":Landroid/icu/text/UnicodeSetIterator;
    :cond_1f
    invoke-virtual {p2}, Landroid/icu/text/UnicodeSet;->strings()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 502
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/icu/impl/UnicodeMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 503
    .local v2, "value":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_3c

    .line 504
    invoke-virtual {p0, v1, v2}, Landroid/icu/impl/UnicodeMap;->put(Ljava/lang/String;Ljava/lang/Object;)Landroid/icu/impl/UnicodeMap;

    .line 506
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    :cond_3c
    goto :goto_27

    .line 507
    :cond_3d
    return-object p0
.end method

.method public blacklist putAllIn(Ljava/util/Map;)Landroid/icu/impl/UnicodeMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "-",
            "Ljava/lang/String;",
            "-TT;>;)",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 864
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<-Ljava/lang/String;-TT;>;"
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeMap;->keySet()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 865
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/icu/impl/UnicodeMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_8

    .line 867
    :cond_1c
    return-object p0
.end method

.method public blacklist putAllInto(Ljava/util/Map;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;>(TU;)TU;"
        }
    .end annotation

    .line 874
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p1, "map":Ljava/util/Map;, "TU;"
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeMap;->entryRanges()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/UnicodeMap$EntryRange;

    .line 875
    .local v1, "entry":Landroid/icu/impl/UnicodeMap$EntryRange;, "Landroid/icu/impl/UnicodeMap$EntryRange<TT;>;"
    iget-object v2, v1, Landroid/icu/impl/UnicodeMap$EntryRange;->string:Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 876
    goto :goto_2c

    .line 878
    :cond_19
    iget v2, v1, Landroid/icu/impl/UnicodeMap$EntryRange;->codepoint:I

    .local v2, "cp":I
    :goto_1b
    iget v3, v1, Landroid/icu/impl/UnicodeMap$EntryRange;->codepointEnd:I

    if-gt v2, v3, :cond_2b

    .line 879
    invoke-static {v2}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/icu/impl/UnicodeMap$EntryRange;->value:Ljava/lang/Object;

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 881
    .end local v1    # "entry":Landroid/icu/impl/UnicodeMap$EntryRange;, "Landroid/icu/impl/UnicodeMap$EntryRange<TT;>;"
    .end local v2    # "cp":I
    :cond_2b
    goto :goto_8

    .line 882
    :cond_2c
    :goto_2c
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 883
    return-object p1
.end method

.method public blacklist putAllInverse(Ljava/util/Map;)Landroid/icu/impl/UnicodeMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TT;",
            "Landroid/icu/text/UnicodeSet;",
            ">;)",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 1267
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p1, "source":Ljava/util/Map;, "Ljava/util/Map<TT;Landroid/icu/text/UnicodeSet;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1268
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Landroid/icu/text/UnicodeSet;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/UnicodeSet;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/icu/impl/UnicodeMap;->putAll(Landroid/icu/text/UnicodeSet;Ljava/lang/Object;)Landroid/icu/impl/UnicodeMap;

    .line 1269
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Landroid/icu/text/UnicodeSet;>;"
    goto :goto_8

    .line 1270
    :cond_22
    return-object p0
.end method

.method public blacklist remove(I)Landroid/icu/impl/UnicodeMap;
    .registers 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 912
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/UnicodeMap;->put(ILjava/lang/Object;)Landroid/icu/impl/UnicodeMap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist remove(Ljava/lang/String;)Landroid/icu/impl/UnicodeMap;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 905
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/UnicodeMap;->put(Ljava/lang/String;Ljava/lang/Object;)Landroid/icu/impl/UnicodeMap;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist removeAll(Landroid/icu/impl/UnicodeMap;)Landroid/icu/impl/UnicodeMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;)",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 1185
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p1, "reference":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/UnicodeMap;->removeRetainAll(Landroid/icu/impl/UnicodeMap;Z)Landroid/icu/impl/UnicodeMap;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist removeAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/UnicodeMap;
    .registers 3
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/UnicodeSet;",
            ")",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 1181
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/UnicodeMap;->putAll(Landroid/icu/text/UnicodeSet;Ljava/lang/Object;)Landroid/icu/impl/UnicodeMap;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist retainAll(Landroid/icu/impl/UnicodeMap;)Landroid/icu/impl/UnicodeMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;)",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 1208
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p1, "reference":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/UnicodeMap;->removeRetainAll(Landroid/icu/impl/UnicodeMap;Z)Landroid/icu/impl/UnicodeMap;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/UnicodeMap;
    .registers 7
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/UnicodeSet;",
            ")",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 1189
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 1191
    .local v0, "toNuke":Landroid/icu/text/UnicodeSet;
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeMap;->entryRanges()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/UnicodeMap$EntryRange;

    .line 1192
    .local v2, "ae":Landroid/icu/impl/UnicodeMap$EntryRange;, "Landroid/icu/impl/UnicodeMap$EntryRange<TT;>;"
    iget-object v3, v2, Landroid/icu/impl/UnicodeMap$EntryRange;->string:Ljava/lang/String;

    if-eqz v3, :cond_2b

    .line 1193
    iget-object v3, v2, Landroid/icu/impl/UnicodeMap$EntryRange;->string:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 1194
    iget-object v3, v2, Landroid/icu/impl/UnicodeMap$EntryRange;->string:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    goto :goto_3d

    .line 1197
    :cond_2b
    iget v3, v2, Landroid/icu/impl/UnicodeMap$EntryRange;->codepoint:I

    .local v3, "i":I
    :goto_2d
    iget v4, v2, Landroid/icu/impl/UnicodeMap$EntryRange;->codepointEnd:I

    if-gt v3, v4, :cond_3d

    .line 1198
    invoke-virtual {p1, v3}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 1199
    invoke-virtual {v0, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1197
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 1203
    .end local v2    # "ae":Landroid/icu/impl/UnicodeMap$EntryRange;, "Landroid/icu/impl/UnicodeMap$EntryRange<TT;>;"
    .end local v3    # "i":I
    :cond_3d
    :goto_3d
    goto :goto_d

    .line 1204
    :cond_3e
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/UnicodeMap;->putAll(Landroid/icu/text/UnicodeSet;Ljava/lang/Object;)Landroid/icu/impl/UnicodeMap;

    move-result-object v1

    return-object v1
.end method

.method public blacklist setErrorOnReset(Z)Landroid/icu/impl/UnicodeMap;
    .registers 2
    .param p1, "errorOnReset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 747
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    iput-boolean p1, p0, Landroid/icu/impl/UnicodeMap;->errorOnReset:Z

    .line 748
    return-object p0
.end method

.method public blacklist setMissing(Ljava/lang/Object;)Landroid/icu/impl/UnicodeMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation

    .line 517
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeMap;->getAvailableValues()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/UnicodeMap;->staleAvailableValues:Z

    .line 519
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->availableValues:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 520
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget v1, p0, Landroid/icu/impl/UnicodeMap;->length:I

    if-ge v0, v1, :cond_24

    .line 521
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_21

    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 520
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 523
    .end local v0    # "i":I
    :cond_24
    return-object p0

    .line 525
    :cond_25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/impl/UnicodeMap;->keySet(Ljava/lang/Object;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/UnicodeMap;->putAll(Landroid/icu/text/UnicodeSet;Ljava/lang/Object;)Landroid/icu/impl/UnicodeMap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist size()I
    .registers 6

    .line 919
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    .line 920
    .local v0, "result":I
    :goto_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget v2, p0, Landroid/icu/impl/UnicodeMap;->length:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_29

    .line 921
    iget-object v2, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 922
    .local v2, "value":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_1a

    goto :goto_26

    .line 923
    :cond_1a
    iget-object v3, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aget v4, v4, v1

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 920
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 925
    .end local v1    # "i":I
    :cond_29
    return v0
.end method

.method public final blacklist stringKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1235
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeMap;->getNonRangeStrings()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 706
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/impl/UnicodeMap;->toString(Ljava/util/Comparator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toString(Ljava/util/Comparator;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 710
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p1, "collected":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 711
    .local v0, "result":Ljava/lang/StringBuffer;
    const-string v1, "\n"

    const-string v2, "="

    if-nez p1, :cond_88

    .line 712
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    iget v4, p0, Landroid/icu/impl/UnicodeMap;->length:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_4f

    .line 713
    iget-object v4, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v4, v4, v3

    .line 714
    .local v4, "value":Ljava/lang/Object;, "TT;"
    if-nez v4, :cond_19

    goto :goto_4c

    .line 715
    :cond_19
    iget-object v5, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    aget v5, v5, v3

    .line 716
    .local v5, "start":I
    iget-object v6, p0, Landroid/icu/impl/UnicodeMap;->transitions:[I

    add-int/lit8 v7, v3, 0x1

    aget v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    .line 717
    .local v6, "end":I
    int-to-long v7, v5

    invoke-static {v7, v8}, Landroid/icu/impl/Utility;->hex(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 718
    if-eq v5, v6, :cond_3d

    const-string v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    int-to-long v8, v6

    invoke-static {v8, v9}, Landroid/icu/impl/Utility;->hex(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 719
    :cond_3d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 712
    .end local v4    # "value":Ljava/lang/Object;, "TT;"
    .end local v5    # "start":I
    .end local v6    # "end":I
    :goto_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 721
    .end local v3    # "i":I
    :cond_4f
    iget-object v3, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    if-eqz v3, :cond_b9

    .line 722
    iget-object v3, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 723
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    invoke-virtual {v6, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 724
    .end local v4    # "s":Ljava/lang/String;
    goto :goto_5d

    :cond_87
    goto :goto_b9

    .line 727
    :cond_88
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0, v3}, Landroid/icu/impl/UnicodeMap;->values(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 728
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_97
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 729
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 730
    .local v5, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v5}, Landroid/icu/impl/UnicodeMap;->keySet(Ljava/lang/Object;)Landroid/icu/text/UnicodeSet;

    move-result-object v6

    .line 731
    .local v6, "s":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v6}, Landroid/icu/text/UnicodeSet;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 732
    .end local v5    # "value":Ljava/lang/Object;, "TT;"
    .end local v6    # "s":Landroid/icu/text/UnicodeSet;
    goto :goto_97

    .line 734
    .end local v3    # "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_b9
    :goto_b9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic blacklist transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 44
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/impl/UnicodeMap;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist transform(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "source"    # Ljava/lang/String;

    .line 647
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 649
    .local v0, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 650
    invoke-static {p1, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    .line 651
    .local v2, "cp":I
    invoke-virtual {p0, v2}, Landroid/icu/impl/UnicodeMap;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    .line 652
    .local v3, "mResult":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_1a

    .line 653
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1d

    .line 655
    :cond_1a
    invoke-static {v0, v2}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 649
    .end local v3    # "mResult":Ljava/lang/Object;, "TT;"
    :goto_1d
    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_6

    .line 658
    .end local v1    # "i":I
    .end local v2    # "cp":I
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist values(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "TT;>;>(TU;)TU;"
        }
    .end annotation

    .line 583
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    .local p1, "result":Ljava/util/Collection;, "TU;"
    iget-boolean v0, p0, Landroid/icu/impl/UnicodeMap;->staleAvailableValues:Z

    if-eqz v0, :cond_37

    .line 586
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 587
    .local v0, "temp":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget v2, p0, Landroid/icu/impl/UnicodeMap;->length:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_20

    .line 588
    iget-object v2, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1d

    iget-object v2, p0, Landroid/icu/impl/UnicodeMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 587
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 590
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->availableValues:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->retainAll(Ljava/util/Collection;)Z

    .line 591
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    if-eqz v1, :cond_34

    .line 592
    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->availableValues:Ljava/util/LinkedHashSet;

    iget-object v2, p0, Landroid/icu/impl/UnicodeMap;->stringMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 594
    :cond_34
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/impl/UnicodeMap;->staleAvailableValues:Z

    .line 596
    .end local v0    # "temp":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    :cond_37
    if-nez p1, :cond_45

    .line 597
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Landroid/icu/impl/UnicodeMap;->availableValues:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    move-object p1, v0

    .line 599
    :cond_45
    iget-object v0, p0, Landroid/icu/impl/UnicodeMap;->availableValues:Ljava/util/LinkedHashSet;

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 600
    return-object p1
.end method

.method public blacklist values()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 607
    .local p0, "this":Landroid/icu/impl/UnicodeMap;, "Landroid/icu/impl/UnicodeMap<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/impl/UnicodeMap;->getAvailableValues(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
