.class public final Landroid/icu/text/CanonicalIterator;
.super Ljava/lang/Object;
.source "CanonicalIterator.java"


# static fields
.field private static final blacklist PERMUTE_DEPTH_LIMIT:I = 0x8

.field private static greylist-max-o PROGRESS:Z = false

.field private static final blacklist RESULT_LIMIT:I = 0x1000

.field private static final greylist-max-o SET_WITH_NULL_STRING:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o SKIP_ZEROS:Z


# instance fields
.field private transient greylist-max-o buffer:Ljava/lang/StringBuilder;

.field private greylist-max-o current:[I

.field private greylist-max-o done:Z

.field private final greylist-max-o nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field private final greylist-max-o nfd:Landroid/icu/text/Normalizer2;

.field private greylist-max-o pieces:[[Ljava/lang/String;

.field private greylist-max-o source:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 248
    const/4 v0, 0x0

    sput-boolean v0, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    .line 250
    const/4 v0, 0x1

    sput-boolean v0, Landroid/icu/text/CanonicalIterator;->SKIP_ZEROS:Z

    .line 470
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/icu/text/CanonicalIterator;->SET_WITH_NULL_STRING:Ljava/util/Set;

    .line 472
    sget-object v0, Landroid/icu/text/CanonicalIterator;->SET_WITH_NULL_STRING:Ljava/util/Set;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 473
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "source"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuilder;

    .line 53
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    .line 54
    .local v0, "allModes":Landroid/icu/impl/Norm2AllModes;
    iget-object v1, v0, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    iput-object v1, p0, Landroid/icu/text/CanonicalIterator;->nfd:Landroid/icu/text/Normalizer2;

    .line 55
    iget-object v1, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1}, Landroid/icu/impl/Normalizer2Impl;->ensureCanonIterData()Landroid/icu/impl/Normalizer2Impl;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/CanonicalIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    .line 56
    invoke-virtual {p0, p1}, Landroid/icu/text/CanonicalIterator;->setSource(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private greylist-max-o extract(ILjava/lang/String;ILjava/lang/StringBuffer;)Ljava/util/Set;
    .registers 15
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
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 394
    sget-boolean v0, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v0, :cond_36

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " extract: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 395
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 397
    :cond_36
    iget-object v0, p0, Landroid/icu/text/CanonicalIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "decomp":Ljava/lang/String;
    if-nez v0, :cond_42

    .line 399
    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 403
    :cond_42
    const/4 v1, 0x0

    .line 405
    .local v1, "ok":Z
    const/4 v2, 0x0

    .line 406
    .local v2, "decompPos":I
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v4

    .line 407
    .local v4, "decompCp":I
    invoke-static {v4}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 409
    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 411
    move v5, p3

    .local v5, "i":I
    :goto_52
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_cd

    .line 412
    invoke-static {p2, v5}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v6

    .line 413
    .local v6, "cp":I
    if-ne v6, v4, :cond_a0

    .line 414
    sget-boolean v7, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v7, :cond_82

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  matches: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 415
    :cond_82
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v2, v7, :cond_96

    .line 416
    invoke-static {v6}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    const/4 v1, 0x1

    .line 418
    goto :goto_cd

    .line 420
    :cond_96
    invoke-static {v0, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v4

    .line 421
    invoke-static {v4}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_c7

    .line 424
    :cond_a0
    sget-boolean v7, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v7, :cond_c4

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  buffer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 426
    :cond_c4
    invoke-static {p4, v6}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 411
    :goto_c7
    invoke-static {v6}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_52

    .line 440
    .end local v5    # "i":I
    .end local v6    # "cp":I
    :cond_cd
    :goto_cd
    const/4 v5, 0x0

    if-nez v1, :cond_d1

    return-object v5

    .line 441
    :cond_d1
    sget-boolean v6, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v6, :cond_dc

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Matches"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 442
    :cond_dc
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-nez v6, :cond_e5

    sget-object v3, Landroid/icu/text/CanonicalIterator;->SET_WITH_NULL_STRING:Ljava/util/Set;

    return-object v3

    .line 443
    :cond_e5
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 452
    .local v6, "remainder":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/icu/text/Normalizer;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_109

    return-object v5

    .line 455
    :cond_109
    invoke-direct {p0, v6}, Landroid/icu/text/CanonicalIterator;->getEquivalents2(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o getEquivalents(Ljava/lang/String;)[Ljava/lang/String;
    .registers 12
    .param p1, "segment"    # Ljava/lang/String;

    .line 269
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 270
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/icu/text/CanonicalIterator;->getEquivalents2(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 271
    .local v1, "basic":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 276
    .local v2, "permutations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 277
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_83

    .line 278
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 279
    .local v4, "item":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 280
    sget-boolean v5, Landroid/icu/text/CanonicalIterator;->SKIP_ZEROS:Z

    invoke-static {v4, v5, v2}, Landroid/icu/text/CanonicalIterator;->permute(Ljava/lang/String;ZLjava/util/Set;)V

    .line 281
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 282
    .local v5, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_82

    .line 283
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 289
    .local v6, "possible":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v6, p1, v7}, Landroid/icu/text/Normalizer;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_61

    .line 291
    sget-boolean v7, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v7, :cond_5d

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding Permutation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    :cond_5d
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 295
    :cond_61
    sget-boolean v7, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v7, :cond_81

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-Skipping Permutation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 297
    .end local v6    # "possible":Ljava/lang/String;
    :cond_81
    :goto_81
    goto :goto_2a

    .line 298
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_82
    goto :goto_12

    .line 301
    :cond_83
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 302
    .local v4, "finalResult":[Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 303
    return-object v4
.end method

.method private greylist-max-o getEquivalents2(Ljava/lang/String;)Ljava/util/Set;
    .registers 14
    .param p1, "segment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 312
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-boolean v1, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v1, :cond_25

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 314
    :cond_25
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 316
    .local v1, "workingBuffer":Ljava/lang/StringBuffer;
    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 320
    .local v2, "starts":Landroid/icu/text/UnicodeSet;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_b0

    .line 323
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 324
    .local v4, "cp":I
    iget-object v5, p0, Landroid/icu/text/CanonicalIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v5, v4, v2}, Landroid/icu/impl/Normalizer2Impl;->getCanonStartSet(ILandroid/icu/text/UnicodeSet;)Z

    move-result v5

    if-nez v5, :cond_46

    .line 325
    goto :goto_a2

    .line 328
    :cond_46
    new-instance v5, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v5, v2}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    .local v5, "iter":Landroid/icu/text/UnicodeSetIterator;
    :goto_4b
    invoke-virtual {v5}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 329
    iget v6, v5, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    .line 330
    .local v6, "cp2":I
    invoke-direct {p0, v6, p1, v3, v1}, Landroid/icu/text/CanonicalIterator;->extract(ILjava/lang/String;ILjava/lang/StringBuffer;)Ljava/util/Set;

    move-result-object v7

    .line 331
    .local v7, "remainder":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v7, :cond_5a

    .line 332
    goto :goto_4b

    .line 336
    :cond_5a
    const/4 v8, 0x0

    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 337
    .local v8, "prefix":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 338
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_78
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_99

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 339
    .local v10, "item":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 340
    .end local v10    # "item":Ljava/lang/String;
    goto :goto_78

    .line 341
    .end local v6    # "cp2":I
    .end local v7    # "remainder":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "prefix":Ljava/lang/String;
    :cond_99
    goto :goto_4b

    .line 345
    .end local v5    # "iter":Landroid/icu/text/UnicodeSetIterator;
    :cond_9a
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    const/16 v6, 0x1000

    if-gt v5, v6, :cond_a8

    .line 320
    :goto_a2
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_33

    .line 346
    :cond_a8
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Too many permutations"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 349
    .end local v3    # "i":I
    .end local v4    # "cp":I
    :cond_b0
    return-object v0
.end method

.method public static greylist-max-o permute(Ljava/lang/String;ZLjava/util/Set;)V
    .registers 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "skipZeros"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    .local p2, "output":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/icu/text/CanonicalIterator;->permute(Ljava/lang/String;ZLjava/util/Set;I)V

    .line 169
    return-void
.end method

.method private static blacklist permute(Ljava/lang/String;ZLjava/util/Set;I)V
    .registers 11
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "skipZeros"    # Z
    .param p3, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    .local p2, "output":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v0, 0x8

    if-gt p3, v0, :cond_88

    .line 192
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_16

    invoke-static {p0}, Landroid/icu/text/UTF16;->countCodePoint(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_16

    .line 193
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    return-void

    .line 198
    :cond_16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 200
    .local v0, "subpermute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_87

    .line 201
    invoke-static {p0, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    .line 206
    .local v2, "cp":I
    if-eqz p1, :cond_31

    if-eqz v1, :cond_31

    invoke-static {v2}, Landroid/icu/lang/UCharacter;->getCombiningClass(I)I

    move-result v3

    if-nez v3, :cond_31

    .line 208
    goto :goto_81

    .line 212
    :cond_31
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 214
    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p3, 0x1

    .line 213
    invoke-static {v3, p1, v0, v4}, Landroid/icu/text/CanonicalIterator;->permute(Ljava/lang/String;ZLjava/util/Set;I)V

    .line 217
    invoke-static {p0, v1}, Landroid/icu/text/UTF16;->valueOf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "chStr":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_60
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_81

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 219
    .local v5, "s":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, "piece":Ljava/lang/String;
    invoke-interface {p2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "piece":Ljava/lang/String;
    goto :goto_60

    .line 200
    .end local v3    # "chStr":Ljava/lang/String;
    :cond_81
    :goto_81
    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1c

    .line 224
    .end local v1    # "i":I
    .end local v2    # "cp":I
    :cond_87
    return-void

    .line 187
    .end local v0    # "subpermute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stack too deep:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o getSource()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o next()Ljava/lang/String;
    .registers 7

    .line 84
    iget-boolean v0, p0, Landroid/icu/text/CanonicalIterator;->done:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_6
    iget-object v0, p0, Landroid/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_24

    .line 90
    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 92
    .end local v0    # "i":I
    :cond_24
    iget-object v0, p0, Landroid/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "result":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 97
    .local v2, "i":I
    :goto_2f
    if-gez v2, :cond_34

    .line 98
    iput-boolean v3, p0, Landroid/icu/text/CanonicalIterator;->done:Z

    .line 99
    goto :goto_46

    .line 101
    :cond_34
    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    aget v5, v4, v2

    add-int/2addr v5, v3

    aput v5, v4, v2

    .line 102
    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    aget v4, v4, v2

    iget-object v5, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    aget-object v5, v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_47

    .line 105
    .end local v2    # "i":I
    :goto_46
    return-object v0

    .line 103
    .restart local v2    # "i":I
    :cond_47
    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    aput v1, v4, v2

    .line 96
    add-int/lit8 v2, v2, -0x1

    goto :goto_2f
.end method

.method public greylist-max-o reset()V
    .registers 4

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/CanonicalIterator;->done:Z

    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    array-length v2, v2

    if-ge v1, v2, :cond_10

    .line 73
    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    aput v0, v2, v1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 75
    .end local v1    # "i":I
    :cond_10
    return-void
.end method

.method public greylist-max-o setSource(Ljava/lang/String;)V
    .registers 7
    .param p1, "newSource"    # Ljava/lang/String;

    .line 114
    iget-object v0, p0, Landroid/icu/text/CanonicalIterator;->nfd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/CanonicalIterator;->done:Z

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_25

    .line 119
    new-array v1, v2, [[Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    .line 120
    new-array v1, v2, [I

    iput-object v1, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    .line 121
    iget-object v1, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    const-string v2, ""

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 122
    return-void

    .line 126
    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v0, "segmentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 133
    .local v1, "start":I
    iget-object v3, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/icu/text/UTF16;->findOffsetFromCodePoint(Ljava/lang/String;I)I

    move-result v2

    .line 135
    .local v2, "i":I
    :goto_31
    iget-object v3, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_57

    .line 136
    iget-object v3, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 137
    .local v3, "cp":I
    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v4, v3}, Landroid/icu/impl/Normalizer2Impl;->isCanonSegmentStarter(I)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 138
    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    move v1, v2

    .line 135
    :cond_51
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_31

    .line 142
    .end local v3    # "cp":I
    :cond_57
    iget-object v3, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [[Ljava/lang/String;

    iput-object v3, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    .line 146
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    .line 147
    const/4 v2, 0x0

    :goto_71
    iget-object v3, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_92

    .line 148
    sget-boolean v3, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v3, :cond_81

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "SEGMENT"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    :cond_81
    iget-object v3, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/icu/text/CanonicalIterator;->getEquivalents(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    .line 151
    :cond_92
    return-void
.end method
