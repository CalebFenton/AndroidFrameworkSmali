.class public abstract Lgov/nist/javax/sip/header/SIPObject;
.super Lgov/nist/core/GenericObject;
.source "SIPObject.java"


# direct methods
.method protected constructor greylist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public greylist dbgPrint()V
    .registers 1

    .line 63
    invoke-super {p0}, Lgov/nist/core/GenericObject;->dbgPrint()V

    .line 64
    return-void
.end method

.method public greylist debugDump()Ljava/lang/String;
    .registers 14

    .line 291
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPObject;->stringRepresentation:Ljava/lang/String;

    .line 292
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 293
    .local v0, "myclass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 294
    const-string v1, "{"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 296
    .local v2, "fields":[Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    array-length v4, v2

    const-string v5, "}"

    if-ge v3, v4, :cond_19d

    .line 297
    aget-object v4, v2, v3

    .line 299
    .local v4, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    .line 300
    .local v6, "modifier":I
    and-int/lit8 v7, v6, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2b

    .line 301
    goto/16 :goto_199

    .line 302
    :cond_2b
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 303
    .local v7, "fieldType":Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    .line 304
    .local v8, "fieldName":Ljava/lang/String;
    const-string v9, "stringRepresentation"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_3d

    .line 306
    goto/16 :goto_199

    .line 308
    :cond_3d
    const-string v9, "indentation"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_47

    .line 310
    goto/16 :goto_199

    .line 312
    :cond_47
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 315
    :try_start_5d
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_ee

    .line 316
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, "fname":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 318
    const-string v9, "int"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_8b

    .line 319
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    .line 320
    .local v9, "intfield":I
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/header/SIPObject;->sprint(I)V

    .line 321
    .end local v9    # "intfield":I
    goto :goto_ec

    :cond_8b
    const-string v9, "short"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_9b

    .line 322
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v9

    .line 323
    .local v9, "shortField":S
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/header/SIPObject;->sprint(S)V

    .line 324
    .end local v9    # "shortField":S
    goto :goto_ec

    :cond_9b
    const-string v9, "char"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_ab

    .line 325
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v9

    .line 326
    .local v9, "charField":C
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/header/SIPObject;->sprint(C)V

    .line 327
    .end local v9    # "charField":C
    goto :goto_ec

    :cond_ab
    const-string v9, "long"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_bb

    .line 328
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v9

    .line 329
    .local v9, "longField":J
    invoke-virtual {p0, v9, v10}, Lgov/nist/javax/sip/header/SIPObject;->sprint(J)V

    .line 330
    .end local v9    # "longField":J
    goto :goto_ec

    :cond_bb
    const-string v9, "boolean"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_cb

    .line 331
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v9

    .line 332
    .local v9, "booleanField":Z
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Z)V

    .line 333
    .end local v9    # "booleanField":Z
    goto :goto_ec

    :cond_cb
    const-string v9, "double"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_db

    .line 334
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v9

    .line 335
    .local v9, "doubleField":D
    invoke-virtual {p0, v9, v10}, Lgov/nist/javax/sip/header/SIPObject;->sprint(D)V

    .end local v9    # "doubleField":D
    goto :goto_eb

    .line 336
    :cond_db
    const-string v9, "float"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_eb

    .line 337
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v9

    .line 338
    .local v9, "floatField":F
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/header/SIPObject;->sprint(F)V

    goto :goto_ec

    .line 336
    .end local v9    # "floatField":F
    :cond_eb
    :goto_eb
    nop

    .line 340
    .end local v5    # "fname":Ljava/lang/String;
    :goto_ec
    goto/16 :goto_196

    :cond_ee
    const-class v9, Lgov/nist/core/GenericObject;

    invoke-virtual {v9, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9
    :try_end_f4
    .catch Ljava/lang/IllegalAccessException; {:try_start_5d .. :try_end_f4} :catch_197

    const-string v11, "<null>"

    if-eqz v9, :cond_117

    .line 341
    :try_start_f8
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_112

    .line 342
    nop

    .line 343
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/core/GenericObject;

    iget v9, p0, Lgov/nist/javax/sip/header/SIPObject;->indentation:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v5, v9}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    move-result-object v5

    .line 342
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_196

    .line 346
    :cond_112
    invoke-virtual {p0, v11}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_196

    .line 349
    :cond_117
    const-class v9, Lgov/nist/core/GenericObjectList;

    .line 350
    invoke-virtual {v9, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_13c

    .line 351
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_138

    .line 352
    nop

    .line 353
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/core/GenericObjectList;

    iget v9, p0, Lgov/nist/javax/sip/header/SIPObject;->indentation:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v5, v9}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    move-result-object v5

    .line 352
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto :goto_196

    .line 356
    :cond_138
    invoke-virtual {p0, v11}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto :goto_196

    .line 362
    :cond_13c
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_163

    .line 363
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto :goto_17b

    .line 365
    :cond_163
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 368
    :goto_17b
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_190

    .line 370
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto :goto_193

    .line 372
    :cond_190
    invoke-virtual {p0, v11}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 374
    :goto_193
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V
    :try_end_196
    .catch Ljava/lang/IllegalAccessException; {:try_start_f8 .. :try_end_196} :catch_197

    .line 378
    :goto_196
    goto :goto_199

    .line 376
    :catch_197
    move-exception v5

    .line 377
    .local v5, "ex1":Ljava/lang/IllegalAccessException;
    nop

    .line 296
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v6    # "modifier":I
    .end local v7    # "fieldType":Ljava/lang/Class;
    .end local v8    # "fieldName":Ljava/lang/String;
    :goto_199
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_19

    .line 380
    .end local v3    # "i":I
    :cond_19d
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPObject;->stringRepresentation:Ljava/lang/String;

    return-object v1
.end method

.method public greylist debugDump(I)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # I

    .line 390
    iget v0, p0, Lgov/nist/javax/sip/header/SIPObject;->indentation:I

    .line 391
    .local v0, "save":I
    iput p1, p0, Lgov/nist/javax/sip/header/SIPObject;->indentation:I

    .line 392
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPObject;->debugDump()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "retval":Ljava/lang/String;
    iput v0, p0, Lgov/nist/javax/sip/header/SIPObject;->indentation:I

    .line 394
    return-object v1
.end method

.method public abstract greylist encode()Ljava/lang/String;
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPObject;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 20
    .param p1, "other"    # Ljava/lang/Object;

    .line 83
    move-object/from16 v1, p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_12

    .line 84
    return v2

    .line 85
    :cond_12
    move-object/from16 v3, p1

    check-cast v3, Lgov/nist/javax/sip/header/SIPObject;

    .line 86
    .local v3, "that":Lgov/nist/javax/sip/header/SIPObject;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 87
    .local v0, "myclass":Ljava/lang/Class;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v5, v4

    move-object v4, v0

    .line 89
    .end local v0    # "myclass":Ljava/lang/Class;
    .local v4, "myclass":Ljava/lang/Class;
    .local v5, "hisclass":Ljava/lang/Class;
    :goto_20
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 90
    .local v6, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 91
    return v2

    .line 92
    :cond_2b
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 93
    .local v7, "hisfields":[Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_31
    array-length v0, v6

    if-ge v8, v0, :cond_16a

    .line 94
    aget-object v9, v6, v8

    .line 95
    .local v9, "f":Ljava/lang/reflect/Field;
    aget-object v10, v7, v8

    .line 97
    .local v10, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    .line 98
    .local v11, "modifier":I
    and-int/lit8 v0, v11, 0x2

    const/4 v12, 0x2

    if-ne v0, v12, :cond_43

    .line 99
    goto/16 :goto_165

    .line 100
    :cond_43
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    .line 101
    .local v12, "fieldType":Ljava/lang/Class;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    .line 102
    .local v13, "fieldName":Ljava/lang/String;
    const-string v0, "stringRepresentation"

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_55

    .line 103
    goto/16 :goto_165

    .line 105
    :cond_55
    const-string v0, "indentation"

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5f

    .line 106
    goto/16 :goto_165

    .line 110
    :cond_5f
    :try_start_5f
    invoke-virtual {v12}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 111
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "fname":Ljava/lang/String;
    const-string v14, "int"

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_7c

    .line 113
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v10, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    if-eq v14, v15, :cond_f4

    .line 114
    return v2

    .line 115
    :cond_7c
    const-string v14, "short"

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_8f

    .line 116
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v14

    invoke-virtual {v10, v3}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v15

    if-eq v14, v15, :cond_f4

    .line 117
    return v2

    .line 118
    :cond_8f
    const-string v14, "char"

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_a2

    .line 119
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v14

    invoke-virtual {v10, v3}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v15

    if-eq v14, v15, :cond_f4

    .line 120
    return v2

    .line 121
    :cond_a2
    const-string v14, "long"

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_b7

    .line 122
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v14

    invoke-virtual {v10, v3}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_f4

    .line 123
    return v2

    .line 124
    :cond_b7
    const-string v14, "boolean"

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_ca

    .line 125
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v10, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v15

    if-eq v14, v15, :cond_f4

    .line 126
    return v2

    .line 127
    :cond_ca
    const-string v14, "double"

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_df

    .line 128
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v14

    invoke-virtual {v10, v3}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v16

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_f4

    .line 129
    return v2

    .line 130
    :cond_df
    const-string v14, "float"

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_f4

    .line 131
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v14

    invoke-virtual {v10, v3}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v15

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_f4

    .line 132
    return v2

    .line 134
    .end local v0    # "fname":Ljava/lang/String;
    :cond_f4
    goto :goto_129

    :cond_f5
    invoke-virtual {v10, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-ne v0, v14, :cond_100

    .line 135
    goto :goto_165

    .line 136
    :cond_100
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10d

    invoke-virtual {v10, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10d

    .line 137
    return v2

    .line 138
    :cond_10d
    invoke-virtual {v10, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11a

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11a

    .line 139
    return v2

    .line 140
    :cond_11a
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_126
    .catch Ljava/lang/IllegalAccessException; {:try_start_5f .. :try_end_126} :catch_12a

    if-nez v0, :cond_129

    .line 141
    return v2

    .line 147
    :cond_129
    :goto_129
    goto :goto_165

    .line 142
    :catch_12a
    move-exception v0

    .line 143
    .local v0, "ex1":Ljava/lang/IllegalAccessException;
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessed field "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "modifier  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "modifier.private  2"

    invoke-virtual {v2, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 93
    .end local v0    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v9    # "f":Ljava/lang/reflect/Field;
    .end local v10    # "g":Ljava/lang/reflect/Field;
    .end local v11    # "modifier":I
    .end local v12    # "fieldType":Ljava/lang/Class;
    .end local v13    # "fieldName":Ljava/lang/String;
    :goto_165
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    goto/16 :goto_31

    .line 149
    .end local v8    # "i":I
    :cond_16a
    const-class v0, Lgov/nist/javax/sip/header/SIPObject;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_175

    .line 150
    nop

    .line 156
    .end local v6    # "fields":[Ljava/lang/reflect/Field;
    .end local v7    # "hisfields":[Ljava/lang/reflect/Field;
    const/4 v0, 0x1

    return v0

    .line 152
    .restart local v6    # "fields":[Ljava/lang/reflect/Field;
    .restart local v7    # "hisfields":[Ljava/lang/reflect/Field;
    :cond_175
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 153
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 155
    .end local v6    # "fields":[Ljava/lang/reflect/Field;
    .end local v7    # "hisfields":[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    goto/16 :goto_20
.end method

.method public greylist match(Ljava/lang/Object;)Z
    .registers 23
    .param p1, "other"    # Ljava/lang/Object;

    .line 172
    move-object/from16 v1, p0

    const/4 v2, 0x1

    if-nez p1, :cond_6

    .line 173
    return v2

    .line 176
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_16

    .line 177
    return v3

    .line 178
    :cond_16
    move-object/from16 v4, p1

    check-cast v4, Lgov/nist/core/GenericObject;

    .line 179
    .local v4, "that":Lgov/nist/core/GenericObject;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 180
    .local v0, "myclass":Ljava/lang/Class;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v6, v5

    move-object v5, v0

    .line 182
    .end local v0    # "myclass":Ljava/lang/Class;
    .local v5, "myclass":Ljava/lang/Class;
    .local v6, "hisclass":Ljava/lang/Class;
    :goto_24
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 183
    .local v7, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    .line 184
    .local v8, "hisfields":[Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_2e
    array-length v0, v7

    if-ge v9, v0, :cond_1d4

    .line 185
    aget-object v10, v7, v9

    .line 186
    .local v10, "f":Ljava/lang/reflect/Field;
    aget-object v11, v8, v9

    .line 188
    .local v11, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    .line 189
    .local v12, "modifier":I
    and-int/lit8 v0, v12, 0x2

    const/4 v13, 0x2

    if-ne v0, v13, :cond_44

    .line 190
    move/from16 v16, v2

    move/from16 v17, v3

    goto/16 :goto_1cc

    .line 191
    :cond_44
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    .line 192
    .local v13, "fieldType":Ljava/lang/Class;
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    .line 193
    .local v14, "fieldName":Ljava/lang/String;
    const-string v0, "stringRepresentation"

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5a

    .line 194
    move/from16 v16, v2

    move/from16 v17, v3

    goto/16 :goto_1cc

    .line 196
    :cond_5a
    const-string v0, "indentation"

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_68

    .line 197
    move/from16 v16, v2

    move/from16 v17, v3

    goto/16 :goto_1cc

    .line 200
    :cond_68
    :try_start_68
    invoke-virtual {v13}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 201
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "fname":Ljava/lang/String;
    const-string v15, "int"

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_87

    .line 203
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15
    :try_end_7e
    .catch Ljava/lang/IllegalAccessException; {:try_start_68 .. :try_end_7e} :catch_1c4

    move/from16 v16, v2

    :try_start_80
    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    if-eq v15, v2, :cond_106

    .line 204
    return v3

    .line 205
    :cond_87
    move/from16 v16, v2

    const-string v2, "short"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_9c

    .line 206
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v2

    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v15

    if-eq v2, v15, :cond_106

    .line 207
    return v3

    .line 208
    :cond_9c
    const-string v2, "char"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_af

    .line 209
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v2

    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v15

    if-eq v2, v15, :cond_106

    .line 210
    return v3

    .line 211
    :cond_af
    const-string v2, "long"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c4

    .line 212
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v17

    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v19

    cmp-long v2, v17, v19

    if-eqz v2, :cond_106

    .line 213
    return v3

    .line 214
    :cond_c4
    const-string v2, "boolean"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_d7

    .line 215
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v15

    if-eq v2, v15, :cond_106

    .line 216
    return v3

    .line 217
    :cond_d7
    const-string v2, "double"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_ec

    .line 218
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v17

    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v19

    cmpl-double v2, v17, v19

    if-eqz v2, :cond_106

    .line 219
    return v3

    .line 220
    :cond_ec
    const-string v2, "float"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_101

    .line 221
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v15

    cmpl-float v2, v2, v15

    if-eqz v2, :cond_106

    .line 222
    return v3

    .line 224
    :cond_101
    const-string v2, "unknown type"

    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V

    .line 227
    .end local v0    # "fname":Ljava/lang/String;
    :cond_106
    move/from16 v17, v3

    goto/16 :goto_1bf

    .line 228
    :cond_10a
    move/from16 v16, v2

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 229
    .local v0, "myObj":Ljava/lang/Object;
    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 230
    .local v2, "hisObj":Ljava/lang/Object;
    if-eqz v2, :cond_119

    if-nez v0, :cond_119

    .line 231
    return v3

    .line 232
    :cond_119
    if-nez v2, :cond_121

    if-eqz v0, :cond_121

    .line 233
    move/from16 v17, v3

    goto/16 :goto_1cc

    .line 234
    :cond_121
    if-nez v2, :cond_129

    if-nez v0, :cond_129

    .line 235
    move/from16 v17, v3

    goto/16 :goto_1cc

    .line 236
    :cond_129
    instance-of v15, v2, Ljava/lang/String;

    if-eqz v15, :cond_151

    instance-of v15, v0, Ljava/lang/String;

    if-eqz v15, :cond_151

    .line 239
    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15
    :try_end_138
    .catch Ljava/lang/IllegalAccessException; {:try_start_80 .. :try_end_138} :catch_1c2

    move/from16 v17, v3

    :try_start_13a
    const-string v3, ""

    invoke-virtual {v15, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_144

    .line 240
    goto/16 :goto_1cc

    .line 241
    :cond_144
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    .line 242
    invoke-virtual {v3, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1bf

    .line 244
    return v17

    .line 236
    :cond_151
    move/from16 v17, v3

    .line 245
    if-eqz v2, :cond_196

    .line 247
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_196

    .line 248
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_196

    .line 249
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_196

    move-object v3, v2

    check-cast v3, Lgov/nist/core/GenericObject;

    .line 250
    invoke-virtual {v3}, Lgov/nist/core/GenericObject;->getMatcher()Lgov/nist/core/Match;

    move-result-object v3

    if-eqz v3, :cond_196

    .line 252
    move-object v3, v0

    check-cast v3, Lgov/nist/core/GenericObject;

    .line 253
    invoke-virtual {v3}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "myObjEncoded":Ljava/lang/String;
    move-object v15, v2

    check-cast v15, Lgov/nist/core/GenericObject;

    .line 255
    invoke-virtual {v15}, Lgov/nist/core/GenericObject;->getMatcher()Lgov/nist/core/Match;

    move-result-object v15

    invoke-interface {v15, v3}, Lgov/nist/core/Match;->match(Ljava/lang/String;)Z

    move-result v15

    .line 257
    .local v15, "retval":Z
    if-nez v15, :cond_195

    .line 258
    return v17

    .line 259
    .end local v3    # "myObjEncoded":Ljava/lang/String;
    .end local v15    # "retval":Z
    :cond_195
    goto :goto_1bf

    .line 260
    :cond_196
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1aa

    move-object v3, v0

    check-cast v3, Lgov/nist/core/GenericObject;

    .line 261
    invoke-virtual {v3, v2}, Lgov/nist/core/GenericObject;->match(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1aa

    .line 262
    return v17

    .line 263
    :cond_1aa
    nop

    .line 264
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1bf

    move-object v3, v0

    check-cast v3, Lgov/nist/core/GenericObjectList;

    .line 265
    invoke-virtual {v3, v2}, Lgov/nist/core/GenericObjectList;->match(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1bc
    .catch Ljava/lang/IllegalAccessException; {:try_start_13a .. :try_end_1bc} :catch_1c0

    if-nez v3, :cond_1bf

    .line 266
    return v17

    .line 271
    .end local v0    # "myObj":Ljava/lang/Object;
    .end local v2    # "hisObj":Ljava/lang/Object;
    :cond_1bf
    :goto_1bf
    goto :goto_1cc

    .line 269
    :catch_1c0
    move-exception v0

    goto :goto_1c9

    :catch_1c2
    move-exception v0

    goto :goto_1c7

    :catch_1c4
    move-exception v0

    move/from16 v16, v2

    :goto_1c7
    move/from16 v17, v3

    .line 270
    .local v0, "ex1":Ljava/lang/IllegalAccessException;
    :goto_1c9
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 184
    .end local v0    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v10    # "f":Ljava/lang/reflect/Field;
    .end local v11    # "g":Ljava/lang/reflect/Field;
    .end local v12    # "modifier":I
    .end local v13    # "fieldType":Ljava/lang/Class;
    .end local v14    # "fieldName":Ljava/lang/String;
    :goto_1cc
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    goto/16 :goto_2e

    :cond_1d4
    move/from16 v16, v2

    move/from16 v17, v3

    .line 273
    .end local v9    # "i":I
    const-class v0, Lgov/nist/javax/sip/header/SIPObject;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e2

    .line 274
    nop

    .line 280
    .end local v7    # "fields":[Ljava/lang/reflect/Field;
    .end local v8    # "hisfields":[Ljava/lang/reflect/Field;
    return v16

    .line 276
    .restart local v7    # "fields":[Ljava/lang/reflect/Field;
    .restart local v8    # "hisfields":[Ljava/lang/reflect/Field;
    :cond_1e2
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 277
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    .line 279
    .end local v7    # "fields":[Ljava/lang/reflect/Field;
    .end local v8    # "hisfields":[Ljava/lang/reflect/Field;
    move/from16 v2, v16

    move/from16 v3, v17

    goto/16 :goto_24
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 399
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPObject;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
