.class final Landroid/icu/text/DateFormatSymbols$CalendarDataSink;
.super Landroid/icu/impl/UResource$Sink;
.source "DateFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateFormatSymbols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CalendarDataSink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o CALENDAR_ALIAS_PREFIX:Ljava/lang/String; = "/LOCALE/calendar/"


# instance fields
.field greylist-max-o aliasPathPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o aliasRelativePath:Ljava/lang/String;

.field greylist-max-o arrays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o currentCalendarType:Ljava/lang/String;

.field greylist-max-o maps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field greylist-max-o nextCalendarType:Ljava/lang/String;

.field private greylist-max-o resourcesToVisit:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1682
    const-class v0, Landroid/icu/text/DateFormatSymbols;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 1702
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 1685
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    .line 1686
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    .line 1687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    .line 1690
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->currentCalendarType:Ljava/lang/String;

    .line 1691
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->nextCalendarType:Ljava/lang/String;

    .line 1702
    return-void
.end method

.method private greylist-max-o processAliasFromValue(Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;
    .registers 7
    .param p1, "currentRelativePath"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 1883
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_95

    .line 1884
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    move-result-object v0

    .line 1885
    .local v0, "aliasPath":Ljava/lang/String;
    const-string v1, "/LOCALE/calendar/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1886
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_7c

    .line 1887
    const/16 v2, 0x2f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1888
    .local v2, "typeLimit":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_7c

    .line 1889
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1890
    .local v1, "aliasCalendarType":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasRelativePath:Ljava/lang/String;

    .line 1892
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->currentCalendarType:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasRelativePath:Ljava/lang/String;

    .line 1893
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 1895
    sget-object v3, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->SAME_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    return-object v3

    .line 1897
    :cond_50
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->currentCalendarType:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7c

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasRelativePath:Ljava/lang/String;

    .line 1898
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 1900
    const-string v3, "gregorian"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1901
    sget-object v3, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->GREGORIAN:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    return-object v3

    .line 1902
    :cond_6b
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->nextCalendarType:Ljava/lang/String;

    if-eqz v3, :cond_77

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->nextCalendarType:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 1903
    :cond_77
    iput-object v1, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->nextCalendarType:Ljava/lang/String;

    .line 1904
    sget-object v3, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->DIFFERENT_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    return-object v3

    .line 1909
    .end local v1    # "aliasCalendarType":Ljava/lang/String;
    .end local v2    # "typeLimit":I
    :cond_7c
    new-instance v1, Landroid/icu/util/ICUException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed \'calendar\' alias. Path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1911
    .end local v0    # "aliasPath":Ljava/lang/String;
    :cond_95
    sget-object v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->NONE:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    return-object v0
.end method


# virtual methods
.method greylist-max-o preEnumerate(Ljava/lang/String;)V
    .registers 3
    .param p1, "calendarType"    # Ljava/lang/String;

    .line 1715
    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->currentCalendarType:Ljava/lang/String;

    .line 1716
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->nextCalendarType:Ljava/lang/String;

    .line 1717
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1718
    return-void
.end method

.method protected greylist-max-o processResource(Ljava/lang/String;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "key"    # Landroid/icu/impl/UResource$Key;
    .param p3, "value"    # Landroid/icu/impl/UResource$Value;

    .line 1816
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 1817
    .local v0, "table":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .line 1820
    .local v1, "stringMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-interface {v0, v2, p2, p3}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 1822
    const-string v3, "%variant"

    invoke-virtual {p2, v3}, Landroid/icu/impl/UResource$Key;->endsWith(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto/16 :goto_b5

    .line 1824
    :cond_16
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1827
    .local v3, "keyString":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v4

    if-nez v4, :cond_37

    .line 1829
    if-nez v2, :cond_2d

    .line 1830
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v1, v4

    .line 1831
    iget-object v4, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1833
    :cond_2d
    nop

    .line 1834
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1835
    goto/16 :goto_b5

    .line 1837
    :cond_37
    nop

    .line 1839
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1842
    .local v4, "currentPath":Ljava/lang/String;
    const-string v5, "cyclicNameSets"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 1843
    const-string v5, "cyclicNameSets/years/format/abbreviated"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_70

    .line 1844
    const-string v5, "cyclicNameSets/zodiacs/format/abbreviated"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_70

    .line 1845
    const-string v5, "cyclicNameSets/dayParts/format/abbreviated"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_70

    .line 1846
    goto :goto_b5

    .line 1850
    :cond_70
    iget-object v5, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b5

    iget-object v5, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    .line 1851
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    goto :goto_b5

    .line 1853
    :cond_81
    invoke-direct {p0, v4, p3}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->processAliasFromValue(Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    move-result-object v5

    .line 1854
    .local v5, "aliasType":Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;
    sget-object v6, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->SAME_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    if-ne v5, v6, :cond_96

    .line 1855
    iget-object v6, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    iget-object v7, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasRelativePath:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1856
    iget-object v6, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1857
    goto :goto_b5

    .line 1859
    :cond_96
    nop

    .line 1862
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_a9

    .line 1864
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 1865
    .local v6, "dataArray":[Ljava/lang/String;
    iget-object v7, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    invoke-interface {v7, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v6    # "dataArray":[Ljava/lang/String;
    goto :goto_b4

    .line 1866
    :cond_a9
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b4

    .line 1868
    invoke-virtual {p0, v4, p2, p3}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->processResource(Ljava/lang/String;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    goto :goto_b5

    .line 1866
    :cond_b4
    :goto_b4
    nop

    .line 1820
    .end local v3    # "keyString":Ljava/lang/String;
    .end local v4    # "currentPath":Ljava/lang/String;
    .end local v5    # "aliasType":Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;
    :cond_b5
    :goto_b5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 1871
    .end local v2    # "i":I
    :cond_b9
    return-void
.end method

.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 13
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 1722
    nop

    .line 1725
    const/4 v0, 0x0

    .line 1726
    .local v0, "resourcesToVisitNext":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v1

    .line 1729
    .local v1, "calendarData":Landroid/icu/impl/UResource$Table;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    invoke-interface {v1, v2, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 1730
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1733
    .local v3, "keyString":Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->processAliasFromValue(Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    move-result-object v4

    .line 1734
    .local v4, "aliasType":Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;
    sget-object v5, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->GREGORIAN:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    if-ne v4, v5, :cond_1b

    .line 1736
    goto/16 :goto_ca

    .line 1738
    :cond_1b
    sget-object v5, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->DIFFERENT_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    if-ne v4, v5, :cond_2e

    .line 1741
    if-nez v0, :cond_27

    .line 1742
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v0, v5

    .line 1744
    :cond_27
    iget-object v5, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasRelativePath:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1745
    goto/16 :goto_ca

    .line 1747
    :cond_2e
    sget-object v5, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->SAME_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    if-ne v4, v5, :cond_50

    .line 1749
    iget-object v5, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ca

    iget-object v5, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ca

    .line 1750
    iget-object v5, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    iget-object v6, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasRelativePath:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1751
    iget-object v5, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ca

    .line 1758
    :cond_50
    iget-object v5, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->resourcesToVisit:Ljava/util/Set;

    if-eqz v5, :cond_6d

    iget-object v5, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->resourcesToVisit:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6d

    iget-object v5, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->resourcesToVisit:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    .line 1759
    const-string v5, "AmPmMarkersAbbr"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    goto :goto_ca

    .line 1762
    :cond_6d
    const-string v5, "AmPmMarkers"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 1763
    const-string v5, "%variant"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_ca

    iget-object v5, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ca

    .line 1764
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 1765
    .local v5, "dataArray":[Ljava/lang/String;
    iget-object v6, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    .end local v5    # "dataArray":[Ljava/lang/String;
    goto :goto_ca

    .line 1767
    :cond_8f
    const-string v5, "eras"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c7

    .line 1768
    const-string v5, "dayNames"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c7

    .line 1769
    const-string v5, "monthNames"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c7

    .line 1770
    const-string v5, "quarters"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c7

    .line 1771
    const-string v5, "dayPeriod"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c7

    .line 1772
    const-string v5, "monthPatterns"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c7

    .line 1773
    const-string v5, "cyclicNameSets"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 1774
    :cond_c7
    invoke-virtual {p0, v3, p1, p2}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->processResource(Ljava/lang/String;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    .line 1729
    .end local v3    # "keyString":Ljava/lang/String;
    .end local v4    # "aliasType":Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;
    :cond_ca
    :goto_ca
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 1781
    .end local v2    # "i":I
    :cond_ce
    const/4 v2, 0x0

    .line 1782
    .local v2, "modified":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d0
    iget-object v4, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_135

    .line 1783
    const/4 v4, 0x0

    .line 1784
    .local v4, "mod":Z
    iget-object v5, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1785
    .local v5, "alias":Ljava/lang/String;
    iget-object v6, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_102

    .line 1786
    iget-object v6, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    iget-object v7, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    add-int/lit8 v8, v3, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    const/4 v4, 0x1

    goto :goto_122

    .line 1788
    :cond_102
    iget-object v6, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_122

    .line 1789
    iget-object v6, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    iget-object v7, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    add-int/lit8 v8, v3, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    const/4 v4, 0x1

    .line 1792
    :cond_122
    :goto_122
    if-eqz v4, :cond_132

    .line 1793
    iget-object v6, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    add-int/lit8 v7, v3, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1794
    iget-object v6, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1795
    const/4 v2, 0x1

    goto :goto_134

    .line 1797
    :cond_132
    add-int/lit8 v3, v3, 0x2

    .line 1799
    .end local v4    # "mod":Z
    .end local v5    # "alias":Ljava/lang/String;
    :goto_134
    goto :goto_d0

    .line 1800
    .end local v3    # "i":I
    :cond_135
    if-eqz v2, :cond_13f

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 1803
    :cond_13f
    if-eqz v0, :cond_143

    .line 1804
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->resourcesToVisit:Ljava/util/Set;

    .line 1806
    :cond_143
    return-void
.end method

.method greylist-max-o visitAllResources()V
    .registers 2

    .line 1708
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->resourcesToVisit:Ljava/util/Set;

    .line 1709
    return-void
.end method
