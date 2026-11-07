.class public Landroid/icu/impl/units/UnitPreferences;
.super Ljava/lang/Object;
.source "UnitPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/units/UnitPreferences$UnitPreferencesSink;,
        Landroid/icu/impl/units/UnitPreferences$UnitPreference;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final blacklist measurementSystem:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mapToUnitPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/icu/impl/units/UnitPreferences$UnitPreference;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 22
    nop

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    .local v0, "tempMS":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "metric"

    const-string v2, "001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "ussystem"

    const-string v2, "US"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v1, "uksystem"

    const-string v2, "GB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Landroid/icu/impl/units/UnitPreferences;->measurementSystem:Ljava/util/Map;

    .line 31
    .end local v0    # "tempMS":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/units/UnitPreferences;->mapToUnitPreferences:Ljava/util/HashMap;

    .line 39
    const-string v0, "android/icu/impl/data/icudata"

    const-string v1, "units"

    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 40
    .local v0, "resource":Landroid/icu/impl/ICUResourceBundle;
    new-instance v1, Landroid/icu/impl/units/UnitPreferences$UnitPreferencesSink;

    invoke-direct {v1}, Landroid/icu/impl/units/UnitPreferences$UnitPreferencesSink;-><init>()V

    .line 41
    .local v1, "sink":Landroid/icu/impl/units/UnitPreferences$UnitPreferencesSink;
    const-string v2, "unitPreferenceData"

    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 42
    invoke-virtual {v1}, Landroid/icu/impl/units/UnitPreferences$UnitPreferencesSink;->getMapToUnitPreferences()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/impl/units/UnitPreferences;->mapToUnitPreferences:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method public static blacklist formMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "usage"    # Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "++"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getAllUsages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "usage"    # Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_e
    const/4 v2, 0x0

    if-ltz v1, :cond_23

    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_20

    .line 67
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 71
    .end local v1    # "i":I
    :cond_23
    const-string v1, "default"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_2e
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private blacklist getUnitPreferences(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/icu/impl/units/UnitPreferences$UnitPreference;
    .registers 7
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "usage"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;

    .line 149
    invoke-static {p1, p2}, Landroid/icu/impl/units/UnitPreferences;->formMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/impl/units/UnitPreferences;->mapToUnitPreferences:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 151
    iget-object v1, p0, Landroid/icu/impl/units/UnitPreferences;->mapToUnitPreferences:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 153
    .local v1, "unitPreferencesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/icu/impl/units/UnitPreferences$UnitPreference;>;"
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 154
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/icu/impl/units/UnitPreferences$UnitPreference;

    goto :goto_29

    .line 155
    :cond_21
    const-string v2, "001"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/icu/impl/units/UnitPreferences$UnitPreference;

    :goto_29
    nop

    .line 157
    .local v2, "result":[Landroid/icu/impl/units/UnitPreferences$UnitPreference;
    nop

    .line 158
    return-object v2

    .line 161
    .end local v1    # "unitPreferencesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/icu/impl/units/UnitPreferences$UnitPreference;>;"
    .end local v2    # "result":[Landroid/icu/impl/units/UnitPreferences$UnitPreference;
    :cond_2c
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist getPreferencesFor(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/units/UnitsData;)[Landroid/icu/impl/units/UnitPreferences$UnitPreference;
    .registers 27
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "usage"    # Ljava/lang/String;
    .param p3, "locale"    # Landroid/icu/util/ULocale;
    .param p4, "data"    # Landroid/icu/impl/units/UnitsData;

    .line 80
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const-string v0, "temperature"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_4e

    .line 81
    const-string v0, "mu"

    invoke-virtual {v3, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "localeUnit":Ljava/lang/String;
    const-string v6, "fahrenhe"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 84
    const-string v0, "fahrenheit"

    move-object v6, v0

    goto :goto_23

    .line 83
    :cond_22
    move-object v6, v0

    .line 88
    .end local v0    # "localeUnit":Ljava/lang/String;
    .local v6, "localeUnit":Ljava/lang/String;
    :goto_23
    const/4 v7, 0x0

    if-nez v6, :cond_2a

    move-object/from16 v8, p4

    move-object v0, v7

    goto :goto_34

    :cond_2a
    :try_start_2a
    invoke-static {v6}, Landroid/icu/impl/units/MeasureUnitImpl;->forIdentifier(Ljava/lang/String;)Landroid/icu/impl/units/MeasureUnitImpl;

    move-result-object v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2e} :catch_37

    move-object/from16 v8, p4

    :try_start_30
    invoke-virtual {v8, v0}, Landroid/icu/impl/units/UnitsData;->getCategory(Landroid/icu/impl/units/MeasureUnitImpl;)Ljava/lang/String;

    move-result-object v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_34} :catch_35

    .line 91
    .local v0, "localeUnitCategory":Ljava/lang/String;
    :goto_34
    goto :goto_3c

    .line 89
    .end local v0    # "localeUnitCategory":Ljava/lang/String;
    :catch_35
    move-exception v0

    goto :goto_3a

    :catch_37
    move-exception v0

    move-object/from16 v8, p4

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    :goto_3a
    const/4 v9, 0x0

    move-object v0, v9

    .line 93
    .local v0, "localeUnitCategory":Ljava/lang/String;
    :goto_3c
    if-eqz v0, :cond_50

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_50

    .line 94
    new-array v5, v5, [Landroid/icu/impl/units/UnitPreferences$UnitPreference;

    new-instance v9, Landroid/icu/impl/units/UnitPreferences$UnitPreference;

    invoke-direct {v9, v6, v7, v7}, Landroid/icu/impl/units/UnitPreferences$UnitPreference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v5, v4

    .line 95
    .local v5, "preferences":[Landroid/icu/impl/units/UnitPreferences$UnitPreference;
    return-object v5

    .line 80
    .end local v0    # "localeUnitCategory":Ljava/lang/String;
    .end local v5    # "preferences":[Landroid/icu/impl/units/UnitPreferences$UnitPreference;
    .end local v6    # "localeUnit":Ljava/lang/String;
    :cond_4e
    move-object/from16 v8, p4

    .line 99
    :cond_50
    invoke-static {v3, v5}, Landroid/icu/util/ULocale;->getRegionForSupplementalData(Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "region":Ljava/lang/String;
    const-string v5, "measure"

    invoke-virtual {v3, v5}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "localeSystem":Ljava/lang/String;
    sget-object v6, Landroid/icu/impl/units/UnitPreferences;->measurementSystem:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 105
    .local v6, "isLocaleSystem":Z
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/units/UnitPreferences;->getAllUsages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 106
    .local v7, "subUsages":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 108
    .local v9, "result":[Landroid/icu/impl/units/UnitPreferences$UnitPreference;
    array-length v10, v7

    move v11, v4

    :goto_67
    if-ge v11, v10, :cond_ea

    aget-object v12, v7, v11

    .line 109
    .local v12, "subUsage":Ljava/lang/String;
    invoke-direct {v1, v2, v12, v0}, Landroid/icu/impl/units/UnitPreferences;->getUnitPreferences(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/icu/impl/units/UnitPreferences$UnitPreference;

    move-result-object v9

    .line 111
    if-eqz v9, :cond_dc

    if-eqz v6, :cond_dc

    .line 112
    new-instance v13, Landroid/icu/impl/units/ConversionRates;

    invoke-direct {v13}, Landroid/icu/impl/units/ConversionRates;-><init>()V

    .line 113
    .local v13, "rates":Landroid/icu/impl/units/ConversionRates;
    const/4 v14, 0x1

    .line 114
    .local v14, "unitsMatchSystem":Z
    array-length v15, v9

    :goto_7a
    if-ge v4, v15, :cond_ca

    aget-object v16, v9, v4

    .line 115
    .local v16, "unitPref":Landroid/icu/impl/units/UnitPreferences$UnitPreference;
    invoke-virtual/range {v16 .. v16}, Landroid/icu/impl/units/UnitPreferences$UnitPreference;->getUnit()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/icu/impl/units/MeasureUnitImpl;->forIdentifier(Ljava/lang/String;)Landroid/icu/impl/units/MeasureUnitImpl;

    move-result-object v17

    .line 116
    .local v17, "measureUnit":Landroid/icu/impl/units/MeasureUnitImpl;
    move-object/from16 v18, v0

    .end local v0    # "region":Ljava/lang/String;
    .local v18, "region":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Landroid/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 117
    .local v0, "singleUnits":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/units/SingleUnitImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_95
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v0

    .end local v0    # "singleUnits":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/units/SingleUnitImpl;>;"
    .local v20, "singleUnits":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/units/SingleUnitImpl;>;"
    move-object/from16 v0, v19

    check-cast v0, Landroid/icu/impl/units/SingleUnitImpl;

    .line 118
    .local v0, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    move-object/from16 v19, v3

    invoke-virtual {v13, v0}, Landroid/icu/impl/units/ConversionRates;->extractSystems(Landroid/icu/impl/units/SingleUnitImpl;)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "systems":Ljava/lang/String;
    move-object/from16 v21, v0

    .end local v0    # "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    .local v21, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    const-string v0, "metric_adjacent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bc

    .line 120
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bc

    .line 121
    const/4 v14, 0x0

    .line 124
    .end local v3    # "systems":Ljava/lang/String;
    .end local v21    # "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    :cond_bc
    move-object/from16 v3, v19

    move-object/from16 v0, v20

    goto :goto_95

    .line 117
    .end local v20    # "singleUnits":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/units/SingleUnitImpl;>;"
    .local v0, "singleUnits":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/units/SingleUnitImpl;>;"
    :cond_c1
    move-object/from16 v20, v0

    .line 114
    .end local v0    # "singleUnits":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/units/SingleUnitImpl;>;"
    .end local v16    # "unitPref":Landroid/icu/impl/units/UnitPreferences$UnitPreference;
    .end local v17    # "measureUnit":Landroid/icu/impl/units/MeasureUnitImpl;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, p3

    move-object/from16 v0, v18

    goto :goto_7a

    .line 126
    .end local v18    # "region":Ljava/lang/String;
    .local v0, "region":Ljava/lang/String;
    :cond_ca
    move-object/from16 v18, v0

    .end local v0    # "region":Ljava/lang/String;
    .restart local v18    # "region":Ljava/lang/String;
    if-nez v14, :cond_de

    .line 127
    sget-object v0, Landroid/icu/impl/units/UnitPreferences;->measurementSystem:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    .local v0, "newRegion":Ljava/lang/String;
    invoke-direct {v1, v2, v12, v0}, Landroid/icu/impl/units/UnitPreferences;->getUnitPreferences(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/icu/impl/units/UnitPreferences$UnitPreference;

    move-result-object v3

    move-object v9, v3

    .end local v9    # "result":[Landroid/icu/impl/units/UnitPreferences$UnitPreference;
    .local v3, "result":[Landroid/icu/impl/units/UnitPreferences$UnitPreference;
    goto :goto_de

    .line 111
    .end local v3    # "result":[Landroid/icu/impl/units/UnitPreferences$UnitPreference;
    .end local v13    # "rates":Landroid/icu/impl/units/ConversionRates;
    .end local v14    # "unitsMatchSystem":Z
    .end local v18    # "region":Ljava/lang/String;
    .local v0, "region":Ljava/lang/String;
    .restart local v9    # "result":[Landroid/icu/impl/units/UnitPreferences$UnitPreference;
    :cond_dc
    move-object/from16 v18, v0

    .line 132
    .end local v0    # "region":Ljava/lang/String;
    .restart local v18    # "region":Ljava/lang/String;
    :cond_de
    :goto_de
    if-eqz v9, :cond_e1

    goto :goto_ec

    .line 108
    .end local v12    # "subUsage":Ljava/lang/String;
    :cond_e1
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p3

    move-object/from16 v0, v18

    const/4 v4, 0x0

    goto/16 :goto_67

    .end local v18    # "region":Ljava/lang/String;
    .restart local v0    # "region":Ljava/lang/String;
    :cond_ea
    move-object/from16 v18, v0

    .line 138
    .end local v0    # "region":Ljava/lang/String;
    .restart local v18    # "region":Ljava/lang/String;
    :goto_ec
    nop

    .line 139
    return-object v9
.end method
