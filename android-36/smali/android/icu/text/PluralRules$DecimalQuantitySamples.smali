.class public Landroid/icu/text/PluralRules$DecimalQuantitySamples;
.super Ljava/lang/Object;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecimalQuantitySamples"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final blacklist bounded:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final blacklist sampleType:Landroid/icu/text/PluralRules$SampleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final blacklist samples:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Landroid/icu/text/PluralRules$SampleType;Ljava/util/Set;Z)V
    .registers 4
    .param p1, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;
    .param p3, "bounded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/PluralRules$SampleType;",
            "Ljava/util/Set<",
            "Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;",
            ">;Z)V"
        }
    .end annotation

    .line 1226
    .local p2, "samples":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1227
    iput-object p1, p0, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->sampleType:Landroid/icu/text/PluralRules$SampleType;

    .line 1228
    iput-object p2, p0, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->samples:Ljava/util/Set;

    .line 1229
    iput-boolean p3, p0, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->bounded:Z

    .line 1230
    return-void
.end method

.method private static blacklist checkDecimal(Landroid/icu/text/PluralRules$SampleType;Landroid/icu/impl/number/DecimalQuantity;)V
    .registers 7
    .param p0, "sampleType2"    # Landroid/icu/text/PluralRules$SampleType;
    .param p1, "sample"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 1285
    sget-object v0, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    const-wide/16 v1, 0x0

    if-ne p0, v0, :cond_10

    sget-object v0, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    invoke-interface {p1, v0}, Landroid/icu/impl/number/DecimalQuantity;->getPluralOperand(Landroid/icu/text/PluralRules$Operand;)D

    move-result-wide v3

    cmpl-double v0, v3, v1

    if-nez v0, :cond_29

    :cond_10
    sget-object v0, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    if-ne p0, v0, :cond_42

    sget-object v0, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    .line 1286
    invoke-interface {p1, v0}, Landroid/icu/impl/number/DecimalQuantity;->getPluralOperand(Landroid/icu/text/PluralRules$Operand;)D

    move-result-wide v3

    cmpl-double v0, v3, v1

    if-nez v0, :cond_42

    sget-object v0, Landroid/icu/text/PluralRules$Operand;->e:Landroid/icu/text/PluralRules$Operand;

    .line 1287
    invoke-interface {p1, v0}, Landroid/icu/impl/number/DecimalQuantity;->getPluralOperand(Landroid/icu/text/PluralRules$Operand;)D

    move-result-wide v3

    cmpl-double v0, v3, v1

    if-eqz v0, :cond_29

    goto :goto_42

    .line 1288
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed number range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1290
    :cond_42
    :goto_42
    return-void
.end method

.method static blacklist parse(Ljava/lang/String;)Landroid/icu/text/PluralRules$DecimalQuantitySamples;
    .registers 14
    .param p0, "source"    # Ljava/lang/String;

    .line 1236
    const/4 v0, 0x1

    .line 1237
    .local v0, "bounded2":Z
    const/4 v1, 0x0

    .line 1238
    .local v1, "haveBound":Z
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1240
    .local v2, "samples2":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;>;"
    const-string v3, "integer"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1241
    sget-object v3, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    .local v3, "sampleType2":Landroid/icu/text/PluralRules$SampleType;
    goto :goto_1c

    .line 1242
    .end local v3    # "sampleType2":Landroid/icu/text/PluralRules$SampleType;
    :cond_12
    const-string v3, "decimal"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 1243
    sget-object v3, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    .line 1247
    .restart local v3    # "sampleType2":Landroid/icu/text/PluralRules$SampleType;
    :goto_1c
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1249
    sget-object v4, Landroid/icu/text/PluralRules;->COMMA_SEPARATED:Ljava/util/regex/Pattern;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    move v7, v5

    :goto_2e
    if-ge v7, v6, :cond_b6

    aget-object v8, v4, v7

    .line 1250
    .local v8, "range":Ljava/lang/String;
    const-string v9, "\u2026"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_af

    const-string v9, "..."

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_43

    goto :goto_af

    .line 1255
    :cond_43
    if-nez v1, :cond_96

    .line 1258
    sget-object v9, Landroid/icu/text/PluralRules;->TILDE_SEPARATED:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v9

    .line 1259
    .local v9, "rangeParts":[Ljava/lang/String;
    array-length v10, v9

    packed-switch v10, :pswitch_data_c8

    .line 1275
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ill-formed number range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1267
    :pswitch_68
    aget-object v10, v9, v5

    .line 1268
    invoke-static {v10}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->fromExponentString(Ljava/lang/String;)Landroid/icu/impl/number/DecimalQuantity;

    move-result-object v10

    .line 1269
    .local v10, "start":Landroid/icu/impl/number/DecimalQuantity;
    const/4 v11, 0x1

    aget-object v11, v9, v11

    .line 1270
    invoke-static {v11}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->fromExponentString(Ljava/lang/String;)Landroid/icu/impl/number/DecimalQuantity;

    move-result-object v11

    .line 1271
    .local v11, "end":Landroid/icu/impl/number/DecimalQuantity;
    invoke-static {v3, v10}, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->checkDecimal(Landroid/icu/text/PluralRules$SampleType;Landroid/icu/impl/number/DecimalQuantity;)V

    .line 1272
    invoke-static {v3, v11}, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->checkDecimal(Landroid/icu/text/PluralRules$SampleType;Landroid/icu/impl/number/DecimalQuantity;)V

    .line 1273
    new-instance v12, Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;

    invoke-direct {v12, v10, v11}, Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;-><init>(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/DecimalQuantity;)V

    invoke-interface {v2, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1274
    goto :goto_b2

    .line 1261
    .end local v10    # "start":Landroid/icu/impl/number/DecimalQuantity;
    .end local v11    # "end":Landroid/icu/impl/number/DecimalQuantity;
    :pswitch_84
    aget-object v10, v9, v5

    .line 1262
    invoke-static {v10}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->fromExponentString(Ljava/lang/String;)Landroid/icu/impl/number/DecimalQuantity;

    move-result-object v10

    .line 1263
    .local v10, "sample":Landroid/icu/impl/number/DecimalQuantity;
    invoke-static {v3, v10}, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->checkDecimal(Landroid/icu/text/PluralRules$SampleType;Landroid/icu/impl/number/DecimalQuantity;)V

    .line 1264
    new-instance v11, Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;

    invoke-direct {v11, v10, v10}, Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;-><init>(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/DecimalQuantity;)V

    invoke-interface {v2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1265
    goto :goto_b2

    .line 1256
    .end local v9    # "rangeParts":[Ljava/lang/String;
    .end local v10    # "sample":Landroid/icu/impl/number/DecimalQuantity;
    :cond_96
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can only have \u2026 at the end of samples: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1251
    :cond_af
    :goto_af
    const/4 v0, 0x0

    .line 1252
    const/4 v1, 0x1

    .line 1253
    nop

    .line 1249
    .end local v8    # "range":Ljava/lang/String;
    :goto_b2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2e

    .line 1278
    :cond_b6
    new-instance v4, Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v3, v5, v0}, Landroid/icu/text/PluralRules$DecimalQuantitySamples;-><init>(Landroid/icu/text/PluralRules$SampleType;Ljava/util/Set;Z)V

    return-object v4

    .line 1245
    .end local v3    # "sampleType2":Landroid/icu/text/PluralRules$SampleType;
    :cond_c0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Samples must start with \'integer\' or \'decimal\'"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_84
        :pswitch_68
    .end packed-switch
.end method


# virtual methods
.method public blacklist addDecimalQuantitySamples(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/icu/impl/number/DecimalQuantity;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/icu/impl/number/DecimalQuantity;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1308
    .local p1, "result":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/impl/number/DecimalQuantity;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->addSamples(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1309
    return-object p1
.end method

.method public blacklist addSamples(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1298
    .local p1, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->addSamples(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1299
    return-object p1
.end method

.method public blacklist addSamples(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/icu/impl/number/DecimalQuantity;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1318
    .local p1, "doubleResult":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    .local p2, "dqResult":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/impl/number/DecimalQuantity;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-nez v0, :cond_8

    if-eqz v1, :cond_c

    :cond_8
    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    .line 1320
    :cond_c
    return-void

    .line 1322
    :cond_d
    if-eqz v0, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 1323
    .local v2, "isDouble":Z
    :goto_12
    move-object/from16 v3, p0

    iget-object v4, v3, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->samples:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;

    .line 1324
    .local v5, "range":Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;
    iget-object v6, v5, Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;->start:Landroid/icu/impl/number/DecimalQuantity;

    .line 1325
    .local v6, "start":Landroid/icu/impl/number/DecimalQuantity;
    iget-object v7, v5, Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;->end:Landroid/icu/impl/number/DecimalQuantity;

    .line 1326
    .local v7, "end":Landroid/icu/impl/number/DecimalQuantity;
    invoke-interface {v6}, Landroid/icu/impl/number/DecimalQuantity;->getLowerDisplayMagnitude()I

    move-result v8

    .line 1327
    .local v8, "lowerDispMag":I
    invoke-interface {v6}, Landroid/icu/impl/number/DecimalQuantity;->getExponent()I

    move-result v9

    .line 1328
    .local v9, "exponent":I
    add-int v10, v8, v9

    .line 1329
    .local v10, "incrementScale":I
    sget-object v11, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v11, v10}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v11

    .line 1331
    .local v11, "incrementBd":Ljava/math/BigDecimal;
    invoke-interface {v6}, Landroid/icu/impl/number/DecimalQuantity;->createCopy()Landroid/icu/impl/number/DecimalQuantity;

    move-result-object v12

    .local v12, "dq":Landroid/icu/impl/number/DecimalQuantity;
    :goto_3e
    invoke-interface {v12}, Landroid/icu/impl/number/DecimalQuantity;->toDouble()D

    move-result-wide v13

    invoke-interface {v7}, Landroid/icu/impl/number/DecimalQuantity;->toDouble()D

    move-result-wide v15

    cmpg-double v13, v13, v15

    if-gtz v13, :cond_89

    .line 1332
    if-eqz v2, :cond_6c

    .line 1333
    invoke-interface {v12}, Landroid/icu/impl/number/DecimalQuantity;->toDouble()D

    move-result-wide v13

    .line 1339
    .local v13, "dblValue":D
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v15

    cmpl-double v15, v13, v15

    if-eqz v15, :cond_6b

    sget-object v15, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    invoke-interface {v12, v15}, Landroid/icu/impl/number/DecimalQuantity;->getPluralOperand(Landroid/icu/text/PluralRules$Operand;)D

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmpl-double v15, v15, v17

    if-lez v15, :cond_6b

    .line 1340
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1342
    .end local v13    # "dblValue":D
    :cond_6b
    goto :goto_6f

    .line 1343
    :cond_6c
    invoke-interface {v1, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1347
    :goto_6f
    invoke-interface {v12}, Landroid/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v13

    .line 1348
    .local v13, "dqBd":Ljava/math/BigDecimal;
    invoke-virtual {v13, v11}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v14

    .line 1349
    .local v14, "newDqBd":Ljava/math/BigDecimal;
    new-instance v15, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v15, v14}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/math/BigDecimal;)V

    move-object v12, v15

    .line 1350
    neg-int v15, v8

    invoke-interface {v12, v15}, Landroid/icu/impl/number/DecimalQuantity;->setMinFraction(I)V

    .line 1351
    neg-int v15, v9

    invoke-interface {v12, v15}, Landroid/icu/impl/number/DecimalQuantity;->adjustMagnitude(I)V

    .line 1352
    invoke-interface {v12, v9}, Landroid/icu/impl/number/DecimalQuantity;->adjustExponent(I)V

    .line 1353
    .end local v13    # "dqBd":Ljava/math/BigDecimal;
    .end local v14    # "newDqBd":Ljava/math/BigDecimal;
    goto :goto_3e

    .line 1354
    .end local v5    # "range":Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;
    .end local v6    # "start":Landroid/icu/impl/number/DecimalQuantity;
    .end local v7    # "end":Landroid/icu/impl/number/DecimalQuantity;
    .end local v8    # "lowerDispMag":I
    .end local v9    # "exponent":I
    .end local v10    # "incrementScale":I
    .end local v11    # "incrementBd":Ljava/math/BigDecimal;
    .end local v12    # "dq":Landroid/icu/impl/number/DecimalQuantity;
    :cond_89
    goto :goto_1a

    .line 1355
    :cond_8a
    return-void
.end method

.method public blacklist getSamples()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1386
    iget-object v0, p0, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->samples:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getStartEndSamples(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/icu/impl/number/DecimalQuantity;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1395
    .local p1, "target":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/number/DecimalQuantity;>;"
    iget-object v0, p0, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->samples:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;

    .line 1396
    .local v1, "range":Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;
    iget-object v2, v1, Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;->start:Landroid/icu/impl/number/DecimalQuantity;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1397
    iget-object v2, v1, Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;->end:Landroid/icu/impl/number/DecimalQuantity;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1398
    .end local v1    # "range":Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;
    goto :goto_6

    .line 1399
    :cond_1d
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->sampleType:Landroid/icu/text/PluralRules$SampleType;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1365
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1366
    .local v1, "first":Z
    iget-object v2, p0, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->samples:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;

    .line 1367
    .local v3, "item":Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;
    if-eqz v1, :cond_2e

    .line 1368
    const/4 v1, 0x0

    goto :goto_33

    .line 1370
    :cond_2e
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    :goto_33
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1373
    .end local v3    # "item":Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;
    goto :goto_1e

    .line 1374
    :cond_3d
    iget-boolean v2, p0, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->bounded:Z

    if-nez v2, :cond_46

    .line 1375
    const-string v2, ", \u2026"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
