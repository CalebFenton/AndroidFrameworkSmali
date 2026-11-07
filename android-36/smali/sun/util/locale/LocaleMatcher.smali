.class public final Lsun/util/locale/LocaleMatcher;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist caseInsensitiveMatch(Ljava/util/List;Ljava/lang/String;)Z
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 194
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lsun/util/locale/LocaleMatcher$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lsun/util/locale/LocaleMatcher$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static blacklist filter(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;
    .registers 9
    .param p2, "mode"    # Ljava/util/Locale$FilteringMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/util/Locale$FilteringMode;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 49
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "locales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Locale;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_50

    .line 54
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    .line 56
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v2    # "locale":Ljava/util/Locale;
    goto :goto_16

    .line 60
    :cond_2a
    invoke-static {p0, v0, p2}, Lsun/util/locale/LocaleMatcher;->filterTags(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;

    move-result-object v1

    .line 63
    .local v1, "filteredTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    .local v2, "filteredLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 65
    .local v4, "tag":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .end local v4    # "tag":Ljava/lang/String;
    goto :goto_3b

    .line 68
    :cond_4f
    return-object v2

    .line 50
    .end local v0    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "filteredTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "filteredLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    :cond_50
    :goto_50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static blacklist filterBasic(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0}, Lsun/util/locale/LocaleMatcher;->splitRanges(Ljava/util/List;)I

    move-result v0

    .line 115
    .local v0, "splitIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 116
    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 117
    .local v1, "nonZeroRanges":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .local v2, "zeroRanges":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    goto :goto_1a

    .line 119
    .end local v1    # "nonZeroRanges":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .end local v2    # "zeroRanges":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    :cond_15
    move-object v1, p0

    .line 120
    .restart local v1    # "nonZeroRanges":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v2

    .line 123
    .restart local v2    # "zeroRanges":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    :goto_1a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_84

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale$LanguageRange;

    .line 125
    .local v5, "lr":Ljava/util/Locale$LanguageRange;
    invoke-virtual {v5}, Ljava/util/Locale$LanguageRange;->getRange()Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "range":Ljava/lang/String;
    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 127
    invoke-static {v2, p1}, Lsun/util/locale/LocaleMatcher;->removeTagsMatchingBasicZeroRange(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    .line 128
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v4

    .line 130
    :cond_45
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_49
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_83

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 132
    .local v8, "tag":Ljava/lang/String;
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 133
    .local v9, "lowerCaseTag":Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_82

    .line 134
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    .line 135
    .local v10, "len":I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v11, v10, :cond_73

    .line 136
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_82

    .line 137
    :cond_73
    invoke-static {v3, v9}, Lsun/util/locale/LocaleMatcher;->caseInsensitiveMatch(Ljava/util/List;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_82

    .line 138
    invoke-static {v2, v9}, Lsun/util/locale/LocaleMatcher;->shouldIgnoreFilterBasicMatch(Ljava/util/List;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_82

    .line 141
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "lowerCaseTag":Ljava/lang/String;
    .end local v10    # "len":I
    :cond_82
    goto :goto_49

    .line 146
    .end local v5    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v6    # "range":Ljava/lang/String;
    :cond_83
    goto :goto_23

    .line 148
    :cond_84
    return-object v3
.end method

.method private static blacklist filterExtended(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 228
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-static {v0}, Lsun/util/locale/LocaleMatcher;->splitRanges(Ljava/util/List;)I

    move-result v1

    .line 231
    .local v1, "splitIndex":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    .line 232
    invoke-interface {v0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 233
    .local v2, "nonZeroRanges":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    .local v4, "zeroRanges":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    goto :goto_1d

    .line 235
    .end local v2    # "nonZeroRanges":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .end local v4    # "zeroRanges":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    :cond_17
    move-object/from16 v2, p0

    .line 236
    .restart local v2    # "nonZeroRanges":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v4

    .line 239
    .restart local v4    # "zeroRanges":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    :goto_1d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ae

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Locale$LanguageRange;

    .line 241
    .local v7, "lr":Ljava/util/Locale$LanguageRange;
    invoke-virtual {v7}, Ljava/util/Locale$LanguageRange;->getRange()Ljava/lang/String;

    move-result-object v8

    .line 242
    .local v8, "range":Ljava/lang/String;
    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4a

    .line 243
    move-object/from16 v10, p1

    invoke-static {v4, v10}, Lsun/util/locale/LocaleMatcher;->removeTagsMatchingExtendedZeroRange(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    .line 244
    .end local p1    # "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v3, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v6

    .line 246
    .end local v3    # "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local p1    # "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_4a
    move-object/from16 v10, p1

    const-string v11, "-"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 247
    .local v12, "rangeSubtags":[Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_56
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 249
    .local v14, "tag":Ljava/lang/String;
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    .line 250
    .local v15, "lowerCaseTag":Ljava/lang/String;
    move/from16 v16, v3

    invoke-virtual {v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "tagSubtags":[Ljava/lang/String;
    aget-object v0, v12, v16

    move/from16 v17, v1

    .end local v1    # "splitIndex":I
    .local v17, "splitIndex":I
    aget-object v1, v3, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    aget-object v0, v12, v16

    .line 252
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 253
    move-object/from16 v0, p0

    move/from16 v3, v16

    move/from16 v1, v17

    goto :goto_56

    .line 256
    :cond_89
    invoke-static {v12, v3}, Lsun/util/locale/LocaleMatcher;->matchFilterExtendedSubtags([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 258
    .local v0, "rangeIndex":I
    array-length v1, v12

    if-ne v1, v0, :cond_9f

    .line 259
    invoke-static {v5, v15}, Lsun/util/locale/LocaleMatcher;->caseInsensitiveMatch(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9f

    .line 260
    invoke-static {v4, v15}, Lsun/util/locale/LocaleMatcher;->shouldIgnoreFilterExtendedMatch(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9f

    .line 262
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v0    # "rangeIndex":I
    .end local v3    # "tagSubtags":[Ljava/lang/String;
    .end local v14    # "tag":Ljava/lang/String;
    .end local v15    # "lowerCaseTag":Ljava/lang/String;
    :cond_9f
    move-object/from16 v0, p0

    move/from16 v3, v16

    move/from16 v1, v17

    goto :goto_56

    .line 247
    .end local v17    # "splitIndex":I
    .restart local v1    # "splitIndex":I
    :cond_a6
    move/from16 v17, v1

    move/from16 v16, v3

    .line 265
    .end local v1    # "splitIndex":I
    .end local v7    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v8    # "range":Ljava/lang/String;
    .end local v12    # "rangeSubtags":[Ljava/lang/String;
    .restart local v17    # "splitIndex":I
    move-object/from16 v0, p0

    goto/16 :goto_26

    .line 267
    .end local v17    # "splitIndex":I
    .restart local v1    # "splitIndex":I
    :cond_ae
    return-object v5
.end method

.method public static blacklist filterTags(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;
    .registers 10
    .param p2, "mode"    # Ljava/util/Locale$FilteringMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Locale$FilteringMode;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9d

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_9d

    .line 79
    :cond_e
    sget-object v0, Ljava/util/Locale$FilteringMode;->EXTENDED_FILTERING:Ljava/util/Locale$FilteringMode;

    if-ne p2, v0, :cond_17

    .line 80
    invoke-static {p0, p1}, Lsun/util/locale/LocaleMatcher;->filterExtended(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 82
    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale$LanguageRange;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale$LanguageRange;

    .line 84
    .local v2, "lr":Ljava/util/Locale$LanguageRange;
    invoke-virtual {v2}, Ljava/util/Locale$LanguageRange;->getRange()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "range":Ljava/lang/String;
    const-string v4, "*-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 86
    const-string v4, "-*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_42

    goto :goto_46

    .line 102
    :cond_42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 87
    :cond_46
    :goto_46
    sget-object v4, Ljava/util/Locale$FilteringMode;->AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

    if-ne p2, v4, :cond_4f

    .line 88
    invoke-static {p0, p1}, Lsun/util/locale/LocaleMatcher;->filterExtended(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 89
    :cond_4f
    sget-object v4, Ljava/util/Locale$FilteringMode;->MAP_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    if-ne p2, v4, :cond_74

    .line 90
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_5f

    .line 91
    const-string v3, "*"

    goto :goto_67

    .line 93
    :cond_5f
    const-string v4, "-[*]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    :goto_67
    new-instance v4, Ljava/util/Locale$LanguageRange;

    invoke-virtual {v2}, Ljava/util/Locale$LanguageRange;->getWeight()D

    move-result-wide v5

    invoke-direct {v4, v3, v5, v6}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 96
    :cond_74
    sget-object v4, Ljava/util/Locale$FilteringMode;->REJECT_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    if-eq p2, v4, :cond_79

    .line 104
    .end local v2    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v3    # "range":Ljava/lang/String;
    :goto_78
    goto :goto_20

    .line 97
    .restart local v2    # "lr":Ljava/util/Locale$LanguageRange;
    .restart local v3    # "range":Ljava/lang/String;
    :cond_79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An extended range \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" found in REJECT_EXTENDED_RANGES mode."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    .end local v2    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v3    # "range":Ljava/lang/String;
    :cond_98
    invoke-static {v0, p1}, Lsun/util/locale/LocaleMatcher;->filterBasic(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 75
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale$LanguageRange;>;"
    :cond_9d
    :goto_9d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static blacklist getEquivalentForRegionAndVariant(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "range"    # Ljava/lang/String;

    .line 622
    invoke-static {p0}, Lsun/util/locale/LocaleMatcher;->getExtentionKeyIndex(Ljava/lang/String;)I

    move-result v0

    .line 624
    .local v0, "extensionKeyIndex":I
    sget-object v1, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 626
    .local v2, "subtag":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move v4, v3

    .local v4, "index":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_49

    .line 628
    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_29

    if-le v4, v0, :cond_29

    .line 630
    goto :goto_e

    .line 633
    :cond_29
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    .line 634
    .local v3, "len":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v3, :cond_3c

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_49

    .line 635
    :cond_3c
    sget-object v1, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    .line 637
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 635
    invoke-static {p0, v2, v1}, Lsun/util/locale/LocaleMatcher;->replaceFirstSubStringMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 640
    .end local v2    # "subtag":Ljava/lang/String;
    .end local v3    # "len":I
    .end local v4    # "index":I
    :cond_49
    goto :goto_e

    .line 642
    :cond_4a
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getEquivalentsForLanguage(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "range"    # Ljava/lang/String;

    .line 591
    move-object v0, p0

    .line 593
    .local v0, "r":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    .line 594
    sget-object v1, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 595
    sget-object v1, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 598
    .local v1, "equiv":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lsun/util/locale/LocaleMatcher;->replaceFirstSubStringMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    return-object v3

    .line 600
    .end local v1    # "equiv":Ljava/lang/String;
    :cond_22
    sget-object v1, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 601
    sget-object v1, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 602
    .local v1, "equivs":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 603
    .local v2, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_36
    array-length v4, v1

    if-ge v3, v4, :cond_44

    .line 604
    aget-object v4, v1, v3

    invoke-static {p0, v0, v4}, Lsun/util/locale/LocaleMatcher;->replaceFirstSubStringMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 603
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 607
    .end local v3    # "i":I
    :cond_44
    return-object v2

    .line 611
    .end local v1    # "equivs":[Ljava/lang/String;
    .end local v2    # "result":[Ljava/lang/String;
    :cond_45
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 612
    .local v1, "index":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_4f

    .line 613
    goto :goto_54

    .line 615
    :cond_4f
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 616
    .end local v1    # "index":I
    goto :goto_1

    .line 618
    :cond_54
    :goto_54
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getExtentionKeyIndex(Ljava/lang/String;)I
    .registers 6
    .param p0, "s"    # Ljava/lang/String;

    .line 646
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 647
    .local v0, "c":[C
    const/high16 v1, -0x80000000

    .line 648
    .local v1, "index":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_7
    array-length v3, v0

    if-ge v2, v3, :cond_1a

    .line 649
    aget-char v3, v0, v2

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_17

    .line 650
    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_16

    .line 651
    return v1

    .line 653
    :cond_16
    move v1, v2

    .line 648
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 657
    .end local v2    # "i":I
    :cond_1a
    const/high16 v2, -0x80000000

    return v2
.end method

.method static synthetic blacklist lambda$caseInsensitiveMatch$1(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "element"    # Ljava/lang/String;

    .line 195
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$removeDuplicates$0(Ljava/util/Set;Ljava/lang/String;)Z
    .registers 3
    .param p0, "distinctTags"    # Ljava/util/Set;
    .param p1, "x"    # Ljava/lang/String;

    .line 185
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist lookup(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Locale;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/Locale;"
        }
    .end annotation

    .line 358
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "locales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Locale;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_37

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_37

    .line 363
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v0, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    .line 365
    .local v3, "locale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    .end local v3    # "locale":Ljava/util/Locale;
    goto :goto_17

    .line 369
    :cond_2b
    invoke-static {p0, v0}, Lsun/util/locale/LocaleMatcher;->lookupTag(Ljava/util/List;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "lookedUpTag":Ljava/lang/String;
    if-nez v2, :cond_32

    .line 372
    return-object v1

    .line 374
    :cond_32
    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    return-object v1

    .line 359
    .end local v0    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "lookedUpTag":Ljava/lang/String;
    :cond_37
    :goto_37
    return-object v1
.end method

.method public static blacklist lookupTag(Ljava/util/List;Ljava/util/Collection;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 380
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7d

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_7d

    .line 384
    :cond_f
    invoke-static {p0}, Lsun/util/locale/LocaleMatcher;->splitRanges(Ljava/util/List;)I

    move-result v0

    .line 387
    .local v0, "splitIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_24

    .line 388
    const/4 v2, 0x0

    invoke-interface {p0, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 389
    .local v2, "nonZeroRanges":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p0, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .local v3, "zeroRanges":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    goto :goto_29

    .line 391
    .end local v2    # "nonZeroRanges":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .end local v3    # "zeroRanges":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    :cond_24
    move-object v2, p0

    .line 392
    .restart local v2    # "nonZeroRanges":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v3

    .line 395
    .restart local v3    # "zeroRanges":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    :goto_29
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale$LanguageRange;

    .line 396
    .local v5, "lr":Ljava/util/Locale$LanguageRange;
    invoke-virtual {v5}, Ljava/util/Locale$LanguageRange;->getRange()Ljava/lang/String;

    move-result-object v6

    .line 399
    .local v6, "range":Ljava/lang/String;
    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_46

    .line 400
    goto :goto_2d

    .line 403
    :cond_46
    const-string v8, "\\p{Alnum}*"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 404
    .local v7, "rangeForRegex":Ljava/lang/String;
    :goto_4c
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7b

    .line 405
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_56
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_76

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 407
    .local v9, "tag":Ljava/lang/String;
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 408
    .local v10, "lowerCaseTag":Ljava/lang/String;
    invoke-virtual {v10, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_75

    .line 409
    invoke-static {v3, v10}, Lsun/util/locale/LocaleMatcher;->shouldIgnoreLookupMatch(Ljava/util/List;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_75

    .line 410
    return-object v9

    .line 412
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "lowerCaseTag":Ljava/lang/String;
    :cond_75
    goto :goto_56

    .line 415
    :cond_76
    invoke-static {v7}, Lsun/util/locale/LocaleMatcher;->truncateRange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4c

    .line 417
    .end local v5    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v6    # "range":Ljava/lang/String;
    .end local v7    # "rangeForRegex":Ljava/lang/String;
    :cond_7b
    goto :goto_2d

    .line 419
    :cond_7c
    return-object v1

    .line 381
    .end local v0    # "splitIndex":I
    .end local v2    # "nonZeroRanges":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .end local v3    # "zeroRanges":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    :cond_7d
    :goto_7d
    return-object v1
.end method

.method public static blacklist mapEquivalents(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;"
        }
    .end annotation

    .line 663
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, p1

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 664
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 666
    :cond_e
    if-eqz v0, :cond_c3

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto/16 :goto_c3

    .line 671
    :cond_18
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 672
    .local v1, "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 673
    .local v3, "key":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_25

    .line 676
    :cond_3b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Locale$LanguageRange;

    .line 678
    .local v4, "lr":Ljava/util/Locale$LanguageRange;
    invoke-virtual {v4}, Ljava/util/Locale$LanguageRange;->getRange()Ljava/lang/String;

    move-result-object v5

    .line 679
    .local v5, "range":Ljava/lang/String;
    move-object v6, v5

    .line 680
    .local v6, "r":Ljava/lang/String;
    const/4 v7, 0x0

    .line 682
    .local v7, "hasEquivalent":Z
    :goto_56
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_bc

    .line 683
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ac

    .line 684
    const/4 v7, 0x1

    .line 685
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 686
    .local v8, "equivalents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_bc

    .line 687
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    .line 688
    .local v9, "len":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_77
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_ab

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 689
    .local v11, "equivalent":Ljava/lang/String;
    new-instance v12, Ljava/util/Locale$LanguageRange;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 690
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 691
    invoke-virtual {v4}, Ljava/util/Locale$LanguageRange;->getWeight()D

    move-result-wide v14

    invoke-direct {v12, v13, v14, v15}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    .line 689
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    .end local v11    # "equivalent":Ljava/lang/String;
    goto :goto_77

    .line 693
    .end local v9    # "len":I
    :cond_ab
    goto :goto_bc

    .line 699
    .end local v8    # "equivalents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ac
    const/16 v8, 0x2d

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 700
    .local v8, "index":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_b6

    .line 701
    goto :goto_bc

    .line 703
    :cond_b6
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 704
    .end local v8    # "index":I
    goto :goto_56

    .line 706
    :cond_bc
    :goto_bc
    if-nez v7, :cond_c1

    .line 707
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    .end local v4    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v5    # "range":Ljava/lang/String;
    .end local v6    # "r":Ljava/lang/String;
    .end local v7    # "hasEquivalent":Z
    :cond_c1
    goto :goto_44

    .line 711
    :cond_c2
    return-object v2

    .line 667
    .end local v1    # "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    :cond_c3
    :goto_c3
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private static blacklist matchFilterExtendedSubtags([Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p0, "rangeSubtags"    # [Ljava/lang/String;
    .param p1, "tagSubtags"    # [Ljava/lang/String;

    .line 335
    const/4 v0, 0x1

    .line 336
    .local v0, "rangeIndex":I
    const/4 v1, 0x1

    .line 338
    .local v1, "tagIndex":I
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_39

    array-length v2, p1

    if-ge v1, v2, :cond_39

    .line 340
    aget-object v2, p0, v0

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 342
    :cond_15
    aget-object v2, p0, v0

    aget-object v4, p1, v1

    .line 343
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 344
    add-int/lit8 v0, v0, 0x1

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 346
    :cond_24
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_36

    aget-object v2, p1, v1

    .line 347
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 348
    goto :goto_39

    .line 350
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 353
    :cond_39
    :goto_39
    return v0
.end method

.method public static blacklist parse(Ljava/lang/String;)Ljava/util/List;
    .registers 22
    .param p0, "ranges"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;"
        }
    .end annotation

    .line 486
    const-string v0, " "

    const-string v1, ""

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 487
    .end local p0    # "ranges":Ljava/lang/String;
    .local v0, "ranges":Ljava/lang/String;
    const-string v1, "accept-language:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 488
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_21

    .line 487
    :cond_20
    move-object v1, v0

    .line 491
    .end local v0    # "ranges":Ljava/lang/String;
    .local v1, "ranges":Ljava/lang/String;
    :goto_21
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "langRanges":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v0

    .line 493
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 494
    .local v4, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 496
    .local v0, "numOfRanges":I
    array-length v5, v2

    const/4 v6, 0x0

    move v7, v0

    move v0, v6

    .end local v0    # "numOfRanges":I
    .local v7, "numOfRanges":I
    :goto_39
    if-ge v0, v5, :cond_18d

    aget-object v8, v2, v0

    .line 501
    .local v8, "range":Ljava/lang/String;
    const-string v9, ";q="

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    move v10, v9

    .local v10, "index":I
    const/4 v11, -0x1

    if-ne v9, v11, :cond_4b

    .line 502
    move-object v9, v8

    .line 503
    .local v9, "r":Ljava/lang/String;
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .local v11, "w":D
    goto :goto_66

    .line 505
    .end local v9    # "r":Ljava/lang/String;
    .end local v11    # "w":D
    :cond_4b
    invoke-virtual {v8, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 506
    .restart local v9    # "r":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x3

    .line 508
    :try_start_51
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_59} :catch_15b

    .line 514
    .restart local v11    # "w":D
    nop

    .line 516
    const-wide/16 v13, 0x0

    cmpg-double v15, v11, v13

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-ltz v15, :cond_118

    cmpl-double v15, v11, v13

    if-gtz v15, :cond_118

    .line 524
    :goto_66
    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_109

    .line 525
    new-instance v13, Ljava/util/Locale$LanguageRange;

    invoke-direct {v13, v9, v11, v12}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    .line 526
    .local v13, "lr":Ljava/util/Locale$LanguageRange;
    move v10, v7

    .line 527
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_73
    if-ge v14, v7, :cond_88

    .line 528
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Locale$LanguageRange;

    invoke-virtual {v15}, Ljava/util/Locale$LanguageRange;->getWeight()D

    move-result-wide v15

    cmpg-double v15, v15, v11

    if-gez v15, :cond_85

    .line 529
    move v10, v14

    .line 530
    goto :goto_88

    .line 527
    :cond_85
    add-int/lit8 v14, v14, 0x1

    goto :goto_73

    .line 533
    .end local v14    # "j":I
    :cond_88
    :goto_88
    invoke-interface {v3, v10, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 534
    add-int/lit8 v7, v7, 0x1

    .line 535
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    invoke-static {v9}, Lsun/util/locale/LocaleMatcher;->getEquivalentForRegionAndVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v15, v14

    .local v15, "equivalent":Ljava/lang/String;
    if-eqz v14, :cond_ac

    .line 543
    invoke-interface {v4, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_ac

    .line 544
    add-int/lit8 v14, v10, 0x1

    new-instance v6, Ljava/util/Locale$LanguageRange;

    invoke-direct {v6, v15, v11, v12}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    invoke-interface {v3, v14, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 545
    add-int/lit8 v7, v7, 0x1

    .line 546
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_ac
    invoke-static {v9}, Lsun/util/locale/LocaleMatcher;->getEquivalentsForLanguage(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    .local v14, "equivalents":[Ljava/lang/String;
    if-eqz v6, :cond_102

    .line 551
    array-length v6, v14

    move/from16 v18, v0

    const/4 v0, 0x0

    :goto_b7
    if-ge v0, v6, :cond_fd

    move/from16 v16, v0

    aget-object v0, v14, v16

    .line 553
    .local v0, "equiv":Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_d7

    .line 554
    move-object/from16 v19, v1

    .end local v1    # "ranges":Ljava/lang/String;
    .local v19, "ranges":Ljava/lang/String;
    add-int/lit8 v1, v10, 0x1

    move-object/from16 v20, v2

    .end local v2    # "langRanges":[Ljava/lang/String;
    .local v20, "langRanges":[Ljava/lang/String;
    new-instance v2, Ljava/util/Locale$LanguageRange;

    invoke-direct {v2, v0, v11, v12}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 555
    add-int/lit8 v7, v7, 0x1

    .line 556
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_db

    .line 553
    .end local v19    # "ranges":Ljava/lang/String;
    .end local v20    # "langRanges":[Ljava/lang/String;
    .restart local v1    # "ranges":Ljava/lang/String;
    .restart local v2    # "langRanges":[Ljava/lang/String;
    :cond_d7
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .line 560
    .end local v1    # "ranges":Ljava/lang/String;
    .end local v2    # "langRanges":[Ljava/lang/String;
    .restart local v19    # "ranges":Ljava/lang/String;
    .restart local v20    # "langRanges":[Ljava/lang/String;
    :goto_db
    invoke-static {v0}, Lsun/util/locale/LocaleMatcher;->getEquivalentForRegionAndVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 561
    if-eqz v15, :cond_f6

    .line 562
    invoke-interface {v4, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f6

    .line 563
    add-int/lit8 v1, v10, 0x1

    new-instance v2, Ljava/util/Locale$LanguageRange;

    invoke-direct {v2, v15, v11, v12}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 564
    add-int/lit8 v7, v7, 0x1

    .line 565
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    .end local v0    # "equiv":Ljava/lang/String;
    :cond_f6
    add-int/lit8 v0, v16, 0x1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    goto :goto_b7

    .end local v19    # "ranges":Ljava/lang/String;
    .end local v20    # "langRanges":[Ljava/lang/String;
    .restart local v1    # "ranges":Ljava/lang/String;
    .restart local v2    # "langRanges":[Ljava/lang/String;
    :cond_fd
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .end local v1    # "ranges":Ljava/lang/String;
    .end local v2    # "langRanges":[Ljava/lang/String;
    .restart local v19    # "ranges":Ljava/lang/String;
    .restart local v20    # "langRanges":[Ljava/lang/String;
    goto :goto_10f

    .line 550
    .end local v19    # "ranges":Ljava/lang/String;
    .end local v20    # "langRanges":[Ljava/lang/String;
    .restart local v1    # "ranges":Ljava/lang/String;
    .restart local v2    # "langRanges":[Ljava/lang/String;
    :cond_102
    move/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .end local v1    # "ranges":Ljava/lang/String;
    .end local v2    # "langRanges":[Ljava/lang/String;
    .restart local v19    # "ranges":Ljava/lang/String;
    .restart local v20    # "langRanges":[Ljava/lang/String;
    goto :goto_10f

    .line 524
    .end local v13    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v14    # "equivalents":[Ljava/lang/String;
    .end local v15    # "equivalent":Ljava/lang/String;
    .end local v19    # "ranges":Ljava/lang/String;
    .end local v20    # "langRanges":[Ljava/lang/String;
    .restart local v1    # "ranges":Ljava/lang/String;
    .restart local v2    # "langRanges":[Ljava/lang/String;
    :cond_109
    move/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .line 496
    .end local v1    # "ranges":Ljava/lang/String;
    .end local v2    # "langRanges":[Ljava/lang/String;
    .end local v8    # "range":Ljava/lang/String;
    .end local v9    # "r":Ljava/lang/String;
    .end local v10    # "index":I
    .end local v11    # "w":D
    .restart local v19    # "ranges":Ljava/lang/String;
    .restart local v20    # "langRanges":[Ljava/lang/String;
    :goto_10f
    add-int/lit8 v0, v18, 0x1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    const/4 v6, 0x0

    goto/16 :goto_39

    .line 516
    .end local v19    # "ranges":Ljava/lang/String;
    .end local v20    # "langRanges":[Ljava/lang/String;
    .restart local v1    # "ranges":Ljava/lang/String;
    .restart local v2    # "langRanges":[Ljava/lang/String;
    .restart local v8    # "range":Ljava/lang/String;
    .restart local v9    # "r":Ljava/lang/String;
    .restart local v10    # "index":I
    .restart local v11    # "w":D
    :cond_118
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .line 517
    .end local v1    # "ranges":Ljava/lang/String;
    .end local v2    # "langRanges":[Ljava/lang/String;
    .restart local v19    # "ranges":Ljava/lang/String;
    .restart local v20    # "langRanges":[Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for language range \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\". It must be between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    .end local v11    # "w":D
    .end local v19    # "ranges":Ljava/lang/String;
    .end local v20    # "langRanges":[Ljava/lang/String;
    .restart local v1    # "ranges":Ljava/lang/String;
    .restart local v2    # "langRanges":[Ljava/lang/String;
    :catch_15b
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .line 511
    .end local v1    # "ranges":Ljava/lang/String;
    .end local v2    # "langRanges":[Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "ranges":Ljava/lang/String;
    .restart local v20    # "langRanges":[Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "weight=\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 512
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\" for language range \""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 572
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "range":Ljava/lang/String;
    .end local v9    # "r":Ljava/lang/String;
    .end local v10    # "index":I
    .end local v19    # "ranges":Ljava/lang/String;
    .end local v20    # "langRanges":[Ljava/lang/String;
    .restart local v1    # "ranges":Ljava/lang/String;
    .restart local v2    # "langRanges":[Ljava/lang/String;
    :cond_18d
    return-object v3
.end method

.method private static blacklist removeDuplicates(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 184
    .local p0, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 185
    .local v0, "distinctTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lsun/util/locale/LocaleMatcher$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lsun/util/locale/LocaleMatcher$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 186
    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    .line 185
    return-object v1
.end method

.method private static blacklist removeTagsMatchingBasicZeroRange(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    .local p0, "zeroRange":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 161
    invoke-static {p1}, Lsun/util/locale/LocaleMatcher;->removeDuplicates(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    .line 162
    return-object p1

    .line 165
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v0, "matchingTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 168
    .local v2, "tag":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "lowerCaseTag":Ljava/lang/String;
    invoke-static {p0, v3}, Lsun/util/locale/LocaleMatcher;->shouldIgnoreFilterBasicMatch(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 170
    invoke-static {v0, v3}, Lsun/util/locale/LocaleMatcher;->caseInsensitiveMatch(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 171
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "lowerCaseTag":Ljava/lang/String;
    :cond_35
    goto :goto_14

    .line 175
    :cond_36
    return-object v0
.end method

.method private static blacklist removeTagsMatchingExtendedZeroRange(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 279
    .local p0, "zeroRange":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 280
    invoke-static {p1}, Lsun/util/locale/LocaleMatcher;->removeDuplicates(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    .line 281
    return-object p1

    .line 284
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v0, "matchingTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 287
    .local v2, "tag":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "lowerCaseTag":Ljava/lang/String;
    invoke-static {p0, v3}, Lsun/util/locale/LocaleMatcher;->shouldIgnoreFilterExtendedMatch(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 289
    invoke-static {v0, v3}, Lsun/util/locale/LocaleMatcher;->caseInsensitiveMatch(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 290
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "lowerCaseTag":Ljava/lang/String;
    :cond_35
    goto :goto_14

    .line 294
    :cond_36
    return-object v0
.end method

.method private static blacklist replaceFirstSubStringMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "range"    # Ljava/lang/String;
    .param p1, "substr"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 581
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 582
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 583
    return-object p0

    .line 585
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 586
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 585
    return-object v1
.end method

.method private static blacklist shouldIgnoreFilterBasicMatch(Ljava/util/List;Ljava/lang/String;)Z
    .registers 10
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 206
    .local p0, "zeroRange":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 207
    return v1

    .line 210
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale$LanguageRange;

    .line 211
    .local v2, "lr":Ljava/util/Locale$LanguageRange;
    invoke-virtual {v2}, Ljava/util/Locale$LanguageRange;->getRange()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "range":Ljava/lang/String;
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_26

    .line 213
    return v5

    .line 215
    :cond_26
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 216
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 217
    .local v4, "len":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v4, :cond_3e

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_3f

    .line 218
    :cond_3e
    return v5

    .line 221
    .end local v2    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v3    # "range":Ljava/lang/String;
    .end local v4    # "len":I
    :cond_3f
    goto :goto_c

    .line 223
    :cond_40
    return v1
.end method

.method private static blacklist shouldIgnoreFilterExtendedMatch(Ljava/util/List;Ljava/lang/String;)Z
    .registers 13
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 305
    .local p0, "zeroRange":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 306
    return v1

    .line 309
    :cond_8
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "tagSubtags":[Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Locale$LanguageRange;

    .line 311
    .local v4, "lr":Ljava/util/Locale$LanguageRange;
    invoke-virtual {v4}, Ljava/util/Locale$LanguageRange;->getRange()Ljava/lang/String;

    move-result-object v5

    .line 312
    .local v5, "range":Ljava/lang/String;
    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2c

    .line 313
    return v8

    .line 316
    :cond_2c
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 318
    .local v7, "rangeSubtags":[Ljava/lang/String;
    aget-object v9, v7, v1

    aget-object v10, v2, v1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_43

    aget-object v9, v7, v1

    .line 319
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 320
    goto :goto_12

    .line 323
    :cond_43
    invoke-static {v7, v2}, Lsun/util/locale/LocaleMatcher;->matchFilterExtendedSubtags([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 325
    .local v6, "rangeIndex":I
    array-length v9, v7

    if-ne v9, v6, :cond_4b

    .line 326
    return v8

    .line 328
    .end local v4    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v5    # "range":Ljava/lang/String;
    .end local v6    # "rangeIndex":I
    .end local v7    # "rangeSubtags":[Ljava/lang/String;
    :cond_4b
    goto :goto_12

    .line 330
    :cond_4c
    return v1
.end method

.method private static blacklist shouldIgnoreLookupMatch(Ljava/util/List;Ljava/lang/String;)Z
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 430
    .local p0, "zeroRange":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale$LanguageRange;

    .line 431
    .local v1, "lr":Ljava/util/Locale$LanguageRange;
    invoke-virtual {v1}, Ljava/util/Locale$LanguageRange;->getRange()Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "range":Ljava/lang/String;
    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 435
    goto :goto_4

    .line 438
    :cond_1d
    const-string v4, "\\p{Alnum}*"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, "rangeForRegex":Ljava/lang/String;
    :goto_23
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_36

    .line 440
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 441
    const/4 v0, 0x1

    return v0

    .line 444
    :cond_31
    invoke-static {v3}, Lsun/util/locale/LocaleMatcher;->truncateRange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_23

    .line 446
    .end local v1    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v2    # "range":Ljava/lang/String;
    .end local v3    # "rangeForRegex":Ljava/lang/String;
    :cond_36
    goto :goto_4

    .line 448
    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist splitRanges(Ljava/util/List;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;)I"
        }
    .end annotation

    .line 474
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 475
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_5
    if-ge v1, v0, :cond_1b

    .line 476
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale$LanguageRange;

    .line 477
    .local v2, "range":Ljava/util/Locale$LanguageRange;
    invoke-virtual {v2}, Ljava/util/Locale$LanguageRange;->getWeight()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_18

    .line 478
    return v1

    .line 475
    .end local v2    # "range":Ljava/util/Locale$LanguageRange;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 482
    .end local v1    # "index":I
    :cond_1b
    const/4 v1, -0x1

    return v1
.end method

.method private static blacklist truncateRange(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "rangeForRegex"    # Ljava/lang/String;

    .line 453
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 454
    .local v1, "index":I
    if-ltz v1, :cond_27

    .line 455
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 458
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 459
    if-ltz v1, :cond_29

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne v1, v0, :cond_29

    .line 460
    nop

    .line 461
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_29

    .line 464
    :cond_27
    const-string p0, ""

    .line 467
    :cond_29
    :goto_29
    return-object p0
.end method
