.class public Landroid/icu/impl/duration/impl/DataRecord;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/duration/impl/DataRecord$ScopeData;,
        Landroid/icu/impl/duration/impl/DataRecord$ETimeLimit;,
        Landroid/icu/impl/duration/impl/DataRecord$ETimeDirection;,
        Landroid/icu/impl/duration/impl/DataRecord$EUnitVariant;,
        Landroid/icu/impl/duration/impl/DataRecord$ECountVariant;,
        Landroid/icu/impl/duration/impl/DataRecord$EPluralization;,
        Landroid/icu/impl/duration/impl/DataRecord$EHalfPlacement;,
        Landroid/icu/impl/duration/impl/DataRecord$ENumberSystem;,
        Landroid/icu/impl/duration/impl/DataRecord$EZeroHandling;,
        Landroid/icu/impl/duration/impl/DataRecord$EDecimalHandling;,
        Landroid/icu/impl/duration/impl/DataRecord$EFractionHandling;,
        Landroid/icu/impl/duration/impl/DataRecord$EHalfSupport;,
        Landroid/icu/impl/duration/impl/DataRecord$EMilliSupport;,
        Landroid/icu/impl/duration/impl/DataRecord$ESeparatorVariant;,
        Landroid/icu/impl/duration/impl/DataRecord$EGender;
    }
.end annotation


# instance fields
.field allowZero:Z

.field countSep:Ljava/lang/String;

.field decimalHandling:B

.field decimalSep:C

.field digitPrefix:Ljava/lang/String;

.field fifteenMinutes:Ljava/lang/String;

.field fiveMinutes:Ljava/lang/String;

.field fractionHandling:B

.field genders:[B

.field halfNames:[Ljava/lang/String;

.field halfPlacements:[B

.field halfSupport:[B

.field halves:[Ljava/lang/String;

.field measures:[Ljava/lang/String;

.field mediumNames:[Ljava/lang/String;

.field numberNames:[Ljava/lang/String;

.field numberSystem:B

.field omitDualCount:Z

.field omitSingularCount:Z

.field optSuffixes:[Ljava/lang/String;

.field pl:B

.field pluralNames:[[Ljava/lang/String;

.field requiresDigitSeparator:Z

.field requiresSkipMarker:[Z

.field rqdSuffixes:[Ljava/lang/String;

.field scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

.field shortNames:[Ljava/lang/String;

.field shortUnitSep:Ljava/lang/String;

.field singularNames:[Ljava/lang/String;

.field skippedUnitMarker:Ljava/lang/String;

.field unitSep:[Ljava/lang/String;

.field unitSepRequiresDP:[Z

.field useMilliseconds:B

.field weeksAloneOnly:Z

.field zero:C

.field zeroHandling:B


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static read(Ljava/lang/String;Landroid/icu/impl/duration/impl/RecordReader;)Landroid/icu/impl/duration/impl/DataRecord;
    .locals 6
    .param p0, "ln"    # Ljava/lang/String;
    .param p1, "in"    # Landroid/icu/impl/duration/impl/RecordReader;

    #@0
    .prologue
    .line 57
    const-string/jumbo v3, "DataRecord"

    #@3
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->open(Ljava/lang/String;)Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_2

    #@9
    .line 58
    new-instance v2, Landroid/icu/impl/duration/impl/DataRecord;

    #@b
    invoke-direct {v2}, Landroid/icu/impl/duration/impl/DataRecord;-><init>()V

    #@e
    .line 59
    .local v2, "record":Landroid/icu/impl/duration/impl/DataRecord;
    const-string/jumbo v3, "pl"

    #@11
    sget-object v4, Landroid/icu/impl/duration/impl/DataRecord$EPluralization;->names:[Ljava/lang/String;

    #@13
    invoke-interface {p1, v3, v4}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    #@16
    move-result v3

    #@17
    iput-byte v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    #@19
    .line 60
    const-string/jumbo v3, "pluralName"

    #@1c
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringTable(Ljava/lang/String;)[[Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    #@22
    .line 61
    const-string/jumbo v3, "gender"

    #@25
    sget-object v4, Landroid/icu/impl/duration/impl/DataRecord$EGender;->names:[Ljava/lang/String;

    #@27
    invoke-interface {p1, v3, v4}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;)[B

    #@2a
    move-result-object v3

    #@2b
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->genders:[B

    #@2d
    .line 62
    const-string/jumbo v3, "singularName"

    #@30
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->singularNames:[Ljava/lang/String;

    #@36
    .line 63
    const-string/jumbo v3, "halfName"

    #@39
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    #@3f
    .line 64
    const-string/jumbo v3, "numberName"

    #@42
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;

    #@48
    .line 65
    const-string/jumbo v3, "mediumName"

    #@4b
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->mediumNames:[Ljava/lang/String;

    #@51
    .line 66
    const-string/jumbo v3, "shortName"

    #@54
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->shortNames:[Ljava/lang/String;

    #@5a
    .line 67
    const-string/jumbo v3, "measure"

    #@5d
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    #@63
    .line 68
    const-string/jumbo v3, "rqdSuffix"

    #@66
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;

    #@6c
    .line 69
    const-string/jumbo v3, "optSuffix"

    #@6f
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@72
    move-result-object v3

    #@73
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;

    #@75
    .line 70
    const-string/jumbo v3, "halves"

    #@78
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@7b
    move-result-object v3

    #@7c
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;

    #@7e
    .line 71
    const-string/jumbo v3, "halfPlacement"

    #@81
    .line 72
    sget-object v4, Landroid/icu/impl/duration/impl/DataRecord$EHalfPlacement;->names:[Ljava/lang/String;

    #@83
    .line 71
    invoke-interface {p1, v3, v4}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;)[B

    #@86
    move-result-object v3

    #@87
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->halfPlacements:[B

    #@89
    .line 73
    const-string/jumbo v3, "halfSupport"

    #@8c
    .line 74
    sget-object v4, Landroid/icu/impl/duration/impl/DataRecord$EHalfSupport;->names:[Ljava/lang/String;

    #@8e
    .line 73
    invoke-interface {p1, v3, v4}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;)[B

    #@91
    move-result-object v3

    #@92
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->halfSupport:[B

    #@94
    .line 75
    const-string/jumbo v3, "fifteenMinutes"

    #@97
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    #@9a
    move-result-object v3

    #@9b
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;

    #@9d
    .line 76
    const-string/jumbo v3, "fiveMinutes"

    #@a0
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    #@a3
    move-result-object v3

    #@a4
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;

    #@a6
    .line 77
    const-string/jumbo v3, "requiresDigitSeparator"

    #@a9
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    #@ac
    move-result v3

    #@ad
    iput-boolean v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    #@af
    .line 78
    const-string/jumbo v3, "digitPrefix"

    #@b2
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    #@b5
    move-result-object v3

    #@b6
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->digitPrefix:Ljava/lang/String;

    #@b8
    .line 79
    const-string/jumbo v3, "countSep"

    #@bb
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    #@be
    move-result-object v3

    #@bf
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;

    #@c1
    .line 80
    const-string/jumbo v3, "shortUnitSep"

    #@c4
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    #@c7
    move-result-object v3

    #@c8
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->shortUnitSep:Ljava/lang/String;

    #@ca
    .line 81
    const-string/jumbo v3, "unitSep"

    #@cd
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@d0
    move-result-object v3

    #@d1
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;

    #@d3
    .line 82
    const-string/jumbo v3, "unitSepRequiresDP"

    #@d6
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->boolArray(Ljava/lang/String;)[Z

    #@d9
    move-result-object v3

    #@da
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->unitSepRequiresDP:[Z

    #@dc
    .line 83
    const-string/jumbo v3, "requiresSkipMarker"

    #@df
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->boolArray(Ljava/lang/String;)[Z

    #@e2
    move-result-object v3

    #@e3
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->requiresSkipMarker:[Z

    #@e5
    .line 84
    const-string/jumbo v3, "numberSystem"

    #@e8
    .line 85
    sget-object v4, Landroid/icu/impl/duration/impl/DataRecord$ENumberSystem;->names:[Ljava/lang/String;

    #@ea
    .line 84
    invoke-interface {p1, v3, v4}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    #@ed
    move-result v3

    #@ee
    iput-byte v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->numberSystem:B

    #@f0
    .line 86
    const-string/jumbo v3, "zero"

    #@f3
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->character(Ljava/lang/String;)C

    #@f6
    move-result v3

    #@f7
    iput-char v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->zero:C

    #@f9
    .line 87
    const-string/jumbo v3, "decimalSep"

    #@fc
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->character(Ljava/lang/String;)C

    #@ff
    move-result v3

    #@100
    iput-char v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->decimalSep:C

    #@102
    .line 88
    const-string/jumbo v3, "omitSingularCount"

    #@105
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    #@108
    move-result v3

    #@109
    iput-boolean v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->omitSingularCount:Z

    #@10b
    .line 89
    const-string/jumbo v3, "omitDualCount"

    #@10e
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    #@111
    move-result v3

    #@112
    iput-boolean v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->omitDualCount:Z

    #@114
    .line 90
    const-string/jumbo v3, "zeroHandling"

    #@117
    .line 91
    sget-object v4, Landroid/icu/impl/duration/impl/DataRecord$EZeroHandling;->names:[Ljava/lang/String;

    #@119
    .line 90
    invoke-interface {p1, v3, v4}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    #@11c
    move-result v3

    #@11d
    iput-byte v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->zeroHandling:B

    #@11f
    .line 92
    const-string/jumbo v3, "decimalHandling"

    #@122
    .line 93
    sget-object v4, Landroid/icu/impl/duration/impl/DataRecord$EDecimalHandling;->names:[Ljava/lang/String;

    #@124
    .line 92
    invoke-interface {p1, v3, v4}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    #@127
    move-result v3

    #@128
    iput-byte v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->decimalHandling:B

    #@12a
    .line 94
    const-string/jumbo v3, "fractionHandling"

    #@12d
    .line 95
    sget-object v4, Landroid/icu/impl/duration/impl/DataRecord$EFractionHandling;->names:[Ljava/lang/String;

    #@12f
    .line 94
    invoke-interface {p1, v3, v4}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    #@132
    move-result v3

    #@133
    iput-byte v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->fractionHandling:B

    #@135
    .line 96
    const-string/jumbo v3, "skippedUnitMarker"

    #@138
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    #@13b
    move-result-object v3

    #@13c
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    #@13e
    .line 97
    const-string/jumbo v3, "allowZero"

    #@141
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    #@144
    move-result v3

    #@145
    iput-boolean v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->allowZero:Z

    #@147
    .line 98
    const-string/jumbo v3, "weeksAloneOnly"

    #@14a
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    #@14d
    move-result v3

    #@14e
    iput-boolean v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->weeksAloneOnly:Z

    #@150
    .line 99
    const-string/jumbo v3, "useMilliseconds"

    #@153
    .line 100
    sget-object v4, Landroid/icu/impl/duration/impl/DataRecord$EMilliSupport;->names:[Ljava/lang/String;

    #@155
    .line 99
    invoke-interface {p1, v3, v4}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    #@158
    move-result v3

    #@159
    iput-byte v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->useMilliseconds:B

    #@15b
    .line 101
    const-string/jumbo v3, "ScopeDataList"

    #@15e
    invoke-interface {p1, v3}, Landroid/icu/impl/duration/impl/RecordReader;->open(Ljava/lang/String;)Z

    #@161
    move-result v3

    #@162
    if-eqz v3, :cond_1

    #@164
    .line 102
    new-instance v1, Ljava/util/ArrayList;

    #@166
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@169
    .line 104
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/duration/impl/DataRecord$ScopeData;>;"
    :goto_0
    invoke-static {p1}, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->read(Landroid/icu/impl/duration/impl/RecordReader;)Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    #@16c
    move-result-object v0

    #@16d
    .local v0, "data":Landroid/icu/impl/duration/impl/DataRecord$ScopeData;
    if-eqz v0, :cond_0

    #@16f
    .line 105
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@172
    goto :goto_0

    #@173
    .line 107
    :cond_0
    invoke-interface {p1}, Landroid/icu/impl/duration/impl/RecordReader;->close()Z

    #@176
    move-result v3

    #@177
    if-eqz v3, :cond_1

    #@179
    .line 108
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@17c
    move-result v3

    #@17d
    new-array v3, v3, [Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    #@17f
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@182
    move-result-object v3

    #@183
    check-cast v3, [Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    #@185
    iput-object v3, v2, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    #@187
    .line 112
    .end local v0    # "data":Landroid/icu/impl/duration/impl/DataRecord$ScopeData;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/duration/impl/DataRecord$ScopeData;>;"
    :cond_1
    invoke-interface {p1}, Landroid/icu/impl/duration/impl/RecordReader;->close()Z

    #@18a
    move-result v3

    #@18b
    if-eqz v3, :cond_3

    #@18d
    .line 113
    return-object v2

    #@18e
    .line 116
    .end local v2    # "record":Landroid/icu/impl/duration/impl/DataRecord;
    :cond_2
    new-instance v3, Ljava/lang/InternalError;

    #@190
    new-instance v4, Ljava/lang/StringBuilder;

    #@192
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@195
    const-string/jumbo v5, "did not find DataRecord while reading "

    #@198
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v4

    #@19c
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v4

    #@1a0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a3
    move-result-object v4

    #@1a4
    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@1a7
    throw v3

    #@1a8
    .line 119
    .restart local v2    # "record":Landroid/icu/impl/duration/impl/DataRecord;
    :cond_3
    new-instance v3, Ljava/lang/InternalError;

    #@1aa
    new-instance v4, Ljava/lang/StringBuilder;

    #@1ac
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1af
    const-string/jumbo v5, "null data read while reading "

    #@1b2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v4

    #@1b6
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v4

    #@1ba
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bd
    move-result-object v4

    #@1be
    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@1c1
    throw v3
.end method


# virtual methods
.method public write(Landroid/icu/impl/duration/impl/RecordWriter;)V
    .locals 4
    .param p1, "out"    # Landroid/icu/impl/duration/impl/RecordWriter;

    #@0
    .prologue
    .line 125
    const-string/jumbo v1, "DataRecord"

    #@3
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->open(Ljava/lang/String;)Z

    #@6
    .line 126
    const-string/jumbo v1, "pl"

    #@9
    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EPluralization;->names:[Ljava/lang/String;

    #@b
    iget-byte v3, p0, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    #@d
    invoke-interface {p1, v1, v2, v3}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    #@10
    .line 127
    const-string/jumbo v1, "pluralName"

    #@13
    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    #@15
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringTable(Ljava/lang/String;[[Ljava/lang/String;)V

    #@18
    .line 128
    const-string/jumbo v1, "gender"

    #@1b
    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EGender;->names:[Ljava/lang/String;

    #@1d
    iget-object v3, p0, Landroid/icu/impl/duration/impl/DataRecord;->genders:[B

    #@1f
    invoke-interface {p1, v1, v2, v3}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;[B)V

    #@22
    .line 129
    const-string/jumbo v1, "singularName"

    #@25
    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->singularNames:[Ljava/lang/String;

    #@27
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@2a
    .line 130
    const-string/jumbo v1, "halfName"

    #@2d
    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    #@2f
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@32
    .line 131
    const-string/jumbo v1, "numberName"

    #@35
    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;

    #@37
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@3a
    .line 132
    const-string/jumbo v1, "mediumName"

    #@3d
    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->mediumNames:[Ljava/lang/String;

    #@3f
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@42
    .line 133
    const-string/jumbo v1, "shortName"

    #@45
    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->shortNames:[Ljava/lang/String;

    #@47
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@4a
    .line 134
    const-string/jumbo v1, "measure"

    #@4d
    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    #@4f
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@52
    .line 135
    const-string/jumbo v1, "rqdSuffix"

    #@55
    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;

    #@57
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@5a
    .line 136
    const-string/jumbo v1, "optSuffix"

    #@5d
    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;

    #@5f
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@62
    .line 137
    const-string/jumbo v1, "halves"

    #@65
    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;

    #@67
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@6a
    .line 138
    const-string/jumbo v1, "halfPlacement"

    #@6d
    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EHalfPlacement;->names:[Ljava/lang/String;

    #@6f
    .line 139
    iget-object v3, p0, Landroid/icu/impl/duration/impl/DataRecord;->halfPlacements:[B

    #@71
    .line 138
    invoke-interface {p1, v1, v2, v3}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;[B)V

    #@74
    .line 140
    const-string/jumbo v1, "halfSupport"

    #@77
    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EHalfSupport;->names:[Ljava/lang/String;

    #@79
    iget-object v3, p0, Landroid/icu/impl/duration/impl/DataRecord;->halfSupport:[B

    #@7b
    invoke-interface {p1, v1, v2, v3}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;[B)V

    #@7e
    .line 141
    const-string/jumbo v1, "fifteenMinutes"

    #@81
    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;

    #@83
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    #@86
    .line 142
    const-string/jumbo v1, "fiveMinutes"

    #@89
    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;

    #@8b
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    #@8e
    .line 143
    const-string/jumbo v1, "requiresDigitSeparator"

    #@91
    iget-boolean v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    #@93
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    #@96
    .line 144
    const-string/jumbo v1, "digitPrefix"

    #@99
    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->digitPrefix:Ljava/lang/String;

    #@9b
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    #@9e
    .line 145
    const-string/jumbo v1, "countSep"

    #@a1
    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;

    #@a3
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    #@a6
    .line 146
    const-string/jumbo v1, "shortUnitSep"

    #@a9
    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->shortUnitSep:Ljava/lang/String;

    #@ab
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    #@ae
    .line 147
    const-string/jumbo v1, "unitSep"

    #@b1
    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;

    #@b3
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@b6
    .line 148
    const-string/jumbo v1, "unitSepRequiresDP"

    #@b9
    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->unitSepRequiresDP:[Z

    #@bb
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->boolArray(Ljava/lang/String;[Z)V

    #@be
    .line 149
    const-string/jumbo v1, "requiresSkipMarker"

    #@c1
    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->requiresSkipMarker:[Z

    #@c3
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->boolArray(Ljava/lang/String;[Z)V

    #@c6
    .line 150
    const-string/jumbo v1, "numberSystem"

    #@c9
    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$ENumberSystem;->names:[Ljava/lang/String;

    #@cb
    iget-byte v3, p0, Landroid/icu/impl/duration/impl/DataRecord;->numberSystem:B

    #@cd
    invoke-interface {p1, v1, v2, v3}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    #@d0
    .line 151
    const-string/jumbo v1, "zero"

    #@d3
    iget-char v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->zero:C

    #@d5
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->character(Ljava/lang/String;C)V

    #@d8
    .line 152
    const-string/jumbo v1, "decimalSep"

    #@db
    iget-char v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->decimalSep:C

    #@dd
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->character(Ljava/lang/String;C)V

    #@e0
    .line 153
    const-string/jumbo v1, "omitSingularCount"

    #@e3
    iget-boolean v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->omitSingularCount:Z

    #@e5
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    #@e8
    .line 154
    const-string/jumbo v1, "omitDualCount"

    #@eb
    iget-boolean v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->omitDualCount:Z

    #@ed
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    #@f0
    .line 155
    const-string/jumbo v1, "zeroHandling"

    #@f3
    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EZeroHandling;->names:[Ljava/lang/String;

    #@f5
    iget-byte v3, p0, Landroid/icu/impl/duration/impl/DataRecord;->zeroHandling:B

    #@f7
    invoke-interface {p1, v1, v2, v3}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    #@fa
    .line 156
    const-string/jumbo v1, "decimalHandling"

    #@fd
    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EDecimalHandling;->names:[Ljava/lang/String;

    #@ff
    .line 157
    iget-byte v3, p0, Landroid/icu/impl/duration/impl/DataRecord;->decimalHandling:B

    #@101
    .line 156
    invoke-interface {p1, v1, v2, v3}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    #@104
    .line 158
    const-string/jumbo v1, "fractionHandling"

    #@107
    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EFractionHandling;->names:[Ljava/lang/String;

    #@109
    .line 159
    iget-byte v3, p0, Landroid/icu/impl/duration/impl/DataRecord;->fractionHandling:B

    #@10b
    .line 158
    invoke-interface {p1, v1, v2, v3}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    #@10e
    .line 160
    const-string/jumbo v1, "skippedUnitMarker"

    #@111
    iget-object v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    #@113
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    #@116
    .line 161
    const-string/jumbo v1, "allowZero"

    #@119
    iget-boolean v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->allowZero:Z

    #@11b
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    #@11e
    .line 162
    const-string/jumbo v1, "weeksAloneOnly"

    #@121
    iget-boolean v2, p0, Landroid/icu/impl/duration/impl/DataRecord;->weeksAloneOnly:Z

    #@123
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    #@126
    .line 163
    const-string/jumbo v1, "useMilliseconds"

    #@129
    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EMilliSupport;->names:[Ljava/lang/String;

    #@12b
    iget-byte v3, p0, Landroid/icu/impl/duration/impl/DataRecord;->useMilliseconds:B

    #@12d
    invoke-interface {p1, v1, v2, v3}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    #@130
    .line 164
    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    #@132
    if-eqz v1, :cond_1

    #@134
    .line 165
    const-string/jumbo v1, "ScopeDataList"

    #@137
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->open(Ljava/lang/String;)Z

    #@13a
    .line 166
    const/4 v0, 0x0

    #@13b
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    #@13d
    array-length v1, v1

    #@13e
    if-ge v0, v1, :cond_0

    #@140
    .line 167
    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    #@142
    aget-object v1, v1, v0

    #@144
    invoke-virtual {v1, p1}, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->write(Landroid/icu/impl/duration/impl/RecordWriter;)V

    #@147
    .line 166
    add-int/lit8 v0, v0, 0x1

    #@149
    goto :goto_0

    #@14a
    .line 169
    :cond_0
    invoke-interface {p1}, Landroid/icu/impl/duration/impl/RecordWriter;->close()Z

    #@14d
    .line 171
    .end local v0    # "i":I
    :cond_1
    invoke-interface {p1}, Landroid/icu/impl/duration/impl/RecordWriter;->close()Z

    #@150
    .line 124
    return-void
.end method
