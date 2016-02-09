.class public final Landroid/icu/text/AlphabeticIndex;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/AlphabeticIndex$ImmutableIndex;,
        Landroid/icu/text/AlphabeticIndex$Record;,
        Landroid/icu/text/AlphabeticIndex$Bucket;,
        Landroid/icu/text/AlphabeticIndex$BucketList;,
        Landroid/icu/text/AlphabeticIndex$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/icu/text/AlphabeticIndex$Bucket",
        "<TV;>;>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final BASE:Ljava/lang/String; = "\ufdd0"

.field private static final CGJ:C = '\u034f'

.field private static final GC_CN_MASK:I = 0x1

.field private static final GC_LL_MASK:I = 0x4

.field private static final GC_LM_MASK:I = 0x10

.field private static final GC_LO_MASK:I = 0x20

.field private static final GC_LT_MASK:I = 0x8

.field private static final GC_LU_MASK:I = 0x2

.field private static final GC_L_MASK:I = 0x3e

.field private static final binaryCmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buckets:Landroid/icu/text/AlphabeticIndex$BucketList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/text/AlphabeticIndex$BucketList",
            "<TV;>;"
        }
    .end annotation
.end field

.field private collatorExternal:Landroid/icu/text/RuleBasedCollator;

.field private final collatorOriginal:Landroid/icu/text/RuleBasedCollator;

.field private final collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

.field private final firstCharsInScripts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inflowLabel:Ljava/lang/String;

.field private final initialLabels:Landroid/icu/text/UnicodeSet;

.field private inputList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/AlphabeticIndex$Record",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private maxLabelCount:I

.field private overflowLabel:Ljava/lang/String;

.field private final recordComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/icu/text/AlphabeticIndex$Record",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private underflowLabel:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/icu/text/AlphabeticIndex;)Landroid/icu/text/RuleBasedCollator;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->collatorOriginal:Landroid/icu/text/RuleBasedCollator;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const-class v0, Landroid/icu/text/AlphabeticIndex;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    move v0, v1

    #@b
    :goto_0
    sput-boolean v0, Landroid/icu/text/AlphabeticIndex;->-assertionsDisabled:Z

    #@d
    .line 133
    new-instance v0, Landroid/icu/text/UTF16$StringComparator;

    #@f
    invoke-direct {v0, v2, v1, v1}, Landroid/icu/text/UTF16$StringComparator;-><init>(ZZI)V

    #@12
    sput-object v0, Landroid/icu/text/AlphabeticIndex;->binaryCmp:Ljava/util/Comparator;

    #@14
    .line 124
    return-void

    #@15
    :cond_0
    move v0, v2

    #@16
    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/text/RuleBasedCollator;)V
    .locals 1
    .param p1, "collator"    # Landroid/icu/text/RuleBasedCollator;

    #@0
    .prologue
    .line 260
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Landroid/icu/text/AlphabeticIndex;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/RuleBasedCollator;)V

    #@4
    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 232
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/text/AlphabeticIndex;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/RuleBasedCollator;)V

    #@4
    .line 231
    return-void
.end method

.method private constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/RuleBasedCollator;)V
    .locals 5
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "collator"    # Landroid/icu/text/RuleBasedCollator;

    #@0
    .prologue
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    const/4 v4, 0x0

    #@1
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 140
    new-instance v1, Landroid/icu/text/AlphabeticIndex$1;

    #@6
    invoke-direct {v1, p0}, Landroid/icu/text/AlphabeticIndex$1;-><init>(Landroid/icu/text/AlphabeticIndex;)V

    #@9
    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->recordComparator:Ljava/util/Comparator;

    #@b
    .line 149
    new-instance v1, Landroid/icu/text/UnicodeSet;

    #@d
    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@10
    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    #@12
    .line 155
    const-string/jumbo v1, "\u2026"

    #@15
    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->overflowLabel:Ljava/lang/String;

    #@17
    .line 156
    const-string/jumbo v1, "\u2026"

    #@1a
    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->underflowLabel:Ljava/lang/String;

    #@1c
    .line 157
    const-string/jumbo v1, "\u2026"

    #@1f
    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->inflowLabel:Ljava/lang/String;

    #@21
    .line 815
    const/16 v1, 0x63

    #@23
    iput v1, p0, Landroid/icu/text/AlphabeticIndex;->maxLabelCount:I

    #@25
    .line 267
    if-eqz p2, :cond_0

    #@27
    .end local p2    # "collator":Landroid/icu/text/RuleBasedCollator;
    :goto_0
    iput-object p2, p0, Landroid/icu/text/AlphabeticIndex;->collatorOriginal:Landroid/icu/text/RuleBasedCollator;

    #@29
    .line 269
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->collatorOriginal:Landroid/icu/text/RuleBasedCollator;

    #@2b
    invoke-virtual {v1}, Landroid/icu/text/RuleBasedCollator;->cloneAsThawed()Landroid/icu/text/RuleBasedCollator;

    #@2e
    move-result-object v1

    #@2f
    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 274
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    #@33
    invoke-virtual {v1, v4}, Landroid/icu/text/RuleBasedCollator;->setStrength(I)V

    #@36
    .line 275
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    #@38
    invoke-virtual {v1}, Landroid/icu/text/RuleBasedCollator;->freeze()Landroid/icu/text/Collator;

    #@3b
    .line 277
    invoke-virtual {p0}, Landroid/icu/text/AlphabeticIndex;->getFirstCharactersInScripts()Ljava/util/List;

    #@3e
    move-result-object v1

    #@3f
    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    #@41
    .line 278
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    #@43
    iget-object v2, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    #@45
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@48
    .line 282
    :goto_1
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    #@4a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@4d
    move-result v1

    #@4e
    if-eqz v1, :cond_1

    #@50
    .line 283
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@52
    .line 284
    const-string/jumbo v2, "AlphabeticIndex requires some non-ignorable script boundary strings"

    #@55
    .line 283
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@58
    throw v1

    #@59
    .line 267
    .restart local p2    # "collator":Landroid/icu/text/RuleBasedCollator;
    :cond_0
    invoke-static {p1}, Landroid/icu/text/Collator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    #@5c
    move-result-object v1

    #@5d
    check-cast v1, Landroid/icu/text/RuleBasedCollator;

    #@5f
    move-object p2, v1

    #@60
    goto :goto_0

    #@61
    .line 270
    .end local p2    # "collator":Landroid/icu/text/RuleBasedCollator;
    :catch_0
    move-exception v0

    #@62
    .line 272
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@64
    const-string/jumbo v2, "Collator cannot be cloned"

    #@67
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6a
    throw v1

    #@6b
    .line 286
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    #@6d
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    #@6f
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@72
    move-result-object v1

    #@73
    check-cast v1, Ljava/lang/String;

    #@75
    const-string/jumbo v3, ""

    #@78
    invoke-virtual {v2, v1, v3}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    move-result v1

    #@7c
    if-nez v1, :cond_2

    #@7e
    .line 287
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    #@80
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@83
    goto :goto_1

    #@84
    .line 295
    :cond_2
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->addChineseIndexCharacters()Z

    #@87
    move-result v1

    #@88
    if-nez v1, :cond_3

    #@8a
    if-eqz p1, :cond_3

    #@8c
    .line 296
    invoke-direct {p0, p1}, Landroid/icu/text/AlphabeticIndex;->addIndexExemplars(Landroid/icu/util/ULocale;)V

    #@8f
    .line 266
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 243
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, v0, v1}, Landroid/icu/text/AlphabeticIndex;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/RuleBasedCollator;)V

    #@8
    .line 242
    return-void
.end method

.method private addChineseIndexCharacters()Z
    .locals 11

    #@0
    .prologue
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    const/16 v10, 0x5a

    #@2
    const/16 v9, 0x41

    #@4
    const/4 v8, 0x0

    #@5
    .line 568
    new-instance v1, Landroid/icu/text/UnicodeSet;

    #@7
    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@a
    .line 570
    .local v1, "contractions":Landroid/icu/text/UnicodeSet;
    :try_start_0
    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    #@c
    const-string/jumbo v6, "\ufdd0"

    #@f
    const/4 v7, 0x0

    #@10
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v6

    #@14
    invoke-virtual {v5, v6, v1}, Landroid/icu/text/RuleBasedCollator;->internalAddContractions(ILandroid/icu/text/UnicodeSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 574
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_0

    #@1d
    return v8

    #@1e
    .line 571
    :catch_0
    move-exception v2

    #@1f
    .line 572
    .local v2, "e":Ljava/lang/Exception;
    return v8

    #@20
    .line 575
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    #@22
    invoke-virtual {v5, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@25
    .line 576
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v4

    #@29
    .local v4, "s$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_3

    #@2f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v3

    #@33
    check-cast v3, Ljava/lang/String;

    #@35
    .line 577
    .local v3, "s":Ljava/lang/String;
    sget-boolean v5, Landroid/icu/text/AlphabeticIndex;->-assertionsDisabled:Z

    #@37
    if-nez v5, :cond_2

    #@39
    const-string/jumbo v5, "\ufdd0"

    #@3c
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3f
    move-result v5

    #@40
    if-nez v5, :cond_2

    #@42
    new-instance v5, Ljava/lang/AssertionError;

    #@44
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@47
    throw v5

    #@48
    .line 578
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@4b
    move-result v5

    #@4c
    add-int/lit8 v5, v5, -0x1

    #@4e
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    #@51
    move-result v0

    #@52
    .line 579
    .local v0, "c":C
    if-gt v9, v0, :cond_1

    #@54
    if-gt v0, v10, :cond_1

    #@56
    .line 581
    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    #@58
    invoke-virtual {v5, v9, v10}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    #@5b
    .line 585
    .end local v0    # "c":C
    .end local v3    # "s":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    #@5c
    return v5
.end method

.method private addIndexExemplars(Landroid/icu/util/ULocale;)V
    .locals 11
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    const v10, 0xd7a3

    #@3
    const/16 v9, 0x7a

    #@5
    const/16 v8, 0x61

    #@7
    const v7, 0xac00

    #@a
    const/4 v6, 0x0

    #@b
    .line 521
    const/4 v5, 0x2

    #@c
    invoke-static {p1, v6, v5}, Landroid/icu/util/LocaleData;->getExemplarSet(Landroid/icu/util/ULocale;II)Landroid/icu/text/UnicodeSet;

    #@f
    move-result-object v1

    #@10
    .line 522
    .local v1, "exemplars":Landroid/icu/text/UnicodeSet;
    if-eqz v1, :cond_0

    #@12
    .line 523
    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    #@14
    invoke-virtual {v5, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@17
    .line 524
    return-void

    #@18
    .line 529
    :cond_0
    invoke-static {p1, v6, v6}, Landroid/icu/util/LocaleData;->getExemplarSet(Landroid/icu/util/ULocale;II)Landroid/icu/text/UnicodeSet;

    #@1b
    move-result-object v1

    #@1c
    .line 531
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->cloneAsThawed()Landroid/icu/text/UnicodeSet;

    #@1f
    move-result-object v1

    #@20
    .line 533
    invoke-virtual {v1, v8, v9}, Landroid/icu/text/UnicodeSet;->containsSome(II)Z

    #@23
    move-result v5

    #@24
    if-nez v5, :cond_1

    #@26
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->size()I

    #@29
    move-result v5

    #@2a
    if-nez v5, :cond_2

    #@2c
    .line 534
    :cond_1
    invoke-virtual {v1, v8, v9}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    #@2f
    .line 536
    :cond_2
    invoke-virtual {v1, v7, v10}, Landroid/icu/text/UnicodeSet;->containsSome(II)Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_3

    #@35
    .line 538
    invoke-virtual {v1, v7, v10}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5, v7}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@3c
    move-result-object v5

    #@3d
    .line 539
    const v6, 0xb098

    #@40
    .line 538
    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@43
    move-result-object v5

    #@44
    .line 539
    const v6, 0xb2e4

    #@47
    .line 538
    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@4a
    move-result-object v5

    #@4b
    .line 539
    const v6, 0xb77c

    #@4e
    .line 538
    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@51
    move-result-object v5

    #@52
    .line 540
    const v6, 0xb9c8

    #@55
    .line 538
    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@58
    move-result-object v5

    #@59
    .line 540
    const v6, 0xbc14

    #@5c
    .line 538
    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@5f
    move-result-object v5

    #@60
    .line 540
    const v6, 0xc0ac

    #@63
    .line 538
    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@66
    move-result-object v5

    #@67
    .line 540
    const v6, 0xc544

    #@6a
    .line 538
    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@6d
    move-result-object v5

    #@6e
    .line 541
    const v6, 0xc790

    #@71
    .line 538
    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@74
    move-result-object v5

    #@75
    .line 541
    const v6, 0xcc28

    #@78
    .line 538
    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@7b
    move-result-object v5

    #@7c
    .line 541
    const v6, 0xce74

    #@7f
    .line 538
    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@82
    move-result-object v5

    #@83
    .line 541
    const v6, 0xd0c0

    #@86
    .line 538
    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@89
    move-result-object v5

    #@8a
    .line 542
    const v6, 0xd30c

    #@8d
    .line 538
    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@90
    move-result-object v5

    #@91
    .line 542
    const v6, 0xd558

    #@94
    .line 538
    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@97
    .line 544
    :cond_3
    const/16 v5, 0x1200

    #@99
    const/16 v6, 0x137f

    #@9b
    invoke-virtual {v1, v5, v6}, Landroid/icu/text/UnicodeSet;->containsSome(II)Z

    #@9e
    move-result v5

    #@9f
    if-eqz v5, :cond_5

    #@a1
    .line 548
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@a3
    const-string/jumbo v5, "[[:Block=Ethiopic:]&[:Script=Ethiopic:]]"

    #@a6
    invoke-direct {v0, v5}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    #@a9
    .line 549
    .local v0, "ethiopic":Landroid/icu/text/UnicodeSet;
    new-instance v2, Landroid/icu/text/UnicodeSetIterator;

    #@ab
    invoke-direct {v2, v0}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@ae
    .line 550
    .local v2, "it":Landroid/icu/text/UnicodeSetIterator;
    :cond_4
    :goto_0
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    #@b1
    move-result v5

    #@b2
    if-eqz v5, :cond_5

    #@b4
    iget v5, v2, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@b6
    sget v6, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    #@b8
    if-eq v5, v6, :cond_5

    #@ba
    .line 551
    iget v5, v2, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@bc
    and-int/lit8 v5, v5, 0x7

    #@be
    if-eqz v5, :cond_4

    #@c0
    .line 552
    iget v5, v2, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@c2
    invoke-virtual {v1, v5}, Landroid/icu/text/UnicodeSet;->remove(I)Landroid/icu/text/UnicodeSet;

    #@c5
    goto :goto_0

    #@c6
    .line 559
    .end local v0    # "ethiopic":Landroid/icu/text/UnicodeSet;
    .end local v2    # "it":Landroid/icu/text/UnicodeSetIterator;
    :cond_5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c9
    move-result-object v4

    #@ca
    .local v4, "item$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@cd
    move-result v5

    #@ce
    if-eqz v5, :cond_6

    #@d0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d3
    move-result-object v3

    #@d4
    check-cast v3, Ljava/lang/String;

    #@d6
    .line 560
    .local v3, "item":Ljava/lang/String;
    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    #@d8
    invoke-static {p1, v3}, Landroid/icu/lang/UCharacter;->toUpperCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    #@db
    move-result-object v6

    #@dc
    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@df
    goto :goto_1

    #@e0
    .line 520
    .end local v3    # "item":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private createBucketList()Landroid/icu/text/AlphabeticIndex$BucketList;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/text/AlphabeticIndex$BucketList",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1004
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/AlphabeticIndex;->initLabels()Ljava/util/List;

    #@3
    move-result-object v17

    #@4
    .line 1008
    .local v17, "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@6
    iget-object v0, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    #@8
    move-object/from16 v28, v0

    #@a
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    #@d
    move-result v28

    #@e
    if-eqz v28, :cond_4

    #@10
    .line 1009
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    #@14
    move-object/from16 v28, v0

    #@16
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    #@19
    move-result v28

    #@1a
    move/from16 v0, v28

    #@1c
    int-to-long v0, v0

    #@1d
    move-wide/from16 v28, v0

    #@1f
    const-wide v30, 0xffffffffL

    #@24
    and-long v26, v28, v30

    #@26
    .line 1013
    .local v26, "variableTop":J
    :goto_0
    const/4 v14, 0x0

    #@27
    .line 1017
    .local v14, "hasInvisibleBuckets":Z
    const/16 v28, 0x1a

    #@29
    move/from16 v0, v28

    #@2b
    new-array v7, v0, [Landroid/icu/text/AlphabeticIndex$Bucket;

    #@2d
    .line 1019
    .local v7, "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    const/16 v28, 0x1a

    #@2f
    move/from16 v0, v28

    #@31
    new-array v0, v0, [Landroid/icu/text/AlphabeticIndex$Bucket;

    #@33
    move-object/from16 v20, v0

    #@35
    .line 1020
    .local v20, "pinyinBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    const/4 v15, 0x0

    #@36
    .line 1022
    .local v15, "hasPinyin":Z
    new-instance v10, Ljava/util/ArrayList;

    #@38
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@3b
    .line 1025
    .local v10, "bucketList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;>;"
    new-instance v28, Landroid/icu/text/AlphabeticIndex$Bucket;

    #@3d
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/AlphabeticIndex;->getUnderflowLabel()Ljava/lang/String;

    #@40
    move-result-object v29

    #@41
    const-string/jumbo v30, ""

    #@44
    sget-object v31, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->UNDERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@46
    const/16 v32, 0x0

    #@48
    invoke-direct/range {v28 .. v32}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex$Bucket;)V

    #@4b
    move-object/from16 v0, v28

    #@4d
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@50
    .line 1029
    const/16 v22, -0x1

    #@52
    .line 1030
    .local v22, "scriptIndex":I
    const-string/jumbo v23, ""

    #@55
    .line 1031
    .local v23, "scriptUpperBoundary":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@58
    move-result-object v13

    #@59
    .local v13, "current$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@5c
    move-result v28

    #@5d
    if-eqz v28, :cond_8

    #@5f
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@62
    move-result-object v12

    #@63
    check-cast v12, Ljava/lang/String;

    #@65
    .line 1032
    .local v12, "current":Ljava/lang/String;
    move-object/from16 v0, p0

    #@67
    iget-object v0, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    #@69
    move-object/from16 v28, v0

    #@6b
    move-object/from16 v0, v28

    #@6d
    move-object/from16 v1, v23

    #@6f
    invoke-virtual {v0, v12, v1}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    move-result v28

    #@73
    if-ltz v28, :cond_1

    #@75
    .line 1034
    move-object/from16 v18, v23

    #@77
    .line 1035
    .local v18, "inflowBoundary":Ljava/lang/String;
    const/16 v25, 0x0

    #@79
    .line 1037
    .local v25, "skippedScript":Z
    :goto_2
    move-object/from16 v0, p0

    #@7b
    iget-object v0, v0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    #@7d
    move-object/from16 v28, v0

    #@7f
    add-int/lit8 v22, v22, 0x1

    #@81
    move-object/from16 v0, v28

    #@83
    move/from16 v1, v22

    #@85
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@88
    move-result-object v23

    #@89
    .end local v23    # "scriptUpperBoundary":Ljava/lang/String;
    check-cast v23, Ljava/lang/String;

    #@8b
    .line 1038
    .restart local v23    # "scriptUpperBoundary":Ljava/lang/String;
    move-object/from16 v0, p0

    #@8d
    iget-object v0, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    #@8f
    move-object/from16 v28, v0

    #@91
    move-object/from16 v0, v28

    #@93
    move-object/from16 v1, v23

    #@95
    invoke-virtual {v0, v12, v1}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@98
    move-result v28

    #@99
    if-gez v28, :cond_5

    #@9b
    .line 1043
    if-eqz v25, :cond_1

    #@9d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@a0
    move-result v28

    #@a1
    const/16 v29, 0x1

    #@a3
    move/from16 v0, v28

    #@a5
    move/from16 v1, v29

    #@a7
    if-le v0, v1, :cond_1

    #@a9
    .line 1046
    new-instance v28, Landroid/icu/text/AlphabeticIndex$Bucket;

    #@ab
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/AlphabeticIndex;->getInflowLabel()Ljava/lang/String;

    #@ae
    move-result-object v29

    #@af
    .line 1047
    sget-object v30, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->INFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@b1
    .line 1046
    const/16 v31, 0x0

    #@b3
    move-object/from16 v0, v28

    #@b5
    move-object/from16 v1, v29

    #@b7
    move-object/from16 v2, v18

    #@b9
    move-object/from16 v3, v30

    #@bb
    move-object/from16 v4, v31

    #@bd
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex$Bucket;)V

    #@c0
    move-object/from16 v0, v28

    #@c2
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c5
    .line 1051
    .end local v18    # "inflowBoundary":Ljava/lang/String;
    .end local v25    # "skippedScript":Z
    :cond_1
    new-instance v8, Landroid/icu/text/AlphabeticIndex$Bucket;

    #@c7
    invoke-static {v12}, Landroid/icu/text/AlphabeticIndex;->fixLabel(Ljava/lang/String;)Ljava/lang/String;

    #@ca
    move-result-object v28

    #@cb
    sget-object v29, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@cd
    const/16 v30, 0x0

    #@cf
    move-object/from16 v0, v28

    #@d1
    move-object/from16 v1, v29

    #@d3
    move-object/from16 v2, v30

    #@d5
    invoke-direct {v8, v0, v12, v1, v2}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex$Bucket;)V

    #@d8
    .line 1052
    .local v8, "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@db
    .line 1055
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@de
    move-result v28

    #@df
    const/16 v29, 0x1

    #@e1
    move/from16 v0, v28

    #@e3
    move/from16 v1, v29

    #@e5
    if-ne v0, v1, :cond_6

    #@e7
    const/16 v28, 0x0

    #@e9
    move/from16 v0, v28

    #@eb
    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    #@ee
    move-result v11

    #@ef
    .local v11, "c":C
    const/16 v28, 0x41

    #@f1
    move/from16 v0, v28

    #@f3
    if-gt v0, v11, :cond_6

    #@f5
    const/16 v28, 0x5a

    #@f7
    move/from16 v0, v28

    #@f9
    if-gt v11, v0, :cond_6

    #@fb
    .line 1056
    add-int/lit8 v28, v11, -0x41

    #@fd
    aput-object v8, v7, v28

    #@ff
    .line 1063
    .end local v11    # "c":C
    :cond_2
    :goto_3
    const-string/jumbo v28, "\ufdd0"

    #@102
    move-object/from16 v0, v28

    #@104
    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@107
    move-result v28

    #@108
    if-nez v28, :cond_0

    #@10a
    .line 1064
    move-object/from16 v0, p0

    #@10c
    iget-object v0, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    #@10e
    move-object/from16 v28, v0

    #@110
    move-object/from16 v0, v28

    #@112
    move-wide/from16 v1, v26

    #@114
    invoke-static {v0, v1, v2, v12}, Landroid/icu/text/AlphabeticIndex;->hasMultiplePrimaryWeights(Landroid/icu/text/RuleBasedCollator;JLjava/lang/String;)Z

    #@117
    move-result v28

    #@118
    .line 1063
    if-eqz v28, :cond_0

    #@11a
    .line 1065
    const-string/jumbo v28, "\uffff"

    #@11d
    move-object/from16 v0, v28

    #@11f
    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@122
    move-result v28

    #@123
    if-nez v28, :cond_0

    #@125
    .line 1067
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@128
    move-result v28

    #@129
    add-int/lit8 v16, v28, -0x2

    #@12b
    .line 1068
    .local v16, "i":I
    :goto_4
    move/from16 v0, v16

    #@12d
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@130
    move-result-object v24

    #@131
    check-cast v24, Landroid/icu/text/AlphabeticIndex$Bucket;

    #@133
    .line 1069
    .local v24, "singleBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-static/range {v24 .. v24}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get2(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@136
    move-result-object v28

    #@137
    sget-object v29, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@139
    move-object/from16 v0, v28

    #@13b
    move-object/from16 v1, v29

    #@13d
    if-ne v0, v1, :cond_0

    #@13f
    .line 1074
    invoke-static/range {v24 .. v24}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get0(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    #@142
    move-result-object v28

    #@143
    if-nez v28, :cond_3

    #@145
    .line 1075
    move-object/from16 v0, p0

    #@147
    iget-object v0, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    #@149
    move-object/from16 v28, v0

    #@14b
    invoke-static/range {v24 .. v24}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get3(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;

    #@14e
    move-result-object v29

    #@14f
    move-object/from16 v0, v28

    #@151
    move-wide/from16 v1, v26

    #@153
    move-object/from16 v3, v29

    #@155
    invoke-static {v0, v1, v2, v3}, Landroid/icu/text/AlphabeticIndex;->hasMultiplePrimaryWeights(Landroid/icu/text/RuleBasedCollator;JLjava/lang/String;)Z

    #@158
    move-result v28

    #@159
    if-eqz v28, :cond_7

    #@15b
    .line 1067
    :cond_3
    add-int/lit8 v16, v16, -0x1

    #@15d
    goto :goto_4

    #@15e
    .line 1011
    .end local v7    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .end local v8    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .end local v10    # "bucketList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;>;"
    .end local v12    # "current":Ljava/lang/String;
    .end local v13    # "current$iterator":Ljava/util/Iterator;
    .end local v14    # "hasInvisibleBuckets":Z
    .end local v15    # "hasPinyin":Z
    .end local v16    # "i":I
    .end local v20    # "pinyinBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .end local v22    # "scriptIndex":I
    .end local v23    # "scriptUpperBoundary":Ljava/lang/String;
    .end local v24    # "singleBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .end local v26    # "variableTop":J
    :cond_4
    const-wide/16 v26, 0x0

    #@160
    .restart local v26    # "variableTop":J
    goto/16 :goto_0

    #@162
    .line 1041
    .restart local v7    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .restart local v10    # "bucketList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;>;"
    .restart local v12    # "current":Ljava/lang/String;
    .restart local v13    # "current$iterator":Ljava/util/Iterator;
    .restart local v14    # "hasInvisibleBuckets":Z
    .restart local v15    # "hasPinyin":Z
    .restart local v18    # "inflowBoundary":Ljava/lang/String;
    .restart local v20    # "pinyinBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .restart local v22    # "scriptIndex":I
    .restart local v23    # "scriptUpperBoundary":Ljava/lang/String;
    .restart local v25    # "skippedScript":Z
    :cond_5
    const/16 v25, 0x1

    #@164
    goto/16 :goto_2

    #@166
    .line 1057
    .end local v18    # "inflowBoundary":Ljava/lang/String;
    .end local v25    # "skippedScript":Z
    .restart local v8    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    :cond_6
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@169
    move-result v28

    #@16a
    const-string/jumbo v29, "\ufdd0"

    #@16d
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    #@170
    move-result v29

    #@171
    add-int/lit8 v29, v29, 0x1

    #@173
    move/from16 v0, v28

    #@175
    move/from16 v1, v29

    #@177
    if-ne v0, v1, :cond_2

    #@179
    const-string/jumbo v28, "\ufdd0"

    #@17c
    move-object/from16 v0, v28

    #@17e
    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@181
    move-result v28

    #@182
    if-eqz v28, :cond_2

    #@184
    .line 1058
    const-string/jumbo v28, "\ufdd0"

    #@187
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    #@18a
    move-result v28

    #@18b
    move/from16 v0, v28

    #@18d
    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    #@190
    move-result v11

    #@191
    .restart local v11    # "c":C
    const/16 v28, 0x41

    #@193
    move/from16 v0, v28

    #@195
    if-gt v0, v11, :cond_2

    #@197
    const/16 v28, 0x5a

    #@199
    move/from16 v0, v28

    #@19b
    if-gt v11, v0, :cond_2

    #@19d
    .line 1059
    add-int/lit8 v28, v11, -0x41

    #@19f
    aput-object v8, v20, v28

    #@1a1
    .line 1060
    const/4 v15, 0x1

    #@1a2
    goto/16 :goto_3

    #@1a4
    .line 1080
    .end local v11    # "c":C
    .restart local v16    # "i":I
    .restart local v24    # "singleBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    :cond_7
    new-instance v8, Landroid/icu/text/AlphabeticIndex$Bucket;

    #@1a6
    .end local v8    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    const-string/jumbo v28, ""

    #@1a9
    new-instance v29, Ljava/lang/StringBuilder;

    #@1ab
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@1ae
    move-object/from16 v0, v29

    #@1b0
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v29

    #@1b4
    const-string/jumbo v30, "\uffff"

    #@1b7
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v29

    #@1bb
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1be
    move-result-object v29

    #@1bf
    sget-object v30, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@1c1
    const/16 v31, 0x0

    #@1c3
    move-object/from16 v0, v28

    #@1c5
    move-object/from16 v1, v29

    #@1c7
    move-object/from16 v2, v30

    #@1c9
    move-object/from16 v3, v31

    #@1cb
    invoke-direct {v8, v0, v1, v2, v3}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex$Bucket;)V

    #@1ce
    .line 1081
    .restart local v8    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    move-object/from16 v0, v24

    #@1d0
    invoke-static {v8, v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->-set0(Landroid/icu/text/AlphabeticIndex$Bucket;Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    #@1d3
    .line 1082
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d6
    .line 1083
    const/4 v14, 0x1

    #@1d7
    .line 1084
    goto/16 :goto_1

    #@1d9
    .line 1089
    .end local v8    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .end local v12    # "current":Ljava/lang/String;
    .end local v16    # "i":I
    .end local v24    # "singleBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@1dc
    move-result v28

    #@1dd
    const/16 v29, 0x1

    #@1df
    move/from16 v0, v28

    #@1e1
    move/from16 v1, v29

    #@1e3
    if-ne v0, v1, :cond_9

    #@1e5
    .line 1091
    new-instance v28, Landroid/icu/text/AlphabeticIndex$BucketList;

    #@1e7
    const/16 v29, 0x0

    #@1e9
    move-object/from16 v0, v28

    #@1eb
    move-object/from16 v1, v29

    #@1ed
    invoke-direct {v0, v10, v10, v1}, Landroid/icu/text/AlphabeticIndex$BucketList;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/icu/text/AlphabeticIndex$BucketList;)V

    #@1f0
    return-object v28

    #@1f1
    .line 1094
    :cond_9
    new-instance v28, Landroid/icu/text/AlphabeticIndex$Bucket;

    #@1f3
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/AlphabeticIndex;->getOverflowLabel()Ljava/lang/String;

    #@1f6
    move-result-object v29

    #@1f7
    sget-object v30, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->OVERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@1f9
    const/16 v31, 0x0

    #@1fb
    move-object/from16 v0, v28

    #@1fd
    move-object/from16 v1, v29

    #@1ff
    move-object/from16 v2, v23

    #@201
    move-object/from16 v3, v30

    #@203
    move-object/from16 v4, v31

    #@205
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex$Bucket;)V

    #@208
    move-object/from16 v0, v28

    #@20a
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20d
    .line 1096
    if-eqz v15, :cond_c

    #@20f
    .line 1098
    const/4 v6, 0x0

    #@210
    .line 1099
    .local v6, "asciiBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    const/16 v16, 0x0

    #@212
    .end local v6    # "asciiBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .restart local v16    # "i":I
    :goto_5
    const/16 v28, 0x1a

    #@214
    move/from16 v0, v16

    #@216
    move/from16 v1, v28

    #@218
    if-ge v0, v1, :cond_c

    #@21a
    .line 1100
    aget-object v28, v7, v16

    #@21c
    if-eqz v28, :cond_a

    #@21e
    .line 1101
    aget-object v6, v7, v16

    #@220
    .line 1103
    :cond_a
    aget-object v28, v20, v16

    #@222
    if-eqz v28, :cond_b

    #@224
    if-eqz v6, :cond_b

    #@226
    .line 1104
    aget-object v28, v20, v16

    #@228
    move-object/from16 v0, v28

    #@22a
    invoke-static {v0, v6}, Landroid/icu/text/AlphabeticIndex$Bucket;->-set0(Landroid/icu/text/AlphabeticIndex$Bucket;Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    #@22d
    .line 1105
    const/4 v14, 0x1

    #@22e
    .line 1099
    :cond_b
    add-int/lit8 v16, v16, 0x1

    #@230
    goto :goto_5

    #@231
    .line 1110
    .end local v16    # "i":I
    :cond_c
    if-nez v14, :cond_d

    #@233
    .line 1111
    new-instance v28, Landroid/icu/text/AlphabeticIndex$BucketList;

    #@235
    const/16 v29, 0x0

    #@237
    move-object/from16 v0, v28

    #@239
    move-object/from16 v1, v29

    #@23b
    invoke-direct {v0, v10, v10, v1}, Landroid/icu/text/AlphabeticIndex$BucketList;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/icu/text/AlphabeticIndex$BucketList;)V

    #@23e
    return-object v28

    #@23f
    .line 1115
    :cond_d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@242
    move-result v28

    #@243
    add-int/lit8 v16, v28, -0x1

    #@245
    .line 1116
    .restart local v16    # "i":I
    move/from16 v0, v16

    #@247
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24a
    move-result-object v19

    #@24b
    check-cast v19, Landroid/icu/text/AlphabeticIndex$Bucket;

    #@24d
    .line 1117
    .local v19, "nextBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    :cond_e
    :goto_6
    add-int/lit8 v16, v16, -0x1

    #@24f
    if-lez v16, :cond_10

    #@251
    .line 1118
    move/from16 v0, v16

    #@253
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@256
    move-result-object v8

    #@257
    check-cast v8, Landroid/icu/text/AlphabeticIndex$Bucket;

    #@259
    .line 1119
    .restart local v8    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-static {v8}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get0(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    #@25c
    move-result-object v28

    #@25d
    if-nez v28, :cond_e

    #@25f
    .line 1122
    invoke-static {v8}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get2(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@262
    move-result-object v28

    #@263
    sget-object v29, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->INFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@265
    move-object/from16 v0, v28

    #@267
    move-object/from16 v1, v29

    #@269
    if-ne v0, v1, :cond_f

    #@26b
    .line 1123
    invoke-static/range {v19 .. v19}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get2(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@26e
    move-result-object v28

    #@26f
    sget-object v29, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@271
    move-object/from16 v0, v28

    #@273
    move-object/from16 v1, v29

    #@275
    if-eq v0, v1, :cond_f

    #@277
    .line 1124
    move-object/from16 v0, v19

    #@279
    invoke-static {v8, v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->-set0(Landroid/icu/text/AlphabeticIndex$Bucket;Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    #@27c
    goto :goto_6

    #@27d
    .line 1128
    :cond_f
    move-object/from16 v19, v8

    #@27f
    goto :goto_6

    #@280
    .line 1131
    .end local v8    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    :cond_10
    new-instance v21, Ljava/util/ArrayList;

    #@282
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    #@285
    .line 1132
    .local v21, "publicBucketList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@288
    move-result-object v9

    #@289
    .local v9, "bucket$iterator":Ljava/util/Iterator;
    :cond_11
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@28c
    move-result v28

    #@28d
    if-eqz v28, :cond_12

    #@28f
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@292
    move-result-object v8

    #@293
    check-cast v8, Landroid/icu/text/AlphabeticIndex$Bucket;

    #@295
    .line 1133
    .restart local v8    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-static {v8}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get0(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    #@298
    move-result-object v28

    #@299
    if-nez v28, :cond_11

    #@29b
    .line 1134
    move-object/from16 v0, v21

    #@29d
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a0
    goto :goto_7

    #@2a1
    .line 1137
    .end local v8    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    :cond_12
    new-instance v28, Landroid/icu/text/AlphabeticIndex$BucketList;

    #@2a3
    const/16 v29, 0x0

    #@2a5
    move-object/from16 v0, v28

    #@2a7
    move-object/from16 v1, v21

    #@2a9
    move-object/from16 v2, v29

    #@2ab
    invoke-direct {v0, v10, v1, v2}, Landroid/icu/text/AlphabeticIndex$BucketList;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/icu/text/AlphabeticIndex$BucketList;)V

    #@2ae
    return-object v28
.end method

.method private static fixLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "current"    # Ljava/lang/String;

    #@0
    .prologue
    .line 506
    const-string/jumbo v1, "\ufdd0"

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 507
    return-object p0

    #@a
    .line 509
    :cond_0
    const-string/jumbo v1, "\ufdd0"

    #@d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@10
    move-result v1

    #@11
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v0

    #@15
    .line 510
    .local v0, "rest":I
    const/16 v1, 0x2800

    #@17
    if-ge v1, v0, :cond_1

    #@19
    const/16 v1, 0x28ff

    #@1b
    if-gt v0, v1, :cond_1

    #@1d
    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    add-int/lit16 v2, v0, -0x2800

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    const-string/jumbo v2, "\u5283"

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    return-object v1

    #@34
    .line 513
    :cond_1
    const-string/jumbo v1, "\ufdd0"

    #@37
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@3a
    move-result v1

    #@3b
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    return-object v1
.end method

.method private static hasMultiplePrimaryWeights(Landroid/icu/text/RuleBasedCollator;JLjava/lang/String;)Z
    .locals 9
    .param p0, "coll"    # Landroid/icu/text/RuleBasedCollator;
    .param p1, "variableTop"    # J
    .param p3, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1196
    invoke-virtual {p0, p3}, Landroid/icu/text/RuleBasedCollator;->internalGetCEs(Ljava/lang/CharSequence;)[J

    #@3
    move-result-object v2

    #@4
    .line 1197
    .local v2, "ces":[J
    const/4 v6, 0x0

    #@5
    .line 1198
    .local v6, "seenPrimary":Z
    const/4 v3, 0x0

    #@6
    .local v3, "i":I
    :goto_0
    array-length v7, v2

    #@7
    if-ge v3, v7, :cond_2

    #@9
    .line 1199
    aget-wide v0, v2, v3

    #@b
    .line 1200
    .local v0, "ce":J
    const/16 v7, 0x20

    #@d
    ushr-long v4, v0, v7

    #@f
    .line 1201
    .local v4, "p":J
    cmp-long v7, v4, p1

    #@11
    if-lez v7, :cond_1

    #@13
    .line 1203
    if-eqz v6, :cond_0

    #@15
    .line 1204
    const/4 v7, 0x1

    #@16
    return v7

    #@17
    .line 1206
    :cond_0
    const/4 v6, 0x1

    #@18
    .line 1198
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1209
    .end local v0    # "ce":J
    .end local v4    # "p":J
    :cond_2
    const/4 v7, 0x0

    #@1c
    return v7
.end method

.method private initBuckets()V
    .locals 9

    #@0
    .prologue
    .line 760
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iget-object v7, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@2
    if-eqz v7, :cond_0

    #@4
    .line 761
    return-void

    #@5
    .line 763
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->createBucketList()Landroid/icu/text/AlphabeticIndex$BucketList;

    #@8
    move-result-object v7

    #@9
    iput-object v7, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@b
    .line 764
    iget-object v7, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    #@d
    if-eqz v7, :cond_1

    #@f
    iget-object v7, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    #@11
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    #@14
    move-result v7

    #@15
    if-eqz v7, :cond_2

    #@17
    .line 765
    :cond_1
    return-void

    #@18
    .line 770
    :cond_2
    iget-object v7, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    #@1a
    iget-object v8, p0, Landroid/icu/text/AlphabeticIndex;->recordComparator:Ljava/util/Comparator;

    #@1c
    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@1f
    .line 778
    iget-object v7, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@21
    invoke-static {v7}, Landroid/icu/text/AlphabeticIndex$BucketList;->-wrap2(Landroid/icu/text/AlphabeticIndex$BucketList;)Ljava/util/Iterator;

    #@24
    move-result-object v1

    #@25
    .line 779
    .local v1, "bucketIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Landroid/icu/text/AlphabeticIndex$Bucket;

    #@2b
    .line 782
    .local v2, "currentBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v7

    #@2f
    if-eqz v7, :cond_3

    #@31
    .line 783
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    check-cast v3, Landroid/icu/text/AlphabeticIndex$Bucket;

    #@37
    .line 784
    .local v3, "nextBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-static {v3}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get3(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    .line 789
    .end local v3    # "nextBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    :goto_0
    iget-object v7, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    #@3d
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@40
    move-result-object v5

    #@41
    .local v5, "r$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@44
    move-result v7

    #@45
    if-eqz v7, :cond_8

    #@47
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4a
    move-result-object v4

    #@4b
    check-cast v4, Landroid/icu/text/AlphabeticIndex$Record;

    #@4d
    .line 792
    .local v4, "r":Landroid/icu/text/AlphabeticIndex$Record;, "Lcom/ibm/icu/text/AlphabeticIndex$Record<TV;>;"
    :goto_2
    if-eqz v6, :cond_5

    #@4f
    .line 793
    iget-object v7, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    #@51
    invoke-static {v4}, Landroid/icu/text/AlphabeticIndex$Record;->-get0(Landroid/icu/text/AlphabeticIndex$Record;)Ljava/lang/CharSequence;

    #@54
    move-result-object v8

    #@55
    invoke-virtual {v7, v8, v6}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@58
    move-result v7

    #@59
    if-ltz v7, :cond_5

    #@5b
    .line 794
    move-object v2, v3

    #@5c
    .line 796
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5f
    move-result v7

    #@60
    if-eqz v7, :cond_4

    #@62
    .line 797
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@65
    move-result-object v3

    #@66
    check-cast v3, Landroid/icu/text/AlphabeticIndex$Bucket;

    #@68
    .line 798
    .restart local v3    # "nextBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-static {v3}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get3(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;

    #@6b
    move-result-object v6

    #@6c
    .local v6, "upperBoundary":Ljava/lang/String;
    goto :goto_2

    #@6d
    .line 786
    .end local v3    # "nextBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .end local v4    # "r":Landroid/icu/text/AlphabeticIndex$Record;, "Lcom/ibm/icu/text/AlphabeticIndex$Record<TV;>;"
    .end local v5    # "r$iterator":Ljava/util/Iterator;
    .end local v6    # "upperBoundary":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    #@6e
    .line 787
    .local v3, "nextBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    const/4 v6, 0x0

    #@6f
    .local v6, "upperBoundary":Ljava/lang/String;
    goto :goto_0

    #@70
    .line 800
    .end local v3    # "nextBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .end local v6    # "upperBoundary":Ljava/lang/String;
    .restart local v4    # "r":Landroid/icu/text/AlphabeticIndex$Record;, "Lcom/ibm/icu/text/AlphabeticIndex$Record<TV;>;"
    .restart local v5    # "r$iterator":Ljava/util/Iterator;
    :cond_4
    const/4 v6, 0x0

    #@71
    .restart local v6    # "upperBoundary":Ljava/lang/String;
    goto :goto_2

    #@72
    .line 804
    .end local v6    # "upperBoundary":Ljava/lang/String;
    :cond_5
    move-object v0, v2

    #@73
    .line 805
    .local v0, "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get0(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    #@76
    move-result-object v7

    #@77
    if-eqz v7, :cond_6

    #@79
    .line 806
    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get0(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    #@7c
    move-result-object v0

    #@7d
    .line 808
    :cond_6
    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get4(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/util/List;

    #@80
    move-result-object v7

    #@81
    if-nez v7, :cond_7

    #@83
    .line 809
    new-instance v7, Ljava/util/ArrayList;

    #@85
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@88
    invoke-static {v0, v7}, Landroid/icu/text/AlphabeticIndex$Bucket;->-set2(Landroid/icu/text/AlphabeticIndex$Bucket;Ljava/util/List;)Ljava/util/List;

    #@8b
    .line 811
    :cond_7
    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get4(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/util/List;

    #@8e
    move-result-object v7

    #@8f
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@92
    goto :goto_1

    #@93
    .line 759
    .end local v0    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .end local v4    # "r":Landroid/icu/text/AlphabeticIndex$Record;, "Lcom/ibm/icu/text/AlphabeticIndex$Record<TV;>;"
    :cond_8
    return-void
.end method

.method private initLabels()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 441
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFKDInstance()Landroid/icu/text/Normalizer2;

    #@3
    move-result-object v11

    #@4
    .line 442
    .local v11, "nfkdNormalizer":Landroid/icu/text/Normalizer2;
    new-instance v5, Ljava/util/ArrayList;

    #@6
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 444
    .local v5, "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@b
    iget-object v15, v0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    #@d
    const/16 v16, 0x0

    #@f
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v4

    #@13
    check-cast v4, Ljava/lang/String;

    #@15
    .line 445
    .local v4, "firstScriptBoundary":Ljava/lang/String;
    move-object/from16 v0, p0

    #@17
    iget-object v15, v0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    #@19
    move-object/from16 v0, p0

    #@1b
    iget-object v0, v0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    #@1d
    move-object/from16 v16, v0

    #@1f
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@22
    move-result v16

    #@23
    add-int/lit8 v16, v16, -0x1

    #@25
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v13

    #@29
    check-cast v13, Ljava/lang/String;

    #@2b
    .line 451
    .local v13, "overflowBoundary":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2d
    iget-object v15, v0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    #@2f
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v9

    #@33
    .local v9, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v15

    #@37
    if-eqz v15, :cond_5

    #@39
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v8

    #@3d
    check-cast v8, Ljava/lang/String;

    #@3f
    .line 453
    .local v8, "item":Ljava/lang/String;
    const/4 v15, 0x1

    #@40
    invoke-static {v8, v15}, Landroid/icu/text/UTF16;->hasMoreCodePointsThan(Ljava/lang/String;I)Z

    #@43
    move-result v15

    #@44
    if-nez v15, :cond_2

    #@46
    .line 454
    const/4 v2, 0x0

    #@47
    .line 464
    .local v2, "checkDistinct":Z
    :goto_1
    move-object/from16 v0, p0

    #@49
    iget-object v15, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    #@4b
    invoke-virtual {v15, v8, v4}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    move-result v15

    #@4f
    if-ltz v15, :cond_0

    #@51
    .line 466
    move-object/from16 v0, p0

    #@53
    iget-object v15, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    #@55
    invoke-virtual {v15, v8, v13}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    move-result v15

    #@59
    if-gez v15, :cond_0

    #@5b
    .line 468
    if-eqz v2, :cond_1

    #@5d
    move-object/from16 v0, p0

    #@5f
    iget-object v15, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    #@61
    move-object/from16 v0, p0

    #@63
    invoke-direct {v0, v8}, Landroid/icu/text/AlphabeticIndex;->separated(Ljava/lang/String;)Ljava/lang/String;

    #@66
    move-result-object v16

    #@67
    move-object/from16 v0, v16

    #@69
    invoke-virtual {v15, v8, v0}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    move-result v15

    #@6d
    if-eqz v15, :cond_0

    #@6f
    .line 472
    :cond_1
    move-object/from16 v0, p0

    #@71
    iget-object v15, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    #@73
    invoke-static {v5, v8, v15}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    #@76
    move-result v6

    #@77
    .line 473
    .local v6, "insertionPoint":I
    if-gez v6, :cond_4

    #@79
    .line 474
    not-int v15, v6

    #@7a
    invoke-interface {v5, v15, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@7d
    goto :goto_0

    #@7e
    .line 455
    .end local v2    # "checkDistinct":Z
    .end local v6    # "insertionPoint":I
    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@81
    move-result v15

    #@82
    add-int/lit8 v15, v15, -0x1

    #@84
    invoke-virtual {v8, v15}, Ljava/lang/String;->charAt(I)C

    #@87
    move-result v15

    #@88
    const/16 v16, 0x2a

    #@8a
    move/from16 v0, v16

    #@8c
    if-ne v15, v0, :cond_3

    #@8e
    .line 456
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@91
    move-result v15

    #@92
    add-int/lit8 v15, v15, -0x2

    #@94
    invoke-virtual {v8, v15}, Ljava/lang/String;->charAt(I)C

    #@97
    move-result v15

    #@98
    const/16 v16, 0x2a

    #@9a
    move/from16 v0, v16

    #@9c
    if-eq v15, v0, :cond_3

    #@9e
    .line 459
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@a1
    move-result v15

    #@a2
    add-int/lit8 v15, v15, -0x1

    #@a4
    const/16 v16, 0x0

    #@a6
    move/from16 v0, v16

    #@a8
    invoke-virtual {v8, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@ab
    move-result-object v8

    #@ac
    .line 460
    const/4 v2, 0x0

    #@ad
    .line 456
    .restart local v2    # "checkDistinct":Z
    goto :goto_1

    #@ae
    .line 462
    .end local v2    # "checkDistinct":Z
    :cond_3
    const/4 v2, 0x1

    #@af
    .restart local v2    # "checkDistinct":Z
    goto :goto_1

    #@b0
    .line 476
    .restart local v6    # "insertionPoint":I
    :cond_4
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b3
    move-result-object v10

    #@b4
    check-cast v10, Ljava/lang/String;

    #@b6
    .line 477
    .local v10, "itemAlreadyIn":Ljava/lang/String;
    invoke-static {v11, v8, v10}, Landroid/icu/text/AlphabeticIndex;->isOneLabelBetterThanOther(Landroid/icu/text/Normalizer2;Ljava/lang/String;Ljava/lang/String;)Z

    #@b9
    move-result v15

    #@ba
    if-eqz v15, :cond_0

    #@bc
    .line 478
    invoke-interface {v5, v6, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@bf
    goto/16 :goto_0

    #@c1
    .line 486
    .end local v2    # "checkDistinct":Z
    .end local v6    # "insertionPoint":I
    .end local v8    # "item":Ljava/lang/String;
    .end local v10    # "itemAlreadyIn":Ljava/lang/String;
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@c4
    move-result v15

    #@c5
    add-int/lit8 v14, v15, -0x1

    #@c7
    .line 487
    .local v14, "size":I
    move-object/from16 v0, p0

    #@c9
    iget v15, v0, Landroid/icu/text/AlphabeticIndex;->maxLabelCount:I

    #@cb
    if-le v14, v15, :cond_7

    #@cd
    .line 488
    const/4 v3, 0x0

    #@ce
    .line 489
    .local v3, "count":I
    const/4 v12, -0x1

    #@cf
    .line 490
    .local v12, "old":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@d2
    move-result-object v7

    #@d3
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@d6
    move-result v15

    #@d7
    if-eqz v15, :cond_7

    #@d9
    .line 491
    add-int/lit8 v3, v3, 0x1

    #@db
    .line 492
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@de
    .line 493
    move-object/from16 v0, p0

    #@e0
    iget v15, v0, Landroid/icu/text/AlphabeticIndex;->maxLabelCount:I

    #@e2
    mul-int/2addr v15, v3

    #@e3
    div-int v1, v15, v14

    #@e5
    .line 494
    .local v1, "bump":I
    if-ne v1, v12, :cond_6

    #@e7
    .line 495
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    #@ea
    goto :goto_2

    #@eb
    .line 497
    :cond_6
    move v12, v1

    #@ec
    goto :goto_2

    #@ed
    .line 502
    .end local v1    # "bump":I
    .end local v3    # "count":I
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v12    # "old":I
    :cond_7
    return-object v5
.end method

.method private static isOneLabelBetterThanOther(Landroid/icu/text/Normalizer2;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "nfkdNormalizer"    # Landroid/icu/text/Normalizer2;
    .param p1, "one"    # Ljava/lang/String;
    .param p2, "other"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 824
    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 825
    .local v0, "n1":Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 826
    .local v1, "n2":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@d
    move-result v5

    #@e
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->codePointCount(II)I

    #@11
    move-result v5

    #@12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@15
    move-result v6

    #@16
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->codePointCount(II)I

    #@19
    move-result v6

    #@1a
    sub-int v2, v5, v6

    #@1c
    .line 827
    .local v2, "result":I
    if-eqz v2, :cond_1

    #@1e
    .line 828
    if-gez v2, :cond_0

    #@20
    :goto_0
    return v3

    #@21
    :cond_0
    move v3, v4

    #@22
    goto :goto_0

    #@23
    .line 830
    :cond_1
    sget-object v5, Landroid/icu/text/AlphabeticIndex;->binaryCmp:Ljava/util/Comparator;

    #@25
    invoke-interface {v5, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@28
    move-result v2

    #@29
    .line 831
    if-eqz v2, :cond_3

    #@2b
    .line 832
    if-gez v2, :cond_2

    #@2d
    :goto_1
    return v3

    #@2e
    :cond_2
    move v3, v4

    #@2f
    goto :goto_1

    #@30
    .line 834
    :cond_3
    sget-object v5, Landroid/icu/text/AlphabeticIndex;->binaryCmp:Ljava/util/Comparator;

    #@32
    invoke-interface {v5, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@35
    move-result v5

    #@36
    if-gez v5, :cond_4

    #@38
    :goto_2
    return v3

    #@39
    :cond_4
    move v3, v4

    #@3a
    goto :goto_2
.end method

.method private separated(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "item"    # Ljava/lang/String;

    #@0
    .prologue
    .line 593
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 595
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    #@6
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result v2

    #@a
    .line 596
    .local v2, "last":C
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 597
    const/4 v1, 0x1

    #@e
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@11
    move-result v4

    #@12
    if-ge v1, v4, :cond_1

    #@14
    .line 598
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v0

    #@18
    .line 599
    .local v0, "ch":C
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_0

    #@1e
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_0

    #@24
    .line 602
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    .line 603
    move v2, v0

    #@28
    .line 597
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 600
    :cond_0
    const/16 v4, 0x34f

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    goto :goto_1

    #@31
    .line 605
    .end local v0    # "ch":C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    return-object v4
.end method


# virtual methods
.method public addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;
    .locals 1
    .param p1, "additions"    # Landroid/icu/text/UnicodeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/UnicodeSet;",
            ")",
            "Landroid/icu/text/AlphabeticIndex",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 307
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@5
    .line 308
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@8
    .line 309
    return-object p0
.end method

.method public varargs addLabels([Landroid/icu/util/ULocale;)Landroid/icu/text/AlphabeticIndex;
    .locals 3
    .param p1, "additions"    # [Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/icu/util/ULocale;",
            ")",
            "Landroid/icu/text/AlphabeticIndex",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 319
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    const/4 v1, 0x0

    #@1
    array-length v2, p1

    #@2
    :goto_0
    if-ge v1, v2, :cond_0

    #@4
    aget-object v0, p1, v1

    #@6
    .line 320
    .local v0, "addition":Landroid/icu/util/ULocale;
    invoke-direct {p0, v0}, Landroid/icu/text/AlphabeticIndex;->addIndexExemplars(Landroid/icu/util/ULocale;)V

    #@9
    .line 319
    add-int/lit8 v1, v1, 0x1

    #@b
    goto :goto_0

    #@c
    .line 322
    .end local v0    # "addition":Landroid/icu/util/ULocale;
    :cond_0
    const/4 v1, 0x0

    #@d
    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@f
    .line 323
    return-object p0
.end method

.method public varargs addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;
    .locals 4
    .param p1, "additions"    # [Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Locale;",
            ")",
            "Landroid/icu/text/AlphabeticIndex",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 333
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    const/4 v1, 0x0

    #@1
    array-length v2, p1

    #@2
    :goto_0
    if-ge v1, v2, :cond_0

    #@4
    aget-object v0, p1, v1

    #@6
    .line 334
    .local v0, "addition":Ljava/util/Locale;
    invoke-static {v0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@9
    move-result-object v3

    #@a
    invoke-direct {p0, v3}, Landroid/icu/text/AlphabeticIndex;->addIndexExemplars(Landroid/icu/util/ULocale;)V

    #@d
    .line 333
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 336
    .end local v0    # "addition":Ljava/util/Locale;
    :cond_0
    const/4 v1, 0x0

    #@11
    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@13
    .line 337
    return-object p0
.end method

.method public addRecord(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/text/AlphabeticIndex;
    .locals 3
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "TV;)",
            "Landroid/icu/text/AlphabeticIndex",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    .local p2, "data":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    #@1
    .line 682
    iput-object v2, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@3
    .line 683
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 684
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    #@e
    .line 686
    :cond_0
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    #@10
    new-instance v1, Landroid/icu/text/AlphabeticIndex$Record;

    #@12
    invoke-direct {v1, p1, p2, v2}, Landroid/icu/text/AlphabeticIndex$Record;-><init>(Ljava/lang/CharSequence;Ljava/lang/Object;Landroid/icu/text/AlphabeticIndex$Record;)V

    #@15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@18
    .line 687
    return-object p0
.end method

.method public buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/text/AlphabeticIndex$ImmutableIndex",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    const/4 v3, 0x0

    #@1
    .line 619
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    #@7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 623
    :cond_0
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@f
    if-nez v1, :cond_1

    #@11
    .line 624
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->createBucketList()Landroid/icu/text/AlphabeticIndex$BucketList;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@17
    .line 626
    :cond_1
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@19
    .line 628
    .local v0, "immutableBucketList":Landroid/icu/text/AlphabeticIndex$BucketList;, "Lcom/ibm/icu/text/AlphabeticIndex$BucketList<TV;>;"
    :goto_0
    new-instance v1, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    #@1b
    iget-object v2, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    #@1d
    invoke-direct {v1, v0, v2, v3}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;-><init>(Landroid/icu/text/AlphabeticIndex$BucketList;Landroid/icu/text/Collator;Landroid/icu/text/AlphabeticIndex$ImmutableIndex;)V

    #@20
    return-object v1

    #@21
    .line 621
    .end local v0    # "immutableBucketList":Landroid/icu/text/AlphabeticIndex$BucketList;, "Lcom/ibm/icu/text/AlphabeticIndex$BucketList<TV;>;"
    :cond_2
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->createBucketList()Landroid/icu/text/AlphabeticIndex$BucketList;

    #@24
    move-result-object v0

    #@25
    .restart local v0    # "immutableBucketList":Landroid/icu/text/AlphabeticIndex$BucketList;, "Lcom/ibm/icu/text/AlphabeticIndex$BucketList<TV;>;"
    goto :goto_0
.end method

.method public clearRecords()Landroid/icu/text/AlphabeticIndex;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/text/AlphabeticIndex",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    const/4 v1, 0x0

    #@1
    .line 717
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    #@7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 721
    :cond_0
    :goto_0
    return-object p0

    #@e
    .line 718
    :cond_1
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    #@10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@13
    .line 719
    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@15
    goto :goto_0
.end method

.method public getBucketCount()I
    .locals 1

    #@0
    .prologue
    .line 731
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->initBuckets()V

    #@3
    .line 732
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@5
    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$BucketList;->-wrap0(Landroid/icu/text/AlphabeticIndex$BucketList;)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getBucketIndex(Ljava/lang/CharSequence;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 706
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->initBuckets()V

    #@3
    .line 707
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@5
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    #@7
    invoke-static {v0, p1, v1}, Landroid/icu/text/AlphabeticIndex$BucketList;->-wrap1(Landroid/icu/text/AlphabeticIndex$BucketList;Ljava/lang/CharSequence;Landroid/icu/text/Collator;)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public getBucketLabels()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 638
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->initBuckets()V

    #@3
    .line 639
    new-instance v2, Ljava/util/ArrayList;

    #@5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 640
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "bucket$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/icu/text/AlphabeticIndex$Bucket;

    #@1a
    .line 641
    .local v0, "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-virtual {v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    goto :goto_0

    #@22
    .line 643
    .end local v0    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    :cond_0
    return-object v2
.end method

.method public getCollator()Landroid/icu/text/RuleBasedCollator;
    .locals 3

    #@0
    .prologue
    .line 657
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->collatorExternal:Landroid/icu/text/RuleBasedCollator;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 659
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->collatorOriginal:Landroid/icu/text/RuleBasedCollator;

    #@6
    invoke-virtual {v1}, Landroid/icu/text/RuleBasedCollator;->clone()Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/icu/text/RuleBasedCollator;

    #@c
    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->collatorExternal:Landroid/icu/text/RuleBasedCollator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 665
    :cond_0
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->collatorExternal:Landroid/icu/text/RuleBasedCollator;

    #@10
    return-object v1

    #@11
    .line 660
    :catch_0
    move-exception v0

    #@12
    .line 662
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@14
    const-string/jumbo v2, "Collator cannot be cloned"

    #@17
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    throw v1
.end method

.method public getFirstCharactersInScripts()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    const/4 v7, 0x1

    #@1
    .line 1231
    new-instance v2, Ljava/util/ArrayList;

    #@3
    const/16 v5, 0xc8

    #@5
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@8
    .line 1234
    .local v2, "dest":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Landroid/icu/text/UnicodeSet;

    #@a
    invoke-direct {v4}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@d
    .line 1235
    .local v4, "set":Landroid/icu/text/UnicodeSet;
    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    #@f
    const v6, 0xfdd1

    #@12
    invoke-virtual {v5, v6, v4}, Landroid/icu/text/RuleBasedCollator;->internalAddContractions(ILandroid/icu/text/UnicodeSet;)V

    #@15
    .line 1236
    invoke-virtual {v4}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_0

    #@1b
    .line 1237
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    #@1d
    .line 1238
    const-string/jumbo v6, "AlphabeticIndex requires script-first-primary contractions"

    #@20
    .line 1237
    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@23
    throw v5

    #@24
    .line 1240
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v1

    #@28
    .local v1, "boundary$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_2

    #@2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Ljava/lang/String;

    #@34
    .line 1241
    .local v0, "boundary":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->codePointAt(I)I

    #@37
    move-result v5

    #@38
    invoke-static {v5}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@3b
    move-result v5

    #@3c
    shl-int v3, v7, v5

    #@3e
    .line 1242
    .local v3, "gcMask":I
    and-int/lit8 v5, v3, 0x3f

    #@40
    if-eqz v5, :cond_1

    #@42
    .line 1248
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@45
    goto :goto_0

    #@46
    .line 1250
    .end local v0    # "boundary":Ljava/lang/String;
    .end local v3    # "gcMask":I
    :cond_2
    return-object v2
.end method

.method public getInflowLabel()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 406
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inflowLabel:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMaxLabelCount()I
    .locals 1

    #@0
    .prologue
    .line 417
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iget v0, p0, Landroid/icu/text/AlphabeticIndex;->maxLabelCount:I

    #@2
    return v0
.end method

.method public getOverflowLabel()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 382
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->overflowLabel:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRecordCount()I
    .locals 1

    #@0
    .prologue
    .line 742
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    #@6
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getUnderflowLabel()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 359
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->underflowLabel:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/text/AlphabeticIndex$Bucket",
            "<TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 752
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->initBuckets()V

    #@3
    .line 753
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@5
    invoke-virtual {v0}, Landroid/icu/text/AlphabeticIndex$BucketList;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public setInflowLabel(Ljava/lang/String;)Landroid/icu/text/AlphabeticIndex;
    .locals 1
    .param p1, "inflowLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/text/AlphabeticIndex",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 393
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex;->inflowLabel:Ljava/lang/String;

    #@2
    .line 394
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@5
    .line 395
    return-object p0
.end method

.method public setMaxLabelCount(I)Landroid/icu/text/AlphabeticIndex;
    .locals 1
    .param p1, "maxLabelCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/icu/text/AlphabeticIndex",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 431
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iput p1, p0, Landroid/icu/text/AlphabeticIndex;->maxLabelCount:I

    #@2
    .line 432
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@5
    .line 433
    return-object p0
.end method

.method public setOverflowLabel(Ljava/lang/String;)Landroid/icu/text/AlphabeticIndex;
    .locals 1
    .param p1, "overflowLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/text/AlphabeticIndex",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 347
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex;->overflowLabel:Ljava/lang/String;

    #@2
    .line 348
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@5
    .line 349
    return-object p0
.end method

.method public setUnderflowLabel(Ljava/lang/String;)Landroid/icu/text/AlphabeticIndex;
    .locals 1
    .param p1, "underflowLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/text/AlphabeticIndex",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 370
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex;->underflowLabel:Ljava/lang/String;

    #@2
    .line 371
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@5
    .line 372
    return-object p0
.end method
