.class public abstract Ljavax/xml/datatype/DatatypeFactory;
.super Ljava/lang/Object;
.source "DatatypeFactory.java"


# static fields
.field public static final DATATYPEFACTORY_IMPLEMENTATION_CLASS:Ljava/lang/String;

.field public static final DATATYPEFACTORY_PROPERTY:Ljava/lang/String; = "javax.xml.datatype.DatatypeFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 75
    new-instance v0, Ljava/lang/String;

    #@2
    const-string/jumbo v1, "org.apache.xerces.jaxp.datatype.DatatypeFactoryImpl"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljavax/xml/datatype/DatatypeFactory;->DATATYPEFACTORY_IMPLEMENTATION_CLASS:Ljava/lang/String;

    #@a
    .line 60
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static newInstance()Ljavax/xml/datatype/DatatypeFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    :try_start_0
    const-string/jumbo v1, "javax.xml.datatype.DatatypeFactory"

    #@3
    .line 103
    sget-object v2, Ljavax/xml/datatype/DatatypeFactory;->DATATYPEFACTORY_IMPLEMENTATION_CLASS:Ljava/lang/String;

    #@5
    .line 99
    invoke-static {v1, v2}, Ljavax/xml/datatype/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Ljavax/xml/datatype/DatatypeFactory;
    :try_end_0
    .catch Ljavax/xml/datatype/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    return-object v1

    #@c
    .line 105
    :catch_0
    move-exception v0

    #@d
    .line 106
    .local v0, "e":Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
    new-instance v1, Ljavax/xml/datatype/DatatypeConfigurationException;

    #@f
    invoke-virtual {v0}, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v0}, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    #@16
    move-result-object v3

    #@17
    invoke-direct {v1, v2, v3}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    throw v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/datatype/DatatypeFactory;
    .locals 6
    .param p0, "factoryClassName"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    if-nez p0, :cond_0

    #@2
    .line 120
    new-instance v4, Ljavax/xml/datatype/DatatypeConfigurationException;

    #@4
    const-string/jumbo v5, "factoryClassName == null"

    #@7
    invoke-direct {v4, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 122
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@14
    move-result-object p1

    #@15
    .line 126
    :cond_1
    if-eqz p1, :cond_2

    #@17
    .line 127
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@1a
    move-result-object v3

    #@1b
    .line 129
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    check-cast v4, Ljavax/xml/datatype/DatatypeFactory;

    #@21
    return-object v4

    #@22
    .line 128
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result-object v3

    #@26
    .restart local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    #@27
    .line 134
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    #@28
    .line 135
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljavax/xml/datatype/DatatypeConfigurationException;

    #@2a
    invoke-direct {v4, v1}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/Throwable;)V

    #@2d
    throw v4

    #@2e
    .line 132
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    #@2f
    .line 133
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljavax/xml/datatype/DatatypeConfigurationException;

    #@31
    invoke-direct {v4, v2}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/Throwable;)V

    #@34
    throw v4

    #@35
    .line 130
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    #@36
    .line 131
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljavax/xml/datatype/DatatypeConfigurationException;

    #@38
    invoke-direct {v4, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/Throwable;)V

    #@3b
    throw v4
.end method


# virtual methods
.method public abstract newDuration(J)Ljavax/xml/datatype/Duration;
.end method

.method public abstract newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;
.end method

.method public newDuration(ZIIIIII)Ljavax/xml/datatype/Duration;
    .locals 8
    .param p1, "isPositive"    # Z
    .param p2, "years"    # I
    .param p3, "months"    # I
    .param p4, "days"    # I
    .param p5, "hours"    # I
    .param p6, "minutes"    # I
    .param p7, "seconds"    # I

    #@0
    .prologue
    .line 278
    const/high16 v0, -0x80000000

    #@2
    if-eq p2, v0, :cond_0

    #@4
    int-to-long v0, p2

    #@5
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@8
    move-result-object v2

    #@9
    .line 281
    :goto_0
    const/high16 v0, -0x80000000

    #@b
    if-eq p3, v0, :cond_1

    #@d
    int-to-long v0, p3

    #@e
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@11
    move-result-object v3

    #@12
    .line 284
    :goto_1
    const/high16 v0, -0x80000000

    #@14
    if-eq p4, v0, :cond_2

    #@16
    int-to-long v0, p4

    #@17
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@1a
    move-result-object v4

    #@1b
    .line 287
    :goto_2
    const/high16 v0, -0x80000000

    #@1d
    if-eq p5, v0, :cond_3

    #@1f
    int-to-long v0, p5

    #@20
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@23
    move-result-object v5

    #@24
    .line 290
    :goto_3
    const/high16 v0, -0x80000000

    #@26
    if-eq p6, v0, :cond_4

    #@28
    int-to-long v0, p6

    #@29
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@2c
    move-result-object v6

    #@2d
    .line 293
    :goto_4
    const/high16 v0, -0x80000000

    #@2f
    if-eq p7, v0, :cond_5

    #@31
    int-to-long v0, p7

    #@32
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    #@35
    move-result-object v7

    #@36
    :goto_5
    move-object v0, p0

    #@37
    move v1, p1

    #@38
    .line 295
    invoke-virtual/range {v0 .. v7}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    #@3b
    move-result-object v0

    #@3c
    return-object v0

    #@3d
    .line 278
    :cond_0
    const/4 v2, 0x0

    #@3e
    .local v2, "realYears":Ljava/math/BigInteger;
    goto :goto_0

    #@3f
    .line 281
    .end local v2    # "realYears":Ljava/math/BigInteger;
    :cond_1
    const/4 v3, 0x0

    #@40
    .local v3, "realMonths":Ljava/math/BigInteger;
    goto :goto_1

    #@41
    .line 284
    .end local v3    # "realMonths":Ljava/math/BigInteger;
    :cond_2
    const/4 v4, 0x0

    #@42
    .local v4, "realDays":Ljava/math/BigInteger;
    goto :goto_2

    #@43
    .line 287
    .end local v4    # "realDays":Ljava/math/BigInteger;
    :cond_3
    const/4 v5, 0x0

    #@44
    .local v5, "realHours":Ljava/math/BigInteger;
    goto :goto_3

    #@45
    .line 290
    .end local v5    # "realHours":Ljava/math/BigInteger;
    :cond_4
    const/4 v6, 0x0

    #@46
    .local v6, "realMinutes":Ljava/math/BigInteger;
    goto :goto_4

    #@47
    .line 293
    .end local v6    # "realMinutes":Ljava/math/BigInteger;
    :cond_5
    const/4 v7, 0x0

    #@48
    .local v7, "realSeconds":Ljava/math/BigDecimal;
    goto :goto_5
.end method

.method public abstract newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;
.end method

.method public newDurationDayTime(J)Ljavax/xml/datatype/Duration;
    .locals 27
    .param p1, "durationInMilliseconds"    # J

    #@0
    .prologue
    .line 384
    move-wide/from16 v18, p1

    #@2
    .line 385
    .local v18, "_durationInMilliseconds":J
    const-wide/16 v4, 0x0

    #@4
    cmp-long v2, v18, v4

    #@6
    if-nez v2, :cond_0

    #@8
    .line 386
    const/4 v3, 0x1

    #@9
    const/high16 v4, -0x80000000

    #@b
    .line 387
    const/high16 v5, -0x80000000

    #@d
    const/4 v6, 0x0

    #@e
    const/4 v7, 0x0

    #@f
    const/4 v8, 0x0

    #@10
    const/4 v9, 0x0

    #@11
    move-object/from16 v2, p0

    #@13
    .line 386
    invoke-virtual/range {v2 .. v9}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZIIIIII)Ljavax/xml/datatype/Duration;

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    .line 389
    :cond_0
    const/16 v23, 0x0

    #@1a
    .line 391
    .local v23, "tooLong":Z
    const-wide/16 v4, 0x0

    #@1c
    cmp-long v2, v18, v4

    #@1e
    if-gez v2, :cond_3

    #@20
    .line 392
    const/4 v3, 0x0

    #@21
    .line 393
    .local v3, "isPositive":Z
    const-wide/high16 v4, -0x8000000000000000L

    #@23
    cmp-long v2, v18, v4

    #@25
    if-nez v2, :cond_1

    #@27
    .line 394
    const-wide/16 v4, 0x1

    #@29
    add-long v18, v18, v4

    #@2b
    .line 395
    const/16 v23, 0x1

    #@2d
    .line 397
    :cond_1
    const-wide/16 v4, -0x1

    #@2f
    mul-long v18, v18, v4

    #@31
    .line 403
    :goto_0
    move-wide/from16 v24, v18

    #@33
    .line 404
    .local v24, "val":J
    const-wide/32 v4, 0xea60

    #@36
    rem-long v4, v24, v4

    #@38
    long-to-int v0, v4

    #@39
    move/from16 v22, v0

    #@3b
    .line 405
    .local v22, "milliseconds":I
    if-eqz v23, :cond_2

    #@3d
    .line 406
    add-int/lit8 v22, v22, 0x1

    #@3f
    .line 408
    :cond_2
    move/from16 v0, v22

    #@41
    rem-int/lit16 v2, v0, 0x3e8

    #@43
    if-nez v2, :cond_5

    #@45
    .line 409
    move/from16 v0, v22

    #@47
    div-int/lit16 v9, v0, 0x3e8

    #@49
    .line 410
    .local v9, "seconds":I
    const-wide/32 v4, 0xea60

    #@4c
    div-long v24, v24, v4

    #@4e
    .line 411
    const-wide/16 v4, 0x3c

    #@50
    rem-long v4, v24, v4

    #@52
    long-to-int v8, v4

    #@53
    .line 412
    .local v8, "minutes":I
    const-wide/16 v4, 0x3c

    #@55
    div-long v24, v24, v4

    #@57
    .line 413
    const-wide/16 v4, 0x18

    #@59
    rem-long v4, v24, v4

    #@5b
    long-to-int v7, v4

    #@5c
    .line 414
    .local v7, "hours":I
    const-wide/16 v4, 0x18

    #@5e
    div-long v20, v24, v4

    #@60
    .line 415
    .local v20, "days":J
    const-wide/32 v4, 0x7fffffff

    #@63
    cmp-long v2, v20, v4

    #@65
    if-gtz v2, :cond_4

    #@67
    .line 417
    move-wide/from16 v0, v20

    #@69
    long-to-int v6, v0

    #@6a
    .line 416
    const/high16 v4, -0x80000000

    #@6c
    .line 417
    const/high16 v5, -0x80000000

    #@6e
    move-object/from16 v2, p0

    #@70
    .line 416
    invoke-virtual/range {v2 .. v9}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZIIIIII)Ljavax/xml/datatype/Duration;

    #@73
    move-result-object v2

    #@74
    return-object v2

    #@75
    .line 400
    .end local v3    # "isPositive":Z
    .end local v7    # "hours":I
    .end local v8    # "minutes":I
    .end local v9    # "seconds":I
    .end local v20    # "days":J
    .end local v22    # "milliseconds":I
    .end local v24    # "val":J
    :cond_3
    const/4 v3, 0x1

    #@76
    .restart local v3    # "isPositive":Z
    goto :goto_0

    #@77
    .line 421
    .restart local v7    # "hours":I
    .restart local v8    # "minutes":I
    .restart local v9    # "seconds":I
    .restart local v20    # "days":J
    .restart local v22    # "milliseconds":I
    .restart local v24    # "val":J
    :cond_4
    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@7a
    move-result-object v14

    #@7b
    int-to-long v4, v7

    #@7c
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@7f
    move-result-object v15

    #@80
    .line 422
    int-to-long v4, v8

    #@81
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@84
    move-result-object v16

    #@85
    move/from16 v0, v22

    #@87
    int-to-long v4, v0

    #@88
    const/4 v2, 0x3

    #@89
    invoke-static {v4, v5, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    #@8c
    move-result-object v17

    #@8d
    .line 420
    const/4 v12, 0x0

    #@8e
    const/4 v13, 0x0

    #@8f
    move-object/from16 v10, p0

    #@91
    move v11, v3

    #@92
    invoke-virtual/range {v10 .. v17}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    #@95
    move-result-object v2

    #@96
    return-object v2

    #@97
    .line 426
    .end local v7    # "hours":I
    .end local v8    # "minutes":I
    .end local v9    # "seconds":I
    .end local v20    # "days":J
    :cond_5
    move/from16 v0, v22

    #@99
    int-to-long v4, v0

    #@9a
    const/4 v2, 0x3

    #@9b
    invoke-static {v4, v5, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    #@9e
    move-result-object v17

    #@9f
    .line 427
    .local v17, "seconds":Ljava/math/BigDecimal;
    const-wide/32 v4, 0xea60

    #@a2
    div-long v24, v24, v4

    #@a4
    .line 428
    const-wide/16 v4, 0x3c

    #@a6
    rem-long v4, v24, v4

    #@a8
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@ab
    move-result-object v16

    #@ac
    .line 429
    .local v16, "minutes":Ljava/math/BigInteger;
    const-wide/16 v4, 0x3c

    #@ae
    div-long v24, v24, v4

    #@b0
    .line 430
    const-wide/16 v4, 0x18

    #@b2
    rem-long v4, v24, v4

    #@b4
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@b7
    move-result-object v15

    #@b8
    .line 431
    .local v15, "hours":Ljava/math/BigInteger;
    const-wide/16 v4, 0x18

    #@ba
    div-long v24, v24, v4

    #@bc
    .line 432
    invoke-static/range {v24 .. v25}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@bf
    move-result-object v14

    #@c0
    .line 433
    .local v14, "days":Ljava/math/BigInteger;
    const/4 v12, 0x0

    #@c1
    const/4 v13, 0x0

    #@c2
    move-object/from16 v10, p0

    #@c4
    move v11, v3

    #@c5
    invoke-virtual/range {v10 .. v17}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    #@c8
    move-result-object v2

    #@c9
    return-object v2
.end method

.method public newDurationDayTime(Ljava/lang/String;)Ljavax/xml/datatype/Duration;
    .locals 7
    .param p1, "lexicalRepresentation"    # Ljava/lang/String;

    #@0
    .prologue
    .line 331
    if-nez p1, :cond_0

    #@2
    .line 332
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v5, "lexicalRepresentation == null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 335
    :cond_0
    const/16 v4, 0x54

    #@d
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    #@10
    move-result v3

    #@11
    .line 336
    .local v3, "pos":I
    if-ltz v3, :cond_2

    #@13
    move v2, v3

    #@14
    .line 337
    .local v2, "length":I
    :goto_0
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    #@17
    .line 338
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v0

    #@1b
    .line 339
    .local v0, "c":C
    const/16 v4, 0x59

    #@1d
    if-eq v0, v4, :cond_1

    #@1f
    const/16 v4, 0x4d

    #@21
    if-ne v0, v4, :cond_3

    #@23
    .line 340
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@25
    new-instance v5, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v6, "Invalid dayTimeDuration value: "

    #@2d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v4

    #@3d
    .line 336
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@40
    move-result v2

    #@41
    .restart local v2    # "length":I
    goto :goto_0

    #@42
    .line 337
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_1

    #@45
    .line 343
    .end local v0    # "c":C
    :cond_4
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;

    #@48
    move-result-object v4

    #@49
    return-object v4
.end method

.method public newDurationDayTime(ZIIII)Ljavax/xml/datatype/Duration;
    .locals 8
    .param p1, "isPositive"    # Z
    .param p2, "day"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I

    #@0
    .prologue
    const/high16 v2, -0x80000000

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v3, v2

    #@5
    move v4, p2

    #@6
    move v5, p3

    #@7
    move v6, p4

    #@8
    move v7, p5

    #@9
    .line 514
    invoke-virtual/range {v0 .. v7}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZIIIIII)Ljavax/xml/datatype/Duration;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public newDurationDayTime(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljavax/xml/datatype/Duration;
    .locals 8
    .param p1, "isPositive"    # Z
    .param p2, "day"    # Ljava/math/BigInteger;
    .param p3, "hour"    # Ljava/math/BigInteger;
    .param p4, "minute"    # Ljava/math/BigInteger;
    .param p5, "second"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 480
    if-eqz p5, :cond_0

    #@3
    new-instance v7, Ljava/math/BigDecimal;

    #@5
    invoke-direct {v7, p5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    #@8
    :goto_0
    move-object v0, p0

    #@9
    move v1, p1

    #@a
    move-object v3, v2

    #@b
    move-object v4, p2

    #@c
    move-object v5, p3

    #@d
    move-object v6, p4

    #@e
    .line 473
    invoke-virtual/range {v0 .. v7}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    :cond_0
    move-object v7, v2

    #@14
    .line 480
    goto :goto_0
.end method

.method public newDurationYearMonth(J)Ljavax/xml/datatype/Duration;
    .locals 1
    .param p1, "durationInMilliseconds"    # J

    #@0
    .prologue
    .line 594
    invoke-virtual {p0, p1, p2}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(J)Ljavax/xml/datatype/Duration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newDurationYearMonth(Ljava/lang/String;)Ljavax/xml/datatype/Duration;
    .locals 6
    .param p1, "lexicalRepresentation"    # Ljava/lang/String;

    #@0
    .prologue
    .line 544
    if-nez p1, :cond_0

    #@2
    .line 545
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v4, "lexicalRepresentation == null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 548
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v2

    #@f
    .line 549
    .local v2, "length":I
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    #@12
    .line 550
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v0

    #@16
    .line 551
    .local v0, "c":C
    const/16 v3, 0x44

    #@18
    if-eq v0, v3, :cond_1

    #@1a
    const/16 v3, 0x54

    #@1c
    if-ne v0, v3, :cond_2

    #@1e
    .line 552
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@20
    new-instance v4, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v5, "Invalid yearMonthDuration value: "

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v3

    #@38
    .line 549
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 555
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;

    #@3e
    move-result-object v3

    #@3f
    return-object v3
.end method

.method public newDurationYearMonth(ZII)Ljavax/xml/datatype/Duration;
    .locals 8
    .param p1, "isPositive"    # Z
    .param p2, "year"    # I
    .param p3, "month"    # I

    #@0
    .prologue
    const/high16 v4, -0x80000000

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move v5, v4

    #@7
    move v6, v4

    #@8
    move v7, v4

    #@9
    .line 657
    invoke-virtual/range {v0 .. v7}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZIIIIII)Ljavax/xml/datatype/Duration;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public newDurationYearMonth(ZLjava/math/BigInteger;Ljava/math/BigInteger;)Ljavax/xml/datatype/Duration;
    .locals 8
    .param p1, "isPositive"    # Z
    .param p2, "year"    # Ljava/math/BigInteger;
    .param p3, "month"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v5, v4

    #@6
    move-object v6, v4

    #@7
    move-object v7, v4

    #@8
    .line 625
    invoke-virtual/range {v0 .. v7}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public abstract newXMLGregorianCalendar()Ljavax/xml/datatype/XMLGregorianCalendar;
.end method

.method public newXMLGregorianCalendar(IIIIIIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 11
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "millisecond"    # I
    .param p8, "timezone"    # I

    #@0
    .prologue
    .line 835
    const/high16 v2, -0x80000000

    #@2
    if-eq p1, v2, :cond_1

    #@4
    int-to-long v4, p1

    #@5
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@8
    move-result-object v3

    #@9
    .line 839
    :goto_0
    const/4 v9, 0x0

    #@a
    .line 840
    .local v9, "realMillisecond":Ljava/math/BigDecimal;
    const/high16 v2, -0x80000000

    #@c
    move/from16 v0, p7

    #@e
    if-eq v0, v2, :cond_3

    #@10
    .line 841
    if-ltz p7, :cond_0

    #@12
    const/16 v2, 0x3e8

    #@14
    move/from16 v0, p7

    #@16
    if-le v0, v2, :cond_2

    #@18
    .line 842
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1a
    .line 843
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "javax.xml.datatype.DatatypeFactory#newXMLGregorianCalendar(int year, int month, int day, int hour, int minute, int second, int millisecond, int timezone)with invalid millisecond: "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    move/from16 v0, p7

    #@28
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    .line 842
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v2

    #@34
    .line 835
    .end local v9    # "realMillisecond":Ljava/math/BigDecimal;
    :cond_1
    const/4 v3, 0x0

    #@35
    .local v3, "realYear":Ljava/math/BigInteger;
    goto :goto_0

    #@36
    .line 848
    .end local v3    # "realYear":Ljava/math/BigInteger;
    .restart local v9    # "realMillisecond":Ljava/math/BigDecimal;
    :cond_2
    move/from16 v0, p7

    #@38
    int-to-long v4, v0

    #@39
    const/4 v2, 0x3

    #@3a
    invoke-static {v4, v5, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    #@3d
    move-result-object v9

    #@3e
    .end local v9    # "realMillisecond":Ljava/math/BigDecimal;
    :cond_3
    move-object v2, p0

    #@3f
    move v4, p2

    #@40
    move v5, p3

    #@41
    move v6, p4

    #@42
    move/from16 v7, p5

    #@44
    move/from16 v8, p6

    #@46
    move/from16 v10, p8

    #@48
    .line 851
    invoke-virtual/range {v2 .. v10}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    #@4b
    move-result-object v2

    #@4c
    return-object v2
.end method

.method public abstract newXMLGregorianCalendar(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;
.end method

.method public abstract newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;
.end method

.method public abstract newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Ljavax/xml/datatype/XMLGregorianCalendar;
.end method

.method public newXMLGregorianCalendarDate(IIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 9
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "timezone"    # I

    #@0
    .prologue
    const/high16 v4, -0x80000000

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move v5, v4

    #@7
    move v6, v4

    #@8
    move v7, v4

    #@9
    move v8, p4

    #@a
    .line 892
    invoke-virtual/range {v0 .. v8}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(IIIIIIII)Ljavax/xml/datatype/XMLGregorianCalendar;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public newXMLGregorianCalendarTime(IIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 9
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "timezone"    # I

    #@0
    .prologue
    const/high16 v1, -0x80000000

    #@2
    move-object v0, p0

    #@3
    move v2, v1

    #@4
    move v3, v1

    #@5
    move v4, p1

    #@6
    move v5, p2

    #@7
    move v6, p3

    #@8
    move v7, v1

    #@9
    move v8, p4

    #@a
    .line 928
    invoke-virtual/range {v0 .. v8}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(IIIIIIII)Ljavax/xml/datatype/XMLGregorianCalendar;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public newXMLGregorianCalendarTime(IIIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 6
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "milliseconds"    # I
    .param p5, "timezone"    # I

    #@0
    .prologue
    .line 1007
    const/4 v4, 0x0

    #@1
    .line 1008
    .local v4, "realMilliseconds":Ljava/math/BigDecimal;
    const/high16 v0, -0x80000000

    #@3
    if-eq p4, v0, :cond_2

    #@5
    .line 1009
    if-ltz p4, :cond_0

    #@7
    const/16 v0, 0x3e8

    #@9
    if-le p4, v0, :cond_1

    #@b
    .line 1010
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "javax.xml.datatype.DatatypeFactory#newXMLGregorianCalendarTime(int hours, int minutes, int seconds, int milliseconds, int timezone)with invalid milliseconds: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 1010
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 1016
    :cond_1
    int-to-long v0, p4

    #@26
    const/4 v2, 0x3

    #@27
    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    #@2a
    move-result-object v4

    #@2b
    .end local v4    # "realMilliseconds":Ljava/math/BigDecimal;
    :cond_2
    move-object v0, p0

    #@2c
    move v1, p1

    #@2d
    move v2, p2

    #@2e
    move v3, p3

    #@2f
    move v5, p5

    #@30
    .line 1019
    invoke-virtual/range {v0 .. v5}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendarTime(IIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    #@33
    move-result-object v0

    #@34
    return-object v0
.end method

.method public newXMLGregorianCalendarTime(IIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 9
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "fractionalSecond"    # Ljava/math/BigDecimal;
    .param p5, "timezone"    # I

    #@0
    .prologue
    const/high16 v2, -0x80000000

    #@2
    .line 968
    const/4 v1, 0x0

    #@3
    move-object v0, p0

    #@4
    move v3, v2

    #@5
    move v4, p1

    #@6
    move v5, p2

    #@7
    move v6, p3

    #@8
    move-object v7, p4

    #@9
    move v8, p5

    #@a
    .line 967
    invoke-virtual/range {v0 .. v8}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method
