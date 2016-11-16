.class final Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
.super Landroid/icu/impl/UResource$TableSink;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ZNamesLoader"
.end annotation


# static fields
.field private static DUMMY_LOADER:Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

.field private static NO_NAME:Ljava/lang/String;

.field private static NUM_META_ZONE_NAMES:I

.field private static NUM_TIME_ZONE_NAMES:I


# instance fields
.field private names:[Ljava/lang/String;

.field private numNames:I


# direct methods
.method static synthetic -get0()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->DUMMY_LOADER:Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;)[Ljava/lang/String;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->getNames()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 578
    const/4 v0, 0x6

    #@1
    sput v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->NUM_META_ZONE_NAMES:I

    #@3
    .line 579
    const/4 v0, 0x7

    #@4
    sput v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->NUM_TIME_ZONE_NAMES:I

    #@6
    .line 581
    const-string/jumbo v0, ""

    #@9
    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->NO_NAME:Ljava/lang/String;

    #@b
    .line 586
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;-><init>(I)V

    #@11
    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->DUMMY_LOADER:Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    #@13
    .line 577
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "numNames"    # I

    #@0
    .prologue
    .line 591
    invoke-direct {p0}, Landroid/icu/impl/UResource$TableSink;-><init>()V

    #@3
    .line 592
    iput p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->numNames:I

    #@5
    .line 591
    return-void
.end method

.method static forMetaZoneNames()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    .locals 2

    #@0
    .prologue
    .line 596
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    #@2
    sget v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->NUM_META_ZONE_NAMES:I

    #@4
    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;-><init>(I)V

    #@7
    return-object v0
.end method

.method static forTimeZoneNames()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    .locals 2

    #@0
    .prologue
    .line 600
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    #@2
    sget v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->NUM_TIME_ZONE_NAMES:I

    #@4
    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;-><init>(I)V

    #@7
    return-object v0
.end method

.method private getNames()[Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 663
    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 664
    return-object v6

    #@6
    .line 666
    :cond_0
    const/4 v1, 0x0

    #@7
    .line 667
    .local v1, "length":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    iget v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->numNames:I

    #@a
    if-ge v0, v4, :cond_3

    #@c
    .line 668
    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    #@e
    aget-object v2, v4, v0

    #@10
    .line 669
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@12
    .line 670
    sget-object v4, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->NO_NAME:Ljava/lang/String;

    #@14
    if-ne v2, v4, :cond_2

    #@16
    .line 671
    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    #@18
    aput-object v6, v4, v0

    #@1a
    .line 667
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 673
    :cond_2
    add-int/lit8 v1, v0, 0x1

    #@1f
    goto :goto_1

    #@20
    .line 677
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_4

    #@22
    .line 678
    return-object v6

    #@23
    .line 680
    :cond_4
    iget v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->numNames:I

    #@25
    if-eq v1, v4, :cond_5

    #@27
    iget v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->numNames:I

    #@29
    sget v5, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->NUM_TIME_ZONE_NAMES:I

    #@2b
    if-ne v4, v5, :cond_6

    #@2d
    .line 684
    :cond_5
    iget-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    #@2f
    .line 685
    .local v3, "result":[Ljava/lang/String;
    iput-object v6, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    #@31
    .line 686
    return-object v3

    #@32
    .line 690
    .end local v3    # "result":[Ljava/lang/String;
    :cond_6
    new-array v3, v1, [Ljava/lang/String;

    #@34
    .line 692
    .restart local v3    # "result":[Ljava/lang/String;
    :cond_7
    add-int/lit8 v1, v1, -0x1

    #@36
    .line 693
    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    #@38
    aget-object v4, v4, v1

    #@3a
    aput-object v4, v3, v1

    #@3c
    .line 694
    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    #@3e
    aput-object v6, v4, v1

    #@40
    .line 695
    if-gtz v1, :cond_7

    #@42
    .line 696
    return-object v3
.end method

.method private static nameTypeFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/TimeZoneNames$NameType;
    .locals 8
    .param p0, "key"    # Landroid/icu/impl/UResource$Key;

    #@0
    .prologue
    const/16 v7, 0x67

    #@2
    const/16 v6, 0x64

    #@4
    const/16 v5, 0x73

    #@6
    const/4 v2, 0x0

    #@7
    .line 619
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Key;->length()I

    #@a
    move-result v3

    #@b
    const/4 v4, 0x2

    #@c
    if-eq v3, v4, :cond_0

    #@e
    .line 620
    return-object v2

    #@f
    .line 622
    :cond_0
    const/4 v3, 0x0

    #@10
    invoke-virtual {p0, v3}, Landroid/icu/impl/UResource$Key;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 623
    .local v0, "c0":C
    const/4 v3, 0x1

    #@15
    invoke-virtual {p0, v3}, Landroid/icu/impl/UResource$Key;->charAt(I)C

    #@18
    move-result v1

    #@19
    .line 624
    .local v1, "c1":C
    const/16 v3, 0x6c

    #@1b
    if-ne v0, v3, :cond_4

    #@1d
    .line 625
    if-ne v1, v7, :cond_2

    #@1f
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@21
    :cond_1
    :goto_0
    return-object v2

    #@22
    .line 626
    :cond_2
    if-ne v1, v5, :cond_3

    #@24
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@26
    goto :goto_0

    #@27
    .line 627
    :cond_3
    if-ne v1, v6, :cond_1

    #@29
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@2b
    goto :goto_0

    #@2c
    .line 628
    :cond_4
    if-ne v0, v5, :cond_8

    #@2e
    .line 629
    if-ne v1, v7, :cond_6

    #@30
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@32
    :cond_5
    :goto_1
    return-object v2

    #@33
    .line 630
    :cond_6
    if-ne v1, v5, :cond_7

    #@35
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@37
    goto :goto_1

    #@38
    .line 631
    :cond_7
    if-ne v1, v6, :cond_5

    #@3a
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@3c
    goto :goto_1

    #@3d
    .line 632
    :cond_8
    const/16 v3, 0x65

    #@3f
    if-ne v0, v3, :cond_9

    #@41
    const/16 v3, 0x63

    #@43
    if-ne v1, v3, :cond_9

    #@45
    .line 633
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    #@47
    return-object v2

    #@48
    .line 635
    :cond_9
    return-object v2
.end method


# virtual methods
.method load(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "zoneStrings"    # Landroid/icu/impl/ICUResourceBundle;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 604
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 605
    :cond_0
    return-object v2

    #@6
    .line 604
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 609
    :try_start_0
    invoke-virtual {p1, p2, p0}, Landroid/icu/impl/ICUResourceBundle;->getAllTableItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$TableSink;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 614
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->getNames()[Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 610
    :catch_0
    move-exception v0

    #@15
    .line 611
    .local v0, "e":Ljava/util/MissingResourceException;
    return-object v2
.end method

.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 4
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    #@0
    .prologue
    .line 640
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_1

    #@6
    .line 641
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 642
    iget v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->numNames:I

    #@c
    new-array v1, v1, [Ljava/lang/String;

    #@e
    iput-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    #@10
    .line 644
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->nameTypeFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/TimeZoneNames$NameType;

    #@13
    move-result-object v0

    #@14
    .line 645
    .local v0, "type":Landroid/icu/text/TimeZoneNames$NameType;
    if-eqz v0, :cond_1

    #@16
    invoke-virtual {v0}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@19
    move-result v1

    #@1a
    iget v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->numNames:I

    #@1c
    if-ge v1, v2, :cond_1

    #@1e
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    #@20
    invoke-virtual {v0}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@23
    move-result v2

    #@24
    aget-object v1, v1, v2

    #@26
    if-nez v1, :cond_1

    #@28
    .line 646
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    #@2a
    invoke-virtual {v0}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@2d
    move-result v2

    #@2e
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    aput-object v3, v1, v2

    #@34
    .line 639
    .end local v0    # "type":Landroid/icu/text/TimeZoneNames$NameType;
    :cond_1
    return-void
.end method

.method public putNoFallback(Landroid/icu/impl/UResource$Key;)V
    .locals 4
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;

    #@0
    .prologue
    .line 653
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 654
    iget v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->numNames:I

    #@6
    new-array v1, v1, [Ljava/lang/String;

    #@8
    iput-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    #@a
    .line 656
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->nameTypeFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/TimeZoneNames$NameType;

    #@d
    move-result-object v0

    #@e
    .line 657
    .local v0, "type":Landroid/icu/text/TimeZoneNames$NameType;
    if-eqz v0, :cond_1

    #@10
    invoke-virtual {v0}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@13
    move-result v1

    #@14
    iget v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->numNames:I

    #@16
    if-ge v1, v2, :cond_1

    #@18
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    #@1a
    invoke-virtual {v0}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@1d
    move-result v2

    #@1e
    aget-object v1, v1, v2

    #@20
    if-nez v1, :cond_1

    #@22
    .line 658
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    #@24
    invoke-virtual {v0}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@27
    move-result v2

    #@28
    sget-object v3, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->NO_NAME:Ljava/lang/String;

    #@2a
    aput-object v3, v1, v2

    #@2c
    .line 652
    :cond_1
    return-void
.end method
