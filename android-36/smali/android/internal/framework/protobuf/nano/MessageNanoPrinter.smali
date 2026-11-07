.class public final Landroid/internal/framework/protobuf/nano/MessageNanoPrinter;
.super Ljava/lang/Object;
.source "MessageNanoPrinter.java"


# static fields
.field private static final blacklist INDENT:Ljava/lang/String; = "  "

.field private static final blacklist MAX_STRING_LEN:I = 0xc8


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist appendQuotedBytes([BLjava/lang/StringBuffer;)V
    .registers 7
    .param p0, "bytes"    # [B
    .param p1, "builder"    # Ljava/lang/StringBuffer;

    .line 257
    if-nez p0, :cond_8

    .line 258
    const-string v0, "\"\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    return-void

    .line 262
    :cond_8
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 263
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_46

    .line 264
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 265
    .local v2, "ch":I
    const/16 v3, 0x5c

    if-eq v2, v3, :cond_3b

    if-ne v2, v0, :cond_1c

    goto :goto_3b

    .line 267
    :cond_1c
    const/16 v3, 0x20

    if-lt v2, v3, :cond_29

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_29

    .line 268
    int-to-char v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 270
    :cond_29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "\\%03o"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 266
    :cond_3b
    :goto_3b
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    int-to-char v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 263
    .end local v2    # "ch":I
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 273
    .end local v1    # "i":I
    :cond_46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 274
    return-void
.end method

.method private static blacklist deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "identifier"    # Ljava/lang/String;

    .line 211
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 212
    .local v0, "out":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 213
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 214
    .local v2, "currentChar":C
    if-nez v1, :cond_1a

    .line 215
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_31

    .line 216
    :cond_1a
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 217
    const/16 v3, 0x5f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_31

    .line 219
    :cond_2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 212
    .end local v2    # "currentChar":C
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 222
    .end local v1    # "i":I
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist escapeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;

    .line 240
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 241
    .local v0, "strLen":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 242
    .local v1, "b":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_38

    .line 243
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 244
    .local v3, "original":C
    const/16 v4, 0x20

    if-lt v3, v4, :cond_24

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_24

    const/16 v4, 0x22

    if-eq v3, v4, :cond_24

    const/16 v4, 0x27

    if-eq v3, v4, :cond_24

    .line 245
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 247
    :cond_24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "\\u%04x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .end local v3    # "original":C
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 250
    .end local v2    # "i":I
    :cond_38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist print(Landroid/internal/framework/protobuf/nano/MessageNano;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/internal/framework/protobuf/nano/MessageNano;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 62
    .local p0, "message":Landroid/internal/framework/protobuf/nano/MessageNano;, "TT;"
    const-string v0, "Error printing proto: "

    if-nez p0, :cond_7

    .line 63
    const-string v0, ""

    return-object v0

    .line 66
    :cond_7
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v1, "buf":Ljava/lang/StringBuffer;
    :try_start_c
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    invoke-static {v3, p0, v2, v1}, Landroid/internal/framework/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_15} :catch_32
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_15} :catch_1b

    .line 73
    nop

    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    :catch_1b
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 69
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_32
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .registers 23
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "indentBuf"    # Ljava/lang/StringBuffer;
    .param p3, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 91
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-nez v1, :cond_a

    goto/16 :goto_15f

    .line 97
    :cond_a
    instance-of v0, v1, Landroid/internal/framework/protobuf/nano/MessageNano;

    const-string v4, ">\n"

    const-string v5, "  "

    const-string v6, " <\n"

    if-eqz v0, :cond_163

    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    .line 99
    .local v7, "origIndentBufLength":I
    if-eqz p0, :cond_2c

    .line 100
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Landroid/internal/framework/protobuf/nano/MessageNanoPrinter;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 109
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v6, v0

    const/4 v9, 0x0

    :goto_36
    if-ge v9, v6, :cond_c6

    aget-object v10, v0, v9

    .line 110
    .local v10, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    .line 111
    .local v11, "modifiers":I
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    .line 112
    .local v12, "fieldName":Ljava/lang/String;
    const-string v13, "cachedSize"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_50

    .line 114
    move-object/from16 v18, v0

    move/from16 v17, v6

    goto/16 :goto_be

    .line 117
    :cond_50
    and-int/lit8 v13, v11, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_ba

    and-int/lit8 v13, v11, 0x8

    const/16 v14, 0x8

    if-eq v13, v14, :cond_ba

    .line 119
    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_b5

    .line 120
    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_b0

    .line 121
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    .line 122
    .local v13, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 124
    .local v14, "value":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Class;->isArray()Z

    move-result v15

    if-eqz v15, :cond_a8

    .line 125
    invoke-virtual {v13}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v15

    .line 128
    .local v15, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v15, v8, :cond_87

    .line 129
    invoke-static {v12, v14, v2, v3}, Landroid/internal/framework/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    move-object/from16 v18, v0

    move/from16 v17, v6

    goto :goto_a7

    .line 131
    :cond_87
    if-nez v14, :cond_8b

    const/4 v8, 0x0

    goto :goto_8f

    :cond_8b
    invoke-static {v14}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v8

    .line 132
    .local v8, "len":I
    :goto_8f
    const/16 v17, 0x0

    move-object/from16 v18, v0

    move/from16 v0, v17

    .local v0, "i":I
    :goto_95
    if-ge v0, v8, :cond_a5

    .line 133
    move/from16 v17, v6

    invoke-static {v14, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 134
    .local v6, "elem":Ljava/lang/Object;
    invoke-static {v12, v6, v2, v3}, Landroid/internal/framework/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 132
    .end local v6    # "elem":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v17

    goto :goto_95

    :cond_a5
    move/from16 v17, v6

    .line 137
    .end local v0    # "i":I
    .end local v8    # "len":I
    .end local v15    # "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_a7
    goto :goto_be

    .line 138
    :cond_a8
    move-object/from16 v18, v0

    move/from16 v17, v6

    invoke-static {v12, v14, v2, v3}, Landroid/internal/framework/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    goto :goto_be

    .line 120
    .end local v13    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "value":Ljava/lang/Object;
    :cond_b0
    move-object/from16 v18, v0

    move/from16 v17, v6

    goto :goto_be

    .line 119
    :cond_b5
    move-object/from16 v18, v0

    move/from16 v17, v6

    goto :goto_be

    .line 117
    :cond_ba
    move-object/from16 v18, v0

    move/from16 v17, v6

    .line 109
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v11    # "modifiers":I
    .end local v12    # "fieldName":Ljava/lang/String;
    :goto_be
    add-int/lit8 v9, v9, 0x1

    move/from16 v6, v17

    move-object/from16 v0, v18

    goto/16 :goto_36

    .line 146
    :cond_c6
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v8, v6

    const/4 v9, 0x0

    :goto_cc
    if-ge v9, v8, :cond_152

    aget-object v10, v6, v9

    .line 147
    .local v10, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    .line 150
    .local v11, "name":Ljava/lang/String;
    const-string v0, "set"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 151
    const/4 v0, 0x3

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 153
    .local v12, "subfieldName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 155
    .local v13, "hazzer":Ljava/lang/reflect/Method;
    :try_start_e2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "has"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_f5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e2 .. :try_end_f5} :catch_144

    const/4 v14, 0x0

    :try_start_f6
    new-array v15, v14, [Ljava/lang/Class;

    invoke-virtual {v5, v0, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_fc
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f6 .. :try_end_fc} :catch_13f

    move-object v13, v0

    .line 158
    nop

    .line 160
    new-array v0, v14, [Ljava/lang/Object;

    invoke-virtual {v13, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_110

    .line 161
    move-object/from16 v16, v6

    const/4 v15, 0x0

    goto :goto_14c

    .line 164
    :cond_110
    const/4 v14, 0x0

    .line 166
    .local v14, "getter":Ljava/lang/reflect/Method;
    :try_start_111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_124
    .catch Ljava/lang/NoSuchMethodException; {:try_start_111 .. :try_end_124} :catch_13a

    move-object/from16 v16, v6

    const/4 v15, 0x0

    :try_start_127
    new-array v6, v15, [Ljava/lang/Class;

    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_12d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_127 .. :try_end_12d} :catch_138

    .line 169
    .end local v14    # "getter":Ljava/lang/reflect/Method;
    .local v0, "getter":Ljava/lang/reflect/Method;
    nop

    .line 171
    new-array v6, v15, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v12, v6, v2, v3}, Landroid/internal/framework/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    goto :goto_14c

    .line 167
    .end local v0    # "getter":Ljava/lang/reflect/Method;
    .restart local v14    # "getter":Ljava/lang/reflect/Method;
    :catch_138
    move-exception v0

    goto :goto_13e

    :catch_13a
    move-exception v0

    move-object/from16 v16, v6

    const/4 v15, 0x0

    .line 168
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_13e
    goto :goto_14c

    .line 156
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v14    # "getter":Ljava/lang/reflect/Method;
    :catch_13f
    move-exception v0

    move-object/from16 v16, v6

    move v15, v14

    goto :goto_148

    :catch_144
    move-exception v0

    move-object/from16 v16, v6

    const/4 v15, 0x0

    .line 157
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_148
    goto :goto_14c

    .line 150
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v12    # "subfieldName":Ljava/lang/String;
    .end local v13    # "hazzer":Ljava/lang/reflect/Method;
    :cond_149
    move-object/from16 v16, v6

    const/4 v15, 0x0

    .line 146
    .end local v10    # "method":Ljava/lang/reflect/Method;
    .end local v11    # "name":Ljava/lang/String;
    :goto_14c
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v16

    goto/16 :goto_cc

    .line 174
    :cond_152
    if-eqz p0, :cond_15e

    .line 175
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 176
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "origIndentBufLength":I
    :cond_15e
    nop

    .line 205
    :goto_15f
    move-object/from16 v0, p0

    goto/16 :goto_1f0

    .line 178
    :cond_163
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_1b3

    .line 179
    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    .line 180
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static/range {p0 .. p0}, Landroid/internal/framework/protobuf/nano/MessageNanoPrinter;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 182
    .end local p0    # "identifier":Ljava/lang/String;
    .local v7, "identifier":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_176
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1b1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 183
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    .line 185
    .local v10, "origIndentBufLength":I
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    const-string v11, "key"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v12, v2, v3}, Landroid/internal/framework/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 187
    const-string v11, "value"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v12, v2, v3}, Landroid/internal/framework/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 188
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 189
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v10    # "origIndentBufLength":I
    goto :goto_176

    .line 191
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_1b1
    move-object v0, v7

    goto :goto_1f0

    .line 193
    .end local v7    # "identifier":Ljava/lang/String;
    .restart local p0    # "identifier":Ljava/lang/String;
    :cond_1b3
    invoke-static/range {p0 .. p0}, Landroid/internal/framework/protobuf/nano/MessageNanoPrinter;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .end local p0    # "identifier":Ljava/lang/String;
    .local v0, "identifier":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_1dd

    .line 196
    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/internal/framework/protobuf/nano/MessageNanoPrinter;->sanitizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "stringMessage":Ljava/lang/String;
    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    .end local v4    # "stringMessage":Ljava/lang/String;
    goto :goto_1eb

    :cond_1dd
    instance-of v4, v1, [B

    if-eqz v4, :cond_1e8

    .line 199
    move-object v4, v1

    check-cast v4, [B

    invoke-static {v4, v3}, Landroid/internal/framework/protobuf/nano/MessageNanoPrinter;->appendQuotedBytes([BLjava/lang/StringBuffer;)V

    goto :goto_1eb

    .line 201
    :cond_1e8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 203
    :goto_1eb
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    :goto_1f0
    return-void
.end method

.method private static blacklist sanitizeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 229
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_28

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[...]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 233
    :cond_28
    invoke-static {p0}, Landroid/internal/framework/protobuf/nano/MessageNanoPrinter;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
