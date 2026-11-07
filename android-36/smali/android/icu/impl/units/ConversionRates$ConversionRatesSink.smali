.class public Landroid/icu/impl/units/ConversionRates$ConversionRatesSink;
.super Landroid/icu/impl/UResource$Sink;
.source "ConversionRates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/units/ConversionRates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversionRatesSink"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist mapToConversionRate:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 162
    const-class v0, Landroid/icu/impl/units/ConversionRates;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 162
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/units/ConversionRates$ConversionRatesSink;->mapToConversionRate:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public blacklist getMapToConversionRate()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Landroid/icu/impl/units/ConversionRates$ConversionRatesSink;->mapToConversionRate:Ljava/util/HashMap;

    return-object v0
.end method

.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 21
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 170
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 172
    invoke-virtual {v1}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v2

    .line 173
    .local v2, "conversionRateTable":Landroid/icu/impl/UResource$Table;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    invoke-interface {v2, v3, v0, v1}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 174
    nop

    .line 176
    invoke-virtual {v0}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, "simpleUnit":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v4

    .line 179
    .local v4, "simpleUnitConversionInfo":Landroid/icu/impl/UResource$Table;
    const/4 v5, 0x0

    .line 180
    .local v5, "target":Ljava/lang/String;
    const/4 v7, 0x0

    .line 181
    .local v7, "factor":Ljava/lang/String;
    const-string v8, "0"

    .line 182
    .local v8, "offset":Ljava/lang/String;
    const/4 v9, 0x0

    .line 183
    .local v9, "special":Ljava/lang/String;
    const/4 v10, 0x0

    .line 184
    .local v10, "systems":Ljava/lang/String;
    const/4 v11, 0x0

    move-object/from16 v16, v7

    move-object v7, v5

    move v5, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object/from16 v8, v16

    .local v5, "j":I
    .local v7, "target":Ljava/lang/String;
    .local v8, "factor":Ljava/lang/String;
    .local v9, "offset":Ljava/lang/String;
    .local v10, "special":Ljava/lang/String;
    .local v11, "systems":Ljava/lang/String;
    :goto_28
    invoke-interface {v4, v5, v0, v1}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v12

    if-eqz v12, :cond_78

    .line 185
    nop

    .line 188
    invoke-virtual {v0}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v12

    .line 189
    .local v12, "keyString":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, " "

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 190
    .local v13, "valueString":Ljava/lang/String;
    const-string v14, "target"

    invoke-virtual {v14, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_49

    .line 191
    move-object v7, v13

    goto :goto_75

    .line 192
    :cond_49
    const-string v14, "factor"

    invoke-virtual {v14, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_53

    .line 193
    move-object v8, v13

    goto :goto_75

    .line 194
    :cond_53
    const-string v14, "offset"

    invoke-virtual {v14, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5d

    .line 195
    move-object v9, v13

    goto :goto_75

    .line 196
    :cond_5d
    const-string v14, "special"

    invoke-virtual {v14, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_67

    .line 197
    move-object v10, v13

    goto :goto_75

    .line 198
    :cond_67
    const-string v14, "systems"

    invoke-virtual {v14, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_74

    .line 199
    invoke-virtual {v1}, Landroid/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_75

    .line 201
    :cond_74
    nop

    .line 184
    .end local v12    # "keyString":Ljava/lang/String;
    .end local v13    # "valueString":Ljava/lang/String;
    :goto_75
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 206
    .end local v5    # "j":I
    :cond_78
    nop

    .line 207
    nop

    .line 209
    move-object/from16 v12, p0

    iget-object v13, v12, Landroid/icu/impl/units/ConversionRates$ConversionRatesSink;->mapToConversionRate:Ljava/util/HashMap;

    new-instance v5, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;

    invoke-direct/range {v5 .. v11}, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .end local v4    # "simpleUnitConversionInfo":Landroid/icu/impl/UResource$Table;
    .end local v6    # "simpleUnit":Ljava/lang/String;
    .end local v7    # "target":Ljava/lang/String;
    .end local v8    # "factor":Ljava/lang/String;
    .end local v9    # "offset":Ljava/lang/String;
    .end local v10    # "special":Ljava/lang/String;
    .end local v11    # "systems":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_89
    move-object/from16 v12, p0

    .line 213
    .end local v3    # "i":I
    return-void
.end method
