.class Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;
.super Landroid/icu/impl/SoftCache;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TZ2MZsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 853
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/TimeZoneNamesImpl-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;-><init>()V

    return-void
.end method

.method private static blacklist parseDate(Ljava/lang/String;)J
    .registers 13
    .param p0, "text"    # Ljava/lang/String;

    .line 899
    const/4 v0, 0x0

    .local v0, "year":I
    const/4 v1, 0x0

    .local v1, "month":I
    const/4 v2, 0x0

    .local v2, "day":I
    const/4 v3, 0x0

    .local v3, "hour":I
    const/4 v4, 0x0

    .line 904
    .local v4, "min":I
    const/4 v5, 0x0

    .local v5, "idx":I
    :goto_6
    const/4 v6, 0x3

    const/16 v7, 0xa

    if-gt v5, v6, :cond_24

    .line 905
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    .line 906
    .local v6, "n":I
    if-ltz v6, :cond_1c

    if-ge v6, v7, :cond_1c

    .line 907
    mul-int/lit8 v7, v0, 0xa

    add-int v0, v7, v6

    .line 904
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 909
    :cond_1c
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Bad year"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 913
    .end local v6    # "n":I
    :cond_24
    const/4 v5, 0x5

    :goto_25
    const/4 v6, 0x6

    if-gt v5, v6, :cond_41

    .line 914
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    .line 915
    .restart local v6    # "n":I
    if-ltz v6, :cond_39

    if-ge v6, v7, :cond_39

    .line 916
    mul-int/lit8 v8, v1, 0xa

    add-int v1, v8, v6

    .line 913
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 918
    :cond_39
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Bad month"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 922
    .end local v6    # "n":I
    :cond_41
    const/16 v5, 0x8

    :goto_43
    const/16 v6, 0x9

    if-gt v5, v6, :cond_60

    .line 923
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    .line 924
    .restart local v6    # "n":I
    if-ltz v6, :cond_58

    if-ge v6, v7, :cond_58

    .line 925
    mul-int/lit8 v8, v2, 0xa

    add-int v2, v8, v6

    .line 922
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 927
    :cond_58
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Bad day"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 931
    .end local v6    # "n":I
    :cond_60
    const/16 v5, 0xb

    :goto_62
    const/16 v6, 0xc

    if-gt v5, v6, :cond_7f

    .line 932
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    .line 933
    .restart local v6    # "n":I
    if-ltz v6, :cond_77

    if-ge v6, v7, :cond_77

    .line 934
    mul-int/lit8 v8, v3, 0xa

    add-int v3, v8, v6

    .line 931
    add-int/lit8 v5, v5, 0x1

    goto :goto_62

    .line 936
    :cond_77
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Bad hour"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 940
    .end local v6    # "n":I
    :cond_7f
    const/16 v5, 0xe

    :goto_81
    const/16 v6, 0xf

    if-gt v5, v6, :cond_9e

    .line 941
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    .line 942
    .restart local v6    # "n":I
    if-ltz v6, :cond_96

    if-ge v6, v7, :cond_96

    .line 943
    mul-int/lit8 v8, v4, 0xa

    add-int v4, v8, v6

    .line 940
    add-int/lit8 v5, v5, 0x1

    goto :goto_81

    .line 945
    :cond_96
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Bad minute"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 949
    .end local v6    # "n":I
    :cond_9e
    add-int/lit8 v6, v1, -0x1

    invoke-static {v0, v6, v2}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    mul-long/2addr v6, v8

    int-to-long v8, v3

    const-wide/32 v10, 0x36ee80

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    int-to-long v8, v4

    const-wide/32 v10, 0xea60

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 951
    .local v6, "date":J
    return-wide v6
.end method


# virtual methods
.method protected bridge synthetic blacklist createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 853
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->createInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist createInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 19
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;",
            ">;"
        }
    .end annotation

    .line 859
    const/4 v1, 0x0

    .line 861
    .local v1, "mzMaps":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;>;"
    const-string v0, "android/icu/impl/data/icudata"

    const-string v2, "metaZones"

    invoke-static {v0, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 862
    .local v2, "bundle":Landroid/icu/util/UResourceBundle;
    const-string v0, "metazoneInfo"

    invoke-virtual {v2, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 864
    .local v3, "metazoneInfoBundle":Landroid/icu/util/UResourceBundle;
    const/16 v0, 0x2f

    const/16 v4, 0x3a

    move-object/from16 v5, p2

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 866
    .local v4, "tzkey":Ljava/lang/String;
    :try_start_19
    invoke-virtual {v3, v4}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 868
    .local v0, "zoneBundle":Landroid/icu/util/UResourceBundle;
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v6

    .line 869
    const/4 v6, 0x0

    .local v6, "idx":I
    :goto_28
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v7

    if-ge v6, v7, :cond_66

    .line 870
    invoke-virtual {v0, v6}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v7

    .line 871
    .local v7, "mz":Landroid/icu/util/UResourceBundle;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v10, v8

    .line 872
    .local v10, "mzid":Ljava/lang/String;
    const-string v8, "1970-01-01 00:00"

    .line 873
    .local v8, "fromStr":Ljava/lang/String;
    const-string v9, "9999-12-31 23:59"

    .line 874
    .local v9, "toStr":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_51

    .line 875
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 876
    const/4 v11, 0x2

    invoke-virtual {v7, v11}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    move-object v15, v9

    goto :goto_52

    .line 874
    :cond_51
    move-object v15, v9

    .line 879
    .end local v9    # "toStr":Ljava/lang/String;
    .local v15, "toStr":Ljava/lang/String;
    :goto_52
    invoke-static {v8}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->parseDate(Ljava/lang/String;)J

    move-result-wide v11

    .line 880
    .local v11, "from":J
    invoke-static {v15}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->parseDate(Ljava/lang/String;)J

    move-result-wide v13

    .line 881
    .local v13, "to":J
    new-instance v9, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;

    invoke-direct/range {v9 .. v14}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catch Ljava/util/MissingResourceException; {:try_start_19 .. :try_end_62} :catch_67

    .line 869
    nop

    .end local v7    # "mz":Landroid/icu/util/UResourceBundle;
    .end local v8    # "fromStr":Ljava/lang/String;
    .end local v10    # "mzid":Ljava/lang/String;
    .end local v11    # "from":J
    .end local v13    # "to":J
    .end local v15    # "toStr":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 886
    .end local v0    # "zoneBundle":Landroid/icu/util/UResourceBundle;
    .end local v6    # "idx":I
    :cond_66
    goto :goto_6c

    .line 884
    :catch_67
    move-exception v0

    .line 885
    .local v0, "mre":Ljava/util/MissingResourceException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 887
    .end local v0    # "mre":Ljava/util/MissingResourceException;
    :goto_6c
    return-object v1
.end method
