.class public final Landroid/os/vibrator/MultiVibratorInfo;
.super Landroid/os/VibratorInfo;
.source "MultiVibratorInfo.java"


# static fields
.field private static final blacklist EPSILON:F = 1.0E-5f

.field private static final blacklist TAG:Ljava/lang/String; = "MultiVibratorInfo"


# direct methods
.method public constructor blacklist <init>(I[Landroid/os/VibratorInfo;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "vibrators"    # [Landroid/os/VibratorInfo;

    .line 50
    invoke-static {p2}, Landroid/os/vibrator/MultiVibratorInfo;->frequencyProfileLegacyIntersection([Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object v0

    .line 51
    invoke-static {p2}, Landroid/os/vibrator/MultiVibratorInfo;->frequencyProfileIntersection([Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v1

    .line 50
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;-><init>(I[Landroid/os/VibratorInfo;Landroid/os/VibratorInfo$FrequencyProfileLegacy;Landroid/os/VibratorInfo$FrequencyProfile;)V

    .line 52
    return-void
.end method

.method private constructor blacklist <init>(I[Landroid/os/VibratorInfo;Landroid/os/VibratorInfo$FrequencyProfileLegacy;Landroid/os/VibratorInfo$FrequencyProfile;)V
    .registers 24
    .param p1, "id"    # I
    .param p2, "vibrators"    # [Landroid/os/VibratorInfo;
    .param p3, "mergedLegacyProfile"    # Landroid/os/VibratorInfo$FrequencyProfileLegacy;
    .param p4, "mergedProfile"    # Landroid/os/VibratorInfo$FrequencyProfile;

    .line 58
    move-object/from16 v0, p2

    .line 60
    invoke-static {}, Landroid/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual/range {p4 .. p4}, Landroid/os/VibratorInfo$FrequencyProfile;->isEmpty()Z

    move-result v1

    goto :goto_11

    .line 61
    :cond_d
    invoke-virtual/range {p3 .. p3}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->isEmpty()Z

    move-result v1

    .line 59
    :goto_11
    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->capabilitiesIntersection([Landroid/os/VibratorInfo;Z)I

    move-result v1

    int-to-long v4, v1

    .line 62
    invoke-static {v0}, Landroid/os/vibrator/MultiVibratorInfo;->supportedEffectsIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    .line 63
    invoke-static {v0}, Landroid/os/vibrator/MultiVibratorInfo;->supportedBrakingIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 64
    invoke-static {v0}, Landroid/os/vibrator/MultiVibratorInfo;->supportedPrimitivesAndDurationsIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseIntArray;

    move-result-object v8

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda0;-><init>()V

    .line 65
    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v9

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda1;-><init>()V

    .line 66
    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v10

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda2;-><init>()V

    .line 67
    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v11

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda3;-><init>()V

    .line 68
    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v12

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda4;-><init>()V

    .line 69
    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F

    move-result v13

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda5;-><init>()V

    .line 72
    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v16

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda6;-><init>()V

    .line 74
    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v17

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda7;-><init>()V

    .line 76
    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v18

    .line 58
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v2 .. v18}, Landroid/os/VibratorInfo;-><init>(IJLandroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;Landroid/util/SparseIntArray;IIIIFLandroid/os/VibratorInfo$FrequencyProfileLegacy;Landroid/os/VibratorInfo$FrequencyProfile;III)V

    .line 78
    return-void
.end method

.method private static blacklist capabilitiesIntersection([Landroid/os/VibratorInfo;Z)I
    .registers 10
    .param p0, "infos"    # [Landroid/os/VibratorInfo;
    .param p1, "frequencyProfileIsEmpty"    # Z

    .line 82
    const/4 v0, -0x1

    .line 83
    .local v0, "intersection":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_11

    aget-object v3, p0, v2

    .line 84
    .local v3, "info":Landroid/os/VibratorInfo;
    int-to-long v4, v0

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->getCapabilities()J

    move-result-wide v6

    and-long/2addr v4, v6

    long-to-int v0, v4

    .line 83
    .end local v3    # "info":Landroid/os/VibratorInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 86
    :cond_11
    if-eqz p1, :cond_15

    .line 88
    and-int/lit16 v0, v0, -0x201

    .line 90
    :cond_15
    return v0
.end method

.method private static blacklist floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F
    .registers 6
    .param p0, "infos"    # [Landroid/os/VibratorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/VibratorInfo;",
            "Ljava/util/function/Function<",
            "Landroid/os/VibratorInfo;",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 206
    .local p1, "propertyGetter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/VibratorInfo;Ljava/lang/Float;>;"
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 207
    .local v0, "property":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-eqz v1, :cond_16

    .line 209
    return v2

    .line 211
    :cond_16
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_17
    array-length v3, p0

    if-ge v1, v3, :cond_30

    .line 212
    aget-object v3, p0, v1

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_2d

    .line 214
    return v2

    .line 211
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 217
    .end local v1    # "i":I
    :cond_30
    return v0
.end method

.method private static blacklist frequencyProfileIntersection([Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo$FrequencyProfile;
    .registers 18
    .param p0, "infos"    # [Landroid/os/VibratorInfo;

    .line 222
    move-object/from16 v0, p0

    const/high16 v1, 0x7fc00000    # Float.NaN

    const/4 v2, 0x0

    if-eqz v0, :cond_100

    array-length v3, v0

    if-nez v3, :cond_c

    goto/16 :goto_100

    .line 227
    :cond_c
    new-instance v3, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v0, v3}, Landroid/os/vibrator/MultiVibratorInfo;->floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F

    move-result v3

    .line 229
    .local v3, "resonantFreq":F
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 230
    new-instance v4, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-direct {v4, v1, v2, v2}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    return-object v4

    .line 234
    :cond_21
    const/4 v4, 0x0

    .line 235
    .local v4, "minFrequency":F
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 236
    .local v5, "maxFrequency":F
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 238
    .local v6, "allFrequencies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Float;>;"
    array-length v7, v0

    const/4 v9, 0x0

    :goto_2c
    if-ge v9, v7, :cond_86

    aget-object v10, v0, v9

    .line 239
    .local v10, "info":Landroid/os/VibratorInfo;
    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/VibratorInfo$FrequencyProfile;->getMinFrequencyHz()F

    move-result v11

    .line 240
    .local v11, "newMinFrequency":F
    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/VibratorInfo$FrequencyProfile;->getMaxFrequencyHz()F

    move-result v12

    .line 242
    .local v12, "newMaxFrequency":F
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_80

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_4d

    goto :goto_80

    .line 248
    :cond_4d
    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 249
    invoke-static {v5, v12}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 251
    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequenciesHz()[F

    move-result-object v13

    if-nez v13, :cond_65

    .line 252
    new-instance v7, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-direct {v7, v1, v2, v2}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    return-object v7

    .line 256
    :cond_65
    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequenciesHz()[F

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_6f
    if-ge v15, v14, :cond_7d

    aget v16, v13, v15

    .line 257
    .local v16, "frequency":F
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v16    # "frequency":F
    add-int/lit8 v15, v15, 0x1

    goto :goto_6f

    .line 238
    .end local v10    # "info":Landroid/os/VibratorInfo;
    .end local v11    # "newMinFrequency":F
    .end local v12    # "newMaxFrequency":F
    :cond_7d
    add-int/lit8 v9, v9, 0x1

    goto :goto_2c

    .line 244
    .restart local v10    # "info":Landroid/os/VibratorInfo;
    .restart local v11    # "newMinFrequency":F
    .restart local v12    # "newMaxFrequency":F
    :cond_80
    :goto_80
    new-instance v7, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-direct {v7, v1, v2, v2}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    return-object v7

    .line 261
    .end local v10    # "info":Landroid/os/VibratorInfo;
    .end local v11    # "newMinFrequency":F
    .end local v12    # "newMaxFrequency":F
    :cond_86
    cmpl-float v7, v4, v5

    if-lez v7, :cond_90

    .line 263
    new-instance v7, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-direct {v7, v1, v2, v2}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    return-object v7

    .line 268
    :cond_90
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 269
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Float;>;"
    :goto_94
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 270
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 271
    .local v2, "frequency":F
    cmpg-float v7, v2, v4

    if-ltz v7, :cond_ac

    cmpl-float v7, v2, v5

    if-lez v7, :cond_af

    .line 272
    :cond_ac
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 274
    .end local v2    # "frequency":F
    :cond_af
    goto :goto_94

    .line 276
    :cond_b0
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [F

    .line 277
    .local v2, "frequencies":[F
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    new-array v7, v7, [F

    .line 278
    .local v7, "accelerations":[F
    const/4 v8, 0x0

    .line 280
    .local v8, "idx":I
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_fa

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    .line 281
    .local v10, "frequency":Ljava/lang/Float;
    const v11, 0x7f7fffff    # Float.MAX_VALUE

    .line 282
    .local v11, "outputAcceleration":F
    array-length v12, v0

    const/4 v13, 0x0

    :goto_d2
    if-ge v13, v12, :cond_ec

    aget-object v14, v0, v13

    .line 284
    .local v14, "info":Landroid/os/VibratorInfo;
    nop

    .line 285
    invoke-virtual {v14}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v15

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v15, v0}, Landroid/os/VibratorInfo$FrequencyProfile;->getOutputAccelerationGs(F)F

    move-result v0

    .line 284
    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 282
    .end local v14    # "info":Landroid/os/VibratorInfo;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    goto :goto_d2

    .line 287
    :cond_ec
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v2, v8

    .line 288
    aput v11, v7, v8

    .line 289
    nop

    .end local v10    # "frequency":Ljava/lang/Float;
    .end local v11    # "outputAcceleration":F
    add-int/lit8 v8, v8, 0x1

    .line 290
    move-object/from16 v0, p0

    goto :goto_c1

    .line 292
    :cond_fa
    new-instance v0, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-direct {v0, v3, v2, v7}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    return-object v0

    .line 223
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Float;>;"
    .end local v2    # "frequencies":[F
    .end local v3    # "resonantFreq":F
    .end local v4    # "minFrequency":F
    .end local v5    # "maxFrequency":F
    .end local v6    # "allFrequencies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Float;>;"
    .end local v7    # "accelerations":[F
    .end local v8    # "idx":I
    :cond_100
    :goto_100
    new-instance v0, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-direct {v0, v1, v2, v2}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    return-object v0
.end method

.method private static blacklist frequencyProfileLegacyIntersection([Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo$FrequencyProfileLegacy;
    .registers 18
    .param p0, "infos"    # [Landroid/os/VibratorInfo;

    .line 297
    move-object/from16 v0, p0

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F

    move-result v1

    .line 299
    .local v1, "freqResolution":F
    new-instance v2, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v0, v2}, Landroid/os/vibrator/MultiVibratorInfo;->floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F

    move-result v2

    .line 301
    .local v2, "resonantFreq":F
    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->frequencyRangeIntersection([Landroid/os/VibratorInfo;F)Landroid/util/Range;

    move-result-object v3

    .line 303
    .local v3, "freqRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    if-eqz v3, :cond_d8

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_22

    goto/16 :goto_d8

    .line 307
    :cond_22
    nop

    .line 308
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v1

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 309
    .local v6, "amplitudeCount":I
    new-array v7, v6, [F

    .line 314
    .local v7, "maxAmplitudes":[F
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([FF)V

    .line 316
    array-length v8, v0

    const/4 v9, 0x0

    :goto_4a
    if-ge v9, v8, :cond_c8

    aget-object v10, v0, v9

    .line 317
    .local v10, "info":Landroid/os/VibratorInfo;
    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v11

    .line 318
    .local v11, "vibratorFreqRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getMaxAmplitudes()[F

    move-result-object v12

    .line 319
    .local v12, "vibratorMaxAmplitudes":[F
    nop

    .line 320
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v11}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float/2addr v13, v14

    div-float/2addr v13, v1

    .line 319
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 321
    .local v13, "vibratorStartIdx":I
    array-length v14, v7

    add-int/2addr v14, v13

    add-int/lit8 v14, v14, -0x1

    .line 323
    .local v14, "vibratorEndIdx":I
    if-ltz v13, :cond_99

    array-length v15, v12

    if-lt v14, v15, :cond_83

    goto :goto_99

    .line 330
    :cond_83
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_84
    array-length v4, v7

    if-ge v15, v4, :cond_96

    .line 331
    aget v4, v7, v15

    add-int v16, v13, v15

    aget v5, v12, v16

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v7, v15

    .line 330
    add-int/lit8 v15, v15, 0x1

    goto :goto_84

    .line 316
    .end local v10    # "info":Landroid/os/VibratorInfo;
    .end local v11    # "vibratorFreqRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .end local v12    # "vibratorMaxAmplitudes":[F
    .end local v13    # "vibratorStartIdx":I
    .end local v14    # "vibratorEndIdx":I
    .end local v15    # "i":I
    :cond_96
    add-int/lit8 v9, v9, 0x1

    goto :goto_4a

    .line 324
    .restart local v10    # "info":Landroid/os/VibratorInfo;
    .restart local v11    # "vibratorFreqRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .restart local v12    # "vibratorMaxAmplitudes":[F
    .restart local v13    # "vibratorStartIdx":I
    .restart local v14    # "vibratorEndIdx":I
    :cond_99
    :goto_99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error calculating the intersection of vibrator frequency profiles: attempted to fetch from vibrator "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 326
    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " max amplitude with bad index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 324
    const-string v5, "MultiVibratorInfo"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v4, Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    const/4 v5, 0x0

    const/high16 v8, 0x7fc00000    # Float.NaN

    invoke-direct {v4, v2, v8, v8, v5}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;-><init>(FFF[F)V

    return-object v4

    .line 336
    .end local v10    # "info":Landroid/os/VibratorInfo;
    .end local v11    # "vibratorFreqRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .end local v12    # "vibratorMaxAmplitudes":[F
    .end local v13    # "vibratorStartIdx":I
    .end local v14    # "vibratorEndIdx":I
    :cond_c8
    new-instance v4, Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v4, v2, v5, v1, v7}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;-><init>(FFF[F)V

    return-object v4

    .line 304
    .end local v6    # "amplitudeCount":I
    .end local v7    # "maxAmplitudes":[F
    :cond_d8
    :goto_d8
    new-instance v4, Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    const/4 v5, 0x0

    const/high16 v8, 0x7fc00000    # Float.NaN

    invoke-direct {v4, v2, v8, v1, v5}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;-><init>(FFF[F)V

    return-object v4
.end method

.method private static blacklist frequencyRangeIntersection([Landroid/os/VibratorInfo;F)Landroid/util/Range;
    .registers 11
    .param p0, "infos"    # [Landroid/os/VibratorInfo;
    .param p1, "frequencyResolution"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/VibratorInfo;",
            "F)",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 343
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v0

    .line 344
    .local v0, "firstRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 346
    return-object v1

    .line 348
    :cond_f
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 349
    .local v2, "intersectionLower":F
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 354
    .local v3, "intersectionUpper":F
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_24
    array-length v5, p0

    if-ge v4, v5, :cond_8b

    .line 355
    aget-object v5, p0, v4

    invoke-virtual {v5}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v5

    .line 356
    .local v5, "vibratorRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    if-nez v5, :cond_34

    .line 358
    return-object v1

    .line 361
    :cond_34
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v6, v3

    if-gez v6, :cond_8a

    .line 362
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpg-float v6, v6, v2

    if-gtz v6, :cond_51

    goto :goto_8a

    .line 367
    :cond_51
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 368
    .local v6, "frequencyDelta":F
    rem-float v7, v6, p1

    const v8, 0x3727c5ac    # 1.0E-5f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_6b

    .line 370
    return-object v1

    .line 373
    :cond_6b
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 374
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 354
    .end local v5    # "vibratorRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .end local v6    # "frequencyDelta":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 364
    .restart local v5    # "vibratorRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :cond_8a
    :goto_8a
    return-object v1

    .line 377
    .end local v4    # "i":I
    .end local v5    # "vibratorRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :cond_8b
    sub-float v4, v3, v2

    cmpg-float v4, v4, p1

    if-gez v4, :cond_92

    .line 379
    return-object v1

    .line 382
    :cond_92
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I
    .registers 7
    .param p0, "infos"    # [Landroid/os/VibratorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/VibratorInfo;",
            "Ljava/util/function/Function<",
            "Landroid/os/VibratorInfo;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 192
    .local p1, "propertyGetter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/VibratorInfo;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 193
    .local v0, "limit":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_1b

    aget-object v3, p0, v2

    .line 194
    .local v3, "info":Landroid/os/VibratorInfo;
    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 195
    .local v4, "vibratorLimit":I
    if-eqz v0, :cond_17

    if-lez v4, :cond_18

    if-ge v4, v0, :cond_18

    .line 198
    :cond_17
    move v0, v4

    .line 193
    .end local v3    # "info":Landroid/os/VibratorInfo;
    .end local v4    # "vibratorLimit":I
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 201
    :cond_1b
    return v0
.end method

.method static synthetic blacklist lambda$frequencyProfileLegacyIntersection$0(Landroid/os/VibratorInfo;)Ljava/lang/Float;
    .registers 2
    .param p0, "info"    # Landroid/os/VibratorInfo;

    .line 298
    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getFrequencyResolutionHz()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist supportedBrakingIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseBooleanArray;
    .registers 7
    .param p0, "infos"    # [Landroid/os/VibratorInfo;

    .line 95
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 96
    .local v3, "info":Landroid/os/VibratorInfo;
    invoke-virtual {v3}, Landroid/os/VibratorInfo;->isBrakingSupportKnown()Z

    move-result v4

    if-nez v4, :cond_f

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 95
    .end local v3    # "info":Landroid/os/VibratorInfo;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 102
    :cond_12
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 103
    .local v0, "intersection":Landroid/util/SparseBooleanArray;
    aget-object v1, p0, v1

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getSupportedBraking()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 106
    .local v1, "firstVibratorBraking":Landroid/util/SparseBooleanArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    .line 107
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 108
    .local v3, "brakingId":I
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 110
    goto :goto_43

    .line 113
    :cond_2f
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_30
    array-length v5, p0

    if-ge v4, v5, :cond_3f

    .line 114
    aget-object v5, p0, v4

    invoke-virtual {v5, v3}, Landroid/os/VibratorInfo;->hasBrakingSupport(I)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 116
    goto :goto_43

    .line 113
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 120
    .end local v4    # "j":I
    :cond_3f
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 106
    .end local v3    # "brakingId":I
    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 123
    .end local v2    # "i":I
    :cond_46
    return-object v0
.end method

.method private static blacklist supportedEffectsIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseBooleanArray;
    .registers 8
    .param p0, "infos"    # [Landroid/os/VibratorInfo;

    .line 128
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 129
    .local v3, "info":Landroid/os/VibratorInfo;
    invoke-virtual {v3}, Landroid/os/VibratorInfo;->isEffectSupportKnown()Z

    move-result v4

    if-nez v4, :cond_f

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 128
    .end local v3    # "info":Landroid/os/VibratorInfo;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 135
    :cond_12
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 136
    .local v0, "intersection":Landroid/util/SparseBooleanArray;
    aget-object v1, p0, v1

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getSupportedEffects()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 139
    .local v1, "firstVibratorEffects":Landroid/util/SparseBooleanArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    .line 140
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 141
    .local v3, "effectId":I
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 143
    goto :goto_43

    .line 146
    :cond_2f
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_30
    array-length v5, p0

    const/4 v6, 0x1

    if-ge v4, v5, :cond_40

    .line 147
    aget-object v5, p0, v4

    invoke-virtual {v5, v3}, Landroid/os/VibratorInfo;->isEffectSupported(I)I

    move-result v5

    if-eq v5, v6, :cond_3d

    .line 149
    goto :goto_43

    .line 146
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 153
    .end local v4    # "j":I
    :cond_40
    invoke-virtual {v0, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 139
    .end local v3    # "effectId":I
    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 156
    .end local v2    # "i":I
    :cond_46
    return-object v0
.end method

.method private static blacklist supportedPrimitivesAndDurationsIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseIntArray;
    .registers 8
    .param p0, "infos"    # [Landroid/os/VibratorInfo;

    .line 162
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 163
    .local v0, "intersection":Landroid/util/SparseIntArray;
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getSupportedPrimitives()Landroid/util/SparseIntArray;

    move-result-object v1

    .line 166
    .local v1, "firstVibratorPrimitives":Landroid/util/SparseIntArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_38

    .line 167
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 168
    .local v3, "primitiveId":I
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 169
    .local v4, "primitiveDuration":I
    if-nez v4, :cond_1e

    .line 171
    goto :goto_35

    .line 174
    :cond_1e
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_1f
    array-length v6, p0

    if-ge v5, v6, :cond_32

    .line 175
    aget-object v6, p0, v5

    invoke-virtual {v6, v3}, Landroid/os/VibratorInfo;->getPrimitiveDuration(I)I

    move-result v6

    .line 176
    .local v6, "vibratorPrimitiveDuration":I
    if-nez v6, :cond_2b

    .line 178
    goto :goto_35

    .line 181
    :cond_2b
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 174
    .end local v6    # "vibratorPrimitiveDuration":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 185
    .end local v5    # "j":I
    :cond_32
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 166
    .end local v3    # "primitiveId":I
    .end local v4    # "primitiveDuration":I
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 187
    .end local v2    # "i":I
    :cond_38
    return-object v0
.end method
