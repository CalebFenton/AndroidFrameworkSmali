.class public Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;
.super Ljava/lang/Object;
.source "MeasureUnitImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/units/MeasureUnitImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnitsParser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static blacklist measurePrefixValues:[Landroid/icu/util/MeasureUnit$MeasurePrefix;

.field private static volatile blacklist savedTrie:Landroid/icu/util/CharsTrie;


# instance fields
.field private blacklist fAfterPer:Z

.field private blacklist fIndex:I

.field private blacklist fSawAnd:Z

.field private final blacklist fSource:Ljava/lang/String;

.field private final blacklist trie:Landroid/icu/util/CharsTrie;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetPrefixFromTrieIndex(I)Landroid/icu/util/MeasureUnit$MeasurePrefix;
    .registers 1

    invoke-static {p0}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->getPrefixFromTrieIndex(I)Landroid/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 7

    .line 426
    const-class v0, Landroid/icu/impl/units/MeasureUnitImpl;

    .line 428
    const/4 v0, 0x0

    sput-object v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->savedTrie:Landroid/icu/util/CharsTrie;

    .line 446
    invoke-static {}, Landroid/icu/util/MeasureUnit$MeasurePrefix;->values()[Landroid/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->measurePrefixValues:[Landroid/icu/util/MeasureUnit$MeasurePrefix;

    .line 461
    new-instance v0, Landroid/icu/util/CharsTrieBuilder;

    invoke-direct {v0}, Landroid/icu/util/CharsTrieBuilder;-><init>()V

    .line 464
    .local v0, "trieBuilder":Landroid/icu/util/CharsTrieBuilder;
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->measurePrefixValues:[Landroid/icu/util/MeasureUnit$MeasurePrefix;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_26

    aget-object v4, v1, v3

    .line 465
    .local v4, "unitPrefix":Landroid/icu/util/MeasureUnit$MeasurePrefix;
    invoke-virtual {v4}, Landroid/icu/util/MeasureUnit$MeasurePrefix;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->getTrieIndexForPrefix(Landroid/icu/util/MeasureUnit$MeasurePrefix;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 464
    .end local v4    # "unitPrefix":Landroid/icu/util/MeasureUnit$MeasurePrefix;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 469
    :cond_26
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->PER:Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    invoke-virtual {v1}, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->getTrieIndex()I

    move-result v1

    const-string v2, "-per-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 470
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->TIMES:Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    invoke-virtual {v1}, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->getTrieIndex()I

    move-result v1

    const-string v2, "-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 471
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->AND:Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    invoke-virtual {v1}, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->getTrieIndex()I

    move-result v1

    const-string v2, "-and-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 472
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->INITIAL_COMPOUND_PART_PER:Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    invoke-virtual {v1}, Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->getTrieIndex()I

    move-result v1

    const-string v2, "per-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 473
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->P2:Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "square-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 474
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->P3:Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "cubic-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 475
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->P2:Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow2-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 476
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->P3:Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow3-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 477
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->P4:Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow4-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 478
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->P5:Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow5-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 479
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->P6:Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow6-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 480
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->P7:Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow7-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 481
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->P8:Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow8-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 482
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->P9:Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow9-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 483
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->P10:Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow10-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 484
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->P11:Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow11-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 485
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->P12:Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow12-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 486
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->P13:Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow13-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 487
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->P14:Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow14-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 488
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->P15:Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;

    invoke-virtual {v1}, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->getTrieIndex()I

    move-result v1

    const-string v2, "pow15-"

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 491
    invoke-static {}, Landroid/icu/impl/units/UnitsData;->getSimpleUnits()[Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "simpleUnits":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_107
    array-length v3, v1

    if-ge v2, v3, :cond_114

    .line 493
    aget-object v3, v1, v2

    add-int/lit16 v4, v2, 0x200

    invoke-virtual {v0, v3, v4}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 492
    add-int/lit8 v2, v2, 0x1

    goto :goto_107

    .line 498
    .end local v2    # "i":I
    :cond_114
    sget-object v2, Landroid/icu/util/StringTrieBuilder$Option;->FAST:Landroid/icu/util/StringTrieBuilder$Option;

    invoke-virtual {v0, v2}, Landroid/icu/util/CharsTrieBuilder;->build(Landroid/icu/util/StringTrieBuilder$Option;)Landroid/icu/util/CharsTrie;

    move-result-object v2

    sput-object v2, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->savedTrie:Landroid/icu/util/CharsTrie;

    .line 499
    .end local v0    # "trieBuilder":Landroid/icu/util/CharsTrieBuilder;
    .end local v1    # "simpleUnits":[Ljava/lang/String;
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "identifier"    # Ljava/lang/String;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fIndex:I

    .line 438
    iput-boolean v0, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fAfterPer:Z

    .line 441
    iput-boolean v0, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSawAnd:Z

    .line 449
    iput-object p1, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSource:Ljava/lang/String;

    .line 452
    :try_start_c
    sget-object v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->savedTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v0}, Landroid/icu/util/CharsTrie;->clone()Landroid/icu/util/CharsTrie;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->trie:Landroid/icu/util/CharsTrie;
    :try_end_14
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_c .. :try_end_14} :catch_16

    .line 455
    nop

    .line 456
    return-void

    .line 453
    :catch_16
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>()V

    throw v1
.end method

.method private static blacklist getPrefixFromTrieIndex(I)Landroid/icu/util/MeasureUnit$MeasurePrefix;
    .registers 3
    .param p0, "trieIndex"    # I

    .line 519
    sget-object v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->measurePrefixValues:[Landroid/icu/util/MeasureUnit$MeasurePrefix;

    add-int/lit8 v1, p0, -0x40

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static blacklist getTrieIndexForPrefix(Landroid/icu/util/MeasureUnit$MeasurePrefix;)I
    .registers 2
    .param p0, "prefix"    # Landroid/icu/util/MeasureUnit$MeasurePrefix;

    .line 523
    invoke-virtual {p0}, Landroid/icu/util/MeasureUnit$MeasurePrefix;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x40

    return v0
.end method

.method private blacklist hasNext()Z
    .registers 3

    .line 670
    iget v0, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fIndex:I

    iget-object v1, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSource:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private blacklist nextSingleUnit()Landroid/icu/impl/units/SingleUnitImpl;
    .registers 9

    .line 574
    new-instance v0, Landroid/icu/impl/units/SingleUnitImpl;

    invoke-direct {v0}, Landroid/icu/impl/units/SingleUnitImpl;-><init>()V

    .line 580
    .local v0, "result":Landroid/icu/impl/units/SingleUnitImpl;
    const/4 v1, 0x0

    .line 582
    .local v1, "state":I
    iget v2, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fIndex:I

    const/4 v3, 0x1

    if-nez v2, :cond_d

    move v2, v3

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    .line 583
    .local v2, "atStart":Z
    :goto_e
    invoke-direct {p0}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->nextToken()Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;

    move-result-object v4

    .line 585
    .local v4, "token":Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;
    const/4 v5, -0x1

    if-eqz v2, :cond_28

    .line 587
    invoke-virtual {v4}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->getType()Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    move-result-object v6

    sget-object v7, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_INITIAL_COMPOUND_PART:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    if-ne v6, v7, :cond_6d

    .line 588
    nop

    .line 590
    iput-boolean v3, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fAfterPer:Z

    .line 591
    invoke-virtual {v0, v5}, Landroid/icu/impl/units/SingleUnitImpl;->setDimensionality(I)V

    .line 593
    invoke-direct {p0}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->nextToken()Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;

    move-result-object v4

    goto :goto_6d

    .line 598
    :cond_28
    invoke-virtual {v4}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->getType()Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    move-result-object v6

    sget-object v7, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_COMPOUND_PART:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    if-ne v6, v7, :cond_c4

    .line 602
    invoke-virtual {v4}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->getMatch()I

    move-result v6

    invoke-static {v6}, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->getCompoundPartFromTrieIndex(I)Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    move-result-object v6

    .line 603
    .local v6, "compoundPart":Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;
    invoke-virtual {v6}, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->ordinal()I

    move-result v7

    packed-switch v7, :pswitch_data_cc

    goto :goto_69

    .line 621
    :pswitch_40
    iget-boolean v5, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fAfterPer:Z

    if-nez v5, :cond_47

    .line 625
    iput-boolean v3, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSawAnd:Z

    goto :goto_69

    .line 623
    :cond_47
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t start with \"-and-\", and mixed compound units"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 615
    :pswitch_4f
    iget-boolean v7, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fAfterPer:Z

    if-eqz v7, :cond_69

    .line 616
    invoke-virtual {v0, v5}, Landroid/icu/impl/units/SingleUnitImpl;->setDimensionality(I)V

    goto :goto_69

    .line 605
    :pswitch_57
    iget-boolean v7, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSawAnd:Z

    if-nez v7, :cond_61

    .line 610
    iput-boolean v3, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fAfterPer:Z

    .line 611
    invoke-virtual {v0, v5}, Landroid/icu/impl/units/SingleUnitImpl;->setDimensionality(I)V

    .line 612
    goto :goto_69

    .line 606
    :cond_61
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Mixed compound units not yet supported"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 629
    :cond_69
    :goto_69
    invoke-direct {p0}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->nextToken()Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;

    move-result-object v4

    .line 634
    .end local v6    # "compoundPart":Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;
    :cond_6d
    :goto_6d
    invoke-virtual {v4}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->getType()Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->ordinal()I

    move-result v5

    packed-switch v5, :pswitch_data_d6

    .line 658
    :pswitch_78
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 654
    :pswitch_7e
    invoke-virtual {v4}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->getSimpleUnitIndex()I

    move-result v3

    invoke-static {}, Landroid/icu/impl/units/UnitsData;->getSimpleUnits()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/icu/impl/units/SingleUnitImpl;->setSimpleUnit(I[Ljava/lang/String;)V

    .line 655
    return-object v0

    .line 636
    :pswitch_8a
    if-gtz v1, :cond_9a

    .line 640
    invoke-virtual {v0}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v5

    invoke-virtual {v4}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->getPower()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-virtual {v0, v5}, Landroid/icu/impl/units/SingleUnitImpl;->setDimensionality(I)V

    .line 641
    const/4 v1, 0x1

    .line 642
    goto :goto_ab

    .line 637
    :cond_9a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 645
    :pswitch_a0
    if-gt v1, v3, :cond_be

    .line 649
    invoke-virtual {v4}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->getPrefix()Landroid/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/icu/impl/units/SingleUnitImpl;->setPrefix(Landroid/icu/util/MeasureUnit$MeasurePrefix;)V

    .line 650
    const/4 v1, 0x2

    .line 651
    nop

    .line 661
    :goto_ab
    invoke-direct {p0}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 665
    invoke-direct {p0}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->nextToken()Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;

    move-result-object v4

    goto :goto_6d

    .line 662
    :cond_b6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "We ran out of tokens before finding a complete single unit."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 646
    :cond_be
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 599
    :cond_c4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "token type must be TYPE_COMPOUND_PART"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_57
        :pswitch_4f
        :pswitch_40
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_78
        :pswitch_78
        :pswitch_8a
        :pswitch_7e
    .end packed-switch
.end method

.method private blacklist nextToken()Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;
    .registers 7

    .line 674
    iget-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->trie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v0}, Landroid/icu/util/CharsTrie;->reset()Landroid/icu/util/CharsTrie;

    .line 675
    const/4 v0, -0x1

    .line 678
    .local v0, "match":I
    const/4 v1, -0x1

    .line 681
    .local v1, "previ":I
    :goto_7
    iget v2, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fIndex:I

    iget-object v3, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSource:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_47

    .line 682
    iget-object v2, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->trie:Landroid/icu/util/CharsTrie;

    iget-object v3, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSource:Ljava/lang/String;

    iget v4, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Landroid/icu/util/CharsTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v2

    .line 683
    .local v2, "result":Landroid/icu/util/BytesTrie$Result;
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    if-ne v2, v3, :cond_28

    .line 684
    goto :goto_47

    .line 685
    :cond_28
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    if-ne v2, v3, :cond_2d

    .line 686
    goto :goto_7

    .line 689
    :cond_2d
    iget-object v3, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->trie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v3}, Landroid/icu/util/CharsTrie;->getValue()I

    move-result v0

    .line 690
    iget v1, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fIndex:I

    .line 692
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    if-ne v2, v3, :cond_3a

    .line 693
    goto :goto_47

    .line 696
    :cond_3a
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

    if-ne v2, v3, :cond_3f

    .line 701
    .end local v2    # "result":Landroid/icu/util/BytesTrie$Result;
    goto :goto_7

    .line 697
    .restart local v2    # "result":Landroid/icu/util/BytesTrie$Result;
    :cond_3f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "result must has an intermediate value"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 704
    .end local v2    # "result":Landroid/icu/util/BytesTrie$Result;
    :cond_47
    :goto_47
    if-ltz v0, :cond_51

    .line 707
    iput v1, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fIndex:I

    .line 710
    new-instance v2, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;

    invoke-direct {v2, v0}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;-><init>(I)V

    return-object v2

    .line 705
    :cond_51
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered unknown token starting at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist parse()Landroid/icu/impl/units/MeasureUnitImpl;
    .registers 7

    .line 527
    new-instance v0, Landroid/icu/impl/units/MeasureUnitImpl;

    invoke-direct {v0}, Landroid/icu/impl/units/MeasureUnitImpl;-><init>()V

    .line 529
    .local v0, "result":Landroid/icu/impl/units/MeasureUnitImpl;
    iget-object v1, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSource:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 531
    const/4 v1, 0x0

    return-object v1

    .line 534
    :cond_f
    :goto_f
    invoke-direct {p0}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 535
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSawAnd:Z

    .line 536
    invoke-direct {p0}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->nextSingleUnit()Landroid/icu/impl/units/SingleUnitImpl;

    move-result-object v1

    .line 538
    .local v1, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    invoke-virtual {v0, v1}, Landroid/icu/impl/units/MeasureUnitImpl;->appendSingleUnit(Landroid/icu/impl/units/SingleUnitImpl;)Z

    move-result v2

    .line 539
    .local v2, "added":Z
    iget-boolean v3, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSawAnd:Z

    if-eqz v3, :cond_2f

    if-eqz v2, :cond_27

    goto :goto_2f

    .line 540
    :cond_27
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Two similar units are not allowed in a mixed unit."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 543
    :cond_2f
    :goto_2f
    invoke-static {v0}, Landroid/icu/impl/units/MeasureUnitImpl;->-$$Nest$fgetsingleUnits(Landroid/icu/impl/units/MeasureUnitImpl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_61

    .line 549
    iget-boolean v3, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->fSawAnd:Z

    if-eqz v3, :cond_41

    sget-object v3, Landroid/icu/util/MeasureUnit$Complexity;->MIXED:Landroid/icu/util/MeasureUnit$Complexity;

    goto :goto_43

    :cond_41
    sget-object v3, Landroid/icu/util/MeasureUnit$Complexity;->COMPOUND:Landroid/icu/util/MeasureUnit$Complexity;

    .line 550
    .local v3, "complexity":Landroid/icu/util/MeasureUnit$Complexity;
    :goto_43
    invoke-virtual {v0}, Landroid/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v4, :cond_52

    .line 552
    nop

    .line 553
    invoke-virtual {v0, v3}, Landroid/icu/impl/units/MeasureUnitImpl;->setComplexity(Landroid/icu/util/MeasureUnit$Complexity;)V

    goto :goto_61

    .line 554
    :cond_52
    invoke-virtual {v0}, Landroid/icu/impl/units/MeasureUnitImpl;->getComplexity()Landroid/icu/util/MeasureUnit$Complexity;

    move-result-object v4

    if-ne v4, v3, :cond_59

    goto :goto_61

    .line 555
    :cond_59
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t have mixed compound units"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 558
    .end local v1    # "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    .end local v2    # "added":Z
    .end local v3    # "complexity":Landroid/icu/util/MeasureUnit$Complexity;
    :cond_61
    :goto_61
    goto :goto_f

    .line 560
    :cond_62
    return-object v0
.end method

.method public static blacklist parseForIdentifier(Ljava/lang/String;)Landroid/icu/impl/units/MeasureUnitImpl;
    .registers 3
    .param p0, "identifier"    # Ljava/lang/String;

    .line 509
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_13

    .line 513
    :cond_9
    new-instance v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;-><init>(Ljava/lang/String;)V

    .line 514
    .local v0, "parser":Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;
    invoke-direct {v0}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->parse()Landroid/icu/impl/units/MeasureUnitImpl;

    move-result-object v1

    return-object v1

    .line 510
    .end local v0    # "parser":Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return-object v0
.end method
