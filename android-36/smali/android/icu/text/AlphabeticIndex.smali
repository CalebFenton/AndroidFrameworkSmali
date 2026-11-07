.class public final Landroid/icu/text/AlphabeticIndex;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/AlphabeticIndex$BucketList;,
        Landroid/icu/text/AlphabeticIndex$ImmutableIndex;,
        Landroid/icu/text/AlphabeticIndex$Bucket;,
        Landroid/icu/text/AlphabeticIndex$Record;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/icu/text/AlphabeticIndex$Bucket<",
        "TV;>;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o BASE:Ljava/lang/String; = "\ufdd0"

.field private static final greylist-max-o CGJ:C = '\u034f'

.field private static final greylist-max-o GC_CN_MASK:I = 0x1

.field private static final greylist-max-o GC_LL_MASK:I = 0x4

.field private static final greylist-max-o GC_LM_MASK:I = 0x10

.field private static final greylist-max-o GC_LO_MASK:I = 0x20

.field private static final greylist-max-o GC_LT_MASK:I = 0x8

.field private static final greylist-max-o GC_LU_MASK:I = 0x2

.field private static final greylist-max-o GC_L_MASK:I = 0x3e

.field private static final greylist-max-o binaryCmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o buckets:Landroid/icu/text/AlphabeticIndex$BucketList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/text/AlphabeticIndex$BucketList<",
            "TV;>;"
        }
    .end annotation
.end field

.field private greylist-max-o collatorExternal:Landroid/icu/text/RuleBasedCollator;

.field private final greylist-max-o collatorOriginal:Landroid/icu/text/RuleBasedCollator;

.field private final greylist-max-o collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

.field private final greylist-max-o firstCharsInScripts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o inflowLabel:Ljava/lang/String;

.field private final greylist-max-o initialLabels:Landroid/icu/text/UnicodeSet;

.field private greylist-max-o inputList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/AlphabeticIndex$Record<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o maxLabelCount:I

.field private greylist-max-o overflowLabel:Ljava/lang/String;

.field private final greylist-max-o recordComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/icu/text/AlphabeticIndex$Record<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o underflowLabel:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcollatorOriginal(Landroid/icu/text/AlphabeticIndex;)Landroid/icu/text/RuleBasedCollator;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex;->collatorOriginal:Landroid/icu/text/RuleBasedCollator;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 126
    nop

    .line 135
    new-instance v0, Landroid/icu/text/UTF16$StringComparator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/icu/text/UTF16$StringComparator;-><init>(ZZI)V

    sput-object v0, Landroid/icu/text/AlphabeticIndex;->binaryCmp:Ljava/util/Comparator;

    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/text/RuleBasedCollator;)V
    .registers 3
    .param p1, "collator"    # Landroid/icu/text/RuleBasedCollator;

    .line 256
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/icu/text/AlphabeticIndex;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/RuleBasedCollator;)V

    .line 257
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 230
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/AlphabeticIndex;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/RuleBasedCollator;)V

    .line 231
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/icu/util/ULocale;Landroid/icu/text/RuleBasedCollator;)V
    .registers 7
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "collator"    # Landroid/icu/text/RuleBasedCollator;

    .line 262
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Landroid/icu/text/AlphabeticIndex$1;

    invoke-direct {v0, p0}, Landroid/icu/text/AlphabeticIndex$1;-><init>(Landroid/icu/text/AlphabeticIndex;)V

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->recordComparator:Ljava/util/Comparator;

    .line 152
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    .line 158
    const-string v0, "\u2026"

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->overflowLabel:Ljava/lang/String;

    .line 159
    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->underflowLabel:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inflowLabel:Ljava/lang/String;

    .line 788
    const/16 v0, 0x63

    iput v0, p0, Landroid/icu/text/AlphabeticIndex;->maxLabelCount:I

    .line 263
    if-eqz p2, :cond_21

    move-object v0, p2

    goto :goto_27

    :cond_21
    invoke-static {p1}, Landroid/icu/text/Collator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RuleBasedCollator;

    :goto_27
    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->collatorOriginal:Landroid/icu/text/RuleBasedCollator;

    .line 265
    :try_start_29
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->collatorOriginal:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedCollator;->cloneAsThawed()Landroid/icu/text/RuleBasedCollator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_31} :catch_7e

    .line 269
    nop

    .line 270
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/text/RuleBasedCollator;->setStrength(I)V

    .line 271
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedCollator;->freeze()Landroid/icu/text/Collator;

    .line 273
    invoke-virtual {p0}, Landroid/icu/text/AlphabeticIndex;->getFirstCharactersInScripts()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    .line 274
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    iget-object v2, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 278
    :goto_4a
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 282
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    iget-object v2, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6a

    .line 283
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4a

    .line 291
    :cond_6a
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->addChineseIndexCharacters()Z

    move-result v0

    if-nez v0, :cond_75

    if-eqz p1, :cond_75

    .line 292
    invoke-direct {p0, p1}, Landroid/icu/text/AlphabeticIndex;->addIndexExemplars(Landroid/icu/util/ULocale;)V

    .line 294
    :cond_75
    return-void

    .line 279
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AlphabeticIndex requires some non-ignorable script boundary strings"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :catch_7e
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Collator cannot be cloned"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 240
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/AlphabeticIndex;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/RuleBasedCollator;)V

    .line 241
    return-void
.end method

.method private greylist-max-o addChineseIndexCharacters()Z
    .registers 8

    .line 549
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 551
    .local v0, "contractions":Landroid/icu/text/UnicodeSet;
    const/4 v1, 0x0

    :try_start_6
    iget-object v2, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    const-string v3, "\ufdd0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/icu/text/RuleBasedCollator;->internalAddContractions(ILandroid/icu/text/UnicodeSet;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_49

    .line 554
    nop

    .line 555
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    return v1

    .line 556
    :cond_19
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 557
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 558
    .local v2, "s":Ljava/lang/String;
    nop

    .line 559
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 560
    .local v4, "c":C
    const/16 v5, 0x41

    if-gt v5, v4, :cond_47

    const/16 v6, 0x5a

    if-gt v4, v6, :cond_47

    .line 562
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v5, v6}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    .line 563
    goto :goto_48

    .line 565
    .end local v2    # "s":Ljava/lang/String;
    .end local v4    # "c":C
    :cond_47
    goto :goto_22

    .line 566
    :cond_48
    :goto_48
    return v3

    .line 552
    :catch_49
    move-exception v2

    .line 553
    .local v2, "e":Ljava/lang/Exception;
    return v1
.end method

.method private greylist-max-o addIndexExemplars(Landroid/icu/util/ULocale;)V
    .registers 7
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 506
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/icu/util/LocaleData;->getExemplarSet(Landroid/icu/util/ULocale;II)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 507
    .local v0, "exemplars":Landroid/icu/text/UnicodeSet;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 508
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 509
    return-void

    .line 514
    :cond_14
    invoke-static {p1, v1, v1}, Landroid/icu/util/LocaleData;->getExemplarSet(Landroid/icu/util/ULocale;II)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 516
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->cloneAsThawed()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 518
    const/16 v1, 0x61

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/UnicodeSet;->containsSome(II)Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 519
    :cond_2c
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    .line 521
    :cond_2f
    const v1, 0xac00

    const v2, 0xd7a3

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/UnicodeSet;->containsSome(II)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 523
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    move-result-object v2

    .line 524
    invoke-virtual {v2, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xb098

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xb2e4

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xb77c

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 525
    const v2, 0xb9c8

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xbc14

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xc0ac

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xc544

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 526
    const v2, 0xc790

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xcc28

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xce74

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xd0c0

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 527
    const v2, 0xd30c

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const v2, 0xd558

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 529
    :cond_9d
    const/16 v1, 0x1200

    const/16 v2, 0x137f

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/UnicodeSet;->containsSome(II)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 533
    new-instance v3, Landroid/icu/text/UnicodeSet;

    const-string v4, "[\u1200\u1208\u1210\u1218\u1220\u1228\u1230\u1238\u1240\u1248\u1250\u1258\u1260\u1268\u1270\u1278\u1280\u1288\u1290\u1298\u12a0\u12a8\u12b0\u12b8\u12c0\u12c8\u12d0\u12d8\u12e0\u12e8\u12f0\u12f8\u1300\u1308\u1310\u1318\u1320\u1328\u1330\u1338\u1340\u1348\u1350\u1358]"

    invoke-direct {v3, v4}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 534
    .local v3, "ethiopic":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v3, v0}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 535
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 540
    .end local v3    # "ethiopic":Landroid/icu/text/UnicodeSet;
    :cond_b8
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_bc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 541
    .local v2, "item":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    invoke-static {p1, v2}, Landroid/icu/lang/UCharacter;->toUpperCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 542
    .end local v2    # "item":Ljava/lang/String;
    goto :goto_bc

    .line 543
    :cond_d2
    return-void
.end method

.method private greylist-max-o createBucketList()Landroid/icu/text/AlphabeticIndex$BucketList;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/text/AlphabeticIndex$BucketList<",
            "TV;>;"
        }
    .end annotation

    .line 961
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroid/icu/text/AlphabeticIndex;->initLabels()Ljava/util/List;

    move-result-object v1

    .line 965
    .local v1, "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v2}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 966
    iget-object v2, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v2}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .local v2, "variableTop":J
    goto :goto_1e

    .line 968
    .end local v2    # "variableTop":J
    :cond_1c
    const-wide/16 v2, 0x0

    .line 970
    .restart local v2    # "variableTop":J
    :goto_1e
    const/4 v4, 0x0

    .line 974
    .local v4, "hasInvisibleBuckets":Z
    const/16 v5, 0x1a

    new-array v6, v5, [Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 976
    .local v6, "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    new-array v7, v5, [Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 977
    .local v7, "pinyinBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    const/4 v8, 0x0

    .line 979
    .local v8, "hasPinyin":Z
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 982
    .local v9, "bucketList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;>;"
    new-instance v10, Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-virtual {v0}, Landroid/icu/text/AlphabeticIndex;->getUnderflowLabel()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->UNDERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    const-string v13, ""

    const/4 v14, 0x0

    invoke-direct {v10, v11, v13, v12, v14}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex-IA;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    const/4 v10, -0x1

    .line 987
    .local v10, "scriptIndex":I
    const-string v11, ""

    .line 988
    .local v11, "scriptUpperBoundary":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_43
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_17c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 989
    .local v15, "current":Ljava/lang/String;
    iget-object v14, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v14, v15, v11}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_a5

    .line 991
    move-object v14, v11

    .line 992
    .local v14, "inflowBoundary":Ljava/lang/String;
    const/16 v16, 0x0

    .line 994
    .local v16, "skippedScript":Z
    :goto_5a
    const/16 v17, 0x1

    iget-object v5, v0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    add-int/lit8 v10, v10, 0x1

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Ljava/lang/String;

    .line 995
    iget-object v5, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v5, v15, v11}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_9c

    .line 996
    nop

    .line 1000
    if-eqz v16, :cond_95

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v18, v1

    move/from16 v1, v17

    .end local v1    # "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v18, "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-le v5, v1, :cond_90

    .line 1003
    new-instance v1, Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-virtual {v0}, Landroid/icu/text/AlphabeticIndex;->getInflowLabel()Ljava/lang/String;

    move-result-object v5

    move/from16 v19, v4

    .end local v4    # "hasInvisibleBuckets":Z
    .local v19, "hasInvisibleBuckets":Z
    sget-object v4, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->INFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    move-object/from16 v20, v6

    const/4 v6, 0x0

    .end local v6    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .local v20, "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-direct {v1, v5, v14, v4, v6}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex-IA;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    .line 1000
    .end local v19    # "hasInvisibleBuckets":Z
    .end local v20    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .restart local v4    # "hasInvisibleBuckets":Z
    .restart local v6    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    :cond_90
    move/from16 v19, v4

    move-object/from16 v20, v6

    .end local v4    # "hasInvisibleBuckets":Z
    .end local v6    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .restart local v19    # "hasInvisibleBuckets":Z
    .restart local v20    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    goto :goto_ab

    .end local v18    # "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "hasInvisibleBuckets":Z
    .end local v20    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .restart local v1    # "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "hasInvisibleBuckets":Z
    .restart local v6    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    :cond_95
    move-object/from16 v18, v1

    move/from16 v19, v4

    move-object/from16 v20, v6

    .end local v1    # "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "hasInvisibleBuckets":Z
    .end local v6    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .restart local v18    # "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "hasInvisibleBuckets":Z
    .restart local v20    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    goto :goto_ab

    .line 998
    .end local v18    # "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "hasInvisibleBuckets":Z
    .end local v20    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .restart local v1    # "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "hasInvisibleBuckets":Z
    .restart local v6    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    :cond_9c
    move-object/from16 v18, v1

    move/from16 v19, v4

    move-object/from16 v20, v6

    .end local v1    # "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "hasInvisibleBuckets":Z
    .end local v6    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .restart local v18    # "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "hasInvisibleBuckets":Z
    .restart local v20    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    const/16 v16, 0x1

    goto :goto_5a

    .line 989
    .end local v14    # "inflowBoundary":Ljava/lang/String;
    .end local v16    # "skippedScript":Z
    .end local v18    # "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "hasInvisibleBuckets":Z
    .end local v20    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .restart local v1    # "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "hasInvisibleBuckets":Z
    .restart local v6    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    :cond_a5
    move-object/from16 v18, v1

    move/from16 v19, v4

    move-object/from16 v20, v6

    .line 1008
    .end local v1    # "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "hasInvisibleBuckets":Z
    .end local v6    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .restart local v18    # "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "hasInvisibleBuckets":Z
    .restart local v20    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    :goto_ab
    new-instance v1, Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-static {v15}, Landroid/icu/text/AlphabeticIndex;->fixLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    const/4 v6, 0x0

    invoke-direct {v1, v4, v15, v5, v6}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex-IA;)V

    .line 1009
    .local v1, "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x41

    const-string v14, "\ufdd0"

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d6

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v5, v4

    .local v5, "c":C
    if-gt v6, v4, :cond_d6

    const/16 v4, 0x5a

    if-gt v5, v4, :cond_d6

    .line 1013
    add-int/lit8 v4, v5, -0x41

    aput-object v1, v20, v4

    goto :goto_ff

    .line 1014
    .end local v5    # "c":C
    :cond_d6
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v17, 0x1

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_ff

    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ff

    .line 1015
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v5, v4

    .restart local v5    # "c":C
    if-gt v6, v4, :cond_ff

    const/16 v4, 0x5a

    if-gt v5, v4, :cond_ff

    .line 1016
    add-int/lit8 v4, v5, -0x41

    aput-object v1, v7, v4

    .line 1017
    const/4 v4, 0x1

    move v8, v4

    .line 1020
    .end local v5    # "c":C
    :cond_ff
    :goto_ff
    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16d

    iget-object v4, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    .line 1021
    invoke-static {v4, v2, v3, v15}, Landroid/icu/text/AlphabeticIndex;->hasMultiplePrimaryWeights(Landroid/icu/text/RuleBasedCollator;JLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16a

    .line 1022
    const-string v4, "\uffff"

    invoke-virtual {v15, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_167

    .line 1024
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    .line 1025
    .local v5, "i":I
    :goto_11b
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 1026
    .local v6, "singleBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-static {v6}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fgetlabelType(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    move-result-object v14

    move-object/from16 v16, v1

    .end local v1    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .local v16, "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    sget-object v1, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    if-eq v14, v1, :cond_12c

    .line 1029
    goto :goto_16f

    .line 1031
    :cond_12c
    invoke-static {v6}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fgetdisplayBucket(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v1

    if-nez v1, :cond_160

    iget-object v1, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-static {v6}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fgetlowerBoundary(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;

    move-result-object v14

    .line 1032
    invoke-static {v1, v2, v3, v14}, Landroid/icu/text/AlphabeticIndex;->hasMultiplePrimaryWeights(Landroid/icu/text/RuleBasedCollator;JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_160

    .line 1037
    new-instance v1, Landroid/icu/text/AlphabeticIndex$Bucket;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v14, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    const/4 v0, 0x0

    invoke-direct {v1, v13, v4, v14, v0}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex-IA;)V

    .line 1038
    .end local v16    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .restart local v1    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-static {v1, v6}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fputdisplayBucket(Landroid/icu/text/AlphabeticIndex$Bucket;Landroid/icu/text/AlphabeticIndex$Bucket;)V

    .line 1039
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    const/4 v0, 0x1

    .line 1041
    .end local v19    # "hasInvisibleBuckets":Z
    .local v0, "hasInvisibleBuckets":Z
    move v4, v0

    goto :goto_171

    .line 1024
    .end local v0    # "hasInvisibleBuckets":Z
    .end local v1    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .end local v6    # "singleBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .restart local v16    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .restart local v19    # "hasInvisibleBuckets":Z
    :cond_160
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    goto :goto_11b

    .line 1022
    .end local v5    # "i":I
    .end local v16    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .restart local v1    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    :cond_167
    move-object/from16 v16, v1

    .end local v1    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .restart local v16    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    goto :goto_16f

    .line 1021
    .end local v16    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .restart local v1    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    :cond_16a
    move-object/from16 v16, v1

    .end local v1    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .restart local v16    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    goto :goto_16f

    .line 1020
    .end local v16    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .restart local v1    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    :cond_16d
    move-object/from16 v16, v1

    .line 1045
    .end local v1    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .end local v15    # "current":Ljava/lang/String;
    :goto_16f
    move/from16 v4, v19

    .end local v19    # "hasInvisibleBuckets":Z
    .restart local v4    # "hasInvisibleBuckets":Z
    :goto_171
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v6, v20

    const/16 v5, 0x1a

    const/4 v14, 0x0

    goto/16 :goto_43

    .line 1046
    .end local v18    # "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .local v1, "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    :cond_17c
    move-object/from16 v18, v1

    move/from16 v19, v4

    move-object/from16 v20, v6

    .end local v1    # "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "hasInvisibleBuckets":Z
    .end local v6    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .restart local v18    # "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "hasInvisibleBuckets":Z
    .restart local v20    # "asciiBuckets":[Landroid/icu/text/AlphabeticIndex$Bucket;, "[Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_190

    .line 1048
    new-instance v0, Landroid/icu/text/AlphabeticIndex$BucketList;

    const/4 v6, 0x0

    invoke-direct {v0, v9, v9, v6}, Landroid/icu/text/AlphabeticIndex$BucketList;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/icu/text/AlphabeticIndex-IA;)V

    return-object v0

    .line 1051
    :cond_190
    const/4 v6, 0x0

    new-instance v0, Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/AlphabeticIndex;->getOverflowLabel()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->OVERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    invoke-direct {v0, v1, v11, v4, v6}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex-IA;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    if-eqz v8, :cond_1be

    .line 1055
    const/4 v0, 0x0

    .line 1056
    .local v0, "asciiBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    const/4 v1, 0x0

    move/from16 v4, v19

    .end local v19    # "hasInvisibleBuckets":Z
    .local v1, "i":I
    .restart local v4    # "hasInvisibleBuckets":Z
    :goto_1a5
    const/16 v5, 0x1a

    if-ge v1, v5, :cond_1c0

    .line 1057
    aget-object v6, v20, v1

    if-eqz v6, :cond_1af

    .line 1058
    aget-object v0, v20, v1

    .line 1060
    :cond_1af
    aget-object v6, v7, v1

    if-eqz v6, :cond_1bb

    if-eqz v0, :cond_1bb

    .line 1061
    aget-object v6, v7, v1

    invoke-static {v6, v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fputdisplayBucket(Landroid/icu/text/AlphabeticIndex$Bucket;Landroid/icu/text/AlphabeticIndex$Bucket;)V

    .line 1062
    const/4 v4, 0x1

    .line 1056
    :cond_1bb
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a5

    .line 1053
    .end local v0    # "asciiBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .end local v1    # "i":I
    .end local v4    # "hasInvisibleBuckets":Z
    .restart local v19    # "hasInvisibleBuckets":Z
    :cond_1be
    move/from16 v4, v19

    .line 1067
    .end local v19    # "hasInvisibleBuckets":Z
    .restart local v4    # "hasInvisibleBuckets":Z
    :cond_1c0
    if-nez v4, :cond_1c9

    .line 1068
    new-instance v0, Landroid/icu/text/AlphabeticIndex$BucketList;

    const/4 v6, 0x0

    invoke-direct {v0, v9, v9, v6}, Landroid/icu/text/AlphabeticIndex$BucketList;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/icu/text/AlphabeticIndex-IA;)V

    return-object v0

    .line 1072
    :cond_1c9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v17, 0x1

    add-int/lit8 v0, v0, -0x1

    .line 1073
    .local v0, "i":I
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 1074
    .local v1, "nextBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    :goto_1d7
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_1fe

    .line 1075
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 1076
    .local v5, "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-static {v5}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fgetdisplayBucket(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v6

    if-eqz v6, :cond_1e8

    .line 1077
    goto :goto_1d7

    .line 1079
    :cond_1e8
    invoke-static {v5}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fgetlabelType(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    move-result-object v6

    sget-object v12, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->INFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    if-ne v6, v12, :cond_1fc

    .line 1080
    invoke-static {v1}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fgetlabelType(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    move-result-object v6

    sget-object v12, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    if-eq v6, v12, :cond_1fc

    .line 1081
    invoke-static {v5, v1}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fputdisplayBucket(Landroid/icu/text/AlphabeticIndex$Bucket;Landroid/icu/text/AlphabeticIndex$Bucket;)V

    .line 1082
    goto :goto_1d7

    .line 1085
    :cond_1fc
    move-object v1, v5

    .line 1086
    .end local v5    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    goto :goto_1d7

    .line 1088
    :cond_1fe
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1089
    .local v5, "publicBucketList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_207
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_21d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 1090
    .local v12, "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-static {v12}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fgetdisplayBucket(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v13

    if-nez v13, :cond_21c

    .line 1091
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    .end local v12    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    :cond_21c
    goto :goto_207

    .line 1094
    :cond_21d
    new-instance v6, Landroid/icu/text/AlphabeticIndex$BucketList;

    const/4 v12, 0x0

    invoke-direct {v6, v9, v5, v12}, Landroid/icu/text/AlphabeticIndex$BucketList;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/icu/text/AlphabeticIndex-IA;)V

    return-object v6
.end method

.method private static greylist-max-o fixLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "current"    # Ljava/lang/String;

    .line 491
    const-string v0, "\ufdd0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 492
    return-object p0

    .line 494
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 495
    .local v1, "rest":I
    const/16 v2, 0x2800

    if-ge v2, v1, :cond_2f

    const/16 v2, 0x28ff

    if-gt v1, v2, :cond_2f

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v2, v1, -0x2800

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u5283"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 498
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o hasMultiplePrimaryWeights(Landroid/icu/text/RuleBasedCollator;JLjava/lang/String;)Z
    .registers 12
    .param p0, "coll"    # Landroid/icu/text/RuleBasedCollator;
    .param p1, "variableTop"    # J
    .param p3, "s"    # Ljava/lang/String;

    .line 1154
    invoke-virtual {p0, p3}, Landroid/icu/text/RuleBasedCollator;->internalGetCEs(Ljava/lang/CharSequence;)[J

    move-result-object v0

    .line 1155
    .local v0, "ces":[J
    const/4 v1, 0x0

    .line 1156
    .local v1, "seenPrimary":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    array-length v3, v0

    if-ge v2, v3, :cond_1b

    .line 1157
    aget-wide v3, v0, v2

    .line 1158
    .local v3, "ce":J
    const/16 v5, 0x20

    ushr-long v5, v3, v5

    .line 1159
    .local v5, "p":J
    cmp-long v7, v5, p1

    if-lez v7, :cond_18

    .line 1161
    if-eqz v1, :cond_17

    .line 1162
    const/4 v7, 0x1

    return v7

    .line 1164
    :cond_17
    const/4 v1, 0x1

    .line 1156
    .end local v3    # "ce":J
    .end local v5    # "p":J
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1167
    .end local v2    # "i":I
    :cond_1b
    const/4 v2, 0x0

    return v2
.end method

.method private greylist-max-o initBuckets()V
    .registers 9

    .line 733
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    if-eqz v0, :cond_5

    .line 734
    return-void

    .line 736
    :cond_5
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->createBucketList()Landroid/icu/text/AlphabeticIndex$BucketList;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    .line 737
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    if-eqz v0, :cond_96

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    goto/16 :goto_96

    .line 743
    :cond_19
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->recordComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 751
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$BucketList;->-$$Nest$mfullIterator(Landroid/icu/text/AlphabeticIndex$BucketList;)Ljava/util/Iterator;

    move-result-object v0

    .line 752
    .local v0, "bucketIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 755
    .local v1, "currentBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 756
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 757
    .local v2, "nextBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-static {v2}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fgetlowerBoundary(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;

    move-result-object v3

    .local v3, "upperBoundary":Ljava/lang/String;
    goto :goto_3f

    .line 759
    .end local v2    # "nextBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .end local v3    # "upperBoundary":Ljava/lang/String;
    :cond_3d
    const/4 v2, 0x0

    .line 760
    .restart local v2    # "nextBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    const/4 v3, 0x0

    .line 762
    .restart local v3    # "upperBoundary":Ljava/lang/String;
    :goto_3f
    iget-object v4, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_45
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/AlphabeticIndex$Record;

    .line 765
    .local v5, "r":Landroid/icu/text/AlphabeticIndex$Record;, "Landroid/icu/text/AlphabeticIndex$Record<TV;>;"
    :goto_51
    if-eqz v3, :cond_74

    iget-object v6, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-static {v5}, Landroid/icu/text/AlphabeticIndex$Record;->-$$Nest$fgetname(Landroid/icu/text/AlphabeticIndex$Record;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 766
    invoke-virtual {v6, v7, v3}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_74

    .line 767
    move-object v1, v2

    .line 769
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 770
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 771
    invoke-static {v2}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fgetlowerBoundary(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;

    move-result-object v3

    goto :goto_51

    .line 773
    :cond_72
    const/4 v3, 0x0

    goto :goto_51

    .line 777
    :cond_74
    move-object v6, v1

    .line 778
    .local v6, "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-static {v6}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fgetdisplayBucket(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v7

    if-eqz v7, :cond_7f

    .line 779
    invoke-static {v6}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fgetdisplayBucket(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v6

    .line 781
    :cond_7f
    invoke-static {v6}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fgetrecords(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_8d

    .line 782
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6, v7}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fputrecords(Landroid/icu/text/AlphabeticIndex$Bucket;Ljava/util/List;)V

    .line 784
    :cond_8d
    invoke-static {v6}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fgetrecords(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    .end local v5    # "r":Landroid/icu/text/AlphabeticIndex$Record;, "Landroid/icu/text/AlphabeticIndex$Record<TV;>;"
    .end local v6    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    goto :goto_45

    .line 786
    :cond_95
    return-void

    .line 738
    .end local v0    # "bucketIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;>;"
    .end local v1    # "currentBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .end local v2    # "nextBucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .end local v3    # "upperBoundary":Ljava/lang/String;
    :cond_96
    :goto_96
    return-void
.end method

.method private greylist-max-o initLabels()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 426
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFKDInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    .line 427
    .local v0, "nfkdNormalizer":Landroid/icu/text/Normalizer2;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v1, "indexCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 430
    .local v2, "firstScriptBoundary":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 436
    .local v4, "overflowBoundary":Ljava/lang/String;
    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v5}, Landroid/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 438
    .local v7, "item":Ljava/lang/String;
    invoke-static {v7, v6}, Landroid/icu/text/UTF16;->hasMoreCodePointsThan(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_3c

    .line 439
    const/4 v8, 0x0

    .local v8, "checkDistinct":Z
    goto :goto_61

    .line 440
    .end local v8    # "checkDistinct":Z
    :cond_3c
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_60

    .line 441
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_60

    .line 444
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 445
    const/4 v8, 0x0

    .restart local v8    # "checkDistinct":Z
    goto :goto_61

    .line 447
    .end local v8    # "checkDistinct":Z
    :cond_60
    const/4 v8, 0x1

    .line 449
    .restart local v8    # "checkDistinct":Z
    :goto_61
    iget-object v9, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v9, v7, v2}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_6a

    goto :goto_9e

    .line 451
    :cond_6a
    iget-object v9, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v9, v7, v4}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_73

    goto :goto_9e

    .line 453
    :cond_73
    if-eqz v8, :cond_82

    iget-object v9, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-direct {p0, v7}, Landroid/icu/text/AlphabeticIndex;->separated(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_82

    goto :goto_9e

    .line 457
    :cond_82
    iget-object v9, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-static {v1, v7, v9}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v9

    .line 458
    .local v9, "insertionPoint":I
    if-gez v9, :cond_8f

    .line 459
    not-int v10, v9

    invoke-interface {v1, v10, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_9e

    .line 461
    :cond_8f
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 462
    .local v10, "itemAlreadyIn":Ljava/lang/String;
    invoke-static {v0, v7, v10}, Landroid/icu/text/AlphabeticIndex;->isOneLabelBetterThanOther(Landroid/icu/text/Normalizer2;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9e

    .line 463
    invoke-interface {v1, v9, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 467
    .end local v7    # "item":Ljava/lang/String;
    .end local v8    # "checkDistinct":Z
    .end local v9    # "insertionPoint":I
    .end local v10    # "itemAlreadyIn":Ljava/lang/String;
    :cond_9e
    :goto_9e
    goto :goto_28

    .line 471
    :cond_9f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    .line 472
    .local v3, "size":I
    iget v5, p0, Landroid/icu/text/AlphabeticIndex;->maxLabelCount:I

    if-le v3, v5, :cond_c5

    .line 473
    const/4 v5, 0x0

    .line 474
    .local v5, "count":I
    const/4 v6, -0x1

    .line 475
    .local v6, "old":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_ae
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c5

    .line 476
    add-int/lit8 v5, v5, 0x1

    .line 477
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 478
    iget v8, p0, Landroid/icu/text/AlphabeticIndex;->maxLabelCount:I

    mul-int/2addr v8, v5

    div-int/2addr v8, v3

    .line 479
    .local v8, "bump":I
    if-ne v8, v6, :cond_c3

    .line 480
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_c4

    .line 482
    :cond_c3
    move v6, v8

    .line 484
    .end local v8    # "bump":I
    :goto_c4
    goto :goto_ae

    .line 487
    .end local v5    # "count":I
    .end local v6    # "old":I
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_c5
    return-object v1
.end method

.method private static greylist-max-o isOneLabelBetterThanOther(Landroid/icu/text/Normalizer2;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p0, "nfkdNormalizer"    # Landroid/icu/text/Normalizer2;
    .param p1, "one"    # Ljava/lang/String;
    .param p2, "other"    # Ljava/lang/String;

    .line 797
    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, "n1":Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 799
    .local v1, "n2":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->codePointCount(II)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->codePointCount(II)I

    move-result v4

    sub-int/2addr v2, v4

    .line 800
    .local v2, "result":I
    const/4 v4, 0x1

    if-eqz v2, :cond_21

    .line 801
    if-gez v2, :cond_20

    move v3, v4

    :cond_20
    return v3

    .line 803
    :cond_21
    sget-object v5, Landroid/icu/text/AlphabeticIndex;->binaryCmp:Ljava/util/Comparator;

    invoke-interface {v5, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 804
    if-eqz v2, :cond_2d

    .line 805
    if-gez v2, :cond_2c

    move v3, v4

    :cond_2c
    return v3

    .line 807
    :cond_2d
    sget-object v5, Landroid/icu/text/AlphabeticIndex;->binaryCmp:Ljava/util/Comparator;

    invoke-interface {v5, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_36

    move v3, v4

    :cond_36
    return v3
.end method

.method private greylist-max-o separated(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "item"    # Ljava/lang/String;

    .line 574
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 577
    .local v1, "last":C
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 578
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 579
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 580
    .local v3, "ch":C
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-static {v3}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_29

    .line 581
    :cond_24
    const/16 v4, 0x34f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    :cond_29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 584
    move v1, v3

    .line 578
    .end local v3    # "ch":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 586
    .end local v2    # "i":I
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public whitelist test-api addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;
    .registers 3
    .param p1, "additions"    # Landroid/icu/text/UnicodeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/UnicodeSet;",
            ")",
            "Landroid/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 302
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    .line 304
    return-object p0
.end method

.method public varargs whitelist test-api addLabels([Landroid/icu/util/ULocale;)Landroid/icu/text/AlphabeticIndex;
    .registers 5
    .param p1, "additions"    # [Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/icu/util/ULocale;",
            ")",
            "Landroid/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 313
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p1, v1

    .line 314
    .local v2, "addition":Landroid/icu/util/ULocale;
    invoke-direct {p0, v2}, Landroid/icu/text/AlphabeticIndex;->addIndexExemplars(Landroid/icu/util/ULocale;)V

    .line 313
    .end local v2    # "addition":Landroid/icu/util/ULocale;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 316
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    .line 317
    return-object p0
.end method

.method public varargs whitelist test-api addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;
    .registers 6
    .param p1, "additions"    # [Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Locale;",
            ")",
            "Landroid/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 326
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    .line 327
    .local v2, "addition":Ljava/util/Locale;
    invoke-static {v2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/icu/text/AlphabeticIndex;->addIndexExemplars(Landroid/icu/util/ULocale;)V

    .line 326
    .end local v2    # "addition":Ljava/util/Locale;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 329
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    .line 330
    return-object p0
.end method

.method public whitelist test-api addRecord(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/text/AlphabeticIndex;
    .registers 6
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "TV;)",
            "Landroid/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 659
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    .local p2, "data":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    .line 660
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    if-nez v1, :cond_e

    .line 661
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    .line 663
    :cond_e
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    new-instance v2, Landroid/icu/text/AlphabeticIndex$Record;

    invoke-direct {v2, p1, p2, v0}, Landroid/icu/text/AlphabeticIndex$Record;-><init>(Ljava/lang/CharSequence;Ljava/lang/Object;Landroid/icu/text/AlphabeticIndex-IA;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    return-object p0
.end method

.method public whitelist test-api buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/text/AlphabeticIndex$ImmutableIndex<",
            "TV;>;"
        }
    .end annotation

    .line 599
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 601
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->createBucketList()Landroid/icu/text/AlphabeticIndex$BucketList;

    move-result-object v0

    .local v0, "immutableBucketList":Landroid/icu/text/AlphabeticIndex$BucketList;, "Landroid/icu/text/AlphabeticIndex$BucketList<TV;>;"
    goto :goto_1d

    .line 603
    .end local v0    # "immutableBucketList":Landroid/icu/text/AlphabeticIndex$BucketList;, "Landroid/icu/text/AlphabeticIndex$BucketList<TV;>;"
    :cond_11
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    if-nez v0, :cond_1b

    .line 604
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->createBucketList()Landroid/icu/text/AlphabeticIndex$BucketList;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    .line 606
    :cond_1b
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    .line 608
    .restart local v0    # "immutableBucketList":Landroid/icu/text/AlphabeticIndex$BucketList;, "Landroid/icu/text/AlphabeticIndex$BucketList<TV;>;"
    :goto_1d
    new-instance v1, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    iget-object v2, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;-><init>(Landroid/icu/text/AlphabeticIndex$BucketList;Landroid/icu/text/Collator;Landroid/icu/text/AlphabeticIndex-IA;)V

    return-object v1
.end method

.method public whitelist test-api clearRecords()Landroid/icu/text/AlphabeticIndex;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 692
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 693
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 694
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    .line 696
    :cond_14
    return-object p0
.end method

.method public whitelist test-api getBucketCount()I
    .registers 2

    .line 705
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->initBuckets()V

    .line 706
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$BucketList;->-$$Nest$mgetBucketCount(Landroid/icu/text/AlphabeticIndex$BucketList;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getBucketIndex(Ljava/lang/CharSequence;)I
    .registers 4
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 682
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->initBuckets()V

    .line 683
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-static {v0, p1, v1}, Landroid/icu/text/AlphabeticIndex$BucketList;->-$$Nest$mgetBucketIndex(Landroid/icu/text/AlphabeticIndex$BucketList;Ljava/lang/CharSequence;Landroid/icu/text/Collator;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getBucketLabels()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 617
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->initBuckets()V

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    invoke-virtual {v1}, Landroid/icu/text/AlphabeticIndex$BucketList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 620
    .local v2, "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-virtual {v2}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    .end local v2    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    goto :goto_e

    .line 622
    :cond_22
    return-object v0
.end method

.method public whitelist test-api getCollator()Landroid/icu/text/RuleBasedCollator;
    .registers 4

    .line 635
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->collatorExternal:Landroid/icu/text/RuleBasedCollator;

    if-nez v0, :cond_18

    .line 637
    :try_start_4
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->collatorOriginal:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedCollator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RuleBasedCollator;

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->collatorExternal:Landroid/icu/text/RuleBasedCollator;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f

    .line 641
    goto :goto_18

    .line 638
    :catch_f
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Collator cannot be cloned"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 643
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->collatorExternal:Landroid/icu/text/RuleBasedCollator;

    return-object v0
.end method

.method public greylist-max-o getFirstCharactersInScripts()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1190
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1193
    .local v0, "dest":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 1194
    .local v1, "set":Landroid/icu/text/UnicodeSet;
    iget-object v2, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    const v3, 0xfdd1

    invoke-virtual {v2, v3, v1}, Landroid/icu/text/RuleBasedCollator;->internalAddContractions(ILandroid/icu/text/UnicodeSet;)V

    .line 1195
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 1199
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1200
    .local v3, "boundary":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v5

    shl-int/2addr v4, v5

    .line 1201
    .local v4, "gcMask":I
    and-int/lit8 v5, v4, 0x3f

    if-nez v5, :cond_39

    .line 1205
    goto :goto_1e

    .line 1207
    :cond_39
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1208
    .end local v3    # "boundary":Ljava/lang/String;
    .end local v4    # "gcMask":I
    goto :goto_1e

    .line 1209
    :cond_3d
    return-object v0

    .line 1196
    :cond_3e
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "AlphabeticIndex requires script-first-primary contractions"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api getInflowLabel()Ljava/lang/String;
    .registers 2

    .line 393
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inflowLabel:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMaxLabelCount()I
    .registers 2

    .line 403
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iget v0, p0, Landroid/icu/text/AlphabeticIndex;->maxLabelCount:I

    return v0
.end method

.method public whitelist test-api getOverflowLabel()Ljava/lang/String;
    .registers 2

    .line 371
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->overflowLabel:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getRecordCount()I
    .registers 2

    .line 715
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist test-api getUnderflowLabel()Ljava/lang/String;
    .registers 2

    .line 350
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->underflowLabel:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/icu/text/AlphabeticIndex$Bucket<",
            "TV;>;>;"
        }
    .end annotation

    .line 725
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->initBuckets()V

    .line 726
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    invoke-virtual {v0}, Landroid/icu/text/AlphabeticIndex$BucketList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setInflowLabel(Ljava/lang/String;)Landroid/icu/text/AlphabeticIndex;
    .registers 3
    .param p1, "inflowLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 381
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex;->inflowLabel:Ljava/lang/String;

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    .line 383
    return-object p0
.end method

.method public whitelist test-api setMaxLabelCount(I)Landroid/icu/text/AlphabeticIndex;
    .registers 3
    .param p1, "maxLabelCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 416
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iput p1, p0, Landroid/icu/text/AlphabeticIndex;->maxLabelCount:I

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    .line 418
    return-object p0
.end method

.method public whitelist test-api setOverflowLabel(Ljava/lang/String;)Landroid/icu/text/AlphabeticIndex;
    .registers 3
    .param p1, "overflowLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 339
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex;->overflowLabel:Ljava/lang/String;

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    .line 341
    return-object p0
.end method

.method public whitelist test-api setUnderflowLabel(Ljava/lang/String;)Landroid/icu/text/AlphabeticIndex;
    .registers 3
    .param p1, "underflowLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/text/AlphabeticIndex<",
            "TV;>;"
        }
    .end annotation

    .line 360
    .local p0, "this":Landroid/icu/text/AlphabeticIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>;"
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex;->underflowLabel:Ljava/lang/String;

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    .line 362
    return-object p0
.end method
