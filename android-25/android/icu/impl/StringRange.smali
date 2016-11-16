.class public Landroid/icu/impl/StringRange;
.super Ljava/lang/Object;
.source "StringRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/StringRange$1;,
        Landroid/icu/impl/StringRange$Adder;,
        Landroid/icu/impl/StringRange$Range;,
        Landroid/icu/impl/StringRange$Ranges;
    }
.end annotation


# static fields
.field public static final COMPARE_INT_ARRAYS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[I>;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 37
    new-instance v0, Landroid/icu/impl/StringRange$1;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/StringRange$1;-><init>()V

    #@5
    sput-object v0, Landroid/icu/impl/StringRange;->COMPARE_INT_ARRAYS:Ljava/util/Comparator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static add(II[I[ILjava/lang/StringBuilder;Ljava/util/Collection;)V
    .locals 12
    .param p0, "endIndex"    # I
    .param p1, "startOffset"    # I
    .param p2, "starts"    # [I
    .param p3, "ends"    # [I
    .param p4, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[I[I",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 266
    .local p5, "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    add-int v1, p0, p1

    #@2
    aget v10, p2, v1

    #@4
    .line 267
    .local v10, "start":I
    aget v7, p3, p0

    #@6
    .line 268
    .local v7, "end":I
    if-le v10, v7, :cond_0

    #@8
    .line 269
    new-instance v1, Landroid/icu/util/ICUException;

    #@a
    const-string/jumbo v2, "Range must have x\u1d62 \u2264 y\u1d62 for each index i"

    #@d
    invoke-direct {v1, v2}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 271
    :cond_0
    array-length v1, p3

    #@12
    add-int/lit8 v1, v1, -0x1

    #@14
    if-ne p0, v1, :cond_1

    #@16
    const/4 v9, 0x1

    #@17
    .line 272
    .local v9, "last":Z
    :goto_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->length()I

    #@1a
    move-result v11

    #@1b
    .line 273
    .local v11, "startLen":I
    move v8, v10

    #@1c
    .local v8, "i":I
    :goto_1
    if-gt v8, v7, :cond_3

    #@1e
    .line 274
    move-object/from16 v0, p4

    #@20
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@23
    .line 275
    if-eqz v9, :cond_2

    #@25
    .line 276
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    move-object/from16 v0, p5

    #@2b
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@2e
    .line 280
    :goto_2
    move-object/from16 v0, p4

    #@30
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    #@33
    .line 273
    add-int/lit8 v8, v8, 0x1

    #@35
    goto :goto_1

    #@36
    .line 271
    .end local v8    # "i":I
    .end local v9    # "last":Z
    .end local v11    # "startLen":I
    :cond_1
    const/4 v9, 0x0

    #@37
    .restart local v9    # "last":Z
    goto :goto_0

    #@38
    .line 278
    .restart local v8    # "i":I
    .restart local v11    # "startLen":I
    :cond_2
    add-int/lit8 v1, p0, 0x1

    #@3a
    move v2, p1

    #@3b
    move-object v3, p2

    #@3c
    move-object v4, p3

    #@3d
    move-object/from16 v5, p4

    #@3f
    move-object/from16 v6, p5

    #@41
    invoke-static/range {v1 .. v6}, Landroid/icu/impl/StringRange;->add(II[I[ILjava/lang/StringBuilder;Ljava/util/Collection;)V

    #@44
    goto :goto_2

    #@45
    .line 265
    :cond_3
    return-void
.end method

.method private static compact(ILjava/util/Set;)Ljava/util/LinkedList;
    .locals 6
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/impl/StringRange$Ranges;",
            ">;)",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/icu/impl/StringRange$Ranges;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 117
    .local p1, "inputRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/StringRange$Ranges;>;"
    new-instance v4, Ljava/util/LinkedList;

    #@2
    invoke-direct {v4, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    #@5
    .line 118
    .local v4, "ranges":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/icu/impl/StringRange$Ranges;>;"
    add-int/lit8 v0, p0, -0x1

    #@7
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    #@9
    .line 119
    const/4 v3, 0x0

    #@a
    .line 120
    .local v3, "last":Landroid/icu/impl/StringRange$Ranges;
    invoke-virtual {v4}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .end local v3    # "last":Landroid/icu/impl/StringRange$Ranges;
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/StringRange$Ranges;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v5

    #@12
    if-eqz v5, :cond_2

    #@14
    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroid/icu/impl/StringRange$Ranges;

    #@1a
    .line 122
    .local v2, "item":Landroid/icu/impl/StringRange$Ranges;
    if-nez v3, :cond_0

    #@1c
    .line 123
    move-object v3, v2

    #@1d
    .local v3, "last":Landroid/icu/impl/StringRange$Ranges;
    goto :goto_1

    #@1e
    .line 124
    .end local v3    # "last":Landroid/icu/impl/StringRange$Ranges;
    :cond_0
    invoke-virtual {v3, v0, v2}, Landroid/icu/impl/StringRange$Ranges;->merge(ILandroid/icu/impl/StringRange$Ranges;)Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_1

    #@24
    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@27
    goto :goto_1

    #@28
    .line 127
    :cond_1
    move-object v3, v2

    #@29
    .restart local v3    # "last":Landroid/icu/impl/StringRange$Ranges;
    goto :goto_1

    #@2a
    .line 118
    .end local v2    # "item":Landroid/icu/impl/StringRange$Ranges;
    .end local v3    # "last":Landroid/icu/impl/StringRange$Ranges;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 131
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/StringRange$Ranges;>;"
    :cond_3
    return-object v4
.end method

.method public static compact(Ljava/util/Set;Landroid/icu/impl/StringRange$Adder;Z)V
    .locals 1
    .param p1, "adder"    # Landroid/icu/impl/StringRange$Adder;
    .param p2, "shorterPairs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/impl/StringRange$Adder;",
            "Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 113
    .local p0, "source":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/icu/impl/StringRange;->compact(Ljava/util/Set;Landroid/icu/impl/StringRange$Adder;ZZ)V

    #@4
    .line 112
    return-void
.end method

.method public static compact(Ljava/util/Set;Landroid/icu/impl/StringRange$Adder;ZZ)V
    .locals 19
    .param p1, "adder"    # Landroid/icu/impl/StringRange$Adder;
    .param p2, "shorterPairs"    # Z
    .param p3, "moreCompact"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/impl/StringRange$Adder;",
            "ZZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 58
    .local p0, "source":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p3, :cond_8

    #@2
    .line 59
    const/16 v16, 0x0

    #@4
    .line 60
    .local v16, "start":Ljava/lang/String;
    const/4 v5, 0x0

    #@5
    .line 61
    .local v5, "end":Ljava/lang/String;
    const/4 v9, 0x0

    #@6
    .line 62
    .local v9, "lastCp":I
    const/4 v11, 0x0

    #@7
    .line 63
    .local v11, "prefixLen":I
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v15

    #@b
    .end local v5    # "end":Ljava/lang/String;
    .end local v16    # "start":Ljava/lang/String;
    .local v15, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v17

    #@f
    if-eqz v17, :cond_4

    #@11
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v14

    #@15
    check-cast v14, Ljava/lang/String;

    #@17
    .line 64
    .local v14, "s":Ljava/lang/String;
    if-eqz v16, :cond_2

    #@19
    .line 65
    const/16 v17, 0x0

    #@1b
    const/16 v18, 0x0

    #@1d
    move/from16 v0, v17

    #@1f
    move-object/from16 v1, v16

    #@21
    move/from16 v2, v18

    #@23
    invoke-virtual {v14, v0, v1, v2, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@26
    move-result v17

    #@27
    if-eqz v17, :cond_0

    #@29
    .line 66
    invoke-virtual {v14, v11}, Ljava/lang/String;->codePointAt(I)I

    #@2c
    move-result v4

    #@2d
    .line 67
    .local v4, "currentCp":I
    add-int/lit8 v17, v9, 0x1

    #@2f
    move/from16 v0, v17

    #@31
    if-ne v4, v0, :cond_0

    #@33
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@36
    move-result v17

    #@37
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    #@3a
    move-result v18

    #@3b
    add-int v18, v18, v11

    #@3d
    move/from16 v0, v17

    #@3f
    move/from16 v1, v18

    #@41
    if-ne v0, v1, :cond_0

    #@43
    .line 68
    move-object v5, v14

    #@44
    .line 69
    .local v5, "end":Ljava/lang/String;
    move v9, v4

    #@45
    .line 70
    goto :goto_0

    #@46
    .line 74
    .end local v4    # "currentCp":I
    .end local v5    # "end":Ljava/lang/String;
    :cond_0
    if-nez v5, :cond_3

    #@48
    const/4 v5, 0x0

    #@49
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    #@4b
    move-object/from16 v1, v16

    #@4d
    invoke-interface {v0, v1, v5}, Landroid/icu/impl/StringRange$Adder;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@50
    .line 79
    :cond_2
    move-object/from16 v16, v14

    #@52
    .line 80
    .local v16, "start":Ljava/lang/String;
    const/4 v5, 0x0

    #@53
    .line 81
    .local v5, "end":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@56
    move-result v17

    #@57
    move/from16 v0, v17

    #@59
    invoke-virtual {v14, v0}, Ljava/lang/String;->codePointBefore(I)I

    #@5c
    move-result v9

    #@5d
    .line 82
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@60
    move-result v17

    #@61
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    #@64
    move-result v18

    #@65
    sub-int v11, v17, v18

    #@67
    goto :goto_0

    #@68
    .line 75
    .end local v5    # "end":Ljava/lang/String;
    .end local v16    # "start":Ljava/lang/String;
    :cond_3
    if-eqz p2, :cond_1

    #@6a
    .line 76
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@6d
    move-result v17

    #@6e
    move/from16 v0, v17

    #@70
    invoke-virtual {v5, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@73
    move-result-object v5

    #@74
    goto :goto_1

    #@75
    .line 84
    .end local v14    # "s":Ljava/lang/String;
    :cond_4
    if-nez v5, :cond_7

    #@77
    const/4 v5, 0x0

    #@78
    :cond_5
    :goto_2
    move-object/from16 v0, p1

    #@7a
    move-object/from16 v1, v16

    #@7c
    invoke-interface {v0, v1, v5}, Landroid/icu/impl/StringRange$Adder;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7f
    .line 57
    .end local v9    # "lastCp":I
    .end local v11    # "prefixLen":I
    :cond_6
    return-void

    #@80
    .line 85
    .restart local v9    # "lastCp":I
    .restart local v11    # "prefixLen":I
    :cond_7
    if-eqz p2, :cond_5

    #@82
    .line 86
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@85
    move-result v17

    #@86
    move/from16 v0, v17

    #@88
    invoke-virtual {v5, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8b
    move-result-object v5

    #@8c
    goto :goto_2

    #@8d
    .line 91
    .end local v9    # "lastCp":I
    .end local v11    # "prefixLen":I
    .end local v15    # "s$iterator":Ljava/util/Iterator;
    :cond_8
    new-instance v17, Ljava/util/TreeMap;

    #@8f
    invoke-direct/range {v17 .. v17}, Ljava/util/TreeMap;-><init>()V

    #@92
    const-class v18, Ljava/util/TreeSet;

    #@94
    invoke-static/range {v17 .. v18}, Landroid/icu/impl/Relation;->of(Ljava/util/Map;Ljava/lang/Class;)Landroid/icu/impl/Relation;

    #@97
    move-result-object v10

    #@98
    .line 92
    .local v10, "lengthToArrays":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<Ljava/lang/Integer;Landroid/icu/impl/StringRange$Ranges;>;"
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9b
    move-result-object v15

    #@9c
    .restart local v15    # "s$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@9f
    move-result v17

    #@a0
    if-eqz v17, :cond_9

    #@a2
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a5
    move-result-object v14

    #@a6
    check-cast v14, Ljava/lang/String;

    #@a8
    .line 93
    .restart local v14    # "s":Ljava/lang/String;
    new-instance v8, Landroid/icu/impl/StringRange$Ranges;

    #@aa
    invoke-direct {v8, v14}, Landroid/icu/impl/StringRange$Ranges;-><init>(Ljava/lang/String;)V

    #@ad
    .line 94
    .local v8, "item":Landroid/icu/impl/StringRange$Ranges;
    invoke-virtual {v8}, Landroid/icu/impl/StringRange$Ranges;->size()Ljava/lang/Integer;

    #@b0
    move-result-object v17

    #@b1
    move-object/from16 v0, v17

    #@b3
    invoke-virtual {v10, v0, v8}, Landroid/icu/impl/Relation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b6
    goto :goto_3

    #@b7
    .line 97
    .end local v8    # "item":Landroid/icu/impl/StringRange$Ranges;
    .end local v14    # "s":Ljava/lang/String;
    :cond_9
    invoke-virtual {v10}, Landroid/icu/impl/Relation;->keyValuesSet()Ljava/util/Set;

    #@ba
    move-result-object v17

    #@bb
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@be
    move-result-object v7

    #@bf
    .local v7, "entry$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@c2
    move-result v17

    #@c3
    if-eqz v17, :cond_6

    #@c5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c8
    move-result-object v6

    #@c9
    check-cast v6, Ljava/util/Map$Entry;

    #@cb
    .line 98
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Set<Landroid/icu/impl/StringRange$Ranges;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@ce
    move-result-object v17

    #@cf
    check-cast v17, Ljava/lang/Integer;

    #@d1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    #@d4
    move-result v18

    #@d5
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@d8
    move-result-object v17

    #@d9
    check-cast v17, Ljava/util/Set;

    #@db
    move/from16 v0, v18

    #@dd
    move-object/from16 v1, v17

    #@df
    invoke-static {v0, v1}, Landroid/icu/impl/StringRange;->compact(ILjava/util/Set;)Ljava/util/LinkedList;

    #@e2
    move-result-object v3

    #@e3
    .line 99
    .local v3, "compacted":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/icu/impl/StringRange$Ranges;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e6
    move-result-object v13

    #@e7
    .local v13, "ranges$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@ea
    move-result v17

    #@eb
    if-eqz v17, :cond_a

    #@ed
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f0
    move-result-object v12

    #@f1
    check-cast v12, Landroid/icu/impl/StringRange$Ranges;

    #@f3
    .line 100
    .local v12, "ranges":Landroid/icu/impl/StringRange$Ranges;
    invoke-virtual {v12}, Landroid/icu/impl/StringRange$Ranges;->start()Ljava/lang/String;

    #@f6
    move-result-object v17

    #@f7
    move/from16 v0, p2

    #@f9
    invoke-virtual {v12, v0}, Landroid/icu/impl/StringRange$Ranges;->end(Z)Ljava/lang/String;

    #@fc
    move-result-object v18

    #@fd
    move-object/from16 v0, p1

    #@ff
    move-object/from16 v1, v17

    #@101
    move-object/from16 v2, v18

    #@103
    invoke-interface {v0, v1, v2}, Landroid/icu/impl/StringRange$Adder;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@106
    goto :goto_4
.end method

.method public static expand(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .param p0, "start"    # Ljava/lang/String;
    .param p1, "end"    # Ljava/lang/String;
    .param p2, "requireSameLength"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "output":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    .line 242
    if-eqz p0, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    .line 243
    :cond_0
    new-instance v0, Landroid/icu/util/ICUException;

    #@7
    const-string/jumbo v5, "Range must have 2 valid strings"

    #@a
    invoke-direct {v0, v5}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 245
    :cond_1
    invoke-static {p0}, Landroid/icu/lang/CharSequences;->codePoints(Ljava/lang/CharSequence;)[I

    #@11
    move-result-object v2

    #@12
    .line 246
    .local v2, "startCps":[I
    invoke-static {p1}, Landroid/icu/lang/CharSequences;->codePoints(Ljava/lang/CharSequence;)[I

    #@15
    move-result-object v3

    #@16
    .line 247
    .local v3, "endCps":[I
    array-length v5, v2

    #@17
    array-length v7, v3

    #@18
    sub-int v1, v5, v7

    #@1a
    .line 249
    .local v1, "startOffset":I
    if-eqz p2, :cond_2

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 250
    new-instance v0, Landroid/icu/util/ICUException;

    #@20
    const-string/jumbo v5, "Range must have equal-length strings"

    #@23
    invoke-direct {v0, v5}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 251
    :cond_2
    if-gez v1, :cond_3

    #@29
    .line 252
    new-instance v0, Landroid/icu/util/ICUException;

    #@2b
    const-string/jumbo v5, "Range must have start-length \u2265 end-length"

    #@2e
    invoke-direct {v0, v5}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    .line 253
    :cond_3
    array-length v5, v3

    #@33
    if-nez v5, :cond_4

    #@35
    .line 254
    new-instance v0, Landroid/icu/util/ICUException;

    #@37
    const-string/jumbo v5, "Range must have end-length > 0"

    #@3a
    invoke-direct {v0, v5}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 257
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    .line 258
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    #@44
    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_5

    #@46
    .line 259
    aget v5, v2, v6

    #@48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@4b
    .line 258
    add-int/lit8 v6, v6, 0x1

    #@4d
    goto :goto_0

    #@4e
    :cond_5
    move-object v5, p3

    #@4f
    .line 261
    invoke-static/range {v0 .. v5}, Landroid/icu/impl/StringRange;->add(II[I[ILjava/lang/StringBuilder;Ljava/util/Collection;)V

    #@52
    .line 262
    return-object p3
.end method
