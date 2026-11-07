.class final Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
.super Landroid/icu/impl/UResource$Sink;
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
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static blacklist DUMMY_LOADER:Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;


# instance fields
.field private blacklist names:[Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;)[Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->getNames()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDUMMY_LOADER()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    .registers 1

    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->DUMMY_LOADER:Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 586
    const-class v0, Landroid/icu/impl/TimeZoneNamesImpl;

    .line 592
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    invoke-direct {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;-><init>()V

    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->DUMMY_LOADER:Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 586
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/TimeZoneNamesImpl-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;-><init>()V

    return-void
.end method

.method private blacklist getNames()[Ljava/lang/String;
    .registers 6

    .line 660
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 661
    return-object v1

    .line 663
    :cond_a
    const/4 v0, 0x0

    .line 664
    .local v0, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    const/4 v3, 0x7

    if-ge v2, v3, :cond_27

    .line 665
    iget-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 666
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_24

    .line 667
    const-string v4, "\u2205\u2205\u2205"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 668
    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    aput-object v1, v4, v2

    goto :goto_24

    .line 670
    :cond_22
    add-int/lit8 v0, v2, 0x1

    .line 664
    .end local v3    # "name":Ljava/lang/String;
    :cond_24
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 676
    .end local v2    # "i":I
    :cond_27
    if-ne v0, v3, :cond_2c

    .line 678
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    .local v1, "result":[Ljava/lang/String;
    goto :goto_39

    .line 679
    .end local v1    # "result":[Ljava/lang/String;
    :cond_2c
    if-nez v0, :cond_30

    .line 681
    const/4 v1, 0x0

    .restart local v1    # "result":[Ljava/lang/String;
    goto :goto_39

    .line 685
    .end local v1    # "result":[Ljava/lang/String;
    :cond_30
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 687
    .restart local v1    # "result":[Ljava/lang/String;
    :goto_39
    return-object v1
.end method

.method private static blacklist nameTypeIndexFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;
    .registers 8
    .param p0, "key"    # Landroid/icu/impl/UResource$Key;

    .line 619
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Key;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    .line 620
    return-object v2

    .line 622
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->charAt(I)C

    move-result v0

    .line 623
    .local v0, "c0":C
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/icu/impl/UResource$Key;->charAt(I)C

    move-result v1

    .line 624
    .local v1, "c1":C
    const/16 v3, 0x6c

    const/16 v4, 0x64

    const/16 v5, 0x67

    const/16 v6, 0x73

    if-ne v0, v3, :cond_2c

    .line 625
    if-ne v1, v5, :cond_22

    sget-object v2, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_GENERIC:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    goto :goto_2b

    .line 626
    :cond_22
    if-ne v1, v6, :cond_27

    sget-object v2, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_STANDARD:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    goto :goto_2b

    .line 627
    :cond_27
    if-ne v1, v4, :cond_2b

    sget-object v2, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_DAYLIGHT:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    .line 625
    :cond_2b
    :goto_2b
    return-object v2

    .line 628
    :cond_2c
    if-ne v0, v6, :cond_3d

    .line 629
    if-ne v1, v5, :cond_33

    sget-object v2, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_GENERIC:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    goto :goto_3c

    .line 630
    :cond_33
    if-ne v1, v6, :cond_38

    sget-object v2, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_STANDARD:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    goto :goto_3c

    .line 631
    :cond_38
    if-ne v1, v4, :cond_3c

    sget-object v2, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_DAYLIGHT:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    .line 629
    :cond_3c
    :goto_3c
    return-object v2

    .line 632
    :cond_3d
    const/16 v3, 0x65

    if-ne v0, v3, :cond_48

    const/16 v3, 0x63

    if-ne v1, v3, :cond_48

    .line 633
    sget-object v2, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->EXEMPLAR_LOCATION:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    return-object v2

    .line 635
    :cond_48
    return-object v2
.end method

.method private blacklist setNameIfEmpty(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .registers 7
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 639
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    if-nez v0, :cond_9

    .line 640
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    .line 642
    :cond_9
    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->nameTypeIndexFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    move-result-object v0

    .line 643
    .local v0, "index":Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;
    if-nez v0, :cond_10

    return-void

    .line 644
    :cond_10
    nop

    .line 645
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    if-nez v1, :cond_27

    .line 646
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v2

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 648
    :cond_27
    return-void
.end method


# virtual methods
.method blacklist loadMetaZone(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .registers 5
    .param p1, "zoneStrings"    # Landroid/icu/impl/ICUResourceBundle;
    .param p2, "mzID"    # Ljava/lang/String;

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "meta:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->loadNames(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method blacklist loadNames(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .registers 4
    .param p1, "zoneStrings"    # Landroid/icu/impl/ICUResourceBundle;
    .param p2, "key"    # Ljava/lang/String;

    .line 605
    nop

    .line 606
    nop

    .line 607
    nop

    .line 610
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    .line 612
    :try_start_6
    invoke-virtual {p1, p2, p0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_9
    .catch Ljava/util/MissingResourceException; {:try_start_6 .. :try_end_9} :catch_a

    .line 614
    goto :goto_b

    .line 613
    :catch_a
    move-exception v0

    .line 615
    :goto_b
    return-void
.end method

.method blacklist loadTimeZone(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .registers 5
    .param p1, "zoneStrings"    # Landroid/icu/impl/ICUResourceBundle;
    .param p2, "tzID"    # Ljava/lang/String;

    .line 600
    const/16 v0, 0x2f

    const/16 v1, 0x3a

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->loadNames(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 7
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 652
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 653
    .local v0, "namesTable":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 654
    nop

    .line 655
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->setNameIfEmpty(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    .line 653
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 657
    .end local v1    # "i":I
    :cond_12
    return-void
.end method
