.class public Landroid/icu/impl/StringRange;
.super Ljava/lang/Object;
.source "StringRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/StringRange$Adder;,
        Landroid/icu/impl/StringRange$Ranges;,
        Landroid/icu/impl/StringRange$Range;
    }
.end annotation


# static fields
.field public static final blacklist COMPARE_INT_ARRAYS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Landroid/icu/impl/StringRange$1;

    invoke-direct {v0}, Landroid/icu/impl/StringRange$1;-><init>()V

    sput-object v0, Landroid/icu/impl/StringRange;->COMPARE_INT_ARRAYS:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist add(II[I[ILjava/lang/StringBuilder;Ljava/util/Collection;)V
    .registers 17
    .param p0, "endIndex"    # I
    .param p1, "startOffset"    # I
    .param p2, "starts"    # [I
    .param p3, "ends"    # [I
    .param p4, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[I[I",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 274
    .local p5, "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v4, p4

    add-int v0, p0, p1

    aget v6, p2, v0

    .line 275
    .local v6, "start":I
    aget v7, p3, p0

    .line 276
    .local v7, "end":I
    if-gt v6, v7, :cond_39

    .line 279
    array-length v0, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p0, v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    move v8, v1

    .line 280
    .local v8, "last":Z
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    .line 281
    .local v9, "startLen":I
    move v0, v6

    move v10, v0

    .local v10, "i":I
    :goto_17
    if-gt v10, v7, :cond_38

    .line 282
    invoke-virtual {p4, v10}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 283
    if-eqz v8, :cond_28

    .line 284
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, p5

    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 286
    :cond_28
    move-object/from16 v5, p5

    add-int/lit8 v0, p0, 0x1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/icu/impl/StringRange;->add(II[I[ILjava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 288
    :goto_32
    invoke-virtual {p4, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 281
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    .line 290
    .end local v10    # "i":I
    :cond_38
    return-void

    .line 277
    .end local v8    # "last":Z
    .end local v9    # "startLen":I
    :cond_39
    new-instance v0, Landroid/icu/util/ICUException;

    const-string v1, "Range must have x\u1d62 \u2264 y\u1d62 for each index i"

    invoke-direct {v0, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist compact(ILjava/util/Set;)Ljava/util/LinkedList;
    .registers 8
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/icu/impl/StringRange$Ranges;",
            ">;)",
            "Ljava/util/LinkedList<",
            "Landroid/icu/impl/StringRange$Ranges;",
            ">;"
        }
    .end annotation

    .line 123
    .local p1, "inputRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/StringRange$Ranges;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 124
    .local v0, "ranges":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/icu/impl/StringRange$Ranges;>;"
    add-int/lit8 v1, p0, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_2d

    .line 125
    const/4 v2, 0x0

    .line 126
    .local v2, "last":Landroid/icu/impl/StringRange$Ranges;
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/StringRange$Ranges;>;"
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 127
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/StringRange$Ranges;

    .line 128
    .local v4, "item":Landroid/icu/impl/StringRange$Ranges;
    if-nez v2, :cond_1e

    .line 129
    move-object v2, v4

    goto :goto_29

    .line 130
    :cond_1e
    invoke-virtual {v2, v1, v4}, Landroid/icu/impl/StringRange$Ranges;->merge(ILandroid/icu/impl/StringRange$Ranges;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 131
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_29

    .line 133
    :cond_28
    move-object v2, v4

    .line 135
    .end local v4    # "item":Landroid/icu/impl/StringRange$Ranges;
    :goto_29
    goto :goto_e

    .line 124
    .end local v2    # "last":Landroid/icu/impl/StringRange$Ranges;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/StringRange$Ranges;>;"
    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 137
    .end local v1    # "i":I
    :cond_2d
    return-object v0
.end method

.method public static blacklist compact(Ljava/util/Set;Landroid/icu/impl/StringRange$Adder;Z)V
    .registers 4
    .param p1, "adder"    # Landroid/icu/impl/StringRange$Adder;
    .param p2, "shorterPairs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/impl/StringRange$Adder;",
            "Z)V"
        }
    .end annotation

    .line 119
    .local p0, "source":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/icu/impl/StringRange;->compact(Ljava/util/Set;Landroid/icu/impl/StringRange$Adder;ZZ)V

    .line 120
    return-void
.end method

.method public static blacklist compact(Ljava/util/Set;Landroid/icu/impl/StringRange$Adder;ZZ)V
    .registers 14
    .param p1, "adder"    # Landroid/icu/impl/StringRange$Adder;
    .param p2, "shorterPairs"    # Z
    .param p3, "moreCompact"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/impl/StringRange$Adder;",
            "ZZ)V"
        }
    .end annotation

    .line 64
    .local p0, "source":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p3, :cond_70

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "start":Ljava/lang/String;
    const/4 v1, 0x0

    .line 67
    .local v1, "end":Ljava/lang/String;
    const/4 v2, 0x0

    .line 68
    .local v2, "lastCp":I
    const/4 v3, 0x0

    .line 69
    .local v3, "prefixLen":I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 70
    .local v5, "s":Ljava/lang/String;
    if-eqz v0, :cond_48

    .line 71
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v0, v7, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 72
    invoke-virtual {v5, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    .line 73
    .local v7, "currentCp":I
    add-int/lit8 v8, v2, 0x1

    if-ne v7, v8, :cond_36

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v9, v3

    if-ne v8, v9, :cond_36

    .line 74
    move-object v1, v5

    .line 75
    move v2, v7

    .line 76
    goto :goto_a

    .line 80
    .end local v7    # "currentCp":I
    :cond_36
    if-nez v1, :cond_39

    goto :goto_45

    .line 81
    :cond_39
    if-nez p2, :cond_3d

    move-object v6, v1

    goto :goto_45

    .line 82
    :cond_3d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 80
    :goto_45
    invoke-interface {p1, v0, v6}, Landroid/icu/impl/StringRange$Adder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_48
    move-object v0, v5

    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->codePointBefore(I)I

    move-result v2

    .line 88
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    sub-int v3, v6, v7

    .line 89
    .end local v5    # "s":Ljava/lang/String;
    goto :goto_a

    .line 90
    :cond_5d
    if-nez v1, :cond_60

    goto :goto_6c

    .line 91
    :cond_60
    if-nez p2, :cond_64

    move-object v6, v1

    goto :goto_6c

    .line 92
    :cond_64
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 90
    :goto_6c
    invoke-interface {p1, v0, v6}, Landroid/icu/impl/StringRange$Adder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v0    # "start":Ljava/lang/String;
    .end local v1    # "end":Ljava/lang/String;
    .end local v2    # "lastCp":I
    .end local v3    # "prefixLen":I
    goto :goto_dd

    .line 97
    :cond_70
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-class v1, Ljava/util/TreeSet;

    invoke-static {v0, v1}, Landroid/icu/impl/Relation;->of(Ljava/util/Map;Ljava/lang/Class;)Landroid/icu/impl/Relation;

    move-result-object v0

    .line 98
    .local v0, "lengthToArrays":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<Ljava/lang/Integer;Landroid/icu/impl/StringRange$Ranges;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 99
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Landroid/icu/impl/StringRange$Ranges;

    invoke-direct {v3, v2}, Landroid/icu/impl/StringRange$Ranges;-><init>(Ljava/lang/String;)V

    .line 100
    .local v3, "item":Landroid/icu/impl/StringRange$Ranges;
    invoke-virtual {v3}, Landroid/icu/impl/StringRange$Ranges;->size()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/icu/impl/Relation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "item":Landroid/icu/impl/StringRange$Ranges;
    goto :goto_7f

    .line 103
    :cond_98
    invoke-virtual {v0}, Landroid/icu/impl/Relation;->keyValuesSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_dd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 104
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Set<Landroid/icu/impl/StringRange$Ranges;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-static {v3, v4}, Landroid/icu/impl/StringRange;->compact(ILjava/util/Set;)Ljava/util/LinkedList;

    move-result-object v3

    .line 105
    .local v3, "compacted":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/icu/impl/StringRange$Ranges;>;"
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_dc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/StringRange$Ranges;

    .line 106
    .local v5, "ranges":Landroid/icu/impl/StringRange$Ranges;
    invoke-virtual {v5}, Landroid/icu/impl/StringRange$Ranges;->start()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p2}, Landroid/icu/impl/StringRange$Ranges;->end(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Landroid/icu/impl/StringRange$Adder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v5    # "ranges":Landroid/icu/impl/StringRange$Ranges;
    goto :goto_c4

    .line 108
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Set<Landroid/icu/impl/StringRange$Ranges;>;>;"
    .end local v3    # "compacted":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/icu/impl/StringRange$Ranges;>;"
    :cond_dc
    goto :goto_a0

    .line 110
    .end local v0    # "lengthToArrays":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<Ljava/lang/Integer;Landroid/icu/impl/StringRange$Ranges;>;"
    :cond_dd
    :goto_dd
    return-void
.end method

.method public static blacklist expand(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;
    .registers 10
    .param p0, "start"    # Ljava/lang/String;
    .param p1, "end"    # Ljava/lang/String;
    .param p2, "requireSameLength"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 250
    .local p3, "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p0, :cond_4a

    if-eqz p1, :cond_4a

    .line 253
    invoke-static {p0}, Landroid/icu/lang/CharSequences;->codePoints(Ljava/lang/CharSequence;)[I

    move-result-object v2

    .line 254
    .local v2, "startCps":[I
    invoke-static {p1}, Landroid/icu/lang/CharSequences;->codePoints(Ljava/lang/CharSequence;)[I

    move-result-object v3

    .line 255
    .local v3, "endCps":[I
    array-length v0, v2

    array-length v1, v3

    sub-int v1, v0, v1

    .line 257
    .local v1, "startOffset":I
    if-eqz p2, :cond_1d

    if-nez v1, :cond_15

    goto :goto_1d

    .line 258
    :cond_15
    new-instance v0, Landroid/icu/util/ICUException;

    const-string v4, "Range must have equal-length strings"

    invoke-direct {v0, v4}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1d
    :goto_1d
    if-ltz v1, :cond_41

    .line 261
    array-length v0, v3

    if-eqz v0, :cond_38

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_28
    if-ge v0, v1, :cond_32

    .line 267
    aget v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 269
    .end local v0    # "i":I
    :cond_32
    const/4 v0, 0x0

    move-object v5, p3

    .end local p3    # "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v5, "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static/range {v0 .. v5}, Landroid/icu/impl/StringRange;->add(II[I[ILjava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 270
    return-object v5

    .line 262
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local p3    # "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_38
    move-object v5, p3

    .end local p3    # "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v5    # "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance p3, Landroid/icu/util/ICUException;

    const-string v0, "Range must have end-length > 0"

    invoke-direct {p3, v0}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 260
    .end local v5    # "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local p3    # "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_41
    move-object v5, p3

    .end local p3    # "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v5    # "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance p3, Landroid/icu/util/ICUException;

    const-string v0, "Range must have start-length \u2265 end-length"

    invoke-direct {p3, v0}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 250
    .end local v1    # "startOffset":I
    .end local v2    # "startCps":[I
    .end local v3    # "endCps":[I
    .end local v5    # "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local p3    # "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_4a
    move-object v5, p3

    .line 251
    .end local p3    # "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v5    # "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance p3, Landroid/icu/util/ICUException;

    const-string v0, "Range must have 2 valid strings"

    invoke-direct {p3, v0}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p3
.end method
