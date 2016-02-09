.class public final Landroid/icu/text/CanonicalIterator;
.super Ljava/lang/Object;
.source "CanonicalIterator.java"


# static fields
.field private static PROGRESS:Z

.field private static final SET_WITH_NULL_STRING:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static SKIP_ZEROS:Z


# instance fields
.field private transient buffer:Ljava/lang/StringBuilder;

.field private current:[I

.field private done:Z

.field private final nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field private final nfd:Landroid/icu/text/Normalizer2;

.field private pieces:[[Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 228
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    #@3
    .line 230
    const/4 v0, 0x1

    #@4
    sput-boolean v0, Landroid/icu/text/CanonicalIterator;->SKIP_ZEROS:Z

    #@6
    .line 443
    new-instance v0, Ljava/util/HashSet;

    #@8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@b
    sput-object v0, Landroid/icu/text/CanonicalIterator;->SET_WITH_NULL_STRING:Ljava/util/Set;

    #@d
    .line 445
    sget-object v0, Landroid/icu/text/CanonicalIterator;->SET_WITH_NULL_STRING:Ljava/util/Set;

    #@f
    const-string/jumbo v1, ""

    #@12
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@15
    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    iput-object v1, p0, Landroid/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuilder;

    #@a
    .line 51
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    #@d
    move-result-object v0

    #@e
    .line 52
    .local v0, "allModes":Landroid/icu/impl/Norm2AllModes;
    iget-object v1, v0, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    #@10
    iput-object v1, p0, Landroid/icu/text/CanonicalIterator;->nfd:Landroid/icu/text/Normalizer2;

    #@12
    .line 53
    iget-object v1, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@14
    invoke-virtual {v1}, Landroid/icu/impl/Normalizer2Impl;->ensureCanonIterData()Landroid/icu/impl/Normalizer2Impl;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Landroid/icu/text/CanonicalIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@1a
    .line 54
    invoke-virtual {p0, p1}, Landroid/icu/text/CanonicalIterator;->setSource(Ljava/lang/String;)V

    #@1d
    .line 50
    return-void
.end method

.method private extract(ILjava/lang/String;ILjava/lang/StringBuffer;)Ljava/util/Set;
    .locals 10
    .param p1, "comp"    # I
    .param p2, "segment"    # Ljava/lang/String;
    .param p3, "segmentPos"    # I
    .param p4, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/StringBuffer;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 367
    sget-boolean v7, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    #@2
    if-eqz v7, :cond_0

    #@4
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v8, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v9, " extract: "

    #@e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v8

    #@12
    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@15
    move-result-object v9

    #@16
    invoke-static {v9}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@19
    move-result-object v9

    #@1a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v8

    #@1e
    .line 368
    const-string/jumbo v9, ", "

    #@21
    .line 367
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v8

    #@25
    .line 368
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@28
    move-result-object v9

    #@29
    invoke-static {v9}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@2c
    move-result-object v9

    #@2d
    .line 367
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v8

    #@31
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v8

    #@35
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@38
    .line 370
    :cond_0
    iget-object v7, p0, Landroid/icu/text/CanonicalIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@3a
    invoke-virtual {v7, p1}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    .line 371
    .local v1, "decomp":Ljava/lang/String;
    if-nez v1, :cond_1

    #@40
    .line 372
    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    .line 376
    :cond_1
    const/4 v5, 0x0

    #@45
    .line 379
    .local v5, "ok":Z
    const/4 v7, 0x0

    #@46
    invoke-static {v1, v7}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@49
    move-result v2

    #@4a
    .line 380
    .local v2, "decompCp":I
    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@4d
    move-result v7

    #@4e
    add-int/lit8 v3, v7, 0x0

    #@50
    .line 382
    .local v3, "decompPos":I
    const/4 v7, 0x0

    #@51
    invoke-virtual {p4, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    #@54
    .line 384
    move v4, p3

    #@55
    .local v4, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@58
    move-result v7

    #@59
    if-ge v4, v7, :cond_3

    #@5b
    .line 385
    invoke-static {p2, v4}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@5e
    move-result v0

    #@5f
    .line 386
    .local v0, "cp":I
    if-ne v0, v2, :cond_5

    #@61
    .line 387
    sget-boolean v7, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    #@63
    if-eqz v7, :cond_2

    #@65
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@67
    new-instance v8, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v9, "  matches: "

    #@6f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v8

    #@73
    invoke-static {v0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@76
    move-result-object v9

    #@77
    invoke-static {v9}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@7a
    move-result-object v9

    #@7b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v8

    #@7f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v8

    #@83
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@86
    .line 388
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@89
    move-result v7

    #@8a
    if-ne v3, v7, :cond_4

    #@8c
    .line 389
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@8f
    move-result v7

    #@90
    add-int/2addr v7, v4

    #@91
    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@94
    move-result-object v7

    #@95
    invoke-virtual {p4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@98
    .line 390
    const/4 v5, 0x1

    #@99
    .line 413
    .end local v0    # "cp":I
    :cond_3
    if-nez v5, :cond_7

    #@9b
    const/4 v7, 0x0

    #@9c
    return-object v7

    #@9d
    .line 393
    .restart local v0    # "cp":I
    :cond_4
    invoke-static {v1, v3}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@a0
    move-result v2

    #@a1
    .line 394
    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@a4
    move-result v7

    #@a5
    add-int/2addr v3, v7

    #@a6
    .line 384
    :goto_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@a9
    move-result v7

    #@aa
    add-int/2addr v4, v7

    #@ab
    goto :goto_0

    #@ac
    .line 397
    :cond_5
    sget-boolean v7, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    #@ae
    if-eqz v7, :cond_6

    #@b0
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b2
    new-instance v8, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    const-string/jumbo v9, "  buffer: "

    #@ba
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v8

    #@be
    invoke-static {v0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@c1
    move-result-object v9

    #@c2
    invoke-static {v9}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@c5
    move-result-object v9

    #@c6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v8

    #@ca
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v8

    #@ce
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d1
    .line 399
    :cond_6
    invoke-static {p4, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@d4
    goto :goto_1

    #@d5
    .line 414
    .end local v0    # "cp":I
    :cond_7
    sget-boolean v7, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    #@d7
    if-eqz v7, :cond_8

    #@d9
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@db
    const-string/jumbo v8, "Matches"

    #@de
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e1
    .line 415
    :cond_8
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    #@e4
    move-result v7

    #@e5
    if-nez v7, :cond_9

    #@e7
    sget-object v7, Landroid/icu/text/CanonicalIterator;->SET_WITH_NULL_STRING:Ljava/util/Set;

    #@e9
    return-object v7

    #@ea
    .line 416
    :cond_9
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@ed
    move-result-object v6

    #@ee
    .line 425
    .local v6, "remainder":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@f0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f3
    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@f6
    move-result-object v8

    #@f7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v7

    #@fb
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v7

    #@ff
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v7

    #@103
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@106
    move-result-object v8

    #@107
    const/4 v9, 0x0

    #@108
    invoke-static {v7, v8, v9}, Landroid/icu/text/Normalizer;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    #@10b
    move-result v7

    #@10c
    if-eqz v7, :cond_a

    #@10e
    const/4 v7, 0x0

    #@10f
    return-object v7

    #@110
    .line 428
    :cond_a
    invoke-direct {p0, v6}, Landroid/icu/text/CanonicalIterator;->getEquivalents2(Ljava/lang/String;)Ljava/util/Set;

    #@113
    move-result-object v7

    #@114
    return-object v7
.end method

.method private getEquivalents(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .param p1, "segment"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 249
    new-instance v7, Ljava/util/HashSet;

    #@3
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    #@6
    .line 250
    .local v7, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/icu/text/CanonicalIterator;->getEquivalents2(Ljava/lang/String;)Ljava/util/Set;

    #@9
    move-result-object v0

    #@a
    .line 251
    .local v0, "basic":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    #@c
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@f
    .line 256
    .local v5, "permutations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    .line 257
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v8

    #@17
    if-eqz v8, :cond_4

    #@19
    .line 258
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    check-cast v4, Ljava/lang/String;

    #@1f
    .line 259
    .local v4, "item":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    #@22
    .line 260
    sget-boolean v8, Landroid/icu/text/CanonicalIterator;->SKIP_ZEROS:Z

    #@24
    invoke-static {v4, v8, v5}, Landroid/icu/text/CanonicalIterator;->permute(Ljava/lang/String;ZLjava/util/Set;)V

    #@27
    .line 261
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v3

    #@2b
    .line 262
    .local v3, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v8

    #@2f
    if-eqz v8, :cond_0

    #@31
    .line 263
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v6

    #@35
    check-cast v6, Ljava/lang/String;

    #@37
    .line 269
    .local v6, "possible":Ljava/lang/String;
    invoke-static {v6, p1, v11}, Landroid/icu/text/Normalizer;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    #@3a
    move-result v8

    #@3b
    if-nez v8, :cond_3

    #@3d
    .line 271
    sget-boolean v8, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    #@3f
    if-eqz v8, :cond_2

    #@41
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@43
    new-instance v9, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v10, "Adding Permutation: "

    #@4b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v9

    #@4f
    invoke-static {v6}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@52
    move-result-object v10

    #@53
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v9

    #@57
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v9

    #@5b
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5e
    .line 272
    :cond_2
    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@61
    goto :goto_0

    #@62
    .line 275
    :cond_3
    sget-boolean v8, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    #@64
    if-eqz v8, :cond_1

    #@66
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@68
    new-instance v9, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v10, "-Skipping Permutation: "

    #@70
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v9

    #@74
    invoke-static {v6}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@77
    move-result-object v10

    #@78
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v9

    #@7c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v9

    #@80
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@83
    goto :goto_0

    #@84
    .line 281
    .end local v3    # "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "item":Ljava/lang/String;
    .end local v6    # "possible":Ljava/lang/String;
    :cond_4
    invoke-interface {v7}, Ljava/util/Set;->size()I

    #@87
    move-result v8

    #@88
    new-array v1, v8, [Ljava/lang/String;

    #@8a
    .line 282
    .local v1, "finalResult":[Ljava/lang/String;
    invoke-interface {v7, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@8d
    .line 283
    return-object v1
.end method

.method private getEquivalents2(Ljava/lang/String;)Ljava/util/Set;
    .locals 14
    .param p1, "segment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 289
    new-instance v8, Ljava/util/HashSet;

    #@2
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 291
    .local v8, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-boolean v11, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    #@7
    if-eqz v11, :cond_0

    #@9
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b
    new-instance v12, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v13, "Adding: "

    #@13
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v12

    #@17
    invoke-static {p1}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@1a
    move-result-object v13

    #@1b
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v12

    #@1f
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v12

    #@23
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@26
    .line 293
    :cond_0
    invoke-interface {v8, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@29
    .line 294
    new-instance v10, Ljava/lang/StringBuffer;

    #@2b
    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    #@2e
    .line 295
    .local v10, "workingBuffer":Ljava/lang/StringBuffer;
    new-instance v9, Landroid/icu/text/UnicodeSet;

    #@30
    invoke-direct {v9}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@33
    .line 299
    .local v9, "starts":Landroid/icu/text/UnicodeSet;
    const/4 v2, 0x0

    #@34
    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@37
    move-result v11

    #@38
    if-ge v2, v11, :cond_4

    #@3a
    .line 302
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    #@3d
    move-result v0

    #@3e
    .line 303
    .local v0, "cp":I
    iget-object v11, p0, Landroid/icu/text/CanonicalIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@40
    invoke-virtual {v11, v0, v9}, Landroid/icu/impl/Normalizer2Impl;->getCanonStartSet(ILandroid/icu/text/UnicodeSet;)Z

    #@43
    move-result v11

    #@44
    if-nez v11, :cond_2

    #@46
    .line 299
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@49
    move-result v11

    #@4a
    add-int/2addr v2, v11

    #@4b
    goto :goto_0

    #@4c
    .line 307
    :cond_2
    new-instance v5, Landroid/icu/text/UnicodeSetIterator;

    #@4e
    invoke-direct {v5, v9}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@51
    .local v5, "iter":Landroid/icu/text/UnicodeSetIterator;
    :cond_3
    invoke-virtual {v5}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    #@54
    move-result v11

    #@55
    if-eqz v11, :cond_1

    #@57
    .line 308
    iget v1, v5, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@59
    .line 309
    .local v1, "cp2":I
    invoke-direct {p0, v1, p1, v2, v10}, Landroid/icu/text/CanonicalIterator;->extract(ILjava/lang/String;ILjava/lang/StringBuffer;)Ljava/util/Set;

    #@5c
    move-result-object v7

    #@5d
    .line 310
    .local v7, "remainder":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v7, :cond_3

    #@5f
    .line 315
    const/4 v11, 0x0

    #@60
    invoke-virtual {p1, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@63
    move-result-object v6

    #@64
    .line 316
    .local v6, "prefix":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v11

    #@6d
    invoke-static {v1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@70
    move-result-object v12

    #@71
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v11

    #@75
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v6

    #@79
    .line 317
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7c
    move-result-object v4

    #@7d
    .local v4, "item$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@80
    move-result v11

    #@81
    if-eqz v11, :cond_3

    #@83
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@86
    move-result-object v3

    #@87
    check-cast v3, Ljava/lang/String;

    #@89
    .line 318
    .local v3, "item":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v11

    #@92
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v11

    #@96
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v11

    #@9a
    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@9d
    goto :goto_1

    #@9e
    .line 322
    .end local v0    # "cp":I
    .end local v1    # "cp2":I
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "item$iterator":Ljava/util/Iterator;
    .end local v5    # "iter":Landroid/icu/text/UnicodeSetIterator;
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v7    # "remainder":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    return-object v8
.end method

.method public static permute(Ljava/lang/String;ZLjava/util/Set;)V
    .locals 10
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "skipZeros"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .local p2, "output":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v9, 0x0

    #@1
    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v7

    #@5
    const/4 v8, 0x2

    #@6
    if-gt v7, v8, :cond_0

    #@8
    invoke-static {p0}, Landroid/icu/text/UTF16;->countCodePoint(Ljava/lang/String;)I

    #@b
    move-result v7

    #@c
    const/4 v8, 0x1

    #@d
    if-gt v7, v8, :cond_0

    #@f
    .line 173
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@12
    .line 174
    return-void

    #@13
    .line 178
    :cond_0
    new-instance v6, Ljava/util/HashSet;

    #@15
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@18
    .line 180
    .local v6, "subpermute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@19
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1c
    move-result v7

    #@1d
    if-ge v2, v7, :cond_3

    #@1f
    .line 181
    invoke-static {p0, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@22
    move-result v1

    #@23
    .line 186
    .local v1, "cp":I
    if-eqz p1, :cond_2

    #@25
    if-eqz v2, :cond_2

    #@27
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->getCombiningClass(I)I

    #@2a
    move-result v7

    #@2b
    if-nez v7, :cond_2

    #@2d
    .line 180
    :cond_1
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@30
    move-result v7

    #@31
    add-int/2addr v2, v7

    #@32
    goto :goto_0

    #@33
    .line 192
    :cond_2
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    #@36
    .line 193
    new-instance v7, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3e
    move-result-object v8

    #@3f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v7

    #@43
    .line 194
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@46
    move-result v8

    #@47
    add-int/2addr v8, v2

    #@48
    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4b
    move-result-object v8

    #@4c
    .line 193
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v7

    #@50
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v7

    #@54
    invoke-static {v7, p1, v6}, Landroid/icu/text/CanonicalIterator;->permute(Ljava/lang/String;ZLjava/util/Set;)V

    #@57
    .line 197
    invoke-static {p0, v2}, Landroid/icu/text/UTF16;->valueOf(Ljava/lang/String;I)Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    .line 198
    .local v0, "chStr":Ljava/lang/String;
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5e
    move-result-object v5

    #@5f
    .local v5, "s$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@62
    move-result v7

    #@63
    if-eqz v7, :cond_1

    #@65
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@68
    move-result-object v4

    #@69
    check-cast v4, Ljava/lang/String;

    #@6b
    .line 199
    .local v4, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v7

    #@74
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v7

    #@78
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v3

    #@7c
    .line 201
    .local v3, "piece":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7f
    goto :goto_1

    #@80
    .line 165
    .end local v0    # "chStr":Ljava/lang/String;
    .end local v1    # "cp":I
    .end local v3    # "piece":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method


# virtual methods
.method public getSource()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 85
    iget-boolean v2, p0, Landroid/icu/text/CanonicalIterator;->done:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    const/4 v2, 0x0

    #@6
    return-object v2

    #@7
    .line 89
    :cond_0
    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuilder;

    #@9
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    #@c
    .line 90
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    #@f
    array-length v2, v2

    #@10
    if-ge v0, v2, :cond_1

    #@12
    .line 91
    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuilder;

    #@14
    iget-object v3, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    #@16
    aget-object v3, v3, v0

    #@18
    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    #@1a
    aget v4, v4, v0

    #@1c
    aget-object v3, v3, v4

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 90
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 93
    :cond_1
    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuilder;

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 97
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    #@2c
    array-length v2, v2

    #@2d
    add-int/lit8 v0, v2, -0x1

    #@2f
    .line 98
    :goto_1
    if-gez v0, :cond_3

    #@31
    .line 99
    const/4 v2, 0x1

    #@32
    iput-boolean v2, p0, Landroid/icu/text/CanonicalIterator;->done:Z

    #@34
    .line 106
    :cond_2
    return-object v1

    #@35
    .line 102
    :cond_3
    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    #@37
    aget v3, v2, v0

    #@39
    add-int/lit8 v3, v3, 0x1

    #@3b
    aput v3, v2, v0

    #@3d
    .line 103
    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    #@3f
    aget v2, v2, v0

    #@41
    iget-object v3, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    #@43
    aget-object v3, v3, v0

    #@45
    array-length v3, v3

    #@46
    if-lt v2, v3, :cond_2

    #@48
    .line 104
    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    #@4a
    aput v5, v2, v0

    #@4c
    .line 97
    add-int/lit8 v0, v0, -0x1

    #@4e
    goto :goto_1
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 71
    iput-boolean v2, p0, Landroid/icu/text/CanonicalIterator;->done:Z

    #@3
    .line 72
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    #@6
    array-length v1, v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 73
    iget-object v1, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    #@b
    aput v2, v1, v0

    #@d
    .line 72
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 70
    :cond_0
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 8
    .param p1, "newSource"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 116
    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->nfd:Landroid/icu/text/Normalizer2;

    #@4
    invoke-virtual {v4, p1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    iput-object v4, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    #@a
    .line 117
    iput-boolean v7, p0, Landroid/icu/text/CanonicalIterator;->done:Z

    #@c
    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@f
    move-result v4

    #@10
    if-nez v4, :cond_0

    #@12
    .line 121
    new-array v4, v5, [[Ljava/lang/String;

    #@14
    iput-object v4, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    #@16
    .line 122
    new-array v4, v5, [I

    #@18
    iput-object v4, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    #@1a
    .line 123
    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    #@1c
    new-array v5, v5, [Ljava/lang/String;

    #@1e
    const-string/jumbo v6, ""

    #@21
    aput-object v6, v5, v7

    #@23
    aput-object v5, v4, v7

    #@25
    .line 124
    return-void

    #@26
    .line 128
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@28
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@2b
    .line 130
    .local v2, "segmentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@2c
    .line 135
    .local v3, "start":I
    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    #@2e
    invoke-static {v4, v5}, Landroid/icu/text/UTF16;->findOffsetFromCodePoint(Ljava/lang/String;I)I

    #@31
    move-result v1

    #@32
    .line 137
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    #@34
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@37
    move-result v4

    #@38
    if-ge v1, v4, :cond_2

    #@3a
    .line 138
    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    #@3c
    invoke-virtual {v4, v1}, Ljava/lang/String;->codePointAt(I)I

    #@3f
    move-result v0

    #@40
    .line 139
    .local v0, "cp":I
    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@42
    invoke-virtual {v4, v0}, Landroid/icu/impl/Normalizer2Impl;->isCanonSegmentStarter(I)Z

    #@45
    move-result v4

    #@46
    if-eqz v4, :cond_1

    #@48
    .line 140
    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    #@4a
    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@51
    .line 141
    move v3, v1

    #@52
    .line 137
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@55
    move-result v4

    #@56
    add-int/2addr v1, v4

    #@57
    goto :goto_0

    #@58
    .line 144
    .end local v0    # "cp":I
    :cond_2
    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    #@5a
    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@61
    .line 147
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@64
    move-result v4

    #@65
    new-array v4, v4, [[Ljava/lang/String;

    #@67
    iput-object v4, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    #@69
    .line 148
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@6c
    move-result v4

    #@6d
    new-array v4, v4, [I

    #@6f
    iput-object v4, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    #@71
    .line 149
    const/4 v1, 0x0

    #@72
    :goto_1
    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    #@74
    array-length v4, v4

    #@75
    if-ge v1, v4, :cond_4

    #@77
    .line 150
    sget-boolean v4, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    #@79
    if-eqz v4, :cond_3

    #@7b
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7d
    const-string/jumbo v5, "SEGMENT"

    #@80
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@83
    .line 151
    :cond_3
    iget-object v5, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    #@85
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@88
    move-result-object v4

    #@89
    check-cast v4, Ljava/lang/String;

    #@8b
    invoke-direct {p0, v4}, Landroid/icu/text/CanonicalIterator;->getEquivalents(Ljava/lang/String;)[Ljava/lang/String;

    #@8e
    move-result-object v4

    #@8f
    aput-object v4, v5, v1

    #@91
    .line 149
    add-int/lit8 v1, v1, 0x1

    #@93
    goto :goto_1

    #@94
    .line 115
    :cond_4
    return-void
.end method
