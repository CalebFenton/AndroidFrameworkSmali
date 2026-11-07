.class public Landroid/icu/impl/number/CompactData;
.super Ljava/lang/Object;
.source "CompactData.java"

# interfaces
.implements Landroid/icu/impl/number/MultiplierProducer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/number/CompactData$CompactDataSink;,
        Landroid/icu/impl/number/CompactData$CompactType;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o COMPACT_MAX_DIGITS:I = 0x14

.field private static final greylist-max-o USE_FALLBACK:Ljava/lang/String; = "<USE FALLBACK>"


# instance fields
.field private greylist-max-o isEmpty:Z

.field private greylist-max-o largestMagnitude:B

.field private final greylist-max-o multipliers:[B

.field private final greylist-max-o patterns:[Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetlargestMagnitude(Landroid/icu/impl/number/CompactData;)B
    .registers 1

    iget-byte p0, p0, Landroid/icu/impl/number/CompactData;->largestMagnitude:B

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmultipliers(Landroid/icu/impl/number/CompactData;)[B
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/number/CompactData;->multipliers:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpatterns(Landroid/icu/impl/number/CompactData;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputisEmpty(Landroid/icu/impl/number/CompactData;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/icu/impl/number/CompactData;->isEmpty:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputlargestMagnitude(Landroid/icu/impl/number/CompactData;B)V
    .registers 2

    iput-byte p1, p0, Landroid/icu/impl/number/CompactData;->largestMagnitude:B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcountZeros(Ljava/lang/String;)I
    .registers 1

    invoke-static {p0}, Landroid/icu/impl/number/CompactData;->countZeros(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetIndex(ILandroid/icu/impl/StandardPlural;)I
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/impl/number/CompactData;->getIndex(ILandroid/icu/impl/StandardPlural;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 24
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    const/16 v1, 0x15

    mul-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    .line 46
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/icu/impl/number/CompactData;->multipliers:[B

    .line 47
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/icu/impl/number/CompactData;->largestMagnitude:B

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/number/CompactData;->isEmpty:Z

    .line 49
    return-void
.end method

.method private static final greylist-max-o countZeros(Ljava/lang/String;)I
    .registers 5
    .param p0, "patternString"    # Ljava/lang/String;

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "numZeros":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 251
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_13

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 253
    :cond_13
    if-lez v0, :cond_16

    .line 254
    goto :goto_19

    .line 250
    :cond_16
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 257
    .end local v1    # "i":I
    :cond_19
    :goto_19
    return v0
.end method

.method private static final greylist-max-o getIndex(ILandroid/icu/impl/StandardPlural;)I
    .registers 4
    .param p0, "magnitude"    # I
    .param p1, "plural"    # Landroid/icu/impl/StandardPlural;

    .line 243
    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    mul-int/2addr v0, p0

    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static greylist-max-o getResourceBundleKey(Ljava/lang/String;Landroid/icu/text/CompactDecimalFormat$CompactStyle;Landroid/icu/impl/number/CompactData$CompactType;Ljava/lang/StringBuilder;)V
    .registers 5
    .param p0, "nsName"    # Ljava/lang/String;
    .param p1, "compactStyle"    # Landroid/icu/text/CompactDecimalFormat$CompactStyle;
    .param p2, "compactType"    # Landroid/icu/impl/number/CompactData$CompactType;
    .param p3, "sb"    # Ljava/lang/StringBuilder;

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 94
    const-string v0, "NumberElements/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    sget-object v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    if-ne p1, v0, :cond_13

    const-string v0, "/patternsShort"

    goto :goto_15

    :cond_13
    const-string v0, "/patternsLong"

    :goto_15
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    sget-object v0, Landroid/icu/impl/number/CompactData$CompactType;->DECIMAL:Landroid/icu/impl/number/CompactData$CompactType;

    if-ne p2, v0, :cond_1f

    const-string v0, "/decimalFormat"

    goto :goto_21

    :cond_1f
    const-string v0, "/currencyFormat"

    :goto_21
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    return-void
.end method


# virtual methods
.method public blacklist getMultiplier(I)I
    .registers 3
    .param p1, "magnitude"    # I

    .line 126
    if-gez p1, :cond_4

    .line 127
    const/4 v0, 0x0

    return v0

    .line 129
    :cond_4
    iget-byte v0, p0, Landroid/icu/impl/number/CompactData;->largestMagnitude:B

    if-le p1, v0, :cond_a

    .line 130
    iget-byte p1, p0, Landroid/icu/impl/number/CompactData;->largestMagnitude:B

    .line 132
    :cond_a
    iget-object v0, p0, Landroid/icu/impl/number/CompactData;->multipliers:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public blacklist getPattern(ILandroid/icu/text/PluralRules;Landroid/icu/impl/number/DecimalQuantity;)Ljava/lang/String;
    .registers 9
    .param p1, "magnitude"    # I
    .param p2, "rules"    # Landroid/icu/text/PluralRules;
    .param p3, "dq"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 136
    if-gez p1, :cond_4

    .line 137
    const/4 v0, 0x0

    return-object v0

    .line 139
    :cond_4
    iget-byte v0, p0, Landroid/icu/impl/number/CompactData;->largestMagnitude:B

    if-le p1, v0, :cond_a

    .line 140
    iget-byte p1, p0, Landroid/icu/impl/number/CompactData;->largestMagnitude:B

    .line 142
    :cond_a
    const/4 v0, 0x0

    .line 143
    .local v0, "patternString":Ljava/lang/String;
    invoke-interface {p3}, Landroid/icu/impl/number/DecimalQuantity;->isHasIntegerValue()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 144
    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/icu/impl/number/DecimalQuantity;->toLong(Z)J

    move-result-wide v1

    .line 145
    .local v1, "i":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_27

    .line 146
    iget-object v3, p0, Landroid/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    sget-object v4, Landroid/icu/impl/StandardPlural;->EQ_0:Landroid/icu/impl/StandardPlural;

    invoke-static {p1, v4}, Landroid/icu/impl/number/CompactData;->getIndex(ILandroid/icu/impl/StandardPlural;)I

    move-result v4

    aget-object v0, v3, v4

    goto :goto_37

    .line 147
    :cond_27
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_37

    .line 148
    iget-object v3, p0, Landroid/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    sget-object v4, Landroid/icu/impl/StandardPlural;->EQ_1:Landroid/icu/impl/StandardPlural;

    invoke-static {p1, v4}, Landroid/icu/impl/number/CompactData;->getIndex(ILandroid/icu/impl/StandardPlural;)I

    move-result v4

    aget-object v0, v3, v4

    .line 150
    :cond_37
    :goto_37
    if-eqz v0, :cond_3a

    .line 151
    return-object v0

    .line 154
    .end local v1    # "i":J
    :cond_3a
    invoke-interface {p3, p2}, Landroid/icu/impl/number/DecimalQuantity;->getStandardPlural(Landroid/icu/text/PluralRules;)Landroid/icu/impl/StandardPlural;

    move-result-object v1

    .line 155
    .local v1, "plural":Landroid/icu/impl/StandardPlural;
    iget-object v2, p0, Landroid/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/icu/impl/number/CompactData;->getIndex(ILandroid/icu/impl/StandardPlural;)I

    move-result v3

    aget-object v0, v2, v3

    .line 156
    if-nez v0, :cond_56

    sget-object v2, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    if-eq v1, v2, :cond_56

    .line 158
    iget-object v2, p0, Landroid/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    sget-object v3, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-static {p1, v3}, Landroid/icu/impl/number/CompactData;->getIndex(ILandroid/icu/impl/StandardPlural;)I

    move-result v3

    aget-object v0, v2, v3

    .line 160
    :cond_56
    const-string v2, "<USE FALLBACK>"

    if-ne v0, v2, :cond_5b

    .line 162
    const/4 v0, 0x0

    .line 164
    :cond_5b
    return-object v0
.end method

.method public blacklist getUniquePatterns(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p1, "output":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 171
    iget-object v0, p0, Landroid/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 172
    const-string v0, "<USE FALLBACK>"

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 173
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method public blacklist populate(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/CompactDecimalFormat$CompactStyle;Landroid/icu/impl/number/CompactData$CompactType;)V
    .registers 13
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "nsName"    # Ljava/lang/String;
    .param p3, "compactStyle"    # Landroid/icu/text/CompactDecimalFormat$CompactStyle;
    .param p4, "compactType"    # Landroid/icu/impl/number/CompactData$CompactType;

    .line 56
    nop

    .line 57
    new-instance v0, Landroid/icu/impl/number/CompactData$CompactDataSink;

    invoke-direct {v0, p0}, Landroid/icu/impl/number/CompactData$CompactDataSink;-><init>(Landroid/icu/impl/number/CompactData;)V

    .line 58
    .local v0, "sink":Landroid/icu/impl/number/CompactData$CompactDataSink;
    nop

    .line 59
    const-string v1, "android/icu/impl/data/icudata"

    invoke-static {v1, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 61
    .local v1, "rb":Landroid/icu/impl/ICUResourceBundle;
    const-string v2, "latn"

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 62
    .local v3, "nsIsLatn":Z
    sget-object v4, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    if-ne p3, v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    .line 65
    .local v4, "compactIsShort":Z
    :goto_1c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v5, "resourceKey":Ljava/lang/StringBuilder;
    invoke-static {p2, p3, p4, v5}, Landroid/icu/impl/number/CompactData;->getResourceBundleKey(Ljava/lang/String;Landroid/icu/text/CompactDecimalFormat$CompactStyle;Landroid/icu/impl/number/CompactData$CompactType;Ljava/lang/StringBuilder;)V

    .line 67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallbackNoFail(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 68
    iget-boolean v6, p0, Landroid/icu/impl/number/CompactData;->isEmpty:Z

    if-eqz v6, :cond_3b

    if-nez v3, :cond_3b

    .line 69
    invoke-static {v2, p3, p4, v5}, Landroid/icu/impl/number/CompactData;->getResourceBundleKey(Ljava/lang/String;Landroid/icu/text/CompactDecimalFormat$CompactStyle;Landroid/icu/impl/number/CompactData$CompactType;Ljava/lang/StringBuilder;)V

    .line 70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallbackNoFail(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 72
    :cond_3b
    iget-boolean v6, p0, Landroid/icu/impl/number/CompactData;->isEmpty:Z

    if-eqz v6, :cond_4d

    if-nez v4, :cond_4d

    .line 73
    sget-object v6, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-static {p2, v6, p4, v5}, Landroid/icu/impl/number/CompactData;->getResourceBundleKey(Ljava/lang/String;Landroid/icu/text/CompactDecimalFormat$CompactStyle;Landroid/icu/impl/number/CompactData$CompactType;Ljava/lang/StringBuilder;)V

    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallbackNoFail(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 76
    :cond_4d
    iget-boolean v6, p0, Landroid/icu/impl/number/CompactData;->isEmpty:Z

    if-eqz v6, :cond_61

    if-nez v3, :cond_61

    if-nez v4, :cond_61

    .line 77
    sget-object v6, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-static {v2, v6, p4, v5}, Landroid/icu/impl/number/CompactData;->getResourceBundleKey(Ljava/lang/String;Landroid/icu/text/CompactDecimalFormat$CompactStyle;Landroid/icu/impl/number/CompactData$CompactType;Ljava/lang/StringBuilder;)V

    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallbackNoFail(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 82
    :cond_61
    iget-boolean v2, p0, Landroid/icu/impl/number/CompactData;->isEmpty:Z

    if-nez v2, :cond_66

    .line 85
    return-void

    .line 83
    :cond_66
    new-instance v2, Landroid/icu/util/ICUException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not load compact decimal data for locale "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist populate(Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 102
    .local p1, "powersToPluralsToPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    nop

    .line 103
    nop

    .line 104
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 105
    .local v1, "magnitudeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    .line 106
    .local v2, "magnitude":B
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 107
    .local v4, "pluralEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "pluralString":Ljava/lang/String;
    invoke-static {v5}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v6

    .line 109
    .local v6, "plural":Landroid/icu/impl/StandardPlural;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, "patternString":Ljava/lang/String;
    iget-object v8, p0, Landroid/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    invoke-static {v2, v6}, Landroid/icu/impl/number/CompactData;->getIndex(ILandroid/icu/impl/StandardPlural;)I

    move-result v9

    aput-object v7, v8, v9

    .line 111
    invoke-static {v7}, Landroid/icu/impl/number/CompactData;->countZeros(Ljava/lang/String;)I

    move-result v8

    .line 112
    .local v8, "numZeros":I
    if-lez v8, :cond_75

    .line 114
    iget-object v9, p0, Landroid/icu/impl/number/CompactData;->multipliers:[B

    sub-int v10, v8, v2

    add-int/lit8 v10, v10, -0x1

    int-to-byte v10, v10

    aput-byte v10, v9, v2

    .line 115
    iget-byte v9, p0, Landroid/icu/impl/number/CompactData;->largestMagnitude:B

    if-le v2, v9, :cond_72

    .line 116
    iput-byte v2, p0, Landroid/icu/impl/number/CompactData;->largestMagnitude:B

    .line 118
    :cond_72
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/icu/impl/number/CompactData;->isEmpty:Z

    .line 120
    .end local v4    # "pluralEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "pluralString":Ljava/lang/String;
    .end local v6    # "plural":Landroid/icu/impl/StandardPlural;
    .end local v7    # "patternString":Ljava/lang/String;
    .end local v8    # "numZeros":I
    :cond_75
    goto :goto_31

    .line 121
    .end local v1    # "magnitudeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "magnitude":B
    :cond_76
    goto :goto_a

    .line 122
    :cond_77
    return-void
.end method
