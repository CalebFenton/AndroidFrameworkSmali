.class public abstract Lgov/nist/javax/sip/header/SIPObject;
.super Lgov/nist/core/GenericObject;
.source "SIPObject.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    #@3
    .line 54
    return-void
.end method


# virtual methods
.method public dbgPrint()V
    .locals 0

    #@0
    .prologue
    .line 63
    invoke-super {p0}, Lgov/nist/core/GenericObject;->dbgPrint()V

    #@3
    .line 62
    return-void
.end method

.method public debugDump()Ljava/lang/String;
    .locals 24

    #@0
    .prologue
    .line 291
    const-string/jumbo v22, ""

    #@3
    move-object/from16 v0, v22

    #@5
    move-object/from16 v1, p0

    #@7
    iput-object v0, v1, Lgov/nist/javax/sip/header/SIPObject;->stringRepresentation:Ljava/lang/String;

    #@9
    .line 292
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/header/SIPObject;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v20

    #@d
    .line 293
    .local v20, "myclass":Ljava/lang/Class;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@10
    move-result-object v22

    #@11
    move-object/from16 v0, p0

    #@13
    move-object/from16 v1, v22

    #@15
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    #@18
    .line 294
    const-string/jumbo v22, "{"

    #@1b
    move-object/from16 v0, p0

    #@1d
    move-object/from16 v1, v22

    #@1f
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    #@22
    .line 295
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@25
    move-result-object v12

    #@26
    .line 296
    .local v12, "fields":[Ljava/lang/reflect/Field;
    const/4 v15, 0x0

    #@27
    .local v15, "i":I
    :goto_0
    array-length v0, v12

    #@28
    move/from16 v22, v0

    #@2a
    move/from16 v0, v22

    #@2c
    if-ge v15, v0, :cond_f

    #@2e
    .line 297
    aget-object v9, v12, v15

    #@30
    .line 299
    .local v9, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    #@33
    move-result v17

    #@34
    .line 300
    .local v17, "modifier":I
    and-int/lit8 v22, v17, 0x2

    #@36
    const/16 v23, 0x2

    #@38
    move/from16 v0, v22

    #@3a
    move/from16 v1, v23

    #@3c
    if-ne v0, v1, :cond_1

    #@3e
    .line 296
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    #@40
    goto :goto_0

    #@41
    .line 302
    :cond_1
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@44
    move-result-object v11

    #@45
    .line 303
    .local v11, "fieldType":Ljava/lang/Class;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@48
    move-result-object v10

    #@49
    .line 304
    .local v10, "fieldName":Ljava/lang/String;
    const-string/jumbo v22, "stringRepresentation"

    #@4c
    move-object/from16 v0, v22

    #@4e
    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@51
    move-result v22

    #@52
    if-eqz v22, :cond_0

    #@54
    .line 308
    const-string/jumbo v22, "indentation"

    #@57
    move-object/from16 v0, v22

    #@59
    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@5c
    move-result v22

    #@5d
    if-eqz v22, :cond_0

    #@5f
    .line 312
    new-instance v22, Ljava/lang/StringBuilder;

    #@61
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    move-object/from16 v0, v22

    #@66
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v22

    #@6a
    const-string/jumbo v23, ":"

    #@6d
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v22

    #@71
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v22

    #@75
    move-object/from16 v0, p0

    #@77
    move-object/from16 v1, v22

    #@79
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    #@7c
    .line 315
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/Class;->isPrimitive()Z

    #@7f
    move-result v22

    #@80
    if-eqz v22, :cond_8

    #@82
    .line 316
    invoke-virtual {v11}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@85
    move-result-object v14

    #@86
    .line 317
    .local v14, "fname":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    #@88
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    move-object/from16 v0, v22

    #@8d
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v22

    #@91
    const-string/jumbo v23, ":"

    #@94
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v22

    #@98
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v22

    #@9c
    move-object/from16 v0, p0

    #@9e
    move-object/from16 v1, v22

    #@a0
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    #@a3
    .line 318
    const-string/jumbo v22, "int"

    #@a6
    move-object/from16 v0, v22

    #@a8
    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@ab
    move-result v22

    #@ac
    if-nez v22, :cond_2

    #@ae
    .line 319
    move-object/from16 v0, p0

    #@b0
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@b3
    move-result v16

    #@b4
    .line 320
    .local v16, "intfield":I
    move-object/from16 v0, p0

    #@b6
    move/from16 v1, v16

    #@b8
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(I)V

    #@bb
    goto :goto_1

    #@bc
    .line 376
    .end local v14    # "fname":Ljava/lang/String;
    .end local v16    # "intfield":I
    :catch_0
    move-exception v8

    #@bd
    .local v8, "ex1":Ljava/lang/IllegalAccessException;
    goto :goto_1

    #@be
    .line 321
    .end local v8    # "ex1":Ljava/lang/IllegalAccessException;
    .restart local v14    # "fname":Ljava/lang/String;
    :cond_2
    const-string/jumbo v22, "short"

    #@c1
    move-object/from16 v0, v22

    #@c3
    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@c6
    move-result v22

    #@c7
    if-nez v22, :cond_3

    #@c9
    .line 322
    move-object/from16 v0, p0

    #@cb
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    #@ce
    move-result v21

    #@cf
    .line 323
    .local v21, "shortField":S
    move-object/from16 v0, p0

    #@d1
    move/from16 v1, v21

    #@d3
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(S)V

    #@d6
    goto/16 :goto_1

    #@d8
    .line 324
    .end local v21    # "shortField":S
    :cond_3
    const-string/jumbo v22, "char"

    #@db
    move-object/from16 v0, v22

    #@dd
    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@e0
    move-result v22

    #@e1
    if-nez v22, :cond_4

    #@e3
    .line 325
    move-object/from16 v0, p0

    #@e5
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    #@e8
    move-result v5

    #@e9
    .line 326
    .local v5, "charField":C
    move-object/from16 v0, p0

    #@eb
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/SIPObject;->sprint(C)V

    #@ee
    goto/16 :goto_1

    #@f0
    .line 327
    .end local v5    # "charField":C
    :cond_4
    const-string/jumbo v22, "long"

    #@f3
    move-object/from16 v0, v22

    #@f5
    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@f8
    move-result v22

    #@f9
    if-nez v22, :cond_5

    #@fb
    .line 328
    move-object/from16 v0, p0

    #@fd
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    #@100
    move-result-wide v18

    #@101
    .line 329
    .local v18, "longField":J
    move-object/from16 v0, p0

    #@103
    move-wide/from16 v1, v18

    #@105
    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/header/SIPObject;->sprint(J)V

    #@108
    goto/16 :goto_1

    #@10a
    .line 330
    .end local v18    # "longField":J
    :cond_5
    const-string/jumbo v22, "boolean"

    #@10d
    move-object/from16 v0, v22

    #@10f
    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@112
    move-result v22

    #@113
    if-nez v22, :cond_6

    #@115
    .line 331
    move-object/from16 v0, p0

    #@117
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    #@11a
    move-result v4

    #@11b
    .line 332
    .local v4, "booleanField":Z
    move-object/from16 v0, p0

    #@11d
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Z)V

    #@120
    goto/16 :goto_1

    #@122
    .line 333
    .end local v4    # "booleanField":Z
    :cond_6
    const-string/jumbo v22, "double"

    #@125
    move-object/from16 v0, v22

    #@127
    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@12a
    move-result v22

    #@12b
    if-nez v22, :cond_7

    #@12d
    .line 334
    move-object/from16 v0, p0

    #@12f
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    #@132
    move-result-wide v6

    #@133
    .line 335
    .local v6, "doubleField":D
    move-object/from16 v0, p0

    #@135
    invoke-virtual {v0, v6, v7}, Lgov/nist/javax/sip/header/SIPObject;->sprint(D)V

    #@138
    goto/16 :goto_1

    #@13a
    .line 336
    .end local v6    # "doubleField":D
    :cond_7
    const-string/jumbo v22, "float"

    #@13d
    move-object/from16 v0, v22

    #@13f
    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@142
    move-result v22

    #@143
    if-nez v22, :cond_0

    #@145
    .line 337
    move-object/from16 v0, p0

    #@147
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    #@14a
    move-result v13

    #@14b
    .line 338
    .local v13, "floatField":F
    move-object/from16 v0, p0

    #@14d
    invoke-virtual {v0, v13}, Lgov/nist/javax/sip/header/SIPObject;->sprint(F)V

    #@150
    goto/16 :goto_1

    #@152
    .line 340
    .end local v13    # "floatField":F
    .end local v14    # "fname":Ljava/lang/String;
    :cond_8
    const-class v22, Lgov/nist/core/GenericObject;

    #@154
    move-object/from16 v0, v22

    #@156
    invoke-virtual {v0, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@159
    move-result v22

    #@15a
    if-eqz v22, :cond_a

    #@15c
    .line 341
    move-object/from16 v0, p0

    #@15e
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@161
    move-result-object v22

    #@162
    if-eqz v22, :cond_9

    #@164
    .line 343
    move-object/from16 v0, p0

    #@166
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@169
    move-result-object v22

    #@16a
    check-cast v22, Lgov/nist/core/GenericObject;

    #@16c
    .line 344
    move-object/from16 v0, p0

    #@16e
    iget v0, v0, Lgov/nist/javax/sip/header/SIPObject;->indentation:I

    #@170
    move/from16 v23, v0

    #@172
    add-int/lit8 v23, v23, 0x1

    #@174
    .line 343
    invoke-virtual/range {v22 .. v23}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    #@177
    move-result-object v22

    #@178
    .line 342
    move-object/from16 v0, p0

    #@17a
    move-object/from16 v1, v22

    #@17c
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    #@17f
    goto/16 :goto_1

    #@181
    .line 346
    :cond_9
    const-string/jumbo v22, "<null>"

    #@184
    move-object/from16 v0, p0

    #@186
    move-object/from16 v1, v22

    #@188
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    #@18b
    goto/16 :goto_1

    #@18d
    .line 350
    :cond_a
    const-class v22, Lgov/nist/core/GenericObjectList;

    #@18f
    move-object/from16 v0, v22

    #@191
    invoke-virtual {v0, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@194
    move-result v22

    #@195
    .line 349
    if-eqz v22, :cond_c

    #@197
    .line 351
    move-object/from16 v0, p0

    #@199
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19c
    move-result-object v22

    #@19d
    if-eqz v22, :cond_b

    #@19f
    .line 353
    move-object/from16 v0, p0

    #@1a1
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a4
    move-result-object v22

    #@1a5
    check-cast v22, Lgov/nist/core/GenericObjectList;

    #@1a7
    .line 354
    move-object/from16 v0, p0

    #@1a9
    iget v0, v0, Lgov/nist/javax/sip/header/SIPObject;->indentation:I

    #@1ab
    move/from16 v23, v0

    #@1ad
    add-int/lit8 v23, v23, 0x1

    #@1af
    .line 353
    invoke-virtual/range {v22 .. v23}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    #@1b2
    move-result-object v22

    #@1b3
    .line 352
    move-object/from16 v0, p0

    #@1b5
    move-object/from16 v1, v22

    #@1b7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    #@1ba
    goto/16 :goto_1

    #@1bc
    .line 356
    :cond_b
    const-string/jumbo v22, "<null>"

    #@1bf
    move-object/from16 v0, p0

    #@1c1
    move-object/from16 v1, v22

    #@1c3
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    #@1c6
    goto/16 :goto_1

    #@1c8
    .line 362
    :cond_c
    move-object/from16 v0, p0

    #@1ca
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1cd
    move-result-object v22

    #@1ce
    if-eqz v22, :cond_d

    #@1d0
    .line 363
    new-instance v22, Ljava/lang/StringBuilder;

    #@1d2
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1d5
    move-object/from16 v0, p0

    #@1d7
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1da
    move-result-object v23

    #@1db
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1de
    move-result-object v23

    #@1df
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1e2
    move-result-object v23

    #@1e3
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v22

    #@1e7
    const-string/jumbo v23, ":"

    #@1ea
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ed
    move-result-object v22

    #@1ee
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f1
    move-result-object v22

    #@1f2
    move-object/from16 v0, p0

    #@1f4
    move-object/from16 v1, v22

    #@1f6
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    #@1f9
    .line 368
    :goto_2
    const-string/jumbo v22, "{"

    #@1fc
    move-object/from16 v0, p0

    #@1fe
    move-object/from16 v1, v22

    #@200
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    #@203
    .line 369
    move-object/from16 v0, p0

    #@205
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@208
    move-result-object v22

    #@209
    if-eqz v22, :cond_e

    #@20b
    .line 370
    move-object/from16 v0, p0

    #@20d
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@210
    move-result-object v22

    #@211
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@214
    move-result-object v22

    #@215
    move-object/from16 v0, p0

    #@217
    move-object/from16 v1, v22

    #@219
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    #@21c
    .line 374
    :goto_3
    const-string/jumbo v22, "}"

    #@21f
    move-object/from16 v0, p0

    #@221
    move-object/from16 v1, v22

    #@223
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    #@226
    goto/16 :goto_1

    #@228
    .line 365
    :cond_d
    new-instance v22, Ljava/lang/StringBuilder;

    #@22a
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@22d
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@230
    move-result-object v23

    #@231
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@234
    move-result-object v22

    #@235
    const-string/jumbo v23, ":"

    #@238
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23b
    move-result-object v22

    #@23c
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23f
    move-result-object v22

    #@240
    move-object/from16 v0, p0

    #@242
    move-object/from16 v1, v22

    #@244
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    #@247
    goto :goto_2

    #@248
    .line 372
    :cond_e
    const-string/jumbo v22, "<null>"

    #@24b
    move-object/from16 v0, p0

    #@24d
    move-object/from16 v1, v22

    #@24f
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@252
    goto :goto_3

    #@253
    .line 380
    .end local v9    # "f":Ljava/lang/reflect/Field;
    .end local v10    # "fieldName":Ljava/lang/String;
    .end local v11    # "fieldType":Ljava/lang/Class;
    .end local v17    # "modifier":I
    :cond_f
    const-string/jumbo v22, "}"

    #@256
    move-object/from16 v0, p0

    #@258
    move-object/from16 v1, v22

    #@25a
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    #@25d
    .line 381
    move-object/from16 v0, p0

    #@25f
    iget-object v0, v0, Lgov/nist/javax/sip/header/SIPObject;->stringRepresentation:Ljava/lang/String;

    #@261
    move-object/from16 v22, v0

    #@263
    return-object v22
.end method

.method public debugDump(I)Ljava/lang/String;
    .locals 2
    .param p1, "indent"    # I

    #@0
    .prologue
    .line 390
    iget v1, p0, Lgov/nist/javax/sip/header/SIPObject;->indentation:I

    #@2
    .line 391
    .local v1, "save":I
    iput p1, p0, Lgov/nist/javax/sip/header/SIPObject;->indentation:I

    #@4
    .line 392
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPObject;->debugDump()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 393
    .local v0, "retval":Ljava/lang/String;
    iput v1, p0, Lgov/nist/javax/sip/header/SIPObject;->indentation:I

    #@a
    .line 394
    return-object v0
.end method

.method public abstract encode()Ljava/lang/String;
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 75
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPObject;->encode()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 20
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 83
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/header/SIPObject;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v15

    #@4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v16

    #@8
    invoke-virtual/range {v15 .. v16}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v15

    #@c
    if-nez v15, :cond_0

    #@e
    .line 84
    const/4 v15, 0x0

    #@f
    return v15

    #@10
    :cond_0
    move-object/from16 v14, p1

    #@12
    .line 85
    check-cast v14, Lgov/nist/javax/sip/header/SIPObject;

    #@14
    .line 86
    .local v14, "that":Lgov/nist/javax/sip/header/SIPObject;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/header/SIPObject;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v13

    #@18
    .line 87
    .local v13, "myclass":Ljava/lang/Class;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1b
    move-result-object v9

    #@1c
    .line 89
    .local v9, "hisclass":Ljava/lang/Class;
    :goto_0
    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@1f
    move-result-object v6

    #@20
    .line 90
    .local v6, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v9, v13}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v15

    #@24
    if-nez v15, :cond_1

    #@26
    .line 91
    const/4 v15, 0x0

    #@27
    return v15

    #@28
    .line 92
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@2b
    move-result-object v10

    #@2c
    .line 93
    .local v10, "hisfields":[Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    #@2d
    .local v11, "i":I
    :goto_1
    array-length v15, v6

    #@2e
    if-ge v11, v15, :cond_d

    #@30
    .line 94
    aget-object v3, v6, v11

    #@32
    .line 95
    .local v3, "f":Ljava/lang/reflect/Field;
    aget-object v8, v10, v11

    #@34
    .line 97
    .local v8, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    #@37
    move-result v12

    #@38
    .line 98
    .local v12, "modifier":I
    and-int/lit8 v15, v12, 0x2

    #@3a
    const/16 v16, 0x2

    #@3c
    move/from16 v0, v16

    #@3e
    if-ne v15, v0, :cond_3

    #@40
    .line 93
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    #@42
    goto :goto_1

    #@43
    .line 100
    :cond_3
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@46
    move-result-object v5

    #@47
    .line 101
    .local v5, "fieldType":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    .line 102
    .local v4, "fieldName":Ljava/lang/String;
    const-string/jumbo v15, "stringRepresentation"

    #@4e
    invoke-virtual {v4, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@51
    move-result v15

    #@52
    if-eqz v15, :cond_2

    #@54
    .line 105
    const-string/jumbo v15, "indentation"

    #@57
    invoke-virtual {v4, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@5a
    move-result v15

    #@5b
    if-eqz v15, :cond_2

    #@5d
    .line 110
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    #@60
    move-result v15

    #@61
    if-eqz v15, :cond_a

    #@63
    .line 111
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@66
    move-result-object v7

    #@67
    .line 112
    .local v7, "fname":Ljava/lang/String;
    const-string/jumbo v15, "int"

    #@6a
    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@6d
    move-result v15

    #@6e
    if-nez v15, :cond_4

    #@70
    .line 113
    move-object/from16 v0, p0

    #@72
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@75
    move-result v15

    #@76
    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@79
    move-result v16

    #@7a
    move/from16 v0, v16

    #@7c
    if-eq v15, v0, :cond_2

    #@7e
    .line 114
    const/4 v15, 0x0

    #@7f
    return v15

    #@80
    .line 115
    :cond_4
    const-string/jumbo v15, "short"

    #@83
    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@86
    move-result v15

    #@87
    if-nez v15, :cond_5

    #@89
    .line 116
    move-object/from16 v0, p0

    #@8b
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    #@8e
    move-result v15

    #@8f
    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    #@92
    move-result v16

    #@93
    move/from16 v0, v16

    #@95
    if-eq v15, v0, :cond_2

    #@97
    .line 117
    const/4 v15, 0x0

    #@98
    return v15

    #@99
    .line 118
    :cond_5
    const-string/jumbo v15, "char"

    #@9c
    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@9f
    move-result v15

    #@a0
    if-nez v15, :cond_6

    #@a2
    .line 119
    move-object/from16 v0, p0

    #@a4
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    #@a7
    move-result v15

    #@a8
    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    #@ab
    move-result v16

    #@ac
    move/from16 v0, v16

    #@ae
    if-eq v15, v0, :cond_2

    #@b0
    .line 120
    const/4 v15, 0x0

    #@b1
    return v15

    #@b2
    .line 121
    :cond_6
    const-string/jumbo v15, "long"

    #@b5
    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@b8
    move-result v15

    #@b9
    if-nez v15, :cond_7

    #@bb
    .line 122
    move-object/from16 v0, p0

    #@bd
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    #@c0
    move-result-wide v16

    #@c1
    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    #@c4
    move-result-wide v18

    #@c5
    cmp-long v15, v16, v18

    #@c7
    if-eqz v15, :cond_2

    #@c9
    .line 123
    const/4 v15, 0x0

    #@ca
    return v15

    #@cb
    .line 124
    :cond_7
    const-string/jumbo v15, "boolean"

    #@ce
    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@d1
    move-result v15

    #@d2
    if-nez v15, :cond_8

    #@d4
    .line 125
    move-object/from16 v0, p0

    #@d6
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    #@d9
    move-result v15

    #@da
    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    #@dd
    move-result v16

    #@de
    move/from16 v0, v16

    #@e0
    if-eq v15, v0, :cond_2

    #@e2
    .line 126
    const/4 v15, 0x0

    #@e3
    return v15

    #@e4
    .line 127
    :cond_8
    const-string/jumbo v15, "double"

    #@e7
    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@ea
    move-result v15

    #@eb
    if-nez v15, :cond_9

    #@ed
    .line 128
    move-object/from16 v0, p0

    #@ef
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    #@f2
    move-result-wide v16

    #@f3
    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    #@f6
    move-result-wide v18

    #@f7
    cmpl-double v15, v16, v18

    #@f9
    if-eqz v15, :cond_2

    #@fb
    .line 129
    const/4 v15, 0x0

    #@fc
    return v15

    #@fd
    .line 130
    :cond_9
    const-string/jumbo v15, "float"

    #@100
    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@103
    move-result v15

    #@104
    if-nez v15, :cond_2

    #@106
    .line 131
    move-object/from16 v0, p0

    #@108
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    #@10b
    move-result v15

    #@10c
    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    #@10f
    move-result v16

    #@110
    cmpl-float v15, v15, v16

    #@112
    if-eqz v15, :cond_2

    #@114
    .line 132
    const/4 v15, 0x0

    #@115
    return v15

    #@116
    .line 134
    .end local v7    # "fname":Ljava/lang/String;
    :cond_a
    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@119
    move-result-object v15

    #@11a
    move-object/from16 v0, p0

    #@11c
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11f
    move-result-object v16

    #@120
    move-object/from16 v0, v16

    #@122
    if-eq v15, v0, :cond_2

    #@124
    .line 136
    move-object/from16 v0, p0

    #@126
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@129
    move-result-object v15

    #@12a
    if-nez v15, :cond_b

    #@12c
    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12f
    move-result-object v15

    #@130
    if-eqz v15, :cond_b

    #@132
    .line 137
    const/4 v15, 0x0

    #@133
    return v15

    #@134
    .line 138
    :cond_b
    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@137
    move-result-object v15

    #@138
    if-nez v15, :cond_c

    #@13a
    move-object/from16 v0, p0

    #@13c
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13f
    move-result-object v15

    #@140
    if-eqz v15, :cond_c

    #@142
    .line 139
    const/4 v15, 0x0

    #@143
    return v15

    #@144
    .line 140
    :cond_c
    move-object/from16 v0, p0

    #@146
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@149
    move-result-object v15

    #@14a
    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14d
    move-result-object v16

    #@14e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@151
    move-result v15

    #@152
    if-nez v15, :cond_2

    #@154
    .line 141
    const/4 v15, 0x0

    #@155
    return v15

    #@156
    .line 142
    :catch_0
    move-exception v2

    #@157
    .line 143
    .local v2, "ex1":Ljava/lang/IllegalAccessException;
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@159
    new-instance v16, Ljava/lang/StringBuilder;

    #@15b
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@15e
    const-string/jumbo v17, "accessed field "

    #@161
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v16

    #@165
    move-object/from16 v0, v16

    #@167
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v16

    #@16b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16e
    move-result-object v16

    #@16f
    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@172
    .line 144
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@174
    new-instance v16, Ljava/lang/StringBuilder;

    #@176
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@179
    const-string/jumbo v17, "modifier  "

    #@17c
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v16

    #@180
    move-object/from16 v0, v16

    #@182
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@185
    move-result-object v16

    #@186
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@189
    move-result-object v16

    #@18a
    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@18d
    .line 145
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@18f
    const-string/jumbo v16, "modifier.private  2"

    #@192
    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@195
    .line 146
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@198
    goto/16 :goto_2

    #@19a
    .line 149
    .end local v2    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "fieldType":Ljava/lang/Class;
    .end local v8    # "g":Ljava/lang/reflect/Field;
    .end local v12    # "modifier":I
    :cond_d
    const-class v15, Lgov/nist/javax/sip/header/SIPObject;

    #@19c
    invoke-virtual {v13, v15}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@19f
    move-result v15

    #@1a0
    if-eqz v15, :cond_e

    #@1a2
    .line 156
    const/4 v15, 0x1

    #@1a3
    return v15

    #@1a4
    .line 152
    :cond_e
    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@1a7
    move-result-object v13

    #@1a8
    .line 153
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@1ab
    move-result-object v9

    #@1ac
    goto/16 :goto_0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 24
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 172
    if-nez p1, :cond_0

    #@2
    .line 173
    const/16 v19, 0x1

    #@4
    return v19

    #@5
    .line 176
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/header/SIPObject;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v19

    #@9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v20

    #@d
    invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v19

    #@11
    if-nez v19, :cond_1

    #@13
    .line 177
    const/16 v19, 0x0

    #@15
    return v19

    #@16
    :cond_1
    move-object/from16 v18, p1

    #@18
    .line 178
    check-cast v18, Lgov/nist/core/GenericObject;

    #@1a
    .line 179
    .local v18, "that":Lgov/nist/core/GenericObject;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/header/SIPObject;->getClass()Ljava/lang/Class;

    #@1d
    move-result-object v16

    #@1e
    .line 180
    .local v16, "myclass":Ljava/lang/Class;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@21
    move-result-object v10

    #@22
    .line 182
    .local v10, "hisclass":Ljava/lang/Class;
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@25
    move-result-object v6

    #@26
    .line 183
    .local v6, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@29
    move-result-object v11

    #@2a
    .line 184
    .local v11, "hisfields":[Ljava/lang/reflect/Field;
    const/4 v12, 0x0

    #@2b
    .local v12, "i":I
    :goto_1
    array-length v0, v6

    #@2c
    move/from16 v19, v0

    #@2e
    move/from16 v0, v19

    #@30
    if-ge v12, v0, :cond_13

    #@32
    .line 185
    aget-object v3, v6, v12

    #@34
    .line 186
    .local v3, "f":Ljava/lang/reflect/Field;
    aget-object v8, v11, v12

    #@36
    .line 188
    .local v8, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    #@39
    move-result v13

    #@3a
    .line 189
    .local v13, "modifier":I
    and-int/lit8 v19, v13, 0x2

    #@3c
    const/16 v20, 0x2

    #@3e
    move/from16 v0, v19

    #@40
    move/from16 v1, v20

    #@42
    if-ne v0, v1, :cond_3

    #@44
    .line 184
    :cond_2
    :goto_2
    add-int/lit8 v12, v12, 0x1

    #@46
    goto :goto_1

    #@47
    .line 191
    :cond_3
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@4a
    move-result-object v5

    #@4b
    .line 192
    .local v5, "fieldType":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    .line 193
    .local v4, "fieldName":Ljava/lang/String;
    const-string/jumbo v19, "stringRepresentation"

    #@52
    move-object/from16 v0, v19

    #@54
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@57
    move-result v19

    #@58
    if-eqz v19, :cond_2

    #@5a
    .line 196
    const-string/jumbo v19, "indentation"

    #@5d
    move-object/from16 v0, v19

    #@5f
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@62
    move-result v19

    #@63
    if-eqz v19, :cond_2

    #@65
    .line 200
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    #@68
    move-result v19

    #@69
    if-eqz v19, :cond_b

    #@6b
    .line 201
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@6e
    move-result-object v7

    #@6f
    .line 202
    .local v7, "fname":Ljava/lang/String;
    const-string/jumbo v19, "int"

    #@72
    move-object/from16 v0, v19

    #@74
    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@77
    move-result v19

    #@78
    if-nez v19, :cond_4

    #@7a
    .line 203
    move-object/from16 v0, p0

    #@7c
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@7f
    move-result v19

    #@80
    move-object/from16 v0, v18

    #@82
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@85
    move-result v20

    #@86
    move/from16 v0, v19

    #@88
    move/from16 v1, v20

    #@8a
    if-eq v0, v1, :cond_2

    #@8c
    .line 204
    const/16 v19, 0x0

    #@8e
    return v19

    #@8f
    .line 205
    :cond_4
    const-string/jumbo v19, "short"

    #@92
    move-object/from16 v0, v19

    #@94
    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@97
    move-result v19

    #@98
    if-nez v19, :cond_5

    #@9a
    .line 206
    move-object/from16 v0, p0

    #@9c
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    #@9f
    move-result v19

    #@a0
    move-object/from16 v0, v18

    #@a2
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    #@a5
    move-result v20

    #@a6
    move/from16 v0, v19

    #@a8
    move/from16 v1, v20

    #@aa
    if-eq v0, v1, :cond_2

    #@ac
    .line 207
    const/16 v19, 0x0

    #@ae
    return v19

    #@af
    .line 208
    :cond_5
    const-string/jumbo v19, "char"

    #@b2
    move-object/from16 v0, v19

    #@b4
    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@b7
    move-result v19

    #@b8
    if-nez v19, :cond_6

    #@ba
    .line 209
    move-object/from16 v0, p0

    #@bc
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    #@bf
    move-result v19

    #@c0
    move-object/from16 v0, v18

    #@c2
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    #@c5
    move-result v20

    #@c6
    move/from16 v0, v19

    #@c8
    move/from16 v1, v20

    #@ca
    if-eq v0, v1, :cond_2

    #@cc
    .line 210
    const/16 v19, 0x0

    #@ce
    return v19

    #@cf
    .line 211
    :cond_6
    const-string/jumbo v19, "long"

    #@d2
    move-object/from16 v0, v19

    #@d4
    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@d7
    move-result v19

    #@d8
    if-nez v19, :cond_7

    #@da
    .line 212
    move-object/from16 v0, p0

    #@dc
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    #@df
    move-result-wide v20

    #@e0
    move-object/from16 v0, v18

    #@e2
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    #@e5
    move-result-wide v22

    #@e6
    cmp-long v19, v20, v22

    #@e8
    if-eqz v19, :cond_2

    #@ea
    .line 213
    const/16 v19, 0x0

    #@ec
    return v19

    #@ed
    .line 214
    :cond_7
    const-string/jumbo v19, "boolean"

    #@f0
    move-object/from16 v0, v19

    #@f2
    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@f5
    move-result v19

    #@f6
    if-nez v19, :cond_8

    #@f8
    .line 215
    move-object/from16 v0, p0

    #@fa
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    #@fd
    move-result v19

    #@fe
    move-object/from16 v0, v18

    #@100
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    #@103
    move-result v20

    #@104
    move/from16 v0, v19

    #@106
    move/from16 v1, v20

    #@108
    if-eq v0, v1, :cond_2

    #@10a
    .line 216
    const/16 v19, 0x0

    #@10c
    return v19

    #@10d
    .line 217
    :cond_8
    const-string/jumbo v19, "double"

    #@110
    move-object/from16 v0, v19

    #@112
    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@115
    move-result v19

    #@116
    if-nez v19, :cond_9

    #@118
    .line 218
    move-object/from16 v0, p0

    #@11a
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    #@11d
    move-result-wide v20

    #@11e
    move-object/from16 v0, v18

    #@120
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    #@123
    move-result-wide v22

    #@124
    cmpl-double v19, v20, v22

    #@126
    if-eqz v19, :cond_2

    #@128
    .line 219
    const/16 v19, 0x0

    #@12a
    return v19

    #@12b
    .line 220
    :cond_9
    const-string/jumbo v19, "float"

    #@12e
    move-object/from16 v0, v19

    #@130
    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@133
    move-result v19

    #@134
    if-nez v19, :cond_a

    #@136
    .line 221
    move-object/from16 v0, p0

    #@138
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    #@13b
    move-result v19

    #@13c
    move-object/from16 v0, v18

    #@13e
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    #@141
    move-result v20

    #@142
    cmpl-float v19, v19, v20

    #@144
    if-eqz v19, :cond_2

    #@146
    .line 222
    const/16 v19, 0x0

    #@148
    return v19

    #@149
    .line 225
    :cond_a
    const-string/jumbo v19, "unknown type"

    #@14c
    .line 224
    invoke-static/range {v19 .. v19}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@14f
    goto/16 :goto_2

    #@151
    .line 269
    .end local v7    # "fname":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@152
    .line 270
    .local v2, "ex1":Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@155
    goto/16 :goto_2

    #@157
    .line 228
    .end local v2    # "ex1":Ljava/lang/IllegalAccessException;
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    #@159
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15c
    move-result-object v14

    #@15d
    .line 229
    .local v14, "myObj":Ljava/lang/Object;
    move-object/from16 v0, v18

    #@15f
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@162
    move-result-object v9

    #@163
    .line 230
    .local v9, "hisObj":Ljava/lang/Object;
    if-eqz v9, :cond_c

    #@165
    if-nez v14, :cond_c

    #@167
    .line 231
    const/16 v19, 0x0

    #@169
    return v19

    #@16a
    .line 232
    :cond_c
    if-nez v9, :cond_d

    #@16c
    if-nez v14, :cond_2

    #@16e
    .line 234
    :cond_d
    if-nez v9, :cond_e

    #@170
    if-eqz v14, :cond_2

    #@172
    .line 237
    :cond_e
    instance-of v0, v9, Ljava/lang/String;

    #@174
    move/from16 v19, v0

    #@176
    if-eqz v19, :cond_f

    #@178
    .line 238
    instance-of v0, v14, Ljava/lang/String;

    #@17a
    move/from16 v19, v0

    #@17c
    .line 236
    if-eqz v19, :cond_f

    #@17e
    .line 239
    move-object v0, v9

    #@17f
    check-cast v0, Ljava/lang/String;

    #@181
    move-object/from16 v19, v0

    #@183
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@186
    move-result-object v19

    #@187
    const-string/jumbo v20, ""

    #@18a
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18d
    move-result v19

    #@18e
    if-nez v19, :cond_2

    #@190
    .line 241
    check-cast v14, Ljava/lang/String;

    #@192
    .line 242
    .end local v14    # "myObj":Ljava/lang/Object;
    check-cast v9, Ljava/lang/String;

    #@194
    .line 241
    .end local v9    # "hisObj":Ljava/lang/Object;
    invoke-virtual {v14, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@197
    move-result v19

    #@198
    if-eqz v19, :cond_2

    #@19a
    .line 244
    const/16 v19, 0x0

    #@19c
    return v19

    #@19d
    .line 246
    .restart local v9    # "hisObj":Ljava/lang/Object;
    .restart local v14    # "myObj":Ljava/lang/Object;
    :cond_f
    if-eqz v9, :cond_10

    #@19f
    .line 247
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1a2
    move-result-object v19

    #@1a3
    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    #@1a6
    move-result v19

    #@1a7
    .line 246
    if-eqz v19, :cond_10

    #@1a9
    .line 248
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1ac
    move-result-object v19

    #@1ad
    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    #@1b0
    move-result v19

    #@1b1
    .line 246
    if-eqz v19, :cond_10

    #@1b3
    .line 249
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1b6
    move-result-object v19

    #@1b7
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1ba
    move-result-object v20

    #@1bb
    invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@1be
    move-result v19

    #@1bf
    .line 246
    if-eqz v19, :cond_10

    #@1c1
    .line 250
    move-object v0, v9

    #@1c2
    check-cast v0, Lgov/nist/core/GenericObject;

    #@1c4
    move-object/from16 v19, v0

    #@1c6
    invoke-virtual/range {v19 .. v19}, Lgov/nist/core/GenericObject;->getMatcher()Lgov/nist/core/Match;

    #@1c9
    move-result-object v19

    #@1ca
    if-eqz v19, :cond_10

    #@1cc
    .line 253
    check-cast v14, Lgov/nist/core/GenericObject;

    #@1ce
    .end local v14    # "myObj":Ljava/lang/Object;
    invoke-virtual {v14}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    #@1d1
    move-result-object v15

    #@1d2
    .line 255
    .local v15, "myObjEncoded":Ljava/lang/String;
    check-cast v9, Lgov/nist/core/GenericObject;

    #@1d4
    .end local v9    # "hisObj":Ljava/lang/Object;
    invoke-virtual {v9}, Lgov/nist/core/GenericObject;->getMatcher()Lgov/nist/core/Match;

    #@1d7
    move-result-object v19

    #@1d8
    move-object/from16 v0, v19

    #@1da
    invoke-interface {v0, v15}, Lgov/nist/core/Match;->match(Ljava/lang/String;)Z

    #@1dd
    move-result v17

    #@1de
    .line 257
    .local v17, "retval":Z
    if-nez v17, :cond_2

    #@1e0
    .line 258
    const/16 v19, 0x0

    #@1e2
    return v19

    #@1e3
    .line 260
    .end local v15    # "myObjEncoded":Ljava/lang/String;
    .end local v17    # "retval":Z
    .restart local v9    # "hisObj":Ljava/lang/Object;
    .restart local v14    # "myObj":Ljava/lang/Object;
    :cond_10
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1e6
    move-result-object v19

    #@1e7
    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    #@1ea
    move-result v19

    #@1eb
    if-eqz v19, :cond_11

    #@1ed
    .line 261
    move-object v0, v14

    #@1ee
    check-cast v0, Lgov/nist/core/GenericObject;

    #@1f0
    move-object/from16 v19, v0

    #@1f2
    move-object/from16 v0, v19

    #@1f4
    invoke-virtual {v0, v9}, Lgov/nist/core/GenericObject;->match(Ljava/lang/Object;)Z

    #@1f7
    move-result v19

    #@1f8
    if-eqz v19, :cond_12

    #@1fa
    .line 264
    :cond_11
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1fd
    move-result-object v19

    #@1fe
    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    #@201
    move-result v19

    #@202
    if-eqz v19, :cond_2

    #@204
    .line 265
    check-cast v14, Lgov/nist/core/GenericObjectList;

    #@206
    .end local v14    # "myObj":Ljava/lang/Object;
    invoke-virtual {v14, v9}, Lgov/nist/core/GenericObjectList;->match(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    #@209
    move-result v19

    #@20a
    if-nez v19, :cond_2

    #@20c
    .line 266
    const/16 v19, 0x0

    #@20e
    return v19

    #@20f
    .line 262
    .restart local v14    # "myObj":Ljava/lang/Object;
    :cond_12
    const/16 v19, 0x0

    #@211
    return v19

    #@212
    .line 273
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "fieldType":Ljava/lang/Class;
    .end local v8    # "g":Ljava/lang/reflect/Field;
    .end local v9    # "hisObj":Ljava/lang/Object;
    .end local v13    # "modifier":I
    .end local v14    # "myObj":Ljava/lang/Object;
    :cond_13
    const-class v19, Lgov/nist/javax/sip/header/SIPObject;

    #@214
    move-object/from16 v0, v16

    #@216
    move-object/from16 v1, v19

    #@218
    invoke-virtual {v0, v1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@21b
    move-result v19

    #@21c
    if-eqz v19, :cond_14

    #@21e
    .line 280
    const/16 v19, 0x1

    #@220
    return v19

    #@221
    .line 276
    :cond_14
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@224
    move-result-object v16

    #@225
    .line 277
    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@228
    move-result-object v10

    #@229
    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 399
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPObject;->encode()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
