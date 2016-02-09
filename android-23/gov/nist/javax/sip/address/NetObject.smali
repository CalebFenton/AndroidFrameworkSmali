.class public abstract Lgov/nist/javax/sip/address/NetObject;
.super Lgov/nist/core/GenericObject;
.source "NetObject.java"


# static fields
.field protected static final CORE_PACKAGE:Ljava/lang/String; = "gov.nist.core"

.field protected static final GRUU:Ljava/lang/String; = "gr"

.field protected static final LR:Ljava/lang/String; = "lr"

.field protected static final MADDR:Ljava/lang/String; = "maddr"

.field protected static final METHOD:Ljava/lang/String; = "method"

.field protected static final NET_PACKAGE:Ljava/lang/String; = "gov.nist.javax.sip.address"

.field protected static final PARSER_PACKAGE:Ljava/lang/String; = "gov.nist.javax.sip.parser"

.field protected static final PHONE:Ljava/lang/String; = "phone"

.field protected static final SIP:Ljava/lang/String; = "sip"

.field protected static final SIPS:Ljava/lang/String; = "sips"

.field protected static final TCP:Ljava/lang/String; = "tcp"

.field protected static final TLS:Ljava/lang/String; = "tls"

.field protected static final TRANSPORT:Ljava/lang/String; = "transport"

.field protected static final TTL:Ljava/lang/String; = "ttl"

.field protected static final UDP:Ljava/lang/String; = "udp"

.field protected static final USER:Ljava/lang/String; = "user"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    #@3
    .line 71
    return-void
.end method


# virtual methods
.method public debugDump()Ljava/lang/String;
    .locals 24

    #@0
    .prologue
    .line 280
    const-string/jumbo v22, ""

    #@3
    move-object/from16 v0, v22

    #@5
    move-object/from16 v1, p0

    #@7
    iput-object v0, v1, Lgov/nist/javax/sip/address/NetObject;->stringRepresentation:Ljava/lang/String;

    #@9
    .line 281
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/address/NetObject;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v20

    #@d
    .line 282
    .local v20, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@10
    move-result-object v22

    #@11
    move-object/from16 v0, p0

    #@13
    move-object/from16 v1, v22

    #@15
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    #@18
    .line 283
    const-string/jumbo v22, "{"

    #@1b
    move-object/from16 v0, p0

    #@1d
    move-object/from16 v1, v22

    #@1f
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    #@22
    .line 284
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@25
    move-result-object v12

    #@26
    .line 285
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
    .line 286
    aget-object v9, v12, v15

    #@30
    .line 288
    .local v9, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    #@33
    move-result v17

    #@34
    .line 289
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
    .line 285
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    #@40
    goto :goto_0

    #@41
    .line 291
    :cond_1
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@44
    move-result-object v11

    #@45
    .line 292
    .local v11, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@48
    move-result-object v10

    #@49
    .line 293
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
    .line 297
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
    .line 301
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
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    #@7c
    .line 304
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/Class;->isPrimitive()Z

    #@7f
    move-result v22

    #@80
    if-eqz v22, :cond_8

    #@82
    .line 305
    invoke-virtual {v11}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@85
    move-result-object v14

    #@86
    .line 306
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
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    #@a3
    .line 307
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
    .line 308
    move-object/from16 v0, p0

    #@b0
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@b3
    move-result v16

    #@b4
    .line 309
    .local v16, "intfield":I
    move-object/from16 v0, p0

    #@b6
    move/from16 v1, v16

    #@b8
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(I)V

    #@bb
    goto :goto_1

    #@bc
    .line 365
    .end local v14    # "fname":Ljava/lang/String;
    .end local v16    # "intfield":I
    :catch_0
    move-exception v8

    #@bd
    .local v8, "ex1":Ljava/lang/IllegalAccessException;
    goto :goto_1

    #@be
    .line 310
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
    .line 311
    move-object/from16 v0, p0

    #@cb
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    #@ce
    move-result v21

    #@cf
    .line 312
    .local v21, "shortField":S
    move-object/from16 v0, p0

    #@d1
    move/from16 v1, v21

    #@d3
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(S)V

    #@d6
    goto/16 :goto_1

    #@d8
    .line 313
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
    .line 314
    move-object/from16 v0, p0

    #@e5
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    #@e8
    move-result v5

    #@e9
    .line 315
    .local v5, "charField":C
    move-object/from16 v0, p0

    #@eb
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/address/NetObject;->sprint(C)V

    #@ee
    goto/16 :goto_1

    #@f0
    .line 316
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
    .line 317
    move-object/from16 v0, p0

    #@fd
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    #@100
    move-result-wide v18

    #@101
    .line 318
    .local v18, "longField":J
    move-object/from16 v0, p0

    #@103
    move-wide/from16 v1, v18

    #@105
    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/address/NetObject;->sprint(J)V

    #@108
    goto/16 :goto_1

    #@10a
    .line 319
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
    .line 320
    move-object/from16 v0, p0

    #@117
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    #@11a
    move-result v4

    #@11b
    .line 321
    .local v4, "booleanField":Z
    move-object/from16 v0, p0

    #@11d
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/address/NetObject;->sprint(Z)V

    #@120
    goto/16 :goto_1

    #@122
    .line 322
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
    .line 323
    move-object/from16 v0, p0

    #@12f
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    #@132
    move-result-wide v6

    #@133
    .line 324
    .local v6, "doubleField":D
    move-object/from16 v0, p0

    #@135
    invoke-virtual {v0, v6, v7}, Lgov/nist/javax/sip/address/NetObject;->sprint(D)V

    #@138
    goto/16 :goto_1

    #@13a
    .line 325
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
    .line 326
    move-object/from16 v0, p0

    #@147
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    #@14a
    move-result v13

    #@14b
    .line 327
    .local v13, "floatField":F
    move-object/from16 v0, p0

    #@14d
    invoke-virtual {v0, v13}, Lgov/nist/javax/sip/address/NetObject;->sprint(F)V

    #@150
    goto/16 :goto_1

    #@152
    .line 329
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
    .line 330
    move-object/from16 v0, p0

    #@15e
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@161
    move-result-object v22

    #@162
    if-eqz v22, :cond_9

    #@164
    .line 332
    move-object/from16 v0, p0

    #@166
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@169
    move-result-object v22

    #@16a
    check-cast v22, Lgov/nist/core/GenericObject;

    #@16c
    .line 333
    move-object/from16 v0, p0

    #@16e
    iget v0, v0, Lgov/nist/javax/sip/address/NetObject;->indentation:I

    #@170
    move/from16 v23, v0

    #@172
    add-int/lit8 v23, v23, 0x1

    #@174
    .line 332
    invoke-virtual/range {v22 .. v23}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    #@177
    move-result-object v22

    #@178
    .line 331
    move-object/from16 v0, p0

    #@17a
    move-object/from16 v1, v22

    #@17c
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    #@17f
    goto/16 :goto_1

    #@181
    .line 335
    :cond_9
    const-string/jumbo v22, "<null>"

    #@184
    move-object/from16 v0, p0

    #@186
    move-object/from16 v1, v22

    #@188
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    #@18b
    goto/16 :goto_1

    #@18d
    .line 339
    :cond_a
    const-class v22, Lgov/nist/core/GenericObjectList;

    #@18f
    move-object/from16 v0, v22

    #@191
    invoke-virtual {v0, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@194
    move-result v22

    #@195
    .line 338
    if-eqz v22, :cond_c

    #@197
    .line 340
    move-object/from16 v0, p0

    #@199
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19c
    move-result-object v22

    #@19d
    if-eqz v22, :cond_b

    #@19f
    .line 342
    move-object/from16 v0, p0

    #@1a1
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a4
    move-result-object v22

    #@1a5
    check-cast v22, Lgov/nist/core/GenericObjectList;

    #@1a7
    .line 343
    move-object/from16 v0, p0

    #@1a9
    iget v0, v0, Lgov/nist/javax/sip/address/NetObject;->indentation:I

    #@1ab
    move/from16 v23, v0

    #@1ad
    add-int/lit8 v23, v23, 0x1

    #@1af
    .line 342
    invoke-virtual/range {v22 .. v23}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    #@1b2
    move-result-object v22

    #@1b3
    .line 341
    move-object/from16 v0, p0

    #@1b5
    move-object/from16 v1, v22

    #@1b7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    #@1ba
    goto/16 :goto_1

    #@1bc
    .line 345
    :cond_b
    const-string/jumbo v22, "<null>"

    #@1bf
    move-object/from16 v0, p0

    #@1c1
    move-object/from16 v1, v22

    #@1c3
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    #@1c6
    goto/16 :goto_1

    #@1c8
    .line 351
    :cond_c
    move-object/from16 v0, p0

    #@1ca
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1cd
    move-result-object v22

    #@1ce
    if-eqz v22, :cond_d

    #@1d0
    .line 352
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
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    #@1f9
    .line 357
    :goto_2
    const-string/jumbo v22, "{"

    #@1fc
    move-object/from16 v0, p0

    #@1fe
    move-object/from16 v1, v22

    #@200
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    #@203
    .line 358
    move-object/from16 v0, p0

    #@205
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@208
    move-result-object v22

    #@209
    if-eqz v22, :cond_e

    #@20b
    .line 359
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
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    #@21c
    .line 363
    :goto_3
    const-string/jumbo v22, "}"

    #@21f
    move-object/from16 v0, p0

    #@221
    move-object/from16 v1, v22

    #@223
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    #@226
    goto/16 :goto_1

    #@228
    .line 354
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
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    #@247
    goto :goto_2

    #@248
    .line 361
    :cond_e
    const-string/jumbo v22, "<null>"

    #@24b
    move-object/from16 v0, p0

    #@24d
    move-object/from16 v1, v22

    #@24f
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@252
    goto :goto_3

    #@253
    .line 369
    .end local v9    # "f":Ljava/lang/reflect/Field;
    .end local v10    # "fieldName":Ljava/lang/String;
    .end local v11    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "modifier":I
    :cond_f
    const-string/jumbo v22, "}"

    #@256
    move-object/from16 v0, p0

    #@258
    move-object/from16 v1, v22

    #@25a
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/NetObject;->sprint(Ljava/lang/String;)V

    #@25d
    .line 370
    move-object/from16 v0, p0

    #@25f
    iget-object v0, v0, Lgov/nist/javax/sip/address/NetObject;->stringRepresentation:Ljava/lang/String;

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
    .line 382
    iget v1, p0, Lgov/nist/javax/sip/address/NetObject;->indentation:I

    #@2
    .line 383
    .local v1, "save":I
    iput p1, p0, Lgov/nist/javax/sip/address/NetObject;->indentation:I

    #@4
    .line 384
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/NetObject;->debugDump()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 385
    .local v0, "retval":Ljava/lang/String;
    iput v1, p0, Lgov/nist/javax/sip/address/NetObject;->indentation:I

    #@a
    .line 386
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 18
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 80
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/address/NetObject;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v14

    #@4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v15

    #@8
    invoke-virtual {v14, v15}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v14

    #@c
    if-nez v14, :cond_0

    #@e
    .line 81
    const/4 v14, 0x0

    #@f
    return v14

    #@10
    .line 82
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/address/NetObject;->getClass()Ljava/lang/Class;

    #@13
    move-result-object v13

    #@14
    .line 83
    .local v13, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v9

    #@18
    .line 85
    .local v9, "hisclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@1b
    move-result-object v6

    #@1c
    .line 86
    .local v6, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@1f
    move-result-object v10

    #@20
    .line 87
    .local v10, "hisfields":[Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    #@21
    .local v11, "i":I
    :goto_1
    array-length v14, v6

    #@22
    if-ge v11, v14, :cond_c

    #@24
    .line 88
    aget-object v3, v6, v11

    #@26
    .line 89
    .local v3, "f":Ljava/lang/reflect/Field;
    aget-object v8, v10, v11

    #@28
    .line 91
    .local v8, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    #@2b
    move-result v12

    #@2c
    .line 92
    .local v12, "modifier":I
    and-int/lit8 v14, v12, 0x2

    #@2e
    const/4 v15, 0x2

    #@2f
    if-ne v14, v15, :cond_2

    #@31
    .line 87
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    #@33
    goto :goto_1

    #@34
    .line 94
    :cond_2
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@37
    move-result-object v5

    #@38
    .line 95
    .local v5, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    .line 96
    .local v4, "fieldName":Ljava/lang/String;
    const-string/jumbo v14, "stringRepresentation"

    #@3f
    invoke-virtual {v4, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@42
    move-result v14

    #@43
    if-eqz v14, :cond_1

    #@45
    .line 99
    const-string/jumbo v14, "indentation"

    #@48
    invoke-virtual {v4, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@4b
    move-result v14

    #@4c
    if-eqz v14, :cond_1

    #@4e
    .line 104
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    #@51
    move-result v14

    #@52
    if-eqz v14, :cond_9

    #@54
    .line 105
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    .line 106
    .local v7, "fname":Ljava/lang/String;
    const-string/jumbo v14, "int"

    #@5b
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@5e
    move-result v14

    #@5f
    if-nez v14, :cond_3

    #@61
    .line 107
    move-object/from16 v0, p0

    #@63
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@66
    move-result v14

    #@67
    move-object/from16 v0, p1

    #@69
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@6c
    move-result v15

    #@6d
    if-eq v14, v15, :cond_1

    #@6f
    .line 108
    const/4 v14, 0x0

    #@70
    return v14

    #@71
    .line 109
    :cond_3
    const-string/jumbo v14, "short"

    #@74
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@77
    move-result v14

    #@78
    if-nez v14, :cond_4

    #@7a
    .line 110
    move-object/from16 v0, p0

    #@7c
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    #@7f
    move-result v14

    #@80
    move-object/from16 v0, p1

    #@82
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    #@85
    move-result v15

    #@86
    if-eq v14, v15, :cond_1

    #@88
    .line 111
    const/4 v14, 0x0

    #@89
    return v14

    #@8a
    .line 112
    :cond_4
    const-string/jumbo v14, "char"

    #@8d
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@90
    move-result v14

    #@91
    if-nez v14, :cond_5

    #@93
    .line 113
    move-object/from16 v0, p0

    #@95
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    #@98
    move-result v14

    #@99
    move-object/from16 v0, p1

    #@9b
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    #@9e
    move-result v15

    #@9f
    if-eq v14, v15, :cond_1

    #@a1
    .line 114
    const/4 v14, 0x0

    #@a2
    return v14

    #@a3
    .line 115
    :cond_5
    const-string/jumbo v14, "long"

    #@a6
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@a9
    move-result v14

    #@aa
    if-nez v14, :cond_6

    #@ac
    .line 116
    move-object/from16 v0, p0

    #@ae
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    #@b1
    move-result-wide v14

    #@b2
    move-object/from16 v0, p1

    #@b4
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    #@b7
    move-result-wide v16

    #@b8
    cmp-long v14, v14, v16

    #@ba
    if-eqz v14, :cond_1

    #@bc
    .line 117
    const/4 v14, 0x0

    #@bd
    return v14

    #@be
    .line 118
    :cond_6
    const-string/jumbo v14, "boolean"

    #@c1
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@c4
    move-result v14

    #@c5
    if-nez v14, :cond_7

    #@c7
    .line 119
    move-object/from16 v0, p0

    #@c9
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    #@cc
    move-result v14

    #@cd
    move-object/from16 v0, p1

    #@cf
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    #@d2
    move-result v15

    #@d3
    if-eq v14, v15, :cond_1

    #@d5
    .line 120
    const/4 v14, 0x0

    #@d6
    return v14

    #@d7
    .line 121
    :cond_7
    const-string/jumbo v14, "double"

    #@da
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@dd
    move-result v14

    #@de
    if-nez v14, :cond_8

    #@e0
    .line 122
    move-object/from16 v0, p0

    #@e2
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    #@e5
    move-result-wide v14

    #@e6
    move-object/from16 v0, p1

    #@e8
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    #@eb
    move-result-wide v16

    #@ec
    cmpl-double v14, v14, v16

    #@ee
    if-eqz v14, :cond_1

    #@f0
    .line 123
    const/4 v14, 0x0

    #@f1
    return v14

    #@f2
    .line 124
    :cond_8
    const-string/jumbo v14, "float"

    #@f5
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@f8
    move-result v14

    #@f9
    if-nez v14, :cond_1

    #@fb
    .line 125
    move-object/from16 v0, p0

    #@fd
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    #@100
    move-result v14

    #@101
    move-object/from16 v0, p1

    #@103
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    #@106
    move-result v15

    #@107
    cmpl-float v14, v14, v15

    #@109
    if-eqz v14, :cond_1

    #@10b
    .line 126
    const/4 v14, 0x0

    #@10c
    return v14

    #@10d
    .line 128
    .end local v7    # "fname":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p1

    #@10f
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@112
    move-result-object v14

    #@113
    move-object/from16 v0, p0

    #@115
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@118
    move-result-object v15

    #@119
    if-eq v14, v15, :cond_1

    #@11b
    .line 130
    move-object/from16 v0, p0

    #@11d
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@120
    move-result-object v14

    #@121
    if-nez v14, :cond_a

    #@123
    move-object/from16 v0, p1

    #@125
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@128
    move-result-object v14

    #@129
    if-eqz v14, :cond_a

    #@12b
    .line 131
    const/4 v14, 0x0

    #@12c
    return v14

    #@12d
    .line 132
    :cond_a
    move-object/from16 v0, p1

    #@12f
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@132
    move-result-object v14

    #@133
    if-nez v14, :cond_b

    #@135
    move-object/from16 v0, p1

    #@137
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13a
    move-result-object v14

    #@13b
    if-eqz v14, :cond_b

    #@13d
    .line 133
    const/4 v14, 0x0

    #@13e
    return v14

    #@13f
    .line 134
    :cond_b
    move-object/from16 v0, p0

    #@141
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@144
    move-result-object v14

    #@145
    move-object/from16 v0, p1

    #@147
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14a
    move-result-object v15

    #@14b
    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@14e
    move-result v14

    #@14f
    if-nez v14, :cond_1

    #@151
    .line 135
    const/4 v14, 0x0

    #@152
    return v14

    #@153
    .line 136
    :catch_0
    move-exception v2

    #@154
    .line 137
    .local v2, "ex1":Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@157
    goto/16 :goto_2

    #@159
    .line 140
    .end local v2    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "g":Ljava/lang/reflect/Field;
    .end local v12    # "modifier":I
    :cond_c
    const-class v14, Lgov/nist/javax/sip/address/NetObject;

    #@15b
    invoke-virtual {v13, v14}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@15e
    move-result v14

    #@15f
    if-eqz v14, :cond_d

    #@161
    .line 147
    const/4 v14, 0x1

    #@162
    return v14

    #@163
    .line 143
    :cond_d
    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@166
    move-result-object v13

    #@167
    .line 144
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@16a
    move-result-object v9

    #@16b
    goto/16 :goto_0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 24
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 164
    if-nez p1, :cond_0

    #@2
    .line 165
    const/16 v19, 0x1

    #@4
    return v19

    #@5
    .line 166
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/address/NetObject;->getClass()Ljava/lang/Class;

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
    .line 167
    const/16 v19, 0x0

    #@15
    return v19

    #@16
    :cond_1
    move-object/from16 v18, p1

    #@18
    .line 168
    check-cast v18, Lgov/nist/core/GenericObject;

    #@1a
    .line 172
    .local v18, "that":Lgov/nist/core/GenericObject;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1d
    move-result-object v10

    #@1e
    .line 173
    .local v10, "hisclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/address/NetObject;->getClass()Ljava/lang/Class;

    #@21
    move-result-object v16

    #@22
    .line 175
    .local v16, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@25
    move-result-object v6

    #@26
    .line 176
    .local v6, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@29
    move-result-object v11

    #@2a
    .line 177
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
    if-ge v12, v0, :cond_12

    #@32
    .line 178
    aget-object v3, v6, v12

    #@34
    .line 179
    .local v3, "f":Ljava/lang/reflect/Field;
    aget-object v8, v11, v12

    #@36
    .line 181
    .local v8, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    #@39
    move-result v13

    #@3a
    .line 182
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
    .line 177
    :cond_2
    :goto_2
    add-int/lit8 v12, v12, 0x1

    #@46
    goto :goto_1

    #@47
    .line 184
    :cond_3
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@4a
    move-result-object v5

    #@4b
    .line 185
    .local v5, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    .line 186
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
    .line 189
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
    .line 194
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    #@68
    move-result v19

    #@69
    if-eqz v19, :cond_a

    #@6b
    .line 195
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@6e
    move-result-object v7

    #@6f
    .line 196
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
    .line 197
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
    .line 198
    const/16 v19, 0x0

    #@8e
    return v19

    #@8f
    .line 199
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
    .line 200
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
    .line 201
    const/16 v19, 0x0

    #@ae
    return v19

    #@af
    .line 202
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
    .line 203
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
    .line 204
    const/16 v19, 0x0

    #@ce
    return v19

    #@cf
    .line 205
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
    .line 206
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
    .line 207
    const/16 v19, 0x0

    #@ec
    return v19

    #@ed
    .line 208
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
    .line 209
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
    .line 210
    const/16 v19, 0x0

    #@10c
    return v19

    #@10d
    .line 211
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
    .line 212
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
    .line 213
    const/16 v19, 0x0

    #@12a
    return v19

    #@12b
    .line 214
    :cond_9
    const-string/jumbo v19, "float"

    #@12e
    move-object/from16 v0, v19

    #@130
    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@133
    move-result v19

    #@134
    if-nez v19, :cond_2

    #@136
    .line 215
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
    .line 216
    const/16 v19, 0x0

    #@148
    return v19

    #@149
    .line 219
    .end local v7    # "fname":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    #@14b
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14e
    move-result-object v14

    #@14f
    .line 220
    .local v14, "myObj":Ljava/lang/Object;
    move-object/from16 v0, v18

    #@151
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@154
    move-result-object v9

    #@155
    .line 221
    .local v9, "hisObj":Ljava/lang/Object;
    if-eqz v9, :cond_b

    #@157
    if-nez v14, :cond_b

    #@159
    .line 222
    const/16 v19, 0x0

    #@15b
    return v19

    #@15c
    .line 223
    :cond_b
    if-nez v9, :cond_c

    #@15e
    if-nez v14, :cond_2

    #@160
    .line 225
    :cond_c
    if-nez v9, :cond_d

    #@162
    if-eqz v14, :cond_2

    #@164
    .line 228
    :cond_d
    instance-of v0, v9, Ljava/lang/String;

    #@166
    move/from16 v19, v0

    #@168
    if-eqz v19, :cond_e

    #@16a
    .line 229
    instance-of v0, v14, Ljava/lang/String;

    #@16c
    move/from16 v19, v0

    #@16e
    .line 227
    if-eqz v19, :cond_e

    #@170
    .line 230
    move-object v0, v9

    #@171
    check-cast v0, Ljava/lang/String;

    #@173
    move-object/from16 v19, v0

    #@175
    const-string/jumbo v20, ""

    #@178
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17b
    move-result v19

    #@17c
    if-nez v19, :cond_2

    #@17e
    .line 232
    check-cast v14, Ljava/lang/String;

    #@180
    .line 233
    .end local v14    # "myObj":Ljava/lang/Object;
    check-cast v9, Ljava/lang/String;

    #@182
    .line 232
    .end local v9    # "hisObj":Ljava/lang/Object;
    invoke-virtual {v14, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@185
    move-result v19

    #@186
    if-eqz v19, :cond_2

    #@188
    .line 235
    const/16 v19, 0x0

    #@18a
    return v19

    #@18b
    .line 237
    .restart local v9    # "hisObj":Ljava/lang/Object;
    .restart local v14    # "myObj":Ljava/lang/Object;
    :cond_e
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@18e
    move-result-object v19

    #@18f
    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    #@192
    move-result v19

    #@193
    if-eqz v19, :cond_f

    #@195
    .line 238
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@198
    move-result-object v19

    #@199
    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    #@19c
    move-result v19

    #@19d
    .line 237
    if-eqz v19, :cond_f

    #@19f
    .line 239
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1a2
    move-result-object v19

    #@1a3
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1a6
    move-result-object v20

    #@1a7
    invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@1aa
    move-result v19

    #@1ab
    .line 237
    if-eqz v19, :cond_f

    #@1ad
    .line 240
    move-object v0, v9

    #@1ae
    check-cast v0, Lgov/nist/core/GenericObject;

    #@1b0
    move-object/from16 v19, v0

    #@1b2
    invoke-virtual/range {v19 .. v19}, Lgov/nist/core/GenericObject;->getMatcher()Lgov/nist/core/Match;

    #@1b5
    move-result-object v19

    #@1b6
    if-eqz v19, :cond_f

    #@1b8
    .line 243
    check-cast v14, Lgov/nist/core/GenericObject;

    #@1ba
    .end local v14    # "myObj":Ljava/lang/Object;
    invoke-virtual {v14}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    #@1bd
    move-result-object v15

    #@1be
    .line 245
    .local v15, "myObjEncoded":Ljava/lang/String;
    check-cast v9, Lgov/nist/core/GenericObject;

    #@1c0
    .end local v9    # "hisObj":Ljava/lang/Object;
    invoke-virtual {v9}, Lgov/nist/core/GenericObject;->getMatcher()Lgov/nist/core/Match;

    #@1c3
    move-result-object v19

    #@1c4
    move-object/from16 v0, v19

    #@1c6
    invoke-interface {v0, v15}, Lgov/nist/core/Match;->match(Ljava/lang/String;)Z

    #@1c9
    move-result v17

    #@1ca
    .line 247
    .local v17, "retval":Z
    if-nez v17, :cond_2

    #@1cc
    .line 248
    const/16 v19, 0x0

    #@1ce
    return v19

    #@1cf
    .line 250
    .end local v15    # "myObjEncoded":Ljava/lang/String;
    .end local v17    # "retval":Z
    .restart local v9    # "hisObj":Ljava/lang/Object;
    .restart local v14    # "myObj":Ljava/lang/Object;
    :cond_f
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1d2
    move-result-object v19

    #@1d3
    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    #@1d6
    move-result v19

    #@1d7
    if-eqz v19, :cond_10

    #@1d9
    .line 251
    move-object v0, v14

    #@1da
    check-cast v0, Lgov/nist/core/GenericObject;

    #@1dc
    move-object/from16 v19, v0

    #@1de
    move-object/from16 v0, v19

    #@1e0
    invoke-virtual {v0, v9}, Lgov/nist/core/GenericObject;->match(Ljava/lang/Object;)Z

    #@1e3
    move-result v19

    #@1e4
    if-eqz v19, :cond_11

    #@1e6
    .line 254
    :cond_10
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1e9
    move-result-object v19

    #@1ea
    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    #@1ed
    move-result v19

    #@1ee
    if-eqz v19, :cond_2

    #@1f0
    .line 255
    check-cast v14, Lgov/nist/core/GenericObjectList;

    #@1f2
    .end local v14    # "myObj":Ljava/lang/Object;
    invoke-virtual {v14, v9}, Lgov/nist/core/GenericObjectList;->match(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f5
    move-result v19

    #@1f6
    if-nez v19, :cond_2

    #@1f8
    .line 256
    const/16 v19, 0x0

    #@1fa
    return v19

    #@1fb
    .line 252
    .restart local v14    # "myObj":Ljava/lang/Object;
    :cond_11
    const/16 v19, 0x0

    #@1fd
    return v19

    #@1fe
    .line 258
    .end local v9    # "hisObj":Ljava/lang/Object;
    .end local v14    # "myObj":Ljava/lang/Object;
    :catch_0
    move-exception v2

    #@1ff
    .line 259
    .local v2, "ex1":Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@202
    goto/16 :goto_2

    #@204
    .line 262
    .end local v2    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "g":Ljava/lang/reflect/Field;
    .end local v13    # "modifier":I
    :cond_12
    const-class v19, Lgov/nist/javax/sip/address/NetObject;

    #@206
    move-object/from16 v0, v16

    #@208
    move-object/from16 v1, v19

    #@20a
    invoke-virtual {v0, v1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@20d
    move-result v19

    #@20e
    if-eqz v19, :cond_13

    #@210
    .line 269
    const/16 v19, 0x1

    #@212
    return v19

    #@213
    .line 265
    :cond_13
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@216
    move-result-object v16

    #@217
    .line 266
    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@21a
    move-result-object v10

    #@21b
    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 394
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/NetObject;->encode()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
