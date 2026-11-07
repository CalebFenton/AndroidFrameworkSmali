.class Landroid/icu/text/AnyTransliterator;
.super Landroid/icu/text/Transliterator;
.source "AnyTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/AnyTransliterator$ScriptRunIterator;,
        Landroid/icu/text/AnyTransliterator$WidthFix;
    }
.end annotation


# static fields
.field static final blacklist ANY:Ljava/lang/String; = "Any"

.field static final blacklist LATIN_PIVOT:Ljava/lang/String; = "-Latin;Latin-"

.field static final blacklist NULL_ID:Ljava/lang/String; = "Null"

.field static final blacklist TARGET_SEP:C = '-'

.field static final blacklist VARIANT_SEP:C = '/'


# instance fields
.field private blacklist cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/Transliterator;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist target:Ljava/lang/String;

.field private blacklist targetScript:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;Ljava/lang/String;ILandroid/icu/text/Transliterator;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "filter"    # Landroid/icu/text/UnicodeFilter;
    .param p3, "target2"    # Ljava/lang/String;
    .param p4, "targetScript2"    # I
    .param p5, "widthFix2"    # Landroid/icu/text/Transliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/text/UnicodeFilter;",
            "Ljava/lang/String;",
            "I",
            "Landroid/icu/text/Transliterator;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/Transliterator;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p6, "cache2":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Landroid/icu/text/Transliterator;>;"
    invoke-direct {p0, p1, p2}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 165
    iput p4, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    .line 166
    iput-object p6, p0, Landroid/icu/text/AnyTransliterator;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 167
    iput-object p3, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    .line 168
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "theTarget"    # Ljava/lang/String;
    .param p3, "theVariant"    # Ljava/lang/String;
    .param p4, "theTargetScript"    # I

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 144
    iput p4, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    .line 145
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/AnyTransliterator;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 147
    iput-object p2, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    .line 148
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2e

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    .line 151
    :cond_2e
    return-void
.end method

.method private blacklist getTransliterator(I)Landroid/icu/text/Transliterator;
    .registers 9
    .param p1, "source"    # I

    .line 179
    iget v0, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    if-eq p1, v0, :cond_95

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    goto/16 :goto_95

    .line 187
    :cond_9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 188
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Landroid/icu/text/AnyTransliterator;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/Transliterator;

    .line 189
    .local v1, "t":Landroid/icu/text/Transliterator;
    if-nez v1, :cond_94

    .line 190
    invoke-static {p1}, Landroid/icu/lang/UScript;->getName(I)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "sourceName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, "id":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_35
    invoke-static {v3, v4}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;

    move-result-object v5
    :try_end_39
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_39} :catch_3b

    move-object v1, v5

    .line 195
    :goto_3a
    goto :goto_3d

    :catch_3b
    move-exception v5

    goto :goto_3a

    .line 196
    :goto_3d
    if-nez v1, :cond_5f

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-Latin;Latin-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    :try_start_58
    invoke-static {v3, v4}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;

    move-result-object v4
    :try_end_5c
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_5c} :catch_5e

    .line 202
    .end local v1    # "t":Landroid/icu/text/Transliterator;
    .local v4, "t":Landroid/icu/text/Transliterator;
    move-object v1, v4

    goto :goto_5f

    .end local v4    # "t":Landroid/icu/text/Transliterator;
    .restart local v1    # "t":Landroid/icu/text/Transliterator;
    :catch_5e
    move-exception v4

    .line 205
    :cond_5f
    :goto_5f
    if-eqz v1, :cond_88

    .line 206
    iget v4, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    invoke-direct {p0, v4}, Landroid/icu/text/AnyTransliterator;->isWide(I)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 207
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v4, "v":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/Transliterator;>;"
    sget-object v5, Landroid/icu/text/AnyTransliterator$WidthFix;->INSTANCE:Landroid/icu/text/Transliterator;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v5, Landroid/icu/text/CompoundTransliterator;

    invoke-direct {v5, v4}, Landroid/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;)V

    move-object v1, v5

    .line 212
    .end local v4    # "v":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/Transliterator;>;"
    :cond_7c
    iget-object v4, p0, Landroid/icu/text/AnyTransliterator;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/Transliterator;

    .line 213
    .local v4, "prevCachedT":Landroid/icu/text/Transliterator;
    if-eqz v4, :cond_93

    .line 214
    move-object v1, v4

    goto :goto_93

    .line 216
    .end local v4    # "prevCachedT":Landroid/icu/text/Transliterator;
    :cond_88
    iget v4, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    invoke-direct {p0, v4}, Landroid/icu/text/AnyTransliterator;->isWide(I)Z

    move-result v4

    if-nez v4, :cond_93

    .line 217
    sget-object v4, Landroid/icu/text/AnyTransliterator$WidthFix;->INSTANCE:Landroid/icu/text/Transliterator;

    return-object v4

    .line 216
    :cond_93
    :goto_93
    nop

    .line 221
    .end local v2    # "sourceName":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    :cond_94
    return-object v1

    .line 180
    .end local v0    # "key":Ljava/lang/Integer;
    .end local v1    # "t":Landroid/icu/text/Transliterator;
    :cond_95
    :goto_95
    iget v0, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    invoke-direct {p0, v0}, Landroid/icu/text/AnyTransliterator;->isWide(I)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 181
    const/4 v0, 0x0

    return-object v0

    .line 183
    :cond_9f
    sget-object v0, Landroid/icu/text/AnyTransliterator$WidthFix;->INSTANCE:Landroid/icu/text/Transliterator;

    return-object v0
.end method

.method private blacklist isWide(I)Z
    .registers 3
    .param p1, "script"    # I

    .line 229
    const/4 v0, 0x5

    if-eq p1, v0, :cond_16

    const/16 v0, 0x11

    if-eq p1, v0, :cond_16

    const/16 v0, 0x12

    if-eq p1, v0, :cond_16

    const/16 v0, 0x14

    if-eq p1, v0, :cond_16

    const/16 v0, 0x16

    if-ne p1, v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    return v0
.end method

.method static blacklist register()V
    .registers 14

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 241
    .local v0, "seen":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-static {}, Landroid/icu/text/Transliterator;->getAvailableSources()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "s":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 242
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 245
    .local v2, "source":Ljava/lang/String;
    const-string v3, "Any"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_9

    .line 247
    :cond_1e
    invoke-static {v2}, Landroid/icu/text/Transliterator;->getAvailableTargets(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v4

    .line 248
    .local v4, "t":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_22
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_75

    .line 249
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 252
    .local v5, "target":Ljava/lang/String;
    invoke-static {v5}, Landroid/icu/text/AnyTransliterator;->scriptNameToCode(Ljava/lang/String;)I

    move-result v6

    .line 253
    .local v6, "targetScript":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_36

    .line 254
    goto :goto_22

    .line 257
    :cond_36
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 258
    .local v7, "seenVariants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v7, :cond_47

    .line 259
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move-object v7, v8

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_47
    invoke-static {v2, v5}, Landroid/icu/text/Transliterator;->getAvailableVariants(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v8

    .line 263
    .local v8, "v":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_4b
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_74

    .line 264
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 267
    .local v9, "variant":Ljava/lang/String;
    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5e

    .line 268
    goto :goto_4b

    .line 270
    :cond_5e
    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-static {v3, v5, v9}, Landroid/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 274
    .local v10, "id":Ljava/lang/String;
    new-instance v11, Landroid/icu/text/AnyTransliterator;

    invoke-direct {v11, v10, v5, v9, v6}, Landroid/icu/text/AnyTransliterator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 276
    .local v11, "trans":Landroid/icu/text/AnyTransliterator;
    invoke-static {v11}, Landroid/icu/text/Transliterator;->registerInstance(Landroid/icu/text/Transliterator;)V

    .line 277
    const-string v12, "Null"

    const/4 v13, 0x0

    invoke-static {v5, v12, v13}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 278
    .end local v9    # "variant":Ljava/lang/String;
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "trans":Landroid/icu/text/AnyTransliterator;
    goto :goto_4b

    .line 279
    .end local v5    # "target":Ljava/lang/String;
    .end local v6    # "targetScript":I
    .end local v7    # "seenVariants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "v":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_74
    goto :goto_22

    .line 280
    .end local v2    # "source":Ljava/lang/String;
    .end local v4    # "t":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_75
    goto :goto_9

    .line 281
    .end local v1    # "s":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_76
    return-void
.end method

.method private static blacklist scriptNameToCode(Ljava/lang/String;)I
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 289
    const/4 v0, -0x1

    :try_start_1
    invoke-static {p0}, Landroid/icu/lang/UScript;->getCode(Ljava/lang/String;)[I

    move-result-object v1

    .line 290
    .local v1, "codes":[I
    if-eqz v1, :cond_a

    const/4 v2, 0x0

    aget v0, v1, v2
    :try_end_a
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_a} :catch_b

    :cond_a
    return v0

    .line 291
    .end local v1    # "codes":[I
    :catch_b
    move-exception v1

    .line 293
    .local v1, "e":Ljava/util/MissingResourceException;
    return v0
.end method


# virtual methods
.method public blacklist addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 7
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    .line 423
    invoke-virtual {p0, p1}, Landroid/icu/text/AnyTransliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 425
    .local v0, "myFilter":Landroid/icu/text/UnicodeSet;
    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 426
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v1

    if-eqz v1, :cond_14

    .line 427
    const/4 v1, 0x0

    const v2, 0x10ffff

    invoke-virtual {p3, v1, v2}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    .line 429
    :cond_14
    return-void
.end method

.method protected blacklist handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .registers 12
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "pos"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "isIncremental"    # Z

    .line 85
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 86
    .local v0, "allStart":I
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 88
    .local v1, "allLimit":I
    new-instance v2, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-direct {v2, p1, v3, v4}, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;-><init>(Landroid/icu/text/Replaceable;II)V

    .line 91
    .local v2, "it":Landroid/icu/text/AnyTransliterator$ScriptRunIterator;
    :goto_d
    invoke-virtual {v2}, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->next()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 93
    iget v3, v2, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    if-gt v3, v0, :cond_18

    goto :goto_d

    .line 97
    :cond_18
    iget v3, v2, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->scriptCode:I

    invoke-direct {p0, v3}, Landroid/icu/text/AnyTransliterator;->getTransliterator(I)Landroid/icu/text/Transliterator;

    move-result-object v3

    .line 99
    .local v3, "t":Landroid/icu/text/Transliterator;
    if-nez v3, :cond_25

    .line 102
    iget v4, v2, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    iput v4, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 103
    goto :goto_d

    .line 109
    :cond_25
    if-eqz p3, :cond_2d

    iget v4, v2, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    if-lt v4, v1, :cond_2d

    const/4 v4, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    .line 111
    .local v4, "incremental":Z
    :goto_2e
    iget v5, v2, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 112
    iget v5, v2, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 113
    iget v5, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 114
    .local v5, "limit":I
    invoke-virtual {v3, p1, p2, v4}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V

    .line 115
    iget v6, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int/2addr v6, v5

    .line 116
    .local v6, "delta":I
    add-int/2addr v1, v6

    .line 117
    invoke-virtual {v2, v6}, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->adjustLimit(I)V

    .line 120
    iget v7, v2, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    if-lt v7, v1, :cond_4f

    goto :goto_50

    .line 121
    .end local v3    # "t":Landroid/icu/text/Transliterator;
    .end local v4    # "incremental":Z
    .end local v5    # "limit":I
    .end local v6    # "delta":I
    :cond_4f
    goto :goto_d

    .line 125
    :cond_50
    :goto_50
    iput v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 126
    return-void
.end method

.method public blacklist safeClone()Landroid/icu/text/Transliterator;
    .registers 9

    .line 411
    invoke-virtual {p0}, Landroid/icu/text/AnyTransliterator;->getFilter()Landroid/icu/text/UnicodeFilter;

    move-result-object v0

    .line 412
    .local v0, "filter":Landroid/icu/text/UnicodeFilter;
    if-eqz v0, :cond_15

    instance-of v1, v0, Landroid/icu/text/UnicodeSet;

    if-eqz v1, :cond_15

    .line 413
    new-instance v1, Landroid/icu/text/UnicodeSet;

    move-object v2, v0

    check-cast v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    move-object v0, v1

    move-object v3, v0

    goto :goto_16

    .line 415
    :cond_15
    move-object v3, v0

    .end local v0    # "filter":Landroid/icu/text/UnicodeFilter;
    .local v3, "filter":Landroid/icu/text/UnicodeFilter;
    :goto_16
    new-instance v1, Landroid/icu/text/AnyTransliterator;

    invoke-virtual {p0}, Landroid/icu/text/AnyTransliterator;->getID()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    iget v5, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/icu/text/AnyTransliterator;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v1 .. v7}, Landroid/icu/text/AnyTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;Ljava/lang/String;ILandroid/icu/text/Transliterator;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v1
.end method
