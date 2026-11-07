.class public abstract Ljavax/xml/datatype/DatatypeFactory;
.super Ljava/lang/Object;
.source "DatatypeFactory.java"


# static fields
.field public static final whitelist test-api DATATYPEFACTORY_IMPLEMENTATION_CLASS:Ljava/lang/String;

.field public static final whitelist test-api DATATYPEFACTORY_PROPERTY:Ljava/lang/String; = "javax.xml.datatype.DatatypeFactory"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 75
    new-instance v0, Ljava/lang/String;

    const-string v1, "org.apache.xerces.jaxp.datatype.DatatypeFactoryImpl"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/datatype/DatatypeFactory;->DATATYPEFACTORY_IMPLEMENTATION_CLASS:Ljava/lang/String;

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api newInstance()Ljavax/xml/datatype/DatatypeFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 99
    :try_start_0
    const-string v0, "javax.xml.datatype.DatatypeFactory"

    sget-object v1, Ljavax/xml/datatype/DatatypeFactory;->DATATYPEFACTORY_IMPLEMENTATION_CLASS:Ljava/lang/String;

    invoke-static {v0, v1}, Ljavax/xml/datatype/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/datatype/DatatypeFactory;
    :try_end_a
    .catch Ljavax/xml/datatype/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 105
    :catch_b
    move-exception v0

    .line 106
    .local v0, "e":Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
    new-instance v1, Ljavax/xml/datatype/DatatypeConfigurationException;

    invoke-virtual {v0}, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static whitelist test-api newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/datatype/DatatypeFactory;
    .registers 4
    .param p0, "factoryClassName"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 119
    if-eqz p0, :cond_34

    .line 122
    if-nez p1, :cond_c

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 126
    :cond_c
    if-eqz p1, :cond_13

    .line 127
    :try_start_e
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_17

    .line 128
    :cond_13
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_17
    nop

    .line 129
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/datatype/DatatypeFactory;
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_1e} :catch_2d
    .catch Ljava/lang/InstantiationException; {:try_start_e .. :try_end_1e} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_1e} :catch_1f

    return-object v1

    .line 134
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1f
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljavax/xml/datatype/DatatypeConfigurationException;

    invoke-direct {v1, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 132
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_26
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljavax/xml/datatype/DatatypeConfigurationException;

    invoke-direct {v1, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 130
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2d
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljavax/xml/datatype/DatatypeConfigurationException;

    invoke-direct {v1, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 120
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_34
    new-instance v0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v1, "factoryClassName == null"

    invoke-direct {v0, v1}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract whitelist test-api newDuration(J)Ljavax/xml/datatype/Duration;
.end method

.method public abstract whitelist test-api newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;
.end method

.method public whitelist test-api newDuration(ZIIIIII)Ljavax/xml/datatype/Duration;
    .registers 25
    .param p1, "isPositive"    # Z
    .param p2, "years"    # I
    .param p3, "months"    # I
    .param p4, "days"    # I
    .param p5, "hours"    # I
    .param p6, "minutes"    # I
    .param p7, "seconds"    # I

    .line 278
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    if-eq v0, v7, :cond_17

    int-to-long v8, v0

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    goto :goto_18

    :cond_17
    move-object v8, v6

    :goto_18
    move-object v11, v8

    .line 281
    .local v11, "realYears":Ljava/math/BigInteger;
    if-eq v1, v7, :cond_22

    int-to-long v8, v1

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    move-object v12, v8

    goto :goto_23

    :cond_22
    move-object v12, v6

    .line 284
    .local v12, "realMonths":Ljava/math/BigInteger;
    :goto_23
    if-eq v2, v7, :cond_2c

    int-to-long v8, v2

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    move-object v13, v8

    goto :goto_2d

    :cond_2c
    move-object v13, v6

    .line 287
    .local v13, "realDays":Ljava/math/BigInteger;
    :goto_2d
    if-eq v3, v7, :cond_36

    int-to-long v8, v3

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    move-object v14, v8

    goto :goto_37

    :cond_36
    move-object v14, v6

    .line 290
    .local v14, "realHours":Ljava/math/BigInteger;
    :goto_37
    if-eq v4, v7, :cond_40

    int-to-long v8, v4

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    move-object v15, v8

    goto :goto_41

    :cond_40
    move-object v15, v6

    .line 293
    .local v15, "realMinutes":Ljava/math/BigInteger;
    :goto_41
    if-eq v5, v7, :cond_48

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v6

    :cond_48
    move-object/from16 v16, v6

    .line 295
    .local v16, "realSeconds":Ljava/math/BigDecimal;
    move-object/from16 v9, p0

    move/from16 v10, p1

    invoke-virtual/range {v9 .. v16}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object v6

    return-object v6
.end method

.method public abstract whitelist test-api newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;
.end method

.method public whitelist test-api newDurationDayTime(J)Ljavax/xml/datatype/Duration;
    .registers 23
    .param p1, "durationInMilliseconds"    # J

    .line 384
    move-wide/from16 v0, p1

    .line 385
    .local v0, "_durationInMilliseconds":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_18

    .line 386
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/high16 v7, -0x80000000

    const/high16 v8, -0x80000000

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZIIIIII)Ljavax/xml/datatype/Duration;

    move-result-object v2

    return-object v2

    .line 389
    :cond_18
    const/4 v4, 0x0

    .line 391
    .local v4, "tooLong":Z
    cmp-long v2, v0, v2

    if-gez v2, :cond_32

    .line 392
    const/4 v2, 0x0

    .line 393
    .local v2, "isPositive":Z
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v0, v5

    if-nez v3, :cond_29

    .line 394
    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    .line 395
    const/4 v3, 0x1

    move v4, v3

    .line 397
    :cond_29
    const-wide/16 v5, -0x1

    mul-long/2addr v0, v5

    move/from16 v19, v4

    move v4, v2

    move/from16 v2, v19

    goto :goto_38

    .line 400
    .end local v2    # "isPositive":Z
    :cond_32
    const/4 v2, 0x1

    move/from16 v19, v4

    move v4, v2

    move/from16 v2, v19

    .line 403
    .local v2, "tooLong":Z
    .local v4, "isPositive":Z
    :goto_38
    move-wide v5, v0

    .line 404
    .local v5, "val":J
    const-wide/32 v7, 0xea60

    rem-long v9, v5, v7

    long-to-int v3, v9

    .line 405
    .local v3, "milliseconds":I
    if-eqz v2, :cond_45

    .line 406
    add-int/lit8 v3, v3, 0x1

    move v11, v3

    goto :goto_46

    .line 405
    :cond_45
    move v11, v3

    .line 408
    .end local v3    # "milliseconds":I
    .local v11, "milliseconds":I
    :goto_46
    rem-int/lit16 v3, v11, 0x3e8

    const-wide/16 v12, 0x18

    const-wide/16 v14, 0x3c

    if-nez v3, :cond_98

    .line 409
    div-int/lit16 v10, v11, 0x3e8

    .line 410
    .local v10, "seconds":I
    div-long/2addr v5, v7

    .line 411
    rem-long v7, v5, v14

    long-to-int v3, v7

    .line 412
    .local v3, "minutes":I
    div-long v14, v5, v14

    .line 413
    .end local v5    # "val":J
    .local v14, "val":J
    rem-long v5, v14, v12

    long-to-int v8, v5

    .line 414
    .local v8, "hours":I
    div-long v12, v14, v12

    .line 415
    .local v12, "days":J
    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v12, v5

    if-gtz v5, :cond_73

    .line 416
    const/high16 v6, -0x80000000

    long-to-int v7, v12

    const/high16 v5, -0x80000000

    move v9, v3

    move-object/from16 v3, p0

    .end local v3    # "minutes":I
    .local v9, "minutes":I
    invoke-virtual/range {v3 .. v10}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZIIIIII)Ljavax/xml/datatype/Duration;

    move-result-object v5

    move v6, v8

    move v3, v9

    move/from16 v16, v10

    .end local v8    # "hours":I
    .end local v9    # "minutes":I
    .end local v10    # "seconds":I
    .restart local v3    # "minutes":I
    .local v6, "hours":I
    .local v16, "seconds":I
    return-object v5

    .line 420
    .end local v6    # "hours":I
    .end local v16    # "seconds":I
    .restart local v8    # "hours":I
    .restart local v10    # "seconds":I
    :cond_73
    move v6, v8

    move/from16 v16, v10

    .line 421
    .end local v8    # "hours":I
    .end local v10    # "seconds":I
    .restart local v6    # "hours":I
    .restart local v16    # "seconds":I
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    int-to-long v9, v6

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    int-to-long v9, v3

    .line 422
    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    move-wide/from16 v17, v0

    .end local v0    # "_durationInMilliseconds":J
    .local v17, "_durationInMilliseconds":J
    int-to-long v0, v11

    const/4 v10, 0x3

    invoke-static {v0, v1, v10}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v10

    .line 420
    const/4 v5, 0x0

    move v0, v6

    .end local v6    # "hours":I
    .local v0, "hours":I
    const/4 v6, 0x0

    move v1, v0

    move v0, v3

    move-object/from16 v3, p0

    .end local v3    # "minutes":I
    .local v0, "minutes":I
    .local v1, "hours":I
    invoke-virtual/range {v3 .. v10}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object v5

    return-object v5

    .line 426
    .end local v1    # "hours":I
    .end local v12    # "days":J
    .end local v14    # "val":J
    .end local v16    # "seconds":I
    .end local v17    # "_durationInMilliseconds":J
    .local v0, "_durationInMilliseconds":J
    .restart local v5    # "val":J
    :cond_98
    move-wide/from16 v17, v0

    const/4 v10, 0x3

    .end local v0    # "_durationInMilliseconds":J
    .restart local v17    # "_durationInMilliseconds":J
    int-to-long v0, v11

    invoke-static {v0, v1, v10}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v10

    .line 427
    .local v10, "seconds":Ljava/math/BigDecimal;
    div-long/2addr v5, v7

    .line 428
    rem-long v0, v5, v14

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    .line 429
    .local v9, "minutes":Ljava/math/BigInteger;
    div-long/2addr v5, v14

    .line 430
    rem-long v0, v5, v12

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .line 431
    .local v8, "hours":Ljava/math/BigInteger;
    div-long v0, v5, v12

    .line 432
    .end local v5    # "val":J
    .local v0, "val":J
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    .line 433
    .local v7, "days":Ljava/math/BigInteger;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object v5

    return-object v5
.end method

.method public whitelist test-api newDurationDayTime(Ljava/lang/String;)Ljavax/xml/datatype/Duration;
    .registers 9
    .param p1, "lexicalRepresentation"    # Ljava/lang/String;

    .line 331
    if-eqz p1, :cond_40

    .line 335
    const/16 v0, 0x54

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 336
    .local v0, "pos":I
    if-ltz v0, :cond_c

    move v1, v0

    goto :goto_10

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 337
    .local v1, "length":I
    :goto_10
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_3b

    .line 338
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 339
    .local v3, "c":C
    const/16 v4, 0x59

    if-eq v3, v4, :cond_22

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_22

    .line 337
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 340
    .restart local v3    # "c":C
    :cond_22
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid dayTimeDuration value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 343
    .end local v2    # "i":I
    .end local v3    # "c":C
    :cond_3b
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;

    move-result-object v2

    return-object v2

    .line 332
    .end local v0    # "pos":I
    .end local v1    # "length":I
    :cond_40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "lexicalRepresentation == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api newDurationDayTime(ZIIII)Ljavax/xml/datatype/Duration;
    .registers 14
    .param p1, "isPositive"    # Z
    .param p2, "day"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I

    .line 514
    const/high16 v2, -0x80000000

    const/high16 v3, -0x80000000

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .end local p1    # "isPositive":Z
    .end local p2    # "day":I
    .end local p3    # "hour":I
    .end local p4    # "minute":I
    .end local p5    # "second":I
    .local v1, "isPositive":Z
    .local v4, "day":I
    .local v5, "hour":I
    .local v6, "minute":I
    .local v7, "second":I
    invoke-virtual/range {v0 .. v7}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZIIIIII)Ljavax/xml/datatype/Duration;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api newDurationDayTime(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljavax/xml/datatype/Duration;
    .registers 15
    .param p1, "isPositive"    # Z
    .param p2, "day"    # Ljava/math/BigInteger;
    .param p3, "hour"    # Ljava/math/BigInteger;
    .param p4, "minute"    # Ljava/math/BigInteger;
    .param p5, "second"    # Ljava/math/BigInteger;

    .line 473
    nop

    .line 480
    if-eqz p5, :cond_9

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    move-object v8, v0

    .line 473
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p1    # "isPositive":Z
    .end local p2    # "day":Ljava/math/BigInteger;
    .end local p3    # "hour":Ljava/math/BigInteger;
    .end local p4    # "minute":Ljava/math/BigInteger;
    .local v2, "isPositive":Z
    .local v5, "day":Ljava/math/BigInteger;
    .local v6, "hour":Ljava/math/BigInteger;
    .local v7, "minute":Ljava/math/BigInteger;
    invoke-virtual/range {v1 .. v8}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api newDurationYearMonth(J)Ljavax/xml/datatype/Duration;
    .registers 4
    .param p1, "durationInMilliseconds"    # J

    .line 594
    invoke-virtual {p0, p1, p2}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(J)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api newDurationYearMonth(Ljava/lang/String;)Ljavax/xml/datatype/Duration;
    .registers 8
    .param p1, "lexicalRepresentation"    # Ljava/lang/String;

    .line 544
    if-eqz p1, :cond_36

    .line 548
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 549
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_31

    .line 550
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 551
    .local v2, "c":C
    const/16 v3, 0x44

    if-eq v2, v3, :cond_18

    const/16 v3, 0x54

    if-eq v2, v3, :cond_18

    .line 549
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 552
    .restart local v2    # "c":C
    :cond_18
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid yearMonthDuration value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 555
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_31
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;

    move-result-object v1

    return-object v1

    .line 545
    .end local v0    # "length":I
    :cond_36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "lexicalRepresentation == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api newDurationYearMonth(ZII)Ljavax/xml/datatype/Duration;
    .registers 12
    .param p1, "isPositive"    # Z
    .param p2, "year"    # I
    .param p3, "month"    # I

    .line 657
    const/high16 v6, -0x80000000

    const/high16 v7, -0x80000000

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "isPositive":Z
    .end local p2    # "year":I
    .end local p3    # "month":I
    .local v1, "isPositive":Z
    .local v2, "year":I
    .local v3, "month":I
    invoke-virtual/range {v0 .. v7}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZIIIIII)Ljavax/xml/datatype/Duration;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api newDurationYearMonth(ZLjava/math/BigInteger;Ljava/math/BigInteger;)Ljavax/xml/datatype/Duration;
    .registers 12
    .param p1, "isPositive"    # Z
    .param p2, "year"    # Ljava/math/BigInteger;
    .param p3, "month"    # Ljava/math/BigInteger;

    .line 625
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "isPositive":Z
    .end local p2    # "year":Ljava/math/BigInteger;
    .end local p3    # "month":Ljava/math/BigInteger;
    .local v1, "isPositive":Z
    .local v2, "year":Ljava/math/BigInteger;
    .local v3, "month":Ljava/math/BigInteger;
    invoke-virtual/range {v0 .. v7}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist test-api newXMLGregorianCalendar()Ljavax/xml/datatype/XMLGregorianCalendar;
.end method

.method public whitelist test-api newXMLGregorianCalendar(IIIIIIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .registers 21
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "millisecond"    # I
    .param p8, "timezone"    # I

    .line 835
    move/from16 v0, p7

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_c

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    move-object v4, v2

    .line 839
    .local v4, "realYear":Ljava/math/BigInteger;
    const/4 v2, 0x0

    .line 840
    .local v2, "realMillisecond":Ljava/math/BigDecimal;
    if-eq v0, v1, :cond_38

    .line 841
    if-ltz v0, :cond_1f

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_1f

    .line 848
    int-to-long v5, v0

    const/4 v1, 0x3

    invoke-static {v5, v6, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    move-object v10, v2

    goto :goto_39

    .line 842
    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javax.xml.datatype.DatatypeFactory#newXMLGregorianCalendar(int year, int month, int day, int hour, int minute, int second, int millisecond, int timezone)with invalid millisecond: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 840
    :cond_38
    move-object v10, v2

    .line 851
    .end local v2    # "realMillisecond":Ljava/math/BigDecimal;
    .local v10, "realMillisecond":Ljava/math/BigDecimal;
    :goto_39
    move-object v3, p0

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    return-object v1
.end method

.method public abstract whitelist test-api newXMLGregorianCalendar(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;
.end method

.method public abstract whitelist test-api newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;
.end method

.method public abstract whitelist test-api newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Ljavax/xml/datatype/XMLGregorianCalendar;
.end method

.method public whitelist test-api newXMLGregorianCalendarDate(IIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .registers 14
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "timezone"    # I

    .line 892
    const/high16 v6, -0x80000000

    const/high16 v7, -0x80000000

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v8, p4

    .end local p1    # "year":I
    .end local p2    # "month":I
    .end local p3    # "day":I
    .end local p4    # "timezone":I
    .local v1, "year":I
    .local v2, "month":I
    .local v3, "day":I
    .local v8, "timezone":I
    invoke-virtual/range {v0 .. v8}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(IIIIIIII)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api newXMLGregorianCalendarTime(IIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .registers 14
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "timezone"    # I

    .line 928
    const/high16 v3, -0x80000000

    const/high16 v7, -0x80000000

    const/high16 v1, -0x80000000

    const/high16 v2, -0x80000000

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v8, p4

    .end local p1    # "hours":I
    .end local p2    # "minutes":I
    .end local p3    # "seconds":I
    .end local p4    # "timezone":I
    .local v4, "hours":I
    .local v5, "minutes":I
    .local v6, "seconds":I
    .local v8, "timezone":I
    invoke-virtual/range {v0 .. v8}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(IIIIIIII)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api newXMLGregorianCalendarTime(IIIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .registers 15
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "milliseconds"    # I
    .param p5, "timezone"    # I

    .line 1007
    const/4 v0, 0x0

    .line 1008
    .local v0, "realMilliseconds":Ljava/math/BigDecimal;
    const/high16 v1, -0x80000000

    if-eq p4, v1, :cond_2c

    .line 1009
    if-ltz p4, :cond_13

    const/16 v1, 0x3e8

    if-gt p4, v1, :cond_13

    .line 1016
    int-to-long v1, p4

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    move-object v7, v0

    goto :goto_2d

    .line 1010
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javax.xml.datatype.DatatypeFactory#newXMLGregorianCalendarTime(int hours, int minutes, int seconds, int milliseconds, int timezone)with invalid milliseconds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1008
    :cond_2c
    move-object v7, v0

    .line 1019
    .end local v0    # "realMilliseconds":Ljava/math/BigDecimal;
    .local v7, "realMilliseconds":Ljava/math/BigDecimal;
    :goto_2d
    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v8, p5

    .end local p1    # "hours":I
    .end local p2    # "minutes":I
    .end local p3    # "seconds":I
    .end local p5    # "timezone":I
    .local v4, "hours":I
    .local v5, "minutes":I
    .local v6, "seconds":I
    .local v8, "timezone":I
    invoke-virtual/range {v3 .. v8}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendarTime(IIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api newXMLGregorianCalendarTime(IIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;
    .registers 15
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "fractionalSecond"    # Ljava/math/BigDecimal;
    .param p5, "timezone"    # I

    .line 967
    const/high16 v2, -0x80000000

    const/high16 v3, -0x80000000

    const/4 v1, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    .end local p1    # "hours":I
    .end local p2    # "minutes":I
    .end local p3    # "seconds":I
    .end local p4    # "fractionalSecond":Ljava/math/BigDecimal;
    .end local p5    # "timezone":I
    .local v4, "hours":I
    .local v5, "minutes":I
    .local v6, "seconds":I
    .local v7, "fractionalSecond":Ljava/math/BigDecimal;
    .local v8, "timezone":I
    invoke-virtual/range {v0 .. v8}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p1

    return-object p1
.end method
