.class Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateTimeMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
        ">;"
    }
.end annotation


# instance fields
.field private baseOriginal:[Ljava/lang/String;

.field private original:[Ljava/lang/String;

.field private type:[I


# direct methods
.method static synthetic -get0(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)[I
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    #@2
    return-object v0
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x10

    #@2
    .line 2033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2035
    new-array v0, v1, [I

    #@7
    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    #@9
    .line 2036
    new-array v0, v1, [Ljava/lang/String;

    #@b
    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@d
    .line 2037
    new-array v0, v1, [Ljava/lang/String;

    #@f
    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:[Ljava/lang/String;

    #@11
    .line 2033
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)I
    .locals 5
    .param p1, "that"    # Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2179
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@4
    array-length v2, v2

    #@5
    if-ge v1, v2, :cond_1

    #@7
    .line 2180
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@9
    aget-object v2, v2, v1

    #@b
    iget-object v3, p1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@d
    aget-object v3, v3, v1

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@12
    move-result v0

    #@13
    .line 2181
    .local v0, "comp":I
    if-eqz v0, :cond_0

    #@15
    neg-int v2, v0

    #@16
    return v2

    #@17
    .line 2179
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 2183
    .end local v0    # "comp":I
    :cond_1
    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2178
    check-cast p1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@2
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->compareTo(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2187
    instance-of v2, p1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 2188
    return v4

    #@6
    :cond_0
    move-object v1, p1

    #@7
    .line 2190
    check-cast v1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@9
    .line 2191
    .local v1, "that":Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@c
    array-length v2, v2

    #@d
    if-ge v0, v2, :cond_2

    #@f
    .line 2192
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@11
    aget-object v2, v2, v0

    #@13
    iget-object v3, v1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@15
    aget-object v3, v3, v0

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_1

    #@1d
    return v4

    #@1e
    .line 2191
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 2194
    :cond_2
    const/4 v2, 0x1

    #@22
    return v2
.end method

.method extractFrom(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)V
    .locals 4
    .param p1, "source"    # Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .param p2, "fieldMask"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2147
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_1

    #@7
    .line 2148
    const/4 v1, 0x1

    #@8
    shl-int/2addr v1, v0

    #@9
    and-int/2addr v1, p2

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 2149
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    #@e
    iget-object v2, p1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    #@10
    aget v2, v2, v0

    #@12
    aput v2, v1, v0

    #@14
    .line 2150
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@16
    iget-object v2, p1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@18
    aget-object v2, v2, v0

    #@1a
    aput-object v2, v1, v0

    #@1c
    .line 2147
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 2152
    :cond_0
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    #@21
    aput v3, v1, v0

    #@23
    .line 2153
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@25
    const-string/jumbo v2, ""

    #@28
    aput-object v2, v1, v0

    #@2a
    goto :goto_1

    #@2b
    .line 2146
    :cond_1
    return-void
.end method

.method public fieldIsNumeric(I)Z
    .locals 2
    .param p1, "field"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2047
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    #@3
    aget v1, v1, p1

    #@5
    if-lez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method getBasePattern()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 2081
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 2082
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    const/16 v2, 0x10

    #@8
    if-ge v0, v2, :cond_1

    #@a
    .line 2083
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:[Ljava/lang/String;

    #@c
    aget-object v2, v2, v0

    #@e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:[Ljava/lang/String;

    #@16
    aget-object v2, v2, v0

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 2082
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2085
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    return-object v2
.end method

.method getDistance(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;)I
    .locals 5
    .param p1, "other"    # Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .param p2, "includeMask"    # I
    .param p3, "distanceInfo"    # Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    #@0
    .prologue
    .line 2159
    const/4 v3, 0x0

    #@1
    .line 2160
    .local v3, "result":I
    invoke-virtual {p3}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->clear()V

    #@4
    .line 2161
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    #@7
    array-length v4, v4

    #@8
    if-ge v0, v4, :cond_4

    #@a
    .line 2162
    const/4 v4, 0x1

    #@b
    shl-int/2addr v4, v0

    #@c
    and-int/2addr v4, p2

    #@d
    if-nez v4, :cond_0

    #@f
    const/4 v1, 0x0

    #@10
    .line 2163
    .local v1, "myType":I
    :goto_1
    iget-object v4, p1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    #@12
    aget v2, v4, v0

    #@14
    .line 2164
    .local v2, "otherType":I
    if-ne v1, v2, :cond_1

    #@16
    .line 2161
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 2162
    .end local v1    # "myType":I
    .end local v2    # "otherType":I
    :cond_0
    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    #@1b
    aget v1, v4, v0

    #@1d
    .restart local v1    # "myType":I
    goto :goto_1

    #@1e
    .line 2165
    .restart local v2    # "otherType":I
    :cond_1
    if-nez v1, :cond_2

    #@20
    .line 2166
    const/high16 v4, 0x10000

    #@22
    add-int/2addr v3, v4

    #@23
    .line 2167
    invoke-virtual {p3, v0}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->addExtra(I)V

    #@26
    goto :goto_2

    #@27
    .line 2168
    :cond_2
    if-nez v2, :cond_3

    #@29
    .line 2169
    add-int/lit16 v3, v3, 0x1000

    #@2b
    .line 2170
    invoke-virtual {p3, v0}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->addMissing(I)V

    #@2e
    goto :goto_2

    #@2f
    .line 2172
    :cond_3
    sub-int v4, v1, v2

    #@31
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@34
    move-result v4

    #@35
    add-int/2addr v3, v4

    #@36
    goto :goto_2

    #@37
    .line 2175
    .end local v1    # "myType":I
    .end local v2    # "otherType":I
    :cond_4
    return v3
.end method

.method getFieldMask()I
    .locals 3

    #@0
    .prologue
    .line 2135
    const/4 v1, 0x0

    #@1
    .line 2136
    .local v1, "result":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    #@4
    array-length v2, v2

    #@5
    if-ge v0, v2, :cond_1

    #@7
    .line 2137
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    #@9
    aget v2, v2, v0

    #@b
    if-eqz v2, :cond_0

    #@d
    const/4 v2, 0x1

    #@e
    shl-int/2addr v2, v0

    #@f
    or-int/2addr v1, v2

    #@10
    .line 2136
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 2139
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 2197
    const/4 v1, 0x0

    #@1
    .line 2198
    .local v1, "result":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@4
    array-length v2, v2

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 2199
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@9
    aget-object v2, v2, v0

    #@b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@e
    move-result v2

    #@f
    xor-int/2addr v1, v2

    #@10
    .line 2198
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 2201
    :cond_0
    return v1
.end method

.method public origStringForField(I)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 2043
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .locals 16
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "fp"    # Landroid/icu/text/DateTimePatternGenerator$FormatParser;
    .param p3, "allowDuplicateFields"    # Z

    #@0
    .prologue
    .line 2089
    const/4 v4, 0x0

    #@1
    .local v4, "i":I
    :goto_0
    const/16 v13, 0x10

    #@3
    if-ge v4, v13, :cond_0

    #@5
    .line 2090
    move-object/from16 v0, p0

    #@7
    iget-object v13, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    #@9
    const/4 v14, 0x0

    #@a
    aput v14, v13, v4

    #@c
    .line 2091
    move-object/from16 v0, p0

    #@e
    iget-object v13, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@10
    const-string/jumbo v14, ""

    #@13
    aput-object v14, v13, v4

    #@15
    .line 2092
    move-object/from16 v0, p0

    #@17
    iget-object v13, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:[Ljava/lang/String;

    #@19
    const-string/jumbo v14, ""

    #@1c
    aput-object v14, v13, v4

    #@1e
    .line 2089
    add-int/lit8 v4, v4, 0x1

    #@20
    goto :goto_0

    #@21
    .line 2094
    :cond_0
    move-object/from16 v0, p2

    #@23
    move-object/from16 v1, p1

    #@25
    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@28
    .line 2095
    invoke-virtual/range {p2 .. p2}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    #@2b
    move-result-object v13

    #@2c
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v7

    #@30
    .local v7, "obj$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v13

    #@34
    if-eqz v13, :cond_7

    #@36
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v6

    #@3a
    .line 2096
    .local v6, "obj":Ljava/lang/Object;
    instance-of v13, v6, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    #@3c
    if-eqz v13, :cond_1

    #@3e
    move-object v5, v6

    #@3f
    .line 2099
    check-cast v5, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    #@41
    .line 2100
    .local v5, "item":Landroid/icu/text/DateTimePatternGenerator$VariableField;
    invoke-virtual {v5}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->toString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    .line 2101
    .local v3, "field":Ljava/lang/String;
    const/4 v13, 0x0

    #@46
    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    #@49
    move-result v13

    #@4a
    const/16 v14, 0x61

    #@4c
    if-eq v13, v14, :cond_1

    #@4e
    .line 2102
    invoke-static {v5}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->-wrap0(Landroid/icu/text/DateTimePatternGenerator$VariableField;)I

    #@51
    move-result v2

    #@52
    .line 2107
    .local v2, "canonicalIndex":I
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-get1()[[I

    #@55
    move-result-object v13

    #@56
    aget-object v10, v13, v2

    #@58
    .line 2108
    .local v10, "row":[I
    const/4 v13, 0x1

    #@59
    aget v12, v10, v13

    #@5b
    .line 2109
    .local v12, "typeValue":I
    move-object/from16 v0, p0

    #@5d
    iget-object v13, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@5f
    aget-object v13, v13, v12

    #@61
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    #@64
    move-result v13

    #@65
    if-eqz v13, :cond_4

    #@67
    .line 2110
    if-nez p3, :cond_1

    #@69
    .line 2111
    move-object/from16 v0, p0

    #@6b
    iget-object v13, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@6d
    aget-object v13, v13, v12

    #@6f
    const/4 v14, 0x0

    #@70
    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    #@73
    move-result v13

    #@74
    const/16 v14, 0x72

    #@76
    if-ne v13, v14, :cond_2

    #@78
    const/4 v13, 0x0

    #@79
    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    #@7c
    move-result v13

    #@7d
    const/16 v14, 0x55

    #@7f
    if-eq v13, v14, :cond_1

    #@81
    .line 2112
    :cond_2
    move-object/from16 v0, p0

    #@83
    iget-object v13, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@85
    aget-object v13, v13, v12

    #@87
    const/4 v14, 0x0

    #@88
    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    #@8b
    move-result v13

    #@8c
    const/16 v14, 0x55

    #@8e
    if-ne v13, v14, :cond_3

    #@90
    const/4 v13, 0x0

    #@91
    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    #@94
    move-result v13

    #@95
    const/16 v14, 0x72

    #@97
    if-eq v13, v14, :cond_1

    #@99
    .line 2115
    :cond_3
    new-instance v13, Ljava/lang/IllegalArgumentException;

    #@9b
    new-instance v14, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v15, "Conflicting fields:\t"

    #@a3
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v14

    #@a7
    .line 2116
    move-object/from16 v0, p0

    #@a9
    iget-object v15, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@ab
    aget-object v15, v15, v12

    #@ad
    .line 2115
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v14

    #@b1
    .line 2116
    const-string/jumbo v15, ", "

    #@b4
    .line 2115
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v14

    #@b8
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v14

    #@bc
    .line 2116
    const-string/jumbo v15, "\t in "

    #@bf
    .line 2115
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v14

    #@c3
    move-object/from16 v0, p1

    #@c5
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v14

    #@c9
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v14

    #@cd
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d0
    throw v13

    #@d1
    .line 2118
    :cond_4
    move-object/from16 v0, p0

    #@d3
    iget-object v13, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@d5
    aput-object v3, v13, v12

    #@d7
    .line 2119
    const/4 v13, 0x0

    #@d8
    aget v13, v10, v13

    #@da
    int-to-char v8, v13

    #@db
    .line 2120
    .local v8, "repeatChar":C
    const/4 v13, 0x3

    #@dc
    aget v9, v10, v13

    #@de
    .line 2122
    .local v9, "repeatCount":I
    const-string/jumbo v13, "GEzvQ"

    #@e1
    invoke-virtual {v13, v8}, Ljava/lang/String;->indexOf(I)I

    #@e4
    move-result v13

    #@e5
    if-ltz v13, :cond_5

    #@e7
    const/4 v9, 0x1

    #@e8
    .line 2123
    :cond_5
    move-object/from16 v0, p0

    #@ea
    iget-object v13, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:[Ljava/lang/String;

    #@ec
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@ef
    move-result-object v14

    #@f0
    invoke-static {v14, v9}, Landroid/icu/impl/Utility;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    #@f3
    move-result-object v14

    #@f4
    aput-object v14, v13, v12

    #@f6
    .line 2124
    const/4 v13, 0x2

    #@f7
    aget v11, v10, v13

    #@f9
    .line 2125
    .local v11, "subTypeValue":I
    if-lez v11, :cond_6

    #@fb
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@fe
    move-result v13

    #@ff
    add-int/2addr v11, v13

    #@100
    .line 2126
    :cond_6
    move-object/from16 v0, p0

    #@102
    iget-object v13, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    #@104
    aput v11, v13, v12

    #@106
    goto/16 :goto_1

    #@108
    .line 2128
    .end local v2    # "canonicalIndex":I
    .end local v3    # "field":Ljava/lang/String;
    .end local v5    # "item":Landroid/icu/text/DateTimePatternGenerator$VariableField;
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v8    # "repeatChar":C
    .end local v9    # "repeatCount":I
    .end local v10    # "row":[I
    .end local v11    # "subTypeValue":I
    .end local v12    # "typeValue":I
    :cond_7
    return-object p0
.end method

.method public toCanonicalString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2062
    new-instance v4, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 2063
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    const/16 v6, 0x10

    #@9
    if-ge v0, v6, :cond_4

    #@b
    .line 2064
    iget-object v6, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@d
    aget-object v6, v6, v0

    #@f
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@12
    move-result v6

    #@13
    if-eqz v6, :cond_1

    #@15
    .line 2066
    const/4 v1, 0x0

    #@16
    .local v1, "j":I
    :goto_1
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-get1()[[I

    #@19
    move-result-object v6

    #@1a
    array-length v6, v6

    #@1b
    if-ge v1, v6, :cond_1

    #@1d
    .line 2067
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-get1()[[I

    #@20
    move-result-object v6

    #@21
    aget-object v5, v6, v1

    #@23
    .line 2068
    .local v5, "row":[I
    const/4 v6, 0x1

    #@24
    aget v6, v5, v6

    #@26
    if-ne v6, v0, :cond_3

    #@28
    .line 2069
    iget-object v6, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@2a
    aget-object v6, v6, v0

    #@2c
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    #@2f
    move-result v2

    #@30
    .line 2070
    .local v2, "originalChar":C
    const/16 v6, 0x68

    #@32
    if-eq v2, v6, :cond_0

    #@34
    const/16 v6, 0x4b

    #@36
    if-ne v2, v6, :cond_2

    #@38
    :cond_0
    const/16 v3, 0x68

    #@3a
    .line 2071
    :goto_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    iget-object v7, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@40
    aget-object v7, v7, v0

    #@42
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@45
    move-result v7

    #@46
    invoke-static {v6, v7}, Landroid/icu/impl/Utility;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 2063
    .end local v1    # "j":I
    .end local v2    # "originalChar":C
    .end local v5    # "row":[I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 2070
    .restart local v1    # "j":I
    .restart local v2    # "originalChar":C
    .restart local v5    # "row":[I
    :cond_2
    aget v6, v5, v8

    #@52
    int-to-char v3, v6

    #@53
    .local v3, "repeatChar":C
    goto :goto_2

    #@54
    .line 2066
    .end local v2    # "originalChar":C
    .end local v3    # "repeatChar":C
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@56
    goto :goto_1

    #@57
    .line 2077
    .end local v1    # "j":I
    .end local v5    # "row":[I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v6

    #@5b
    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 2051
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 2052
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    const/16 v2, 0x10

    #@8
    if-ge v0, v2, :cond_1

    #@a
    .line 2053
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@c
    aget-object v2, v2, v0

    #@e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    #@16
    aget-object v2, v2, v0

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 2052
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2055
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    return-object v2
.end method
