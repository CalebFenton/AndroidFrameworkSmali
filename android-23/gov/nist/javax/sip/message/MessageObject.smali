.class public abstract Lgov/nist/javax/sip/message/MessageObject;
.super Lgov/nist/core/GenericObject;
.source "MessageObject.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 157
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    #@3
    .line 156
    return-void
.end method


# virtual methods
.method public dbgPrint(I)Ljava/lang/String;
    .locals 2
    .param p1, "indent"    # I

    #@0
    .prologue
    .line 164
    iget v1, p0, Lgov/nist/javax/sip/message/MessageObject;->indentation:I

    #@2
    .line 165
    .local v1, "save":I
    iput p1, p0, Lgov/nist/javax/sip/message/MessageObject;->indentation:I

    #@4
    .line 166
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/MessageObject;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 167
    .local v0, "retval":Ljava/lang/String;
    iput v1, p0, Lgov/nist/javax/sip/message/MessageObject;->indentation:I

    #@a
    .line 168
    return-object v0
.end method

.method public dbgPrint()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-super {p0}, Lgov/nist/core/GenericObject;->dbgPrint()V

    #@3
    .line 49
    return-void
.end method

.method public debugDump()Ljava/lang/String;
    .locals 24

    #@0
    .prologue
    .line 60
    const-string/jumbo v22, ""

    #@3
    move-object/from16 v0, v22

    #@5
    move-object/from16 v1, p0

    #@7
    iput-object v0, v1, Lgov/nist/javax/sip/message/MessageObject;->stringRepresentation:Ljava/lang/String;

    #@9
    .line 61
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/message/MessageObject;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v20

    #@d
    .line 62
    .local v20, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@10
    move-result-object v22

    #@11
    move-object/from16 v0, p0

    #@13
    move-object/from16 v1, v22

    #@15
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    #@18
    .line 63
    const-string/jumbo v22, "{"

    #@1b
    move-object/from16 v0, p0

    #@1d
    move-object/from16 v1, v22

    #@1f
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    #@22
    .line 64
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@25
    move-result-object v12

    #@26
    .line 65
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
    .line 66
    aget-object v9, v12, v15

    #@30
    .line 68
    .local v9, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    #@33
    move-result v17

    #@34
    .line 69
    .local v17, "modifier":I
    const/16 v22, 0x2

    #@36
    move/from16 v0, v17

    #@38
    move/from16 v1, v22

    #@3a
    if-ne v0, v1, :cond_1

    #@3c
    .line 65
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 71
    :cond_1
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@42
    move-result-object v11

    #@43
    .line 72
    .local v11, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@46
    move-result-object v10

    #@47
    .line 73
    .local v10, "fieldName":Ljava/lang/String;
    const-string/jumbo v22, "stringRepresentation"

    #@4a
    move-object/from16 v0, v22

    #@4c
    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@4f
    move-result v22

    #@50
    if-eqz v22, :cond_0

    #@52
    .line 77
    const-string/jumbo v22, "indentation"

    #@55
    move-object/from16 v0, v22

    #@57
    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@5a
    move-result v22

    #@5b
    if-eqz v22, :cond_0

    #@5d
    .line 81
    new-instance v22, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    move-object/from16 v0, v22

    #@64
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v22

    #@68
    const-string/jumbo v23, ":"

    #@6b
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v22

    #@6f
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v22

    #@73
    move-object/from16 v0, p0

    #@75
    move-object/from16 v1, v22

    #@77
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    #@7a
    .line 84
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/Class;->isPrimitive()Z

    #@7d
    move-result v22

    #@7e
    if-eqz v22, :cond_8

    #@80
    .line 85
    invoke-virtual {v11}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@83
    move-result-object v14

    #@84
    .line 86
    .local v14, "fname":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    #@86
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    move-object/from16 v0, v22

    #@8b
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v22

    #@8f
    const-string/jumbo v23, ":"

    #@92
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v22

    #@96
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v22

    #@9a
    move-object/from16 v0, p0

    #@9c
    move-object/from16 v1, v22

    #@9e
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    #@a1
    .line 87
    const-string/jumbo v22, "int"

    #@a4
    move-object/from16 v0, v22

    #@a6
    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@a9
    move-result v22

    #@aa
    if-nez v22, :cond_2

    #@ac
    .line 88
    move-object/from16 v0, p0

    #@ae
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@b1
    move-result v16

    #@b2
    .line 89
    .local v16, "intfield":I
    move-object/from16 v0, p0

    #@b4
    move/from16 v1, v16

    #@b6
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(I)V

    #@b9
    goto :goto_1

    #@ba
    .line 147
    .end local v14    # "fname":Ljava/lang/String;
    .end local v16    # "intfield":I
    :catch_0
    move-exception v8

    #@bb
    .local v8, "ex1":Ljava/lang/IllegalAccessException;
    goto :goto_1

    #@bc
    .line 90
    .end local v8    # "ex1":Ljava/lang/IllegalAccessException;
    .restart local v14    # "fname":Ljava/lang/String;
    :cond_2
    const-string/jumbo v22, "short"

    #@bf
    move-object/from16 v0, v22

    #@c1
    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@c4
    move-result v22

    #@c5
    if-nez v22, :cond_3

    #@c7
    .line 91
    move-object/from16 v0, p0

    #@c9
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    #@cc
    move-result v21

    #@cd
    .line 92
    .local v21, "shortField":S
    move-object/from16 v0, p0

    #@cf
    move/from16 v1, v21

    #@d1
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(S)V

    #@d4
    goto/16 :goto_1

    #@d6
    .line 93
    .end local v21    # "shortField":S
    :cond_3
    const-string/jumbo v22, "char"

    #@d9
    move-object/from16 v0, v22

    #@db
    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@de
    move-result v22

    #@df
    if-nez v22, :cond_4

    #@e1
    .line 94
    move-object/from16 v0, p0

    #@e3
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    #@e6
    move-result v5

    #@e7
    .line 95
    .local v5, "charField":C
    move-object/from16 v0, p0

    #@e9
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/message/MessageObject;->sprint(C)V

    #@ec
    goto/16 :goto_1

    #@ee
    .line 96
    .end local v5    # "charField":C
    :cond_4
    const-string/jumbo v22, "long"

    #@f1
    move-object/from16 v0, v22

    #@f3
    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@f6
    move-result v22

    #@f7
    if-nez v22, :cond_5

    #@f9
    .line 97
    move-object/from16 v0, p0

    #@fb
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    #@fe
    move-result-wide v18

    #@ff
    .line 98
    .local v18, "longField":J
    move-object/from16 v0, p0

    #@101
    move-wide/from16 v1, v18

    #@103
    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/message/MessageObject;->sprint(J)V

    #@106
    goto/16 :goto_1

    #@108
    .line 99
    .end local v18    # "longField":J
    :cond_5
    const-string/jumbo v22, "boolean"

    #@10b
    move-object/from16 v0, v22

    #@10d
    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@110
    move-result v22

    #@111
    if-nez v22, :cond_6

    #@113
    .line 100
    move-object/from16 v0, p0

    #@115
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    #@118
    move-result v4

    #@119
    .line 101
    .local v4, "booleanField":Z
    move-object/from16 v0, p0

    #@11b
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Z)V

    #@11e
    goto/16 :goto_1

    #@120
    .line 102
    .end local v4    # "booleanField":Z
    :cond_6
    const-string/jumbo v22, "double"

    #@123
    move-object/from16 v0, v22

    #@125
    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@128
    move-result v22

    #@129
    if-nez v22, :cond_7

    #@12b
    .line 103
    move-object/from16 v0, p0

    #@12d
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    #@130
    move-result-wide v6

    #@131
    .line 104
    .local v6, "doubleField":D
    move-object/from16 v0, p0

    #@133
    invoke-virtual {v0, v6, v7}, Lgov/nist/javax/sip/message/MessageObject;->sprint(D)V

    #@136
    goto/16 :goto_1

    #@138
    .line 105
    .end local v6    # "doubleField":D
    :cond_7
    const-string/jumbo v22, "float"

    #@13b
    move-object/from16 v0, v22

    #@13d
    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@140
    move-result v22

    #@141
    if-nez v22, :cond_0

    #@143
    .line 106
    move-object/from16 v0, p0

    #@145
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    #@148
    move-result v13

    #@149
    .line 107
    .local v13, "floatField":F
    move-object/from16 v0, p0

    #@14b
    invoke-virtual {v0, v13}, Lgov/nist/javax/sip/message/MessageObject;->sprint(F)V

    #@14e
    goto/16 :goto_1

    #@150
    .line 110
    .end local v13    # "floatField":F
    .end local v14    # "fname":Ljava/lang/String;
    :cond_8
    const-class v22, Lgov/nist/core/GenericObject;

    #@152
    move-object/from16 v0, v22

    #@154
    invoke-virtual {v0, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@157
    move-result v22

    #@158
    .line 109
    if-eqz v22, :cond_a

    #@15a
    .line 112
    move-object/from16 v0, p0

    #@15c
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15f
    move-result-object v22

    #@160
    if-eqz v22, :cond_9

    #@162
    .line 114
    move-object/from16 v0, p0

    #@164
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@167
    move-result-object v22

    #@168
    check-cast v22, Lgov/nist/core/GenericObject;

    #@16a
    .line 115
    move-object/from16 v0, p0

    #@16c
    iget v0, v0, Lgov/nist/javax/sip/message/MessageObject;->indentation:I

    #@16e
    move/from16 v23, v0

    #@170
    add-int/lit8 v23, v23, 0x1

    #@172
    .line 114
    invoke-virtual/range {v22 .. v23}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    #@175
    move-result-object v22

    #@176
    .line 113
    move-object/from16 v0, p0

    #@178
    move-object/from16 v1, v22

    #@17a
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    #@17d
    goto/16 :goto_1

    #@17f
    .line 117
    :cond_9
    const-string/jumbo v22, "<null>"

    #@182
    move-object/from16 v0, p0

    #@184
    move-object/from16 v1, v22

    #@186
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    #@189
    goto/16 :goto_1

    #@18b
    .line 120
    :cond_a
    const-class v22, Lgov/nist/core/GenericObjectList;

    #@18d
    move-object/from16 v0, v22

    #@18f
    invoke-virtual {v0, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@192
    move-result v22

    #@193
    if-eqz v22, :cond_c

    #@195
    .line 122
    move-object/from16 v0, p0

    #@197
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19a
    move-result-object v22

    #@19b
    if-eqz v22, :cond_b

    #@19d
    .line 124
    move-object/from16 v0, p0

    #@19f
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a2
    move-result-object v22

    #@1a3
    check-cast v22, Lgov/nist/core/GenericObjectList;

    #@1a5
    .line 125
    move-object/from16 v0, p0

    #@1a7
    iget v0, v0, Lgov/nist/javax/sip/message/MessageObject;->indentation:I

    #@1a9
    move/from16 v23, v0

    #@1ab
    add-int/lit8 v23, v23, 0x1

    #@1ad
    .line 124
    invoke-virtual/range {v22 .. v23}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    #@1b0
    move-result-object v22

    #@1b1
    .line 123
    move-object/from16 v0, p0

    #@1b3
    move-object/from16 v1, v22

    #@1b5
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    #@1b8
    goto/16 :goto_1

    #@1ba
    .line 127
    :cond_b
    const-string/jumbo v22, "<null>"

    #@1bd
    move-object/from16 v0, p0

    #@1bf
    move-object/from16 v1, v22

    #@1c1
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    #@1c4
    goto/16 :goto_1

    #@1c6
    .line 133
    :cond_c
    move-object/from16 v0, p0

    #@1c8
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1cb
    move-result-object v22

    #@1cc
    if-eqz v22, :cond_d

    #@1ce
    .line 134
    new-instance v22, Ljava/lang/StringBuilder;

    #@1d0
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1d3
    move-object/from16 v0, p0

    #@1d5
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d8
    move-result-object v23

    #@1d9
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1dc
    move-result-object v23

    #@1dd
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1e0
    move-result-object v23

    #@1e1
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v22

    #@1e5
    const-string/jumbo v23, ":"

    #@1e8
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v22

    #@1ec
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ef
    move-result-object v22

    #@1f0
    move-object/from16 v0, p0

    #@1f2
    move-object/from16 v1, v22

    #@1f4
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    #@1f7
    .line 139
    :goto_2
    const-string/jumbo v22, "{"

    #@1fa
    move-object/from16 v0, p0

    #@1fc
    move-object/from16 v1, v22

    #@1fe
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    #@201
    .line 140
    move-object/from16 v0, p0

    #@203
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@206
    move-result-object v22

    #@207
    if-eqz v22, :cond_e

    #@209
    .line 141
    move-object/from16 v0, p0

    #@20b
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20e
    move-result-object v22

    #@20f
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@212
    move-result-object v22

    #@213
    move-object/from16 v0, p0

    #@215
    move-object/from16 v1, v22

    #@217
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    #@21a
    .line 145
    :goto_3
    const-string/jumbo v22, "}"

    #@21d
    move-object/from16 v0, p0

    #@21f
    move-object/from16 v1, v22

    #@221
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    #@224
    goto/16 :goto_1

    #@226
    .line 136
    :cond_d
    new-instance v22, Ljava/lang/StringBuilder;

    #@228
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@22b
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@22e
    move-result-object v23

    #@22f
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@232
    move-result-object v22

    #@233
    const-string/jumbo v23, ":"

    #@236
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@239
    move-result-object v22

    #@23a
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23d
    move-result-object v22

    #@23e
    move-object/from16 v0, p0

    #@240
    move-object/from16 v1, v22

    #@242
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    #@245
    goto :goto_2

    #@246
    .line 143
    :cond_e
    const-string/jumbo v22, "<null>"

    #@249
    move-object/from16 v0, p0

    #@24b
    move-object/from16 v1, v22

    #@24d
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@250
    goto :goto_3

    #@251
    .line 151
    .end local v9    # "f":Ljava/lang/reflect/Field;
    .end local v10    # "fieldName":Ljava/lang/String;
    .end local v11    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "modifier":I
    :cond_f
    const-string/jumbo v22, "}"

    #@254
    move-object/from16 v0, p0

    #@256
    move-object/from16 v1, v22

    #@258
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/MessageObject;->sprint(Ljava/lang/String;)V

    #@25b
    .line 152
    move-object/from16 v0, p0

    #@25d
    iget-object v0, v0, Lgov/nist/javax/sip/message/MessageObject;->stringRepresentation:Ljava/lang/String;

    #@25f
    move-object/from16 v22, v0

    #@261
    return-object v22
.end method

.method public abstract encode()Ljava/lang/String;
.end method
