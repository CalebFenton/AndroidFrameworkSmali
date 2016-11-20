.class Landroid/icu/text/AnyTransliterator;
.super Landroid/icu/text/Transliterator;
.source "AnyTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/AnyTransliterator$ScriptRunIterator;
    }
.end annotation


# static fields
.field static final ANY:Ljava/lang/String; = "Any"

.field static final LATIN_PIVOT:Ljava/lang/String; = "-Latin;Latin-"

.field static final NULL_ID:Ljava/lang/String; = "Null"

.field static final TARGET_SEP:C = '-'

.field static final VARIANT_SEP:C = '/'


# instance fields
.field private cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/Transliterator;",
            ">;"
        }
    .end annotation
.end field

.field private target:Ljava/lang/String;

.field private targetScript:I

.field private widthFix:Landroid/icu/text/Transliterator;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;Ljava/lang/String;ILandroid/icu/text/Transliterator;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1
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
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/Transliterator;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 157
    .local p6, "cache2":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Landroid/icu/text/Transliterator;>;"
    invoke-direct {p0, p1, p2}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    #@3
    .line 71
    const-string/jumbo v0, "[[:dt=Nar:][:dt=Wide:]] nfkd"

    #@6
    invoke-static {v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/icu/text/AnyTransliterator;->widthFix:Landroid/icu/text/Transliterator;

    #@c
    .line 158
    iput p4, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    #@e
    .line 159
    iput-object p6, p0, Landroid/icu/text/AnyTransliterator;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    #@10
    .line 160
    iput-object p3, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    #@12
    .line 156
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "theTarget"    # Ljava/lang/String;
    .param p3, "theVariant"    # Ljava/lang/String;
    .param p4, "theTargetScript"    # I

    #@0
    .prologue
    .line 136
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    #@4
    .line 71
    const-string/jumbo v0, "[[:dt=Nar:][:dt=Wide:]] nfkd"

    #@7
    invoke-static {v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/icu/text/AnyTransliterator;->widthFix:Landroid/icu/text/Transliterator;

    #@d
    .line 137
    iput p4, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    #@f
    .line 138
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@11
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@14
    iput-object v0, p0, Landroid/icu/text/AnyTransliterator;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    #@16
    .line 140
    iput-object p2, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    #@18
    .line 141
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@1b
    move-result v0

    #@1c
    if-lez v0, :cond_0

    #@1e
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    const/16 v1, 0x2f

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    iput-object v0, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    #@37
    .line 135
    :cond_0
    return-void
.end method

.method private getTransliterator(I)Landroid/icu/text/Transliterator;
    .locals 9
    .param p1, "source"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 172
    iget v7, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    #@3
    if-eq p1, v7, :cond_0

    #@5
    const/4 v7, -0x1

    #@6
    if-ne p1, v7, :cond_2

    #@8
    .line 173
    :cond_0
    iget v7, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    #@a
    invoke-direct {p0, v7}, Landroid/icu/text/AnyTransliterator;->isWide(I)Z

    #@d
    move-result v7

    #@e
    if-eqz v7, :cond_1

    #@10
    .line 174
    return-object v8

    #@11
    .line 176
    :cond_1
    iget-object v7, p0, Landroid/icu/text/AnyTransliterator;->widthFix:Landroid/icu/text/Transliterator;

    #@13
    return-object v7

    #@14
    .line 180
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v2

    #@18
    .line 181
    .local v2, "key":Ljava/lang/Integer;
    iget-object v7, p0, Landroid/icu/text/AnyTransliterator;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    #@1a
    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v5

    #@1e
    check-cast v5, Landroid/icu/text/Transliterator;

    #@20
    .line 182
    .local v5, "t":Landroid/icu/text/Transliterator;
    if-nez v5, :cond_5

    #@22
    .line 183
    invoke-static {p1}, Landroid/icu/lang/UScript;->getName(I)Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    .line 184
    .local v4, "sourceName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v7

    #@2f
    const/16 v8, 0x2d

    #@31
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    move-result-object v7

    #@35
    iget-object v8, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    #@37
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    .line 187
    .local v1, "id":Ljava/lang/String;
    const/4 v7, 0x0

    #@40
    :try_start_0
    invoke-static {v1, v7}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    move-result-object v5

    #@44
    .line 189
    :goto_0
    if-nez v5, :cond_3

    #@46
    .line 192
    new-instance v7, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    const-string/jumbo v8, "-Latin;Latin-"

    #@52
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v7

    #@56
    iget-object v8, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    #@58
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v7

    #@5c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v1

    #@60
    .line 194
    const/4 v7, 0x0

    #@61
    :try_start_1
    invoke-static {v1, v7}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    #@64
    move-result-object v5

    #@65
    .line 198
    :cond_3
    :goto_1
    if-eqz v5, :cond_6

    #@67
    .line 199
    iget v7, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    #@69
    invoke-direct {p0, v7}, Landroid/icu/text/AnyTransliterator;->isWide(I)Z

    #@6c
    move-result v7

    #@6d
    if-nez v7, :cond_4

    #@6f
    .line 200
    new-instance v6, Ljava/util/ArrayList;

    #@71
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@74
    .line 201
    .local v6, "v":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/Transliterator;>;"
    iget-object v7, p0, Landroid/icu/text/AnyTransliterator;->widthFix:Landroid/icu/text/Transliterator;

    #@76
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@79
    .line 202
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7c
    .line 203
    new-instance v5, Landroid/icu/text/CompoundTransliterator;

    #@7e
    .end local v5    # "t":Landroid/icu/text/Transliterator;
    invoke-direct {v5, v6}, Landroid/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;)V

    #@81
    .line 205
    .end local v6    # "v":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/Transliterator;>;"
    .restart local v5    # "t":Landroid/icu/text/Transliterator;
    :cond_4
    iget-object v7, p0, Landroid/icu/text/AnyTransliterator;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    #@83
    invoke-virtual {v7, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@86
    move-result-object v3

    #@87
    check-cast v3, Landroid/icu/text/Transliterator;

    #@89
    .line 206
    .local v3, "prevCachedT":Landroid/icu/text/Transliterator;
    if-eqz v3, :cond_5

    #@8b
    .line 207
    move-object v5, v3

    #@8c
    .line 214
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "prevCachedT":Landroid/icu/text/Transliterator;
    .end local v4    # "sourceName":Ljava/lang/String;
    :cond_5
    return-object v5

    #@8d
    .line 188
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v4    # "sourceName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@8e
    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0

    #@8f
    .line 195
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    #@90
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_1

    #@91
    .line 209
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_6
    iget v7, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    #@93
    invoke-direct {p0, v7}, Landroid/icu/text/AnyTransliterator;->isWide(I)Z

    #@96
    move-result v7

    #@97
    if-nez v7, :cond_5

    #@99
    .line 210
    iget-object v7, p0, Landroid/icu/text/AnyTransliterator;->widthFix:Landroid/icu/text/Transliterator;

    #@9b
    return-object v7
.end method

.method private isWide(I)Z
    .locals 2
    .param p1, "script"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 222
    const/4 v1, 0x5

    #@2
    if-eq p1, v1, :cond_0

    #@4
    const/16 v1, 0x11

    #@6
    if-ne p1, v1, :cond_1

    #@8
    :cond_0
    :goto_0
    return v0

    #@9
    :cond_1
    const/16 v1, 0x12

    #@b
    if-eq p1, v1, :cond_0

    #@d
    const/16 v1, 0x14

    #@f
    if-eq p1, v1, :cond_0

    #@11
    const/16 v1, 0x16

    #@13
    if-eq p1, v1, :cond_0

    #@15
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method static register()V
    .locals 13

    #@0
    .prologue
    .line 232
    new-instance v2, Ljava/util/HashMap;

    #@2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 234
    .local v2, "seen":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-static {}, Landroid/icu/text/Transliterator;->getAvailableSources()Ljava/util/Enumeration;

    #@8
    move-result-object v1

    #@9
    .local v1, "s":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@c
    move-result v11

    #@d
    if-eqz v11, :cond_4

    #@f
    .line 235
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@12
    move-result-object v4

    #@13
    check-cast v4, Ljava/lang/String;

    #@15
    .line 238
    .local v4, "source":Ljava/lang/String;
    const-string/jumbo v11, "Any"

    #@18
    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1b
    move-result v11

    #@1c
    if-nez v11, :cond_0

    #@1e
    .line 240
    invoke-static {v4}, Landroid/icu/text/Transliterator;->getAvailableTargets(Ljava/lang/String;)Ljava/util/Enumeration;

    #@21
    move-result-object v5

    #@22
    .line 241
    .local v5, "t":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@25
    move-result v11

    #@26
    .line 240
    if-eqz v11, :cond_0

    #@28
    .line 242
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2b
    move-result-object v6

    #@2c
    check-cast v6, Ljava/lang/String;

    #@2e
    .line 245
    .local v6, "target":Ljava/lang/String;
    invoke-static {v6}, Landroid/icu/text/AnyTransliterator;->scriptNameToCode(Ljava/lang/String;)I

    #@31
    move-result v7

    #@32
    .line 246
    .local v7, "targetScript":I
    const/4 v11, -0x1

    #@33
    if-eq v7, v11, :cond_1

    #@35
    .line 250
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Ljava/util/Set;

    #@3b
    .line 251
    .local v3, "seenVariants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v3, :cond_2

    #@3d
    .line 252
    new-instance v3, Ljava/util/HashSet;

    #@3f
    .end local v3    # "seenVariants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@42
    .restart local v3    # "seenVariants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    .line 255
    :cond_2
    invoke-static {v4, v6}, Landroid/icu/text/Transliterator;->getAvailableVariants(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    #@48
    move-result-object v9

    #@49
    .line 256
    .local v9, "v":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3
    :goto_0
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@4c
    move-result v11

    #@4d
    .line 255
    if-eqz v11, :cond_1

    #@4f
    .line 257
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@52
    move-result-object v10

    #@53
    check-cast v10, Ljava/lang/String;

    #@55
    .line 260
    .local v10, "variant":Ljava/lang/String;
    invoke-interface {v3, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@58
    move-result v11

    #@59
    if-nez v11, :cond_3

    #@5b
    .line 263
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5e
    .line 266
    const-string/jumbo v11, "Any"

    #@61
    invoke-static {v11, v6, v10}, Landroid/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    .line 267
    .local v0, "id":Ljava/lang/String;
    new-instance v8, Landroid/icu/text/AnyTransliterator;

    #@67
    invoke-direct {v8, v0, v6, v10, v7}, Landroid/icu/text/AnyTransliterator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@6a
    .line 269
    .local v8, "trans":Landroid/icu/text/AnyTransliterator;
    invoke-static {v8}, Landroid/icu/text/Transliterator;->registerInstance(Landroid/icu/text/Transliterator;)V

    #@6d
    .line 270
    const-string/jumbo v11, "Null"

    #@70
    const/4 v12, 0x0

    #@71
    invoke-static {v6, v11, v12}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    #@74
    goto :goto_0

    #@75
    .line 230
    .end local v0    # "id":Ljava/lang/String;
    .end local v3    # "seenVariants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "source":Ljava/lang/String;
    .end local v5    # "t":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v6    # "target":Ljava/lang/String;
    .end local v7    # "targetScript":I
    .end local v8    # "trans":Landroid/icu/text/AnyTransliterator;
    .end local v9    # "v":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v10    # "variant":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static scriptNameToCode(Ljava/lang/String;)I
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 282
    :try_start_0
    invoke-static {p0}, Landroid/icu/lang/UScript;->getCode(Ljava/lang/String;)[I

    #@4
    move-result-object v0

    #@5
    .line 283
    .local v0, "codes":[I
    if-eqz v0, :cond_0

    #@7
    const/4 v3, 0x0

    #@8
    aget v2, v0, v3
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    :cond_0
    return v2

    #@b
    .line 284
    .end local v0    # "codes":[I
    :catch_0
    move-exception v1

    #@c
    .line 286
    .local v1, "e":Ljava/util/MissingResourceException;
    return v2
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 3
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 416
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@4
    move-result-object v0

    #@5
    .line 418
    .local v0, "myFilter":Landroid/icu/text/UnicodeSet;
    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@8
    .line 419
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->size()I

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 420
    const v1, 0x10ffff

    #@11
    invoke-virtual {p3, v2, v1}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    #@14
    .line 415
    :cond_0
    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 9
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "pos"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "isIncremental"    # Z

    #@0
    .prologue
    .line 78
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@2
    .line 79
    .local v1, "allStart":I
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@4
    .line 82
    .local v0, "allLimit":I
    new-instance v4, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;

    #@6
    iget v7, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    #@8
    iget v8, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@a
    invoke-direct {v4, p1, v7, v8}, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;-><init>(Landroid/icu/text/Replaceable;II)V

    #@d
    .line 84
    .local v4, "it":Landroid/icu/text/AnyTransliterator$ScriptRunIterator;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->next()Z

    #@10
    move-result v7

    #@11
    if-eqz v7, :cond_2

    #@13
    .line 86
    iget v7, v4, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    #@15
    if-le v7, v1, :cond_0

    #@17
    .line 90
    iget v7, v4, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->scriptCode:I

    #@19
    invoke-direct {p0, v7}, Landroid/icu/text/AnyTransliterator;->getTransliterator(I)Landroid/icu/text/Transliterator;

    #@1c
    move-result-object v6

    #@1d
    .line 92
    .local v6, "t":Landroid/icu/text/Transliterator;
    if-nez v6, :cond_1

    #@1f
    .line 95
    iget v7, v4, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    #@21
    iput v7, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@23
    goto :goto_0

    #@24
    .line 102
    :cond_1
    if-eqz p3, :cond_3

    #@26
    iget v7, v4, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    #@28
    if-lt v7, v0, :cond_3

    #@2a
    const/4 v3, 0x1

    #@2b
    .line 104
    .local v3, "incremental":Z
    :goto_1
    iget v7, v4, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    #@2d
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    #@30
    move-result v7

    #@31
    iput v7, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@33
    .line 105
    iget v7, v4, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    #@35
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    #@38
    move-result v7

    #@39
    iput v7, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@3b
    .line 106
    iget v5, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@3d
    .line 107
    .local v5, "limit":I
    invoke-virtual {v6, p1, p2, v3}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V

    #@40
    .line 108
    iget v7, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@42
    sub-int v2, v7, v5

    #@44
    .line 109
    .local v2, "delta":I
    add-int/2addr v0, v2

    #@45
    .line 110
    invoke-virtual {v4, v2}, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->adjustLimit(I)V

    #@48
    .line 113
    iget v7, v4, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    #@4a
    if-lt v7, v0, :cond_0

    #@4c
    .line 118
    .end local v2    # "delta":I
    .end local v3    # "incremental":Z
    .end local v5    # "limit":I
    .end local v6    # "t":Landroid/icu/text/Transliterator;
    :cond_2
    iput v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@4e
    .line 77
    return-void

    #@4f
    .line 102
    .restart local v6    # "t":Landroid/icu/text/Transliterator;
    :cond_3
    const/4 v3, 0x0

    #@50
    .restart local v3    # "incremental":Z
    goto :goto_1
.end method

.method public safeClone()Landroid/icu/text/Transliterator;
    .locals 8

    #@0
    .prologue
    .line 404
    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getFilter()Landroid/icu/text/UnicodeFilter;

    #@3
    move-result-object v2

    #@4
    .line 405
    .local v2, "filter":Landroid/icu/text/UnicodeFilter;
    if-eqz v2, :cond_0

    #@6
    instance-of v0, v2, Landroid/icu/text/UnicodeSet;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 406
    new-instance v7, Landroid/icu/text/UnicodeSet;

    #@c
    nop

    #@d
    nop

    #@e
    .end local v2    # "filter":Landroid/icu/text/UnicodeFilter;
    invoke-direct {v7, v2}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@11
    .local v7, "filter":Landroid/icu/text/UnicodeFilter;
    move-object v2, v7

    #@12
    .line 408
    .end local v7    # "filter":Landroid/icu/text/UnicodeFilter;
    .restart local v2    # "filter":Landroid/icu/text/UnicodeFilter;
    :cond_0
    new-instance v0, Landroid/icu/text/AnyTransliterator;

    #@14
    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    iget-object v3, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    #@1a
    iget v4, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    #@1c
    iget-object v5, p0, Landroid/icu/text/AnyTransliterator;->widthFix:Landroid/icu/text/Transliterator;

    #@1e
    iget-object v6, p0, Landroid/icu/text/AnyTransliterator;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    #@20
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/AnyTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;Ljava/lang/String;ILandroid/icu/text/Transliterator;Ljava/util/concurrent/ConcurrentHashMap;)V

    #@23
    return-object v0
.end method
