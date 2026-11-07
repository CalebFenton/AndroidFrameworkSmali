.class public Landroid/icu/impl/duration/impl/DataRecord;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/duration/impl/DataRecord$EPluralization;,
        Landroid/icu/impl/duration/impl/DataRecord$EGender;,
        Landroid/icu/impl/duration/impl/DataRecord$EHalfPlacement;,
        Landroid/icu/impl/duration/impl/DataRecord$EHalfSupport;,
        Landroid/icu/impl/duration/impl/DataRecord$ENumberSystem;,
        Landroid/icu/impl/duration/impl/DataRecord$EZeroHandling;,
        Landroid/icu/impl/duration/impl/DataRecord$EDecimalHandling;,
        Landroid/icu/impl/duration/impl/DataRecord$EFractionHandling;,
        Landroid/icu/impl/duration/impl/DataRecord$EMilliSupport;,
        Landroid/icu/impl/duration/impl/DataRecord$ScopeData;,
        Landroid/icu/impl/duration/impl/DataRecord$ESeparatorVariant;,
        Landroid/icu/impl/duration/impl/DataRecord$ECountVariant;,
        Landroid/icu/impl/duration/impl/DataRecord$EUnitVariant;,
        Landroid/icu/impl/duration/impl/DataRecord$ETimeDirection;,
        Landroid/icu/impl/duration/impl/DataRecord$ETimeLimit;
    }
.end annotation


# instance fields
.field blacklist allowZero:Z

.field blacklist countSep:Ljava/lang/String;

.field blacklist decimalHandling:B

.field blacklist decimalSep:C

.field blacklist digitPrefix:Ljava/lang/String;

.field blacklist fifteenMinutes:Ljava/lang/String;

.field blacklist fiveMinutes:Ljava/lang/String;

.field blacklist fractionHandling:B

.field blacklist genders:[B

.field blacklist halfNames:[Ljava/lang/String;

.field blacklist halfPlacements:[B

.field blacklist halfSupport:[B

.field blacklist halves:[Ljava/lang/String;

.field blacklist measures:[Ljava/lang/String;

.field blacklist mediumNames:[Ljava/lang/String;

.field blacklist numberNames:[Ljava/lang/String;

.field blacklist numberSystem:B

.field blacklist omitDualCount:Z

.field blacklist omitSingularCount:Z

.field blacklist optSuffixes:[Ljava/lang/String;

.field blacklist pl:B

.field blacklist pluralNames:[[Ljava/lang/String;

.field blacklist requiresDigitSeparator:Z

.field blacklist requiresSkipMarker:[Z

.field blacklist rqdSuffixes:[Ljava/lang/String;

.field blacklist scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

.field blacklist shortNames:[Ljava/lang/String;

.field blacklist shortUnitSep:Ljava/lang/String;

.field blacklist singularNames:[Ljava/lang/String;

.field blacklist skippedUnitMarker:Ljava/lang/String;

.field blacklist unitSep:[Ljava/lang/String;

.field blacklist unitSepRequiresDP:[Z

.field blacklist useMilliseconds:B

.field blacklist weeksAloneOnly:Z

.field blacklist zero:C

.field blacklist zeroHandling:B


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist read(Ljava/lang/String;Landroid/icu/impl/duration/impl/RecordReader;)Landroid/icu/impl/duration/impl/DataRecord;
    .registers 6
    .param p0, "ln"    # Ljava/lang/String;
    .param p1, "in"    # Landroid/icu/impl/duration/impl/RecordReader;

    .line 61
    const-string v0, "DataRecord"

    invoke-interface {p1, v0}, Landroid/icu/impl/duration/impl/RecordReader;->open(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_184

    .line 62
    new-instance v0, Landroid/icu/impl/duration/impl/DataRecord;

    invoke-direct {v0}, Landroid/icu/impl/duration/impl/DataRecord;-><init>()V

    .line 63
    .local v0, "record":Landroid/icu/impl/duration/impl/DataRecord;
    const-string v1, "pl"

    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EPluralization;->names:[Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    move-result v1

    iput-byte v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    .line 64
    const-string v1, "pluralName"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringTable(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    .line 65
    const-string v1, "gender"

    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EGender;->names:[Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->genders:[B

    .line 66
    const-string v1, "singularName"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->singularNames:[Ljava/lang/String;

    .line 67
    const-string v1, "halfName"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    .line 68
    const-string v1, "numberName"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;

    .line 69
    const-string v1, "mediumName"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->mediumNames:[Ljava/lang/String;

    .line 70
    const-string v1, "shortName"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->shortNames:[Ljava/lang/String;

    .line 71
    const-string v1, "measure"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    .line 72
    const-string v1, "rqdSuffix"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;

    .line 73
    const-string v1, "optSuffix"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;

    .line 74
    const-string v1, "halves"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;

    .line 75
    const-string v1, "halfPlacement"

    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EHalfPlacement;->names:[Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->halfPlacements:[B

    .line 77
    const-string v1, "halfSupport"

    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EHalfSupport;->names:[Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->halfSupport:[B

    .line 79
    const-string v1, "fifteenMinutes"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;

    .line 80
    const-string v1, "fiveMinutes"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;

    .line 81
    const-string v1, "requiresDigitSeparator"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    .line 82
    const-string v1, "digitPrefix"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->digitPrefix:Ljava/lang/String;

    .line 83
    const-string v1, "countSep"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;

    .line 84
    const-string v1, "shortUnitSep"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->shortUnitSep:Ljava/lang/String;

    .line 85
    const-string v1, "unitSep"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;

    .line 86
    const-string v1, "unitSepRequiresDP"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->boolArray(Ljava/lang/String;)[Z

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->unitSepRequiresDP:[Z

    .line 87
    const-string v1, "requiresSkipMarker"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->boolArray(Ljava/lang/String;)[Z

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->requiresSkipMarker:[Z

    .line 88
    const-string v1, "numberSystem"

    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$ENumberSystem;->names:[Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    move-result v1

    iput-byte v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->numberSystem:B

    .line 90
    const-string v1, "zero"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->character(Ljava/lang/String;)C

    move-result v1

    iput-char v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->zero:C

    .line 91
    const-string v1, "decimalSep"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->character(Ljava/lang/String;)C

    move-result v1

    iput-char v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->decimalSep:C

    .line 92
    const-string v1, "omitSingularCount"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->omitSingularCount:Z

    .line 93
    const-string v1, "omitDualCount"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->omitDualCount:Z

    .line 94
    const-string v1, "zeroHandling"

    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EZeroHandling;->names:[Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    move-result v1

    iput-byte v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->zeroHandling:B

    .line 96
    const-string v1, "decimalHandling"

    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EDecimalHandling;->names:[Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    move-result v1

    iput-byte v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->decimalHandling:B

    .line 98
    const-string v1, "fractionHandling"

    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EFractionHandling;->names:[Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    move-result v1

    iput-byte v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->fractionHandling:B

    .line 100
    const-string v1, "skippedUnitMarker"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    .line 101
    const-string v1, "allowZero"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->allowZero:Z

    .line 102
    const-string v1, "weeksAloneOnly"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->weeksAloneOnly:Z

    .line 103
    const-string v1, "useMilliseconds"

    sget-object v2, Landroid/icu/impl/duration/impl/DataRecord$EMilliSupport;->names:[Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    move-result v1

    iput-byte v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->useMilliseconds:B

    .line 105
    const-string v1, "ScopeDataList"

    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->open(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_163

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/duration/impl/DataRecord$ScopeData;>;"
    :goto_144
    invoke-static {p1}, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->read(Landroid/icu/impl/duration/impl/RecordReader;)Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    move-result-object v2

    move-object v3, v2

    .local v3, "data":Landroid/icu/impl/duration/impl/DataRecord$ScopeData;
    if-eqz v2, :cond_14f

    .line 109
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_144

    .line 111
    :cond_14f
    invoke-interface {p1}, Landroid/icu/impl/duration/impl/RecordReader;->close()Z

    move-result v2

    if-eqz v2, :cond_163

    .line 112
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    iput-object v2, v0, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    .line 116
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/duration/impl/DataRecord$ScopeData;>;"
    .end local v3    # "data":Landroid/icu/impl/duration/impl/DataRecord$ScopeData;
    :cond_163
    invoke-interface {p1}, Landroid/icu/impl/duration/impl/RecordReader;->close()Z

    move-result v1

    if-eqz v1, :cond_16a

    .line 117
    return-object v0

    .line 119
    .end local v0    # "record":Landroid/icu/impl/duration/impl/DataRecord;
    :cond_16a
    nop

    .line 123
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null data read while reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_184
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "did not find DataRecord while reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist write(Landroid/icu/impl/duration/impl/RecordWriter;)V
    .registers 5
    .param p1, "out"    # Landroid/icu/impl/duration/impl/RecordWriter;

    .line 129
    const-string v0, "DataRecord"

    invoke-interface {p1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->open(Ljava/lang/String;)Z

    .line 130
    sget-object v0, Landroid/icu/impl/duration/impl/DataRecord$EPluralization;->names:[Ljava/lang/String;

    iget-byte v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    const-string v2, "pl"

    invoke-interface {p1, v2, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 131
    const-string v0, "pluralName"

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->stringTable(Ljava/lang/String;[[Ljava/lang/String;)V

    .line 132
    sget-object v0, Landroid/icu/impl/duration/impl/DataRecord$EGender;->names:[Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->genders:[B

    const-string v2, "gender"

    invoke-interface {p1, v2, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;[B)V

    .line 133
    const-string v0, "singularName"

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->singularNames:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 134
    const-string v0, "halfName"

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 135
    const-string v0, "numberName"

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 136
    const-string v0, "mediumName"

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->mediumNames:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 137
    const-string v0, "shortName"

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->shortNames:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 138
    const-string v0, "measure"

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 139
    const-string v0, "rqdSuffix"

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 140
    const-string v0, "optSuffix"

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 141
    const-string v0, "halves"

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 142
    sget-object v0, Landroid/icu/impl/duration/impl/DataRecord$EHalfPlacement;->names:[Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->halfPlacements:[B

    const-string v2, "halfPlacement"

    invoke-interface {p1, v2, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;[B)V

    .line 144
    sget-object v0, Landroid/icu/impl/duration/impl/DataRecord$EHalfSupport;->names:[Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->halfSupport:[B

    const-string v2, "halfSupport"

    invoke-interface {p1, v2, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;[B)V

    .line 145
    const-string v0, "fifteenMinutes"

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "fiveMinutes"

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "requiresDigitSeparator"

    iget-boolean v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    .line 148
    const-string v0, "digitPrefix"

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->digitPrefix:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "countSep"

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "shortUnitSep"

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->shortUnitSep:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "unitSep"

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 152
    const-string v0, "unitSepRequiresDP"

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->unitSepRequiresDP:[Z

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->boolArray(Ljava/lang/String;[Z)V

    .line 153
    const-string v0, "requiresSkipMarker"

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->requiresSkipMarker:[Z

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->boolArray(Ljava/lang/String;[Z)V

    .line 154
    sget-object v0, Landroid/icu/impl/duration/impl/DataRecord$ENumberSystem;->names:[Ljava/lang/String;

    iget-byte v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->numberSystem:B

    const-string v2, "numberSystem"

    invoke-interface {p1, v2, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 155
    const-string v0, "zero"

    iget-char v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->zero:C

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->character(Ljava/lang/String;C)V

    .line 156
    const-string v0, "decimalSep"

    iget-char v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->decimalSep:C

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->character(Ljava/lang/String;C)V

    .line 157
    const-string v0, "omitSingularCount"

    iget-boolean v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->omitSingularCount:Z

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    .line 158
    const-string v0, "omitDualCount"

    iget-boolean v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->omitDualCount:Z

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    .line 159
    sget-object v0, Landroid/icu/impl/duration/impl/DataRecord$EZeroHandling;->names:[Ljava/lang/String;

    iget-byte v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->zeroHandling:B

    const-string v2, "zeroHandling"

    invoke-interface {p1, v2, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 160
    sget-object v0, Landroid/icu/impl/duration/impl/DataRecord$EDecimalHandling;->names:[Ljava/lang/String;

    iget-byte v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->decimalHandling:B

    const-string v2, "decimalHandling"

    invoke-interface {p1, v2, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 162
    sget-object v0, Landroid/icu/impl/duration/impl/DataRecord$EFractionHandling;->names:[Ljava/lang/String;

    iget-byte v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->fractionHandling:B

    const-string v2, "fractionHandling"

    invoke-interface {p1, v2, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 164
    const-string v0, "skippedUnitMarker"

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "allowZero"

    iget-boolean v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->allowZero:Z

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    .line 166
    const-string v0, "weeksAloneOnly"

    iget-boolean v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->weeksAloneOnly:Z

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    .line 167
    sget-object v0, Landroid/icu/impl/duration/impl/DataRecord$EMilliSupport;->names:[Ljava/lang/String;

    iget-byte v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->useMilliseconds:B

    const-string v2, "useMilliseconds"

    invoke-interface {p1, v2, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 168
    iget-object v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    if-eqz v0, :cond_128

    .line 169
    const-string v0, "ScopeDataList"

    invoke-interface {p1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->open(Ljava/lang/String;)Z

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_116
    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    array-length v1, v1

    if-ge v0, v1, :cond_125

    .line 171
    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->write(Landroid/icu/impl/duration/impl/RecordWriter;)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_116

    .line 173
    .end local v0    # "i":I
    :cond_125
    invoke-interface {p1}, Landroid/icu/impl/duration/impl/RecordWriter;->close()Z

    .line 175
    :cond_128
    invoke-interface {p1}, Landroid/icu/impl/duration/impl/RecordWriter;->close()Z

    .line 176
    return-void
.end method
