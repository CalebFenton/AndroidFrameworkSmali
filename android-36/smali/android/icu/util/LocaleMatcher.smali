.class public final Landroid/icu/util/LocaleMatcher;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/LocaleMatcher$Builder;,
        Landroid/icu/util/LocaleMatcher$Demotion;,
        Landroid/icu/util/LocaleMatcher$FavorSubtag;,
        Landroid/icu/util/LocaleMatcher$Direction;,
        Landroid/icu/util/LocaleMatcher$LsrIterator;,
        Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;,
        Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;,
        Landroid/icu/util/LocaleMatcher$Result;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist EMPTY_LOCALE:Ljava/util/Locale;

.field private static final blacklist TRACE_MATCHER:Z = false

.field private static final blacklist UND_LOCALE:Ljava/util/Locale;

.field private static final blacklist UND_LSR:Landroid/icu/impl/locale/LSR;

.field private static final blacklist UND_ULOCALE:Landroid/icu/util/ULocale;


# instance fields
.field private final blacklist defaultLocale:Ljava/util/Locale;

.field private final blacklist defaultULocale:Landroid/icu/util/ULocale;

.field private final blacklist demotionPerDesiredLocale:I

.field private final blacklist direction:Landroid/icu/util/LocaleMatcher$Direction;

.field private final blacklist favorSubtag:Landroid/icu/util/LocaleMatcher$FavorSubtag;

.field private final blacklist supportedIndexes:[I

.field private final blacklist supportedLSRs:[Landroid/icu/impl/locale/LSR;

.field private final blacklist supportedLSRsLength:I

.field private final blacklist supportedLocales:[Ljava/util/Locale;

.field private final blacklist supportedLsrToIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/impl/locale/LSR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist supportedULocales:[Landroid/icu/util/ULocale;

.field private final blacklist thresholdDistance:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetMaximalLsrOrUnd(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LSR;
    .registers 1

    invoke-static {p0}, Landroid/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LSR;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetMaximalLsrOrUnd(Ljava/util/Locale;)Landroid/icu/impl/locale/LSR;
    .registers 1

    invoke-static {p0}, Landroid/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Ljava/util/Locale;)Landroid/icu/impl/locale/LSR;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 66
    nop

    .line 67
    new-instance v0, Landroid/icu/impl/locale/LSR;

    const/4 v1, 0x7

    const-string v2, "und"

    const-string v3, ""

    invoke-direct {v0, v2, v3, v3, v1}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/LocaleMatcher;->UND_LSR:Landroid/icu/impl/locale/LSR;

    .line 69
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, v2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/util/LocaleMatcher;->UND_ULOCALE:Landroid/icu/util/ULocale;

    .line 71
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/util/LocaleMatcher;->UND_LOCALE:Ljava/util/Locale;

    .line 72
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/util/LocaleMatcher;->EMPTY_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/icu/util/LocaleMatcher$Builder;)V
    .registers 28
    .param p1, "builder"    # Landroid/icu/util/LocaleMatcher$Builder;

    .line 641
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 642
    invoke-static/range {p1 .. p1}, Landroid/icu/util/LocaleMatcher$Builder;->-$$Nest$fgetdefaultLocale(Landroid/icu/util/LocaleMatcher$Builder;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 643
    .local v1, "udef":Landroid/icu/util/ULocale;
    const/4 v2, 0x0

    .line 644
    .local v2, "def":Ljava/util/Locale;
    const/4 v3, 0x0

    .line 645
    .local v3, "defLSR":Landroid/icu/impl/locale/LSR;
    if-eqz v1, :cond_15

    .line 646
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v2

    .line 647
    invoke-static {v1}, Landroid/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LSR;

    move-result-object v3

    .line 652
    :cond_15
    invoke-static/range {p1 .. p1}, Landroid/icu/util/LocaleMatcher$Builder;->-$$Nest$fgetsupportedLocales(Landroid/icu/util/LocaleMatcher$Builder;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_25

    .line 653
    invoke-static/range {p1 .. p1}, Landroid/icu/util/LocaleMatcher$Builder;->-$$Nest$fgetsupportedLocales(Landroid/icu/util/LocaleMatcher$Builder;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_26

    :cond_25
    move v4, v5

    .line 654
    .local v4, "supportedLocalesLength":I
    :goto_26
    new-array v6, v4, [Landroid/icu/util/ULocale;

    iput-object v6, v0, Landroid/icu/util/LocaleMatcher;->supportedULocales:[Landroid/icu/util/ULocale;

    .line 655
    new-array v6, v4, [Ljava/util/Locale;

    iput-object v6, v0, Landroid/icu/util/LocaleMatcher;->supportedLocales:[Ljava/util/Locale;

    .line 657
    new-array v6, v4, [Landroid/icu/impl/locale/LSR;

    .line 658
    .local v6, "lsrs":[Landroid/icu/impl/locale/LSR;
    const/4 v7, 0x0

    .line 659
    .local v7, "i":I
    if-lez v4, :cond_5d

    .line 660
    invoke-static/range {p1 .. p1}, Landroid/icu/util/LocaleMatcher$Builder;->-$$Nest$fgetsupportedLocales(Landroid/icu/util/LocaleMatcher$Builder;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/util/ULocale;

    .line 661
    .local v9, "locale":Landroid/icu/util/ULocale;
    iget-object v10, v0, Landroid/icu/util/LocaleMatcher;->supportedULocales:[Landroid/icu/util/ULocale;

    aput-object v9, v10, v7

    .line 662
    iget-object v10, v0, Landroid/icu/util/LocaleMatcher;->supportedLocales:[Ljava/util/Locale;

    invoke-virtual {v9}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v11

    aput-object v11, v10, v7

    .line 663
    invoke-static {v9}, Landroid/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LSR;

    move-result-object v10

    aput-object v10, v6, v7

    .line 664
    nop

    .end local v9    # "locale":Landroid/icu/util/ULocale;
    add-int/lit8 v7, v7, 0x1

    .line 665
    goto :goto_3b

    .line 674
    :cond_5d
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v8, v0, Landroid/icu/util/LocaleMatcher;->supportedLsrToIndex:Ljava/util/Map;

    .line 675
    new-array v8, v4, [Landroid/icu/impl/locale/LSR;

    iput-object v8, v0, Landroid/icu/util/LocaleMatcher;->supportedLSRs:[Landroid/icu/impl/locale/LSR;

    .line 676
    new-array v8, v4, [I

    iput-object v8, v0, Landroid/icu/util/LocaleMatcher;->supportedIndexes:[I

    .line 677
    const/4 v8, 0x0

    .line 680
    .local v8, "suppLength":I
    new-array v9, v4, [B

    .line 681
    .local v9, "order":[B
    const/4 v10, 0x0

    .line 682
    .local v10, "numParadigms":I
    const/4 v7, 0x0

    .line 683
    iget-object v11, v0, Landroid/icu/util/LocaleMatcher;->supportedULocales:[Landroid/icu/util/ULocale;

    array-length v12, v11

    move v13, v5

    :goto_75
    const/4 v15, 0x2

    if-ge v13, v12, :cond_bd

    aget-object v16, v11, v13

    .line 684
    .local v16, "locale":Landroid/icu/util/ULocale;
    const/16 v17, 0x3

    aget-object v14, v6, v7

    .line 685
    .local v14, "lsr":Landroid/icu/impl/locale/LSR;
    if-nez v3, :cond_95

    invoke-static/range {p1 .. p1}, Landroid/icu/util/LocaleMatcher$Builder;->-$$Nest$fgetwithDefault(Landroid/icu/util/LocaleMatcher$Builder;)Z

    move-result v18

    if-eqz v18, :cond_95

    .line 687
    nop

    .line 688
    move-object/from16 v1, v16

    .line 689
    iget-object v15, v0, Landroid/icu/util/LocaleMatcher;->supportedLocales:[Ljava/util/Locale;

    aget-object v2, v15, v5

    .line 690
    move-object v3, v14

    .line 691
    invoke-direct {v0, v14, v5, v8}, Landroid/icu/util/LocaleMatcher;->putIfAbsent(Landroid/icu/impl/locale/LSR;II)I

    move-result v8

    move/from16 v18, v5

    goto :goto_b5

    .line 692
    :cond_95
    if-eqz v3, :cond_a4

    invoke-virtual {v14, v3}, Landroid/icu/impl/locale/LSR;->isEquivalentTo(Landroid/icu/impl/locale/LSR;)Z

    move-result v18

    if-eqz v18, :cond_a4

    .line 693
    invoke-direct {v0, v14, v7, v8}, Landroid/icu/util/LocaleMatcher;->putIfAbsent(Landroid/icu/impl/locale/LSR;II)I

    move-result v8

    move/from16 v18, v5

    goto :goto_b5

    .line 694
    :cond_a4
    move/from16 v18, v5

    sget-object v5, Landroid/icu/impl/locale/LocaleDistance;->INSTANCE:Landroid/icu/impl/locale/LocaleDistance;

    invoke-virtual {v5, v14}, Landroid/icu/impl/locale/LocaleDistance;->isParadigmLSR(Landroid/icu/impl/locale/LSR;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 695
    aput-byte v15, v9, v7

    .line 696
    add-int/lit8 v10, v10, 0x1

    goto :goto_b5

    .line 698
    :cond_b3
    aput-byte v17, v9, v7

    .line 700
    :goto_b5
    nop

    .end local v14    # "lsr":Landroid/icu/impl/locale/LSR;
    .end local v16    # "locale":Landroid/icu/util/ULocale;
    add-int/lit8 v7, v7, 0x1

    .line 683
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v18

    goto :goto_75

    .line 703
    :cond_bd
    move/from16 v18, v5

    const/16 v17, 0x3

    add-int v5, v8, v10

    .line 704
    .local v5, "paradigmLimit":I
    const/4 v7, 0x0

    :goto_c4
    if-ge v7, v4, :cond_d5

    if-ge v8, v5, :cond_d5

    .line 705
    aget-byte v11, v9, v7

    if-ne v11, v15, :cond_d2

    .line 706
    aget-object v11, v6, v7

    invoke-direct {v0, v11, v7, v8}, Landroid/icu/util/LocaleMatcher;->putIfAbsent(Landroid/icu/impl/locale/LSR;II)I

    move-result v8

    .line 704
    :cond_d2
    add-int/lit8 v7, v7, 0x1

    goto :goto_c4

    .line 710
    :cond_d5
    const/4 v7, 0x0

    :goto_d6
    if-ge v7, v4, :cond_e9

    .line 711
    aget-byte v11, v9, v7

    move/from16 v12, v17

    if-ne v11, v12, :cond_e4

    .line 712
    aget-object v11, v6, v7

    invoke-direct {v0, v11, v7, v8}, Landroid/icu/util/LocaleMatcher;->putIfAbsent(Landroid/icu/impl/locale/LSR;II)I

    move-result v8

    .line 710
    :cond_e4
    add-int/lit8 v7, v7, 0x1

    move/from16 v17, v12

    goto :goto_d6

    .line 715
    :cond_e9
    iput v8, v0, Landroid/icu/util/LocaleMatcher;->supportedLSRsLength:I

    .line 720
    iput-object v1, v0, Landroid/icu/util/LocaleMatcher;->defaultULocale:Landroid/icu/util/ULocale;

    .line 721
    iput-object v2, v0, Landroid/icu/util/LocaleMatcher;->defaultLocale:Ljava/util/Locale;

    .line 722
    nop

    .line 723
    invoke-static/range {p1 .. p1}, Landroid/icu/util/LocaleMatcher$Builder;->-$$Nest$fgetdemotion(Landroid/icu/util/LocaleMatcher$Builder;)Landroid/icu/util/LocaleMatcher$Demotion;

    move-result-object v11

    sget-object v12, Landroid/icu/util/LocaleMatcher$Demotion;->NONE:Landroid/icu/util/LocaleMatcher$Demotion;

    if-ne v11, v12, :cond_fb

    move/from16 v11, v18

    goto :goto_101

    .line 724
    :cond_fb
    sget-object v11, Landroid/icu/impl/locale/LocaleDistance;->INSTANCE:Landroid/icu/impl/locale/LocaleDistance;

    invoke-virtual {v11}, Landroid/icu/impl/locale/LocaleDistance;->getDefaultDemotionPerDesiredLocale()I

    move-result v11

    :goto_101
    iput v11, v0, Landroid/icu/util/LocaleMatcher;->demotionPerDesiredLocale:I

    .line 725
    invoke-static/range {p1 .. p1}, Landroid/icu/util/LocaleMatcher$Builder;->-$$Nest$fgetfavor(Landroid/icu/util/LocaleMatcher$Builder;)Landroid/icu/util/LocaleMatcher$FavorSubtag;

    move-result-object v11

    iput-object v11, v0, Landroid/icu/util/LocaleMatcher;->favorSubtag:Landroid/icu/util/LocaleMatcher$FavorSubtag;

    .line 726
    invoke-static/range {p1 .. p1}, Landroid/icu/util/LocaleMatcher$Builder;->-$$Nest$fgetdirection(Landroid/icu/util/LocaleMatcher$Builder;)Landroid/icu/util/LocaleMatcher$Direction;

    move-result-object v11

    iput-object v11, v0, Landroid/icu/util/LocaleMatcher;->direction:Landroid/icu/util/LocaleMatcher$Direction;

    .line 729
    invoke-static/range {p1 .. p1}, Landroid/icu/util/LocaleMatcher$Builder;->-$$Nest$fgetthresholdDistance(Landroid/icu/util/LocaleMatcher$Builder;)I

    move-result v11

    if-ltz v11, :cond_11a

    .line 730
    invoke-static/range {p1 .. p1}, Landroid/icu/util/LocaleMatcher$Builder;->-$$Nest$fgetthresholdDistance(Landroid/icu/util/LocaleMatcher$Builder;)I

    move-result v11

    .local v11, "threshold":I
    goto :goto_159

    .line 731
    .end local v11    # "threshold":I
    :cond_11a
    invoke-static/range {p1 .. p1}, Landroid/icu/util/LocaleMatcher$Builder;->-$$Nest$fgetmaxDistanceDesired(Landroid/icu/util/LocaleMatcher$Builder;)Landroid/icu/util/ULocale;

    move-result-object v11

    if-eqz v11, :cond_153

    .line 732
    sget-object v19, Landroid/icu/impl/locale/LocaleDistance;->INSTANCE:Landroid/icu/impl/locale/LocaleDistance;

    invoke-static/range {p1 .. p1}, Landroid/icu/util/LocaleMatcher$Builder;->-$$Nest$fgetmaxDistanceDesired(Landroid/icu/util/LocaleMatcher$Builder;)Landroid/icu/util/ULocale;

    move-result-object v11

    .line 733
    invoke-static {v11}, Landroid/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LSR;

    move-result-object v20

    const/4 v11, 0x1

    new-array v12, v11, [Landroid/icu/impl/locale/LSR;

    invoke-static/range {p1 .. p1}, Landroid/icu/util/LocaleMatcher$Builder;->-$$Nest$fgetmaxDistanceSupported(Landroid/icu/util/LocaleMatcher$Builder;)Landroid/icu/util/ULocale;

    move-result-object v13

    .line 734
    invoke-static {v13}, Landroid/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LSR;

    move-result-object v13

    aput-object v13, v12, v18

    .line 735
    const/16 v13, 0x64

    invoke-static {v13}, Landroid/icu/impl/locale/LocaleDistance;->shiftDistance(I)I

    move-result v23

    iget-object v13, v0, Landroid/icu/util/LocaleMatcher;->favorSubtag:Landroid/icu/util/LocaleMatcher$FavorSubtag;

    iget-object v14, v0, Landroid/icu/util/LocaleMatcher;->direction:Landroid/icu/util/LocaleMatcher$Direction;

    .line 732
    const/16 v22, 0x1

    move-object/from16 v21, v12

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    invoke-virtual/range {v19 .. v25}, Landroid/icu/impl/locale/LocaleDistance;->getBestIndexAndDistance(Landroid/icu/impl/locale/LSR;[Landroid/icu/impl/locale/LSR;IILandroid/icu/util/LocaleMatcher$FavorSubtag;Landroid/icu/util/LocaleMatcher$Direction;)I

    move-result v12

    .line 737
    .local v12, "indexAndDistance":I
    invoke-static {v12}, Landroid/icu/impl/locale/LocaleDistance;->getDistanceFloor(I)I

    move-result v13

    add-int/2addr v11, v13

    .line 738
    .end local v12    # "indexAndDistance":I
    .restart local v11    # "threshold":I
    goto :goto_159

    .line 739
    .end local v11    # "threshold":I
    :cond_153
    sget-object v11, Landroid/icu/impl/locale/LocaleDistance;->INSTANCE:Landroid/icu/impl/locale/LocaleDistance;

    invoke-virtual {v11}, Landroid/icu/impl/locale/LocaleDistance;->getDefaultScriptDistance()I

    move-result v11

    .line 741
    .restart local v11    # "threshold":I
    :goto_159
    iput v11, v0, Landroid/icu/util/LocaleMatcher;->thresholdDistance:I

    .line 746
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/LocaleMatcher$Builder;Landroid/icu/util/LocaleMatcher-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/util/LocaleMatcher;-><init>(Landroid/icu/util/LocaleMatcher$Builder;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/util/LocalePriorityList;)V
    .registers 4
    .param p1, "supportedLocales"    # Landroid/icu/util/LocalePriorityList;

    .line 625
    invoke-static {}, Landroid/icu/util/LocaleMatcher;->builder()Landroid/icu/util/LocaleMatcher$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/util/LocalePriorityList;->getULocales()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/util/LocaleMatcher$Builder;->setSupportedULocales(Ljava/util/Collection;)Landroid/icu/util/LocaleMatcher$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/util/LocaleMatcher;-><init>(Landroid/icu/util/LocaleMatcher$Builder;)V

    .line 626
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "supportedLocales"    # Ljava/lang/String;

    .line 638
    invoke-static {}, Landroid/icu/util/LocaleMatcher;->builder()Landroid/icu/util/LocaleMatcher$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/util/LocaleMatcher$Builder;->setSupportedLocales(Ljava/lang/String;)Landroid/icu/util/LocaleMatcher$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/util/LocaleMatcher;-><init>(Landroid/icu/util/LocaleMatcher$Builder;)V

    .line 639
    return-void
.end method

.method public static blacklist builder()Landroid/icu/util/LocaleMatcher$Builder;
    .registers 2

    .line 615
    new-instance v0, Landroid/icu/util/LocaleMatcher$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/LocaleMatcher$Builder;-><init>(Landroid/icu/util/LocaleMatcher-IA;)V

    return-object v0
.end method

.method private blacklist defaultResult()Landroid/icu/util/LocaleMatcher$Result;
    .registers 9

    .line 897
    new-instance v0, Landroid/icu/util/LocaleMatcher$Result;

    iget-object v2, p0, Landroid/icu/util/LocaleMatcher;->defaultULocale:Landroid/icu/util/ULocale;

    iget-object v4, p0, Landroid/icu/util/LocaleMatcher;->defaultLocale:Ljava/util/Locale;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v7}, Landroid/icu/util/LocaleMatcher$Result;-><init>(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/util/Locale;Ljava/util/Locale;IILandroid/icu/util/LocaleMatcher-IA;)V

    return-object v0
.end method

.method private blacklist getBestSuppIndex(Landroid/icu/impl/locale/LSR;Landroid/icu/util/LocaleMatcher$LsrIterator;)I
    .registers 14
    .param p1, "desiredLSR"    # Landroid/icu/impl/locale/LSR;
    .param p2, "remainingIter"    # Landroid/icu/util/LocaleMatcher$LsrIterator;

    .line 989
    const/4 v0, 0x0

    .line 990
    .local v0, "desiredIndex":I
    const/4 v1, -0x1

    .line 991
    .local v1, "bestSupportedLsrIndex":I
    const/4 v2, 0x0

    .line 995
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget v3, p0, Landroid/icu/util/LocaleMatcher;->thresholdDistance:I

    invoke-static {v3}, Landroid/icu/impl/locale/LocaleDistance;->shiftDistance(I)I

    move-result v3

    move-object v5, p1

    move v8, v3

    .line 1000
    .end local p1    # "desiredLSR":Landroid/icu/impl/locale/LSR;
    .local v5, "desiredLSR":Landroid/icu/impl/locale/LSR;
    .local v8, "bestShiftedDistance":I
    :goto_b
    iget-object p1, p0, Landroid/icu/util/LocaleMatcher;->supportedLsrToIndex:Ljava/util/Map;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1001
    .local p1, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_1f

    .line 1002
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1007
    .local v3, "suppIndex":I
    if-eqz p2, :cond_1e

    invoke-virtual {p2, v0}, Landroid/icu/util/LocaleMatcher$LsrIterator;->rememberCurrent(I)V

    .line 1008
    :cond_1e
    return v3

    .line 1010
    .end local v3    # "suppIndex":I
    :cond_1f
    sget-object v4, Landroid/icu/impl/locale/LocaleDistance;->INSTANCE:Landroid/icu/impl/locale/LocaleDistance;

    iget-object v6, p0, Landroid/icu/util/LocaleMatcher;->supportedLSRs:[Landroid/icu/impl/locale/LSR;

    iget v7, p0, Landroid/icu/util/LocaleMatcher;->supportedLSRsLength:I

    iget-object v9, p0, Landroid/icu/util/LocaleMatcher;->favorSubtag:Landroid/icu/util/LocaleMatcher$FavorSubtag;

    iget-object v10, p0, Landroid/icu/util/LocaleMatcher;->direction:Landroid/icu/util/LocaleMatcher$Direction;

    invoke-virtual/range {v4 .. v10}, Landroid/icu/impl/locale/LocaleDistance;->getBestIndexAndDistance(Landroid/icu/impl/locale/LSR;[Landroid/icu/impl/locale/LSR;IILandroid/icu/util/LocaleMatcher$FavorSubtag;Landroid/icu/util/LocaleMatcher$Direction;)I

    move-result v3

    .line 1013
    .local v3, "bestIndexAndDistance":I
    if-ltz v3, :cond_3c

    .line 1014
    invoke-static {v3}, Landroid/icu/impl/locale/LocaleDistance;->getShiftedDistance(I)I

    move-result v8

    .line 1015
    if-eqz p2, :cond_38

    invoke-virtual {p2, v0}, Landroid/icu/util/LocaleMatcher$LsrIterator;->rememberCurrent(I)V

    .line 1016
    :cond_38
    invoke-static {v3}, Landroid/icu/impl/locale/LocaleDistance;->getIndex(I)I

    move-result v1

    .line 1018
    :cond_3c
    iget v4, p0, Landroid/icu/util/LocaleMatcher;->demotionPerDesiredLocale:I

    invoke-static {v4}, Landroid/icu/impl/locale/LocaleDistance;->shiftDistance(I)I

    move-result v4

    sub-int v4, v8, v4

    move v8, v4

    if-gtz v4, :cond_48

    .line 1020
    goto :goto_5c

    .line 1022
    :cond_48
    if-eqz p2, :cond_5c

    invoke-virtual {p2}, Landroid/icu/util/LocaleMatcher$LsrIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_51

    .line 1023
    goto :goto_5c

    .line 1025
    :cond_51
    invoke-virtual {p2}, Landroid/icu/util/LocaleMatcher$LsrIterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/icu/impl/locale/LSR;

    .line 1026
    nop

    .end local v3    # "bestIndexAndDistance":I
    .end local p1    # "index":Ljava/lang/Integer;
    add-int/lit8 v0, v0, 0x1

    .line 1027
    goto :goto_b

    .line 1028
    .end local v8    # "bestShiftedDistance":I
    :cond_5c
    :goto_5c
    if-gez v1, :cond_60

    .line 1032
    const/4 p1, -0x1

    return p1

    .line 1034
    :cond_60
    iget-object p1, p0, Landroid/icu/util/LocaleMatcher;->supportedIndexes:[I

    aget p1, p1, v1

    .line 1039
    .local p1, "suppIndex":I
    return p1
.end method

.method private static final blacklist getMaximalLsrOrUnd(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LSR;
    .registers 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 758
    sget-object v0, Landroid/icu/util/LocaleMatcher;->UND_ULOCALE:Landroid/icu/util/ULocale;

    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 759
    sget-object v0, Landroid/icu/util/LocaleMatcher;->UND_LSR:Landroid/icu/impl/locale/LSR;

    return-object v0

    .line 761
    :cond_b
    sget-object v0, Landroid/icu/impl/locale/LikelySubtags;->INSTANCE:Landroid/icu/impl/locale/LikelySubtags;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/locale/LikelySubtags;->makeMaximizedLsrFrom(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/locale/LSR;

    move-result-object v0

    return-object v0
.end method

.method private static final blacklist getMaximalLsrOrUnd(Ljava/util/Locale;)Landroid/icu/impl/locale/LSR;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 766
    sget-object v0, Landroid/icu/util/LocaleMatcher;->UND_LOCALE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Landroid/icu/util/LocaleMatcher;->EMPTY_LOCALE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_18

    .line 769
    :cond_11
    sget-object v0, Landroid/icu/impl/locale/LikelySubtags;->INSTANCE:Landroid/icu/impl/locale/LikelySubtags;

    invoke-virtual {v0, p0}, Landroid/icu/impl/locale/LikelySubtags;->makeMaximizedLsrFrom(Ljava/util/Locale;)Landroid/icu/impl/locale/LSR;

    move-result-object v0

    return-object v0

    .line 767
    :cond_18
    :goto_18
    sget-object v0, Landroid/icu/util/LocaleMatcher;->UND_LSR:Landroid/icu/impl/locale/LSR;

    return-object v0
.end method

.method private blacklist makeResult(Landroid/icu/util/ULocale;Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;I)Landroid/icu/util/LocaleMatcher$Result;
    .registers 15
    .param p1, "desiredLocale"    # Landroid/icu/util/ULocale;
    .param p2, "lsrIter"    # Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;
    .param p3, "suppIndex"    # I

    .line 901
    if-gez p3, :cond_7

    .line 902
    invoke-direct {p0}, Landroid/icu/util/LocaleMatcher;->defaultResult()Landroid/icu/util/LocaleMatcher$Result;

    move-result-object v0

    return-object v0

    .line 903
    :cond_7
    if-eqz p1, :cond_1c

    .line 904
    new-instance v1, Landroid/icu/util/LocaleMatcher$Result;

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher;->supportedULocales:[Landroid/icu/util/ULocale;

    aget-object v3, v0, p3

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher;->supportedLocales:[Ljava/util/Locale;

    aget-object v5, v0, p3

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v7, p3

    .end local p1    # "desiredLocale":Landroid/icu/util/ULocale;
    .end local p3    # "suppIndex":I
    .local v2, "desiredLocale":Landroid/icu/util/ULocale;
    .local v7, "suppIndex":I
    invoke-direct/range {v1 .. v8}, Landroid/icu/util/LocaleMatcher$Result;-><init>(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/util/Locale;Ljava/util/Locale;IILandroid/icu/util/LocaleMatcher-IA;)V

    return-object v1

    .line 907
    .end local v2    # "desiredLocale":Landroid/icu/util/ULocale;
    .end local v7    # "suppIndex":I
    .restart local p1    # "desiredLocale":Landroid/icu/util/ULocale;
    .restart local p3    # "suppIndex":I
    :cond_1c
    move-object v2, p1

    move v7, p3

    .end local p1    # "desiredLocale":Landroid/icu/util/ULocale;
    .end local p3    # "suppIndex":I
    .restart local v2    # "desiredLocale":Landroid/icu/util/ULocale;
    .restart local v7    # "suppIndex":I
    new-instance v3, Landroid/icu/util/LocaleMatcher$Result;

    invoke-static {p2}, Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;->-$$Nest$fgetremembered(Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;)Landroid/icu/util/ULocale;

    move-result-object v4

    iget-object p1, p0, Landroid/icu/util/LocaleMatcher;->supportedULocales:[Landroid/icu/util/ULocale;

    aget-object v5, p1, v7

    iget-object p1, p0, Landroid/icu/util/LocaleMatcher;->supportedLocales:[Ljava/util/Locale;

    aget-object p1, p1, v7

    iget v8, p2, Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;->bestDesiredIndex:I

    const/4 v10, 0x0

    const/4 v6, 0x0

    move v9, v7

    move-object v7, p1

    .end local v7    # "suppIndex":I
    .local v9, "suppIndex":I
    invoke-direct/range {v3 .. v10}, Landroid/icu/util/LocaleMatcher$Result;-><init>(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/util/Locale;Ljava/util/Locale;IILandroid/icu/util/LocaleMatcher-IA;)V

    move v7, v9

    .end local v9    # "suppIndex":I
    .restart local v7    # "suppIndex":I
    return-object v3
.end method

.method private blacklist makeResult(Ljava/util/Locale;Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;I)Landroid/icu/util/LocaleMatcher$Result;
    .registers 13
    .param p1, "desiredLocale"    # Ljava/util/Locale;
    .param p2, "lsrIter"    # Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;
    .param p3, "suppIndex"    # I

    .line 913
    if-gez p3, :cond_7

    .line 914
    invoke-direct {p0}, Landroid/icu/util/LocaleMatcher;->defaultResult()Landroid/icu/util/LocaleMatcher$Result;

    move-result-object v0

    return-object v0

    .line 915
    :cond_7
    if-eqz p1, :cond_1c

    .line 916
    new-instance v1, Landroid/icu/util/LocaleMatcher$Result;

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher;->supportedULocales:[Landroid/icu/util/ULocale;

    aget-object v3, v0, p3

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher;->supportedLocales:[Ljava/util/Locale;

    aget-object v5, v0, p3

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    move-object v4, p1

    move v7, p3

    invoke-direct/range {v1 .. v8}, Landroid/icu/util/LocaleMatcher$Result;-><init>(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/util/Locale;Ljava/util/Locale;IILandroid/icu/util/LocaleMatcher-IA;)V

    return-object v1

    .line 919
    :cond_1c
    new-instance v0, Landroid/icu/util/LocaleMatcher$Result;

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->supportedULocales:[Landroid/icu/util/ULocale;

    aget-object v2, v1, p3

    invoke-static {p2}, Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;->-$$Nest$fgetremembered(Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;)Ljava/util/Locale;

    move-result-object v3

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->supportedLocales:[Ljava/util/Locale;

    aget-object v4, v1, p3

    iget v5, p2, Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;->bestDesiredIndex:I

    const/4 v7, 0x0

    const/4 v1, 0x0

    move v6, p3

    invoke-direct/range {v0 .. v7}, Landroid/icu/util/LocaleMatcher$Result;-><init>(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/util/Locale;Ljava/util/Locale;IILandroid/icu/util/LocaleMatcher-IA;)V

    return-object v0
.end method

.method private final blacklist putIfAbsent(Landroid/icu/impl/locale/LSR;II)I
    .registers 6
    .param p1, "lsr"    # Landroid/icu/impl/locale/LSR;
    .param p2, "i"    # I
    .param p3, "suppLength"    # I

    .line 749
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher;->supportedLsrToIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 750
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher;->supportedLsrToIndex:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher;->supportedLSRs:[Landroid/icu/impl/locale/LSR;

    aput-object p1, v0, p3

    .line 752
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher;->supportedIndexes:[I

    add-int/lit8 v1, p3, 0x1

    .end local p3    # "suppLength":I
    .local v1, "suppLength":I
    aput p2, v0, p3

    move p3, v1

    .line 754
    .end local v1    # "suppLength":I
    .restart local p3    # "suppLength":I
    :cond_1c
    return p3
.end method


# virtual methods
.method public greylist-max-o canonicalize(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 1122
    sget-object v0, Landroid/icu/impl/locale/LikelySubtags;->INSTANCE:Landroid/icu/impl/locale/LikelySubtags;

    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/LikelySubtags;->canonicalize(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBestLocale(Ljava/lang/Iterable;)Ljava/util/Locale;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/Locale;"
        }
    .end annotation

    .line 886
    .local p1, "desiredLocales":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/util/Locale;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 887
    .local v0, "desiredIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Locale;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    .line 888
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->defaultLocale:Ljava/util/Locale;

    return-object v1

    .line 890
    :cond_d
    new-instance v1, Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;

    invoke-direct {v1, v0}, Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;-><init>(Ljava/util/Iterator;)V

    .line 891
    .local v1, "lsrIter":Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;
    invoke-virtual {v1}, Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;->next()Landroid/icu/impl/locale/LSR;

    move-result-object v2

    .line 892
    .local v2, "desiredLSR":Landroid/icu/impl/locale/LSR;
    invoke-direct {p0, v2, v1}, Landroid/icu/util/LocaleMatcher;->getBestSuppIndex(Landroid/icu/impl/locale/LSR;Landroid/icu/util/LocaleMatcher$LsrIterator;)I

    move-result v3

    .line 893
    .local v3, "suppIndex":I
    if-ltz v3, :cond_21

    iget-object v4, p0, Landroid/icu/util/LocaleMatcher;->supportedLocales:[Ljava/util/Locale;

    aget-object v4, v4, v3

    goto :goto_23

    :cond_21
    iget-object v4, p0, Landroid/icu/util/LocaleMatcher;->defaultLocale:Ljava/util/Locale;

    :goto_23
    return-object v4
.end method

.method public blacklist getBestLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .registers 5
    .param p1, "desiredLocale"    # Ljava/util/Locale;

    .line 874
    invoke-static {p1}, Landroid/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Ljava/util/Locale;)Landroid/icu/impl/locale/LSR;

    move-result-object v0

    .line 875
    .local v0, "desiredLSR":Landroid/icu/impl/locale/LSR;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/util/LocaleMatcher;->getBestSuppIndex(Landroid/icu/impl/locale/LSR;Landroid/icu/util/LocaleMatcher$LsrIterator;)I

    move-result v1

    .line 876
    .local v1, "suppIndex":I
    if-ltz v1, :cond_10

    iget-object v2, p0, Landroid/icu/util/LocaleMatcher;->supportedLocales:[Ljava/util/Locale;

    aget-object v2, v2, v1

    goto :goto_12

    :cond_10
    iget-object v2, p0, Landroid/icu/util/LocaleMatcher;->defaultLocale:Ljava/util/Locale;

    :goto_12
    return-object v2
.end method

.method public blacklist getBestLocaleResult(Ljava/lang/Iterable;)Landroid/icu/util/LocaleMatcher$Result;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/util/Locale;",
            ">;)",
            "Landroid/icu/util/LocaleMatcher$Result;"
        }
    .end annotation

    .line 973
    .local p1, "desiredLocales":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/util/Locale;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 974
    .local v0, "desiredIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Locale;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f

    .line 975
    invoke-direct {p0}, Landroid/icu/util/LocaleMatcher;->defaultResult()Landroid/icu/util/LocaleMatcher$Result;

    move-result-object v1

    return-object v1

    .line 977
    :cond_f
    new-instance v1, Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;

    invoke-direct {v1, v0}, Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;-><init>(Ljava/util/Iterator;)V

    .line 978
    .local v1, "lsrIter":Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;
    invoke-virtual {v1}, Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;->next()Landroid/icu/impl/locale/LSR;

    move-result-object v2

    .line 979
    .local v2, "desiredLSR":Landroid/icu/impl/locale/LSR;
    invoke-direct {p0, v2, v1}, Landroid/icu/util/LocaleMatcher;->getBestSuppIndex(Landroid/icu/impl/locale/LSR;Landroid/icu/util/LocaleMatcher$LsrIterator;)I

    move-result v3

    .line 980
    .local v3, "suppIndex":I
    const/4 v4, 0x0

    invoke-direct {p0, v4, v1, v3}, Landroid/icu/util/LocaleMatcher;->makeResult(Ljava/util/Locale;Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;I)Landroid/icu/util/LocaleMatcher$Result;

    move-result-object v4

    return-object v4
.end method

.method public blacklist getBestLocaleResult(Ljava/util/Locale;)Landroid/icu/util/LocaleMatcher$Result;
    .registers 5
    .param p1, "desiredLocale"    # Ljava/util/Locale;

    .line 961
    invoke-static {p1}, Landroid/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Ljava/util/Locale;)Landroid/icu/impl/locale/LSR;

    move-result-object v0

    .line 962
    .local v0, "desiredLSR":Landroid/icu/impl/locale/LSR;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/util/LocaleMatcher;->getBestSuppIndex(Landroid/icu/impl/locale/LSR;Landroid/icu/util/LocaleMatcher$LsrIterator;)I

    move-result v2

    .line 963
    .local v2, "suppIndex":I
    invoke-direct {p0, p1, v1, v2}, Landroid/icu/util/LocaleMatcher;->makeResult(Ljava/util/Locale;Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;I)Landroid/icu/util/LocaleMatcher$Result;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o getBestMatch(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .registers 5
    .param p1, "desiredLocale"    # Landroid/icu/util/ULocale;

    .line 832
    invoke-static {p1}, Landroid/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LSR;

    move-result-object v0

    .line 833
    .local v0, "desiredLSR":Landroid/icu/impl/locale/LSR;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/util/LocaleMatcher;->getBestSuppIndex(Landroid/icu/impl/locale/LSR;Landroid/icu/util/LocaleMatcher$LsrIterator;)I

    move-result v1

    .line 834
    .local v1, "suppIndex":I
    if-ltz v1, :cond_10

    iget-object v2, p0, Landroid/icu/util/LocaleMatcher;->supportedULocales:[Landroid/icu/util/ULocale;

    aget-object v2, v2, v1

    goto :goto_12

    :cond_10
    iget-object v2, p0, Landroid/icu/util/LocaleMatcher;->defaultULocale:Landroid/icu/util/ULocale;

    :goto_12
    return-object v2
.end method

.method public blacklist getBestMatch(Ljava/lang/Iterable;)Landroid/icu/util/ULocale;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Landroid/icu/util/ULocale;"
        }
    .end annotation

    .line 845
    .local p1, "desiredLocales":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/icu/util/ULocale;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 846
    .local v0, "desiredIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/util/ULocale;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    .line 847
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->defaultULocale:Landroid/icu/util/ULocale;

    return-object v1

    .line 849
    :cond_d
    new-instance v1, Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;

    invoke-direct {v1, v0}, Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;-><init>(Ljava/util/Iterator;)V

    .line 850
    .local v1, "lsrIter":Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;
    invoke-virtual {v1}, Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;->next()Landroid/icu/impl/locale/LSR;

    move-result-object v2

    .line 851
    .local v2, "desiredLSR":Landroid/icu/impl/locale/LSR;
    invoke-direct {p0, v2, v1}, Landroid/icu/util/LocaleMatcher;->getBestSuppIndex(Landroid/icu/impl/locale/LSR;Landroid/icu/util/LocaleMatcher$LsrIterator;)I

    move-result v3

    .line 852
    .local v3, "suppIndex":I
    if-ltz v3, :cond_21

    iget-object v4, p0, Landroid/icu/util/LocaleMatcher;->supportedULocales:[Landroid/icu/util/ULocale;

    aget-object v4, v4, v3

    goto :goto_23

    :cond_21
    iget-object v4, p0, Landroid/icu/util/LocaleMatcher;->defaultULocale:Landroid/icu/util/ULocale;

    :goto_23
    return-object v4
.end method

.method public greylist-max-o getBestMatch(Ljava/lang/String;)Landroid/icu/util/ULocale;
    .registers 3
    .param p1, "desiredLocaleList"    # Ljava/lang/String;

    .line 864
    invoke-static {p1}, Landroid/icu/util/LocalePriorityList;->add(Ljava/lang/String;)Landroid/icu/util/LocalePriorityList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/LocalePriorityList$Builder;->build()Landroid/icu/util/LocalePriorityList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/LocaleMatcher;->getBestMatch(Ljava/lang/Iterable;)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBestMatchResult(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleMatcher$Result;
    .registers 5
    .param p1, "desiredLocale"    # Landroid/icu/util/ULocale;

    .line 932
    invoke-static {p1}, Landroid/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LSR;

    move-result-object v0

    .line 933
    .local v0, "desiredLSR":Landroid/icu/impl/locale/LSR;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/util/LocaleMatcher;->getBestSuppIndex(Landroid/icu/impl/locale/LSR;Landroid/icu/util/LocaleMatcher$LsrIterator;)I

    move-result v2

    .line 934
    .local v2, "suppIndex":I
    invoke-direct {p0, p1, v1, v2}, Landroid/icu/util/LocaleMatcher;->makeResult(Landroid/icu/util/ULocale;Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;I)Landroid/icu/util/LocaleMatcher$Result;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getBestMatchResult(Ljava/lang/Iterable;)Landroid/icu/util/LocaleMatcher$Result;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Landroid/icu/util/LocaleMatcher$Result;"
        }
    .end annotation

    .line 944
    .local p1, "desiredLocales":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/icu/util/ULocale;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 945
    .local v0, "desiredIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/util/ULocale;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f

    .line 946
    invoke-direct {p0}, Landroid/icu/util/LocaleMatcher;->defaultResult()Landroid/icu/util/LocaleMatcher$Result;

    move-result-object v1

    return-object v1

    .line 948
    :cond_f
    new-instance v1, Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;

    invoke-direct {v1, v0}, Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;-><init>(Ljava/util/Iterator;)V

    .line 949
    .local v1, "lsrIter":Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;
    invoke-virtual {v1}, Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;->next()Landroid/icu/impl/locale/LSR;

    move-result-object v2

    .line 950
    .local v2, "desiredLSR":Landroid/icu/impl/locale/LSR;
    invoke-direct {p0, v2, v1}, Landroid/icu/util/LocaleMatcher;->getBestSuppIndex(Landroid/icu/impl/locale/LSR;Landroid/icu/util/LocaleMatcher$LsrIterator;)I

    move-result v3

    .line 951
    .local v3, "suppIndex":I
    const/4 v4, 0x0

    invoke-direct {p0, v4, v1, v3}, Landroid/icu/util/LocaleMatcher;->makeResult(Landroid/icu/util/ULocale;Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;I)Landroid/icu/util/LocaleMatcher$Result;

    move-result-object v4

    return-object v4
.end method

.method public blacklist isMatch(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Z
    .registers 12
    .param p1, "desired"    # Landroid/icu/util/ULocale;
    .param p2, "supported"    # Landroid/icu/util/ULocale;

    .line 1069
    sget-object v0, Landroid/icu/impl/locale/LocaleDistance;->INSTANCE:Landroid/icu/impl/locale/LocaleDistance;

    .line 1070
    invoke-static {p1}, Landroid/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LSR;

    move-result-object v1

    const/4 v7, 0x1

    new-array v2, v7, [Landroid/icu/impl/locale/LSR;

    .line 1071
    invoke-static {p2}, Landroid/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LSR;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v3, v2, v8

    iget v3, p0, Landroid/icu/util/LocaleMatcher;->thresholdDistance:I

    .line 1072
    invoke-static {v3}, Landroid/icu/impl/locale/LocaleDistance;->shiftDistance(I)I

    move-result v4

    iget-object v5, p0, Landroid/icu/util/LocaleMatcher;->favorSubtag:Landroid/icu/util/LocaleMatcher$FavorSubtag;

    iget-object v6, p0, Landroid/icu/util/LocaleMatcher;->direction:Landroid/icu/util/LocaleMatcher$Direction;

    .line 1069
    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/locale/LocaleDistance;->getBestIndexAndDistance(Landroid/icu/impl/locale/LSR;[Landroid/icu/impl/locale/LSR;IILandroid/icu/util/LocaleMatcher$FavorSubtag;Landroid/icu/util/LocaleMatcher$Direction;)I

    move-result v0

    .line 1073
    .local v0, "indexAndDistance":I
    if-ltz v0, :cond_22

    goto :goto_23

    :cond_22
    move v7, v8

    :goto_23
    return v7
.end method

.method public blacklist isMatch(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 12
    .param p1, "desired"    # Ljava/util/Locale;
    .param p2, "supported"    # Ljava/util/Locale;

    .line 1052
    sget-object v0, Landroid/icu/impl/locale/LocaleDistance;->INSTANCE:Landroid/icu/impl/locale/LocaleDistance;

    .line 1053
    invoke-static {p1}, Landroid/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Ljava/util/Locale;)Landroid/icu/impl/locale/LSR;

    move-result-object v1

    const/4 v7, 0x1

    new-array v2, v7, [Landroid/icu/impl/locale/LSR;

    .line 1054
    invoke-static {p2}, Landroid/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Ljava/util/Locale;)Landroid/icu/impl/locale/LSR;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v3, v2, v8

    iget v3, p0, Landroid/icu/util/LocaleMatcher;->thresholdDistance:I

    .line 1055
    invoke-static {v3}, Landroid/icu/impl/locale/LocaleDistance;->shiftDistance(I)I

    move-result v4

    iget-object v5, p0, Landroid/icu/util/LocaleMatcher;->favorSubtag:Landroid/icu/util/LocaleMatcher$FavorSubtag;

    iget-object v6, p0, Landroid/icu/util/LocaleMatcher;->direction:Landroid/icu/util/LocaleMatcher$Direction;

    .line 1052
    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/locale/LocaleDistance;->getBestIndexAndDistance(Landroid/icu/impl/locale/LSR;[Landroid/icu/impl/locale/LSR;IILandroid/icu/util/LocaleMatcher$FavorSubtag;Landroid/icu/util/LocaleMatcher$Direction;)I

    move-result v0

    .line 1056
    .local v0, "indexAndDistance":I
    if-ltz v0, :cond_22

    goto :goto_23

    :cond_22
    move v7, v8

    :goto_23
    return v7
.end method

.method public greylist-max-o match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D
    .registers 12
    .param p1, "desired"    # Landroid/icu/util/ULocale;
    .param p2, "desiredMax"    # Landroid/icu/util/ULocale;
    .param p3, "supported"    # Landroid/icu/util/ULocale;
    .param p4, "supportedMax"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1096
    sget-object v0, Landroid/icu/impl/locale/LocaleDistance;->INSTANCE:Landroid/icu/impl/locale/LocaleDistance;

    .line 1097
    invoke-static {p1}, Landroid/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LSR;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/icu/impl/locale/LSR;

    .line 1098
    invoke-static {p3}, Landroid/icu/util/LocaleMatcher;->getMaximalLsrOrUnd(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LSR;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Landroid/icu/util/LocaleMatcher;->thresholdDistance:I

    .line 1099
    invoke-static {v3}, Landroid/icu/impl/locale/LocaleDistance;->shiftDistance(I)I

    move-result v4

    iget-object v5, p0, Landroid/icu/util/LocaleMatcher;->favorSubtag:Landroid/icu/util/LocaleMatcher$FavorSubtag;

    iget-object v6, p0, Landroid/icu/util/LocaleMatcher;->direction:Landroid/icu/util/LocaleMatcher$Direction;

    .line 1096
    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/locale/LocaleDistance;->getBestIndexAndDistance(Landroid/icu/impl/locale/LSR;[Landroid/icu/impl/locale/LSR;IILandroid/icu/util/LocaleMatcher$FavorSubtag;Landroid/icu/util/LocaleMatcher$Direction;)I

    move-result v0

    .line 1100
    .local v0, "indexAndDistance":I
    invoke-static {v0}, Landroid/icu/impl/locale/LocaleDistance;->getDistanceDouble(I)D

    move-result-wide v1

    .line 1105
    .local v1, "distance":D
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    sub-double v5, v3, v1

    div-double/2addr v5, v3

    return-wide v5
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{LocaleMatcher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1132
    .local v0, "s":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/icu/util/LocaleMatcher;->supportedLSRsLength:I

    const/16 v2, 0x7d

    if-lez v1, :cond_37

    .line 1133
    const-string v1, " supportedLSRs={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/icu/util/LocaleMatcher;->supportedLSRs:[Landroid/icu/impl/locale/LSR;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1134
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_20
    iget v3, p0, Landroid/icu/util/LocaleMatcher;->supportedLSRsLength:I

    if-ge v1, v3, :cond_34

    .line 1135
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/util/LocaleMatcher;->supportedLSRs:[Landroid/icu/impl/locale/LSR;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1134
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 1137
    .end local v1    # "i":I
    :cond_34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1139
    :cond_37
    const-string v1, " default="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/icu/util/LocaleMatcher;->defaultULocale:Landroid/icu/util/ULocale;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1140
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->favorSubtag:Landroid/icu/util/LocaleMatcher$FavorSubtag;

    if-eqz v1, :cond_51

    .line 1141
    const-string v1, " favor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/icu/util/LocaleMatcher;->favorSubtag:Landroid/icu/util/LocaleMatcher$FavorSubtag;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1143
    :cond_51
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->direction:Landroid/icu/util/LocaleMatcher$Direction;

    if-eqz v1, :cond_60

    .line 1144
    const-string v1, " direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/icu/util/LocaleMatcher;->direction:Landroid/icu/util/LocaleMatcher$Direction;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1146
    :cond_60
    iget v1, p0, Landroid/icu/util/LocaleMatcher;->thresholdDistance:I

    if-ltz v1, :cond_77

    .line 1147
    iget v1, p0, Landroid/icu/util/LocaleMatcher;->thresholdDistance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, " threshold=%d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    :cond_77
    iget v1, p0, Landroid/icu/util/LocaleMatcher;->demotionPerDesiredLocale:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, " demotion=%d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
