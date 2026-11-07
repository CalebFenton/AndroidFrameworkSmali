.class public final Landroid/graphics/fonts/FontVariationAxis;
.super Ljava/lang/Object;
.source "FontVariationAxis.java"


# static fields
.field private static final greylist-max-o STYLE_VALUE_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o TAG_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final greylist-max-r mStyleValue:F

.field private final greylist-max-p mTag:I

.field private final greylist-max-o mTagString:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 93
    const-string v0, "[ -~]{4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/graphics/fonts/FontVariationAxis;->TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 106
    nop

    .line 107
    const-string v0, "-?(([0-9]+(\\.[0-9]+)?)|(\\.[0-9]+))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/graphics/fonts/FontVariationAxis;->STYLE_VALUE_PATTERN:Ljava/util/regex/Pattern;

    .line 106
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;F)V
    .registers 6
    .param p1, "tagString"    # Ljava/lang/String;
    .param p2, "styleValue"    # F

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->isValidTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 54
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->makeTag(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/graphics/fonts/FontVariationAxis;->mTag:I

    .line 55
    iput-object p1, p0, Landroid/graphics/fonts/FontVariationAxis;->mTagString:Ljava/lang/String;

    .line 56
    iput p2, p0, Landroid/graphics/fonts/FontVariationAxis;->mStyleValue:F

    .line 57
    return-void

    .line 52
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal tag pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;
    .registers 3
    .param p0, "settings"    # Ljava/lang/String;

    .line 144
    invoke-static {p0}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettingsForList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 145
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontVariationAxis;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 146
    const/4 v1, 0x0

    return-object v1

    .line 148
    :cond_c
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/graphics/fonts/FontVariationAxis;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/fonts/FontVariationAxis;

    return-object v1
.end method

.method public static blacklist fromFontVariationSettingsForList(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p0, "settings"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;"
        }
    .end annotation

    .line 154
    if-eqz p0, :cond_a1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_a1

    .line 157
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "axisList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/fonts/FontVariationAxis;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 159
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_95

    .line 160
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 161
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 162
    goto :goto_5b

    .line 164
    :cond_21
    const/16 v4, 0x27

    if-eq v3, v4, :cond_29

    const/16 v4, 0x22

    if-ne v3, v4, :cond_7c

    :cond_29
    add-int/lit8 v4, v2, 0x6

    if-lt v1, v4, :cond_7c

    add-int/lit8 v4, v2, 0x5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_7c

    .line 168
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v2, 0x5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "tagString":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x6

    .line 171
    const/16 v5, 0x2c

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 172
    .local v5, "endOfValueString":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_49

    .line 173
    move v5, v1

    .line 178
    :cond_49
    :try_start_49
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_49 .. :try_end_51} :catch_5e

    .line 182
    .local v6, "value":F
    nop

    .line 183
    new-instance v7, Landroid/graphics/fonts/FontVariationAxis;

    invoke-direct {v7, v4, v6}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    move v2, v5

    .line 159
    .end local v3    # "c":C
    .end local v4    # "tagString":Ljava/lang/String;
    .end local v5    # "endOfValueString":I
    .end local v6    # "value":F
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 179
    .restart local v3    # "c":C
    .restart local v4    # "tagString":Ljava/lang/String;
    .restart local v5    # "endOfValueString":I
    :catch_5e
    move-exception v6

    .line 180
    .local v6, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to parse float string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 181
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 165
    .end local v4    # "tagString":Ljava/lang/String;
    .end local v5    # "endOfValueString":I
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_7c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tag should be wrapped with double or single quote: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 186
    .end local v2    # "i":I
    .end local v3    # "c":C
    :cond_95
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 187
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 189
    :cond_a0
    return-object v0

    .line 155
    .end local v0    # "axisList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/fonts/FontVariationAxis;>;"
    .end local v1    # "length":I
    :cond_a1
    :goto_a1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o isValidTag(Ljava/lang/String;)Z
    .registers 2
    .param p0, "tagString"    # Ljava/lang/String;

    .line 99
    if-eqz p0, :cond_10

    sget-object v0, Landroid/graphics/fonts/FontVariationAxis;->TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static greylist-max-o isValidValueFormat(Ljava/lang/String;)Z
    .registers 2
    .param p0, "valueString"    # Ljava/lang/String;

    .line 110
    if-eqz p0, :cond_10

    sget-object v0, Landroid/graphics/fonts/FontVariationAxis;->STYLE_VALUE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static greylist-max-o makeTag(Ljava/lang/String;)I
    .registers 7
    .param p0, "tagString"    # Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 116
    .local v0, "c1":C
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 117
    .local v1, "c2":C
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 118
    .local v2, "c3":C
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 119
    .local v3, "c4":C
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method

.method public static blacklist toFontVariationSettings(Ljava/util/List;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 210
    .local p0, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontVariationAxis;>;"
    if-nez p0, :cond_5

    .line 211
    const-string v0, ""

    return-object v0

    .line 213
    :cond_5
    const-string v0, ","

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist toFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Ljava/lang/String;
    .registers 2
    .param p0, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;

    .line 199
    if-nez p0, :cond_5

    .line 200
    const-string v0, ""

    return-object v0

    .line 202
    :cond_5
    const-string v0, ","

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 218
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 219
    return v0

    .line 221
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_20

    instance-of v2, p1, Landroid/graphics/fonts/FontVariationAxis;

    if-nez v2, :cond_c

    goto :goto_20

    .line 224
    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/graphics/fonts/FontVariationAxis;

    .line 225
    .local v2, "axis":Landroid/graphics/fonts/FontVariationAxis;
    iget v3, v2, Landroid/graphics/fonts/FontVariationAxis;->mTag:I

    iget v4, p0, Landroid/graphics/fonts/FontVariationAxis;->mTag:I

    if-ne v3, v4, :cond_1e

    iget v3, v2, Landroid/graphics/fonts/FontVariationAxis;->mStyleValue:F

    iget v4, p0, Landroid/graphics/fonts/FontVariationAxis;->mStyleValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    return v0

    .line 222
    .end local v2    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    :cond_20
    :goto_20
    return v1
.end method

.method public greylist-max-o getOpenTypeTagValue()I
    .registers 2

    .line 64
    iget v0, p0, Landroid/graphics/fonts/FontVariationAxis;->mTag:I

    return v0
.end method

.method public whitelist getStyleValue()F
    .registers 2

    .line 78
    iget v0, p0, Landroid/graphics/fonts/FontVariationAxis;->mStyleValue:F

    return v0
.end method

.method public whitelist getTag()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/graphics/fonts/FontVariationAxis;->mTagString:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 230
    iget v0, p0, Landroid/graphics/fonts/FontVariationAxis;->mTag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/graphics/fonts/FontVariationAxis;->mStyleValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/fonts/FontVariationAxis;->mTagString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/fonts/FontVariationAxis;->mStyleValue:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
