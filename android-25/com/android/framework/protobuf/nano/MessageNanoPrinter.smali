.class public final Lcom/android/framework/protobuf/nano/MessageNanoPrinter;
.super Ljava/lang/Object;
.source "MessageNanoPrinter.java"


# static fields
.field private static final INDENT:Ljava/lang/String; = "  "

.field private static final MAX_STRING_LEN:I = 0xc8


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static appendQuotedBytes([BLjava/lang/StringBuffer;)V
    .locals 8
    .param p0, "bytes"    # [B
    .param p1, "builder"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    const/16 v7, 0x5c

    #@2
    const/16 v6, 0x22

    #@4
    .line 243
    if-nez p0, :cond_0

    #@6
    .line 244
    const-string/jumbo v2, "\"\""

    #@9
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c
    .line 245
    return-void

    #@d
    .line 248
    :cond_0
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@10
    .line 249
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    #@12
    if-ge v1, v2, :cond_4

    #@14
    .line 250
    aget-byte v2, p0, v1

    #@16
    and-int/lit16 v0, v2, 0xff

    #@18
    .line 251
    .local v0, "ch":I
    if-eq v0, v7, :cond_1

    #@1a
    if-ne v0, v6, :cond_2

    #@1c
    .line 252
    :cond_1
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1f
    move-result-object v2

    #@20
    int-to-char v3, v0

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@24
    .line 249
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 253
    :cond_2
    const/16 v2, 0x20

    #@29
    if-lt v0, v2, :cond_3

    #@2b
    const/16 v2, 0x7f

    #@2d
    if-ge v0, v2, :cond_3

    #@2f
    .line 254
    int-to-char v2, v0

    #@30
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@33
    goto :goto_1

    #@34
    .line 256
    :cond_3
    const-string/jumbo v2, "\\%03o"

    #@37
    const/4 v3, 0x1

    #@38
    new-array v3, v3, [Ljava/lang/Object;

    #@3a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d
    move-result-object v4

    #@3e
    const/4 v5, 0x0

    #@3f
    aput-object v4, v3, v5

    #@41
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@48
    goto :goto_1

    #@49
    .line 259
    .end local v0    # "ch":I
    :cond_4
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@4c
    .line 242
    return-void
.end method

.method private static deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "identifier"    # Ljava/lang/String;

    #@0
    .prologue
    .line 197
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 198
    .local v2, "out":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v3

    #@a
    if-ge v1, v3, :cond_2

    #@c
    .line 199
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v0

    #@10
    .line 200
    .local v0, "currentChar":C
    if-nez v1, :cond_0

    #@12
    .line 201
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    #@15
    move-result v3

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@19
    .line 198
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 202
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_1

    #@22
    .line 203
    const/16 v3, 0x5f

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@27
    move-result-object v3

    #@28
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    #@2b
    move-result v4

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2f
    goto :goto_1

    #@30
    .line 205
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@33
    goto :goto_1

    #@34
    .line 208
    .end local v0    # "currentChar":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    return-object v3
.end method

.method private static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 226
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v3

    #@4
    .line 227
    .local v3, "strLen":I
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 228
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@c
    .line 229
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v2

    #@10
    .line 230
    .local v2, "original":C
    const/16 v4, 0x20

    #@12
    if-lt v2, v4, :cond_0

    #@14
    const/16 v4, 0x7e

    #@16
    if-gt v2, v4, :cond_0

    #@18
    const/16 v4, 0x22

    #@1a
    if-eq v2, v4, :cond_0

    #@1c
    const/16 v4, 0x27

    #@1e
    if-eq v2, v4, :cond_0

    #@20
    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    .line 228
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 233
    :cond_0
    const-string/jumbo v4, "\\u%04x"

    #@29
    const/4 v5, 0x1

    #@2a
    new-array v5, v5, [Ljava/lang/Object;

    #@2c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v6

    #@30
    const/4 v7, 0x0

    #@31
    aput-object v6, v5, v7

    #@33
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    goto :goto_1

    #@3b
    .line 236
    .end local v2    # "original":C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    return-object v4
.end method

.method public static print(Lcom/android/framework/protobuf/nano/MessageNano;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 61
    .local p0, "message":Lcom/android/framework/protobuf/nano/MessageNano;, "TT;"
    if-nez p0, :cond_0

    #@2
    .line 62
    const-string/jumbo v3, ""

    #@5
    return-object v3

    #@6
    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@b
    .line 67
    .local v0, "buf":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@10
    const/4 v4, 0x0

    #@11
    invoke-static {v4, p0, v3, v0}, Lcom/android/framework/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    return-object v3

    #@19
    .line 70
    :catch_0
    move-exception v2

    #@1a
    .line 71
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "Error printing proto: "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    return-object v3

    #@33
    .line 68
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    #@34
    .line 69
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v4, "Error printing proto: "

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    return-object v3
.end method

.method private static print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 27
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

    #@0
    .prologue
    .line 90
    if-nez p1, :cond_1

    #@2
    .line 89
    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    #@3
    .line 96
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p1

    #@5
    instance-of v0, v0, Lcom/android/framework/protobuf/nano/MessageNano;

    #@7
    move/from16 v22, v0

    #@9
    if-eqz v22, :cond_c

    #@b
    .line 97
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    #@e
    move-result v18

    #@f
    .line 98
    .local v18, "origIndentBufLength":I
    if-eqz p0, :cond_2

    #@11
    .line 99
    move-object/from16 v0, p3

    #@13
    move-object/from16 v1, p2

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@18
    move-result-object v22

    #@19
    invoke-static/range {p0 .. p0}, Lcom/android/framework/protobuf/nano/MessageNanoPrinter;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v23

    #@1d
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    move-result-object v22

    #@21
    const-string/jumbo v23, " <\n"

    #@24
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    .line 100
    const-string/jumbo v22, "  "

    #@2a
    move-object/from16 v0, p2

    #@2c
    move-object/from16 v1, v22

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@31
    .line 102
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@34
    move-result-object v5

    #@35
    .line 108
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    #@38
    move-result-object v23

    #@39
    const/16 v22, 0x0

    #@3b
    move-object/from16 v0, v23

    #@3d
    array-length v0, v0

    #@3e
    move/from16 v24, v0

    #@40
    :goto_1
    move/from16 v0, v22

    #@42
    move/from16 v1, v24

    #@44
    if-ge v0, v1, :cond_8

    #@46
    aget-object v8, v23, v22

    #@48
    .line 109
    .local v8, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    #@4b
    move-result v16

    #@4c
    .line 110
    .local v16, "modifiers":I
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@4f
    move-result-object v9

    #@50
    .line 111
    .local v9, "fieldName":Ljava/lang/String;
    const-string/jumbo v25, "cachedSize"

    #@53
    move-object/from16 v0, v25

    #@55
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v25

    #@59
    if-eqz v25, :cond_4

    #@5b
    .line 108
    :cond_3
    :goto_2
    add-int/lit8 v22, v22, 0x1

    #@5d
    goto :goto_1

    #@5e
    .line 116
    :cond_4
    and-int/lit8 v25, v16, 0x1

    #@60
    const/16 v26, 0x1

    #@62
    move/from16 v0, v25

    #@64
    move/from16 v1, v26

    #@66
    if-ne v0, v1, :cond_3

    #@68
    .line 117
    and-int/lit8 v25, v16, 0x8

    #@6a
    const/16 v26, 0x8

    #@6c
    move/from16 v0, v25

    #@6e
    move/from16 v1, v26

    #@70
    if-eq v0, v1, :cond_3

    #@72
    .line 118
    const-string/jumbo v25, "_"

    #@75
    move-object/from16 v0, v25

    #@77
    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7a
    move-result v25

    #@7b
    if-nez v25, :cond_3

    #@7d
    .line 119
    const-string/jumbo v25, "_"

    #@80
    move-object/from16 v0, v25

    #@82
    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@85
    move-result v25

    #@86
    if-nez v25, :cond_3

    #@88
    .line 120
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@8b
    move-result-object v10

    #@8c
    .line 121
    .local v10, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    #@8e
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@91
    move-result-object v21

    #@92
    .line 123
    .local v21, "value":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    #@95
    move-result v25

    #@96
    if-eqz v25, :cond_7

    #@98
    .line 124
    invoke-virtual {v10}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@9b
    move-result-object v4

    #@9c
    .line 127
    .local v4, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v25, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@9e
    move-object/from16 v0, v25

    #@a0
    if-ne v4, v0, :cond_5

    #@a2
    .line 128
    move-object/from16 v0, v21

    #@a4
    move-object/from16 v1, p2

    #@a6
    move-object/from16 v2, p3

    #@a8
    invoke-static {v9, v0, v1, v2}, Lcom/android/framework/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    #@ab
    goto :goto_2

    #@ac
    .line 130
    :cond_5
    if-nez v21, :cond_6

    #@ae
    const/4 v14, 0x0

    #@af
    .line 131
    .local v14, "len":I
    :goto_3
    const/4 v13, 0x0

    #@b0
    .local v13, "i":I
    :goto_4
    if-ge v13, v14, :cond_3

    #@b2
    .line 132
    move-object/from16 v0, v21

    #@b4
    invoke-static {v0, v13}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    #@b7
    move-result-object v7

    #@b8
    .line 133
    .local v7, "elem":Ljava/lang/Object;
    move-object/from16 v0, p2

    #@ba
    move-object/from16 v1, p3

    #@bc
    invoke-static {v9, v7, v0, v1}, Lcom/android/framework/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    #@bf
    .line 131
    add-int/lit8 v13, v13, 0x1

    #@c1
    goto :goto_4

    #@c2
    .line 130
    .end local v7    # "elem":Ljava/lang/Object;
    .end local v13    # "i":I
    .end local v14    # "len":I
    :cond_6
    invoke-static/range {v21 .. v21}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@c5
    move-result v14

    #@c6
    .restart local v14    # "len":I
    goto :goto_3

    #@c7
    .line 137
    .end local v4    # "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "len":I
    :cond_7
    move-object/from16 v0, v21

    #@c9
    move-object/from16 v1, p2

    #@cb
    move-object/from16 v2, p3

    #@cd
    invoke-static {v9, v0, v1, v2}, Lcom/android/framework/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    #@d0
    goto :goto_2

    #@d1
    .line 145
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "fieldName":Ljava/lang/String;
    .end local v10    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "modifiers":I
    .end local v21    # "value":Ljava/lang/Object;
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    #@d4
    move-result-object v24

    #@d5
    const/16 v22, 0x0

    #@d7
    move-object/from16 v0, v24

    #@d9
    array-length v0, v0

    #@da
    move/from16 v25, v0

    #@dc
    move/from16 v23, v22

    #@de
    :goto_5
    move/from16 v0, v23

    #@e0
    move/from16 v1, v25

    #@e2
    if-ge v0, v1, :cond_b

    #@e4
    aget-object v15, v24, v23

    #@e6
    .line 146
    .local v15, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@e9
    move-result-object v17

    #@ea
    .line 149
    .local v17, "name":Ljava/lang/String;
    const-string/jumbo v22, "set"

    #@ed
    move-object/from16 v0, v17

    #@ef
    move-object/from16 v1, v22

    #@f1
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f4
    move-result v22

    #@f5
    if-eqz v22, :cond_9

    #@f7
    .line 150
    const/16 v22, 0x3

    #@f9
    move-object/from16 v0, v17

    #@fb
    move/from16 v1, v22

    #@fd
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@100
    move-result-object v20

    #@101
    .line 152
    .local v20, "subfieldName":Ljava/lang/String;
    const/4 v12, 0x0

    #@102
    .line 154
    .local v12, "hazzer":Ljava/lang/reflect/Method;
    :try_start_0
    new-instance v22, Ljava/lang/StringBuilder;

    #@104
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@107
    const-string/jumbo v26, "has"

    #@10a
    move-object/from16 v0, v22

    #@10c
    move-object/from16 v1, v26

    #@10e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v22

    #@112
    move-object/from16 v0, v22

    #@114
    move-object/from16 v1, v20

    #@116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v22

    #@11a
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v22

    #@11e
    const/16 v26, 0x0

    #@120
    move/from16 v0, v26

    #@122
    new-array v0, v0, [Ljava/lang/Class;

    #@124
    move-object/from16 v26, v0

    #@126
    move-object/from16 v0, v22

    #@128
    move-object/from16 v1, v26

    #@12a
    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    #@12d
    move-result-object v12

    #@12e
    .line 159
    .local v12, "hazzer":Ljava/lang/reflect/Method;
    const/16 v22, 0x0

    #@130
    move/from16 v0, v22

    #@132
    new-array v0, v0, [Ljava/lang/Object;

    #@134
    move-object/from16 v22, v0

    #@136
    move-object/from16 v0, p1

    #@138
    move-object/from16 v1, v22

    #@13a
    invoke-virtual {v12, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@13d
    move-result-object v22

    #@13e
    check-cast v22, Ljava/lang/Boolean;

    #@140
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    #@143
    move-result v22

    #@144
    if-nez v22, :cond_a

    #@146
    .line 145
    .end local v12    # "hazzer":Ljava/lang/reflect/Method;
    .end local v20    # "subfieldName":Ljava/lang/String;
    :cond_9
    :goto_6
    add-int/lit8 v22, v23, 0x1

    #@148
    move/from16 v23, v22

    #@14a
    goto :goto_5

    #@14b
    .line 163
    .restart local v12    # "hazzer":Ljava/lang/reflect/Method;
    .restart local v20    # "subfieldName":Ljava/lang/String;
    :cond_a
    const/4 v11, 0x0

    #@14c
    .line 165
    .local v11, "getter":Ljava/lang/reflect/Method;
    :try_start_1
    new-instance v22, Ljava/lang/StringBuilder;

    #@14e
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@151
    const-string/jumbo v26, "get"

    #@154
    move-object/from16 v0, v22

    #@156
    move-object/from16 v1, v26

    #@158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v22

    #@15c
    move-object/from16 v0, v22

    #@15e
    move-object/from16 v1, v20

    #@160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v22

    #@164
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@167
    move-result-object v22

    #@168
    const/16 v26, 0x0

    #@16a
    move/from16 v0, v26

    #@16c
    new-array v0, v0, [Ljava/lang/Class;

    #@16e
    move-object/from16 v26, v0

    #@170
    move-object/from16 v0, v22

    #@172
    move-object/from16 v1, v26

    #@174
    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    #@177
    move-result-object v11

    #@178
    .line 170
    .local v11, "getter":Ljava/lang/reflect/Method;
    const/16 v22, 0x0

    #@17a
    move/from16 v0, v22

    #@17c
    new-array v0, v0, [Ljava/lang/Object;

    #@17e
    move-object/from16 v22, v0

    #@180
    move-object/from16 v0, p1

    #@182
    move-object/from16 v1, v22

    #@184
    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@187
    move-result-object v22

    #@188
    move-object/from16 v0, v20

    #@18a
    move-object/from16 v1, v22

    #@18c
    move-object/from16 v2, p2

    #@18e
    move-object/from16 v3, p3

    #@190
    invoke-static {v0, v1, v2, v3}, Lcom/android/framework/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    #@193
    goto :goto_6

    #@194
    .line 173
    .end local v11    # "getter":Ljava/lang/reflect/Method;
    .end local v12    # "hazzer":Ljava/lang/reflect/Method;
    .end local v15    # "method":Ljava/lang/reflect/Method;
    .end local v17    # "name":Ljava/lang/String;
    .end local v20    # "subfieldName":Ljava/lang/String;
    :cond_b
    if-eqz p0, :cond_0

    #@196
    .line 174
    move-object/from16 v0, p2

    #@198
    move/from16 v1, v18

    #@19a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    #@19d
    .line 175
    move-object/from16 v0, p3

    #@19f
    move-object/from16 v1, p2

    #@1a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@1a4
    move-result-object v22

    #@1a5
    const-string/jumbo v23, ">\n"

    #@1a8
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1ab
    goto/16 :goto_0

    #@1ad
    .line 179
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "origIndentBufLength":I
    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/android/framework/protobuf/nano/MessageNanoPrinter;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    #@1b0
    move-result-object p0

    #@1b1
    .line 180
    move-object/from16 v0, p3

    #@1b3
    move-object/from16 v1, p2

    #@1b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@1b8
    move-result-object v22

    #@1b9
    move-object/from16 v0, v22

    #@1bb
    move-object/from16 v1, p0

    #@1bd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c0
    move-result-object v22

    #@1c1
    const-string/jumbo v23, ": "

    #@1c4
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c7
    .line 181
    move-object/from16 v0, p1

    #@1c9
    instance-of v0, v0, Ljava/lang/String;

    #@1cb
    move/from16 v22, v0

    #@1cd
    if-eqz v22, :cond_d

    #@1cf
    .line 182
    check-cast p1, Ljava/lang/String;

    #@1d1
    .end local p1    # "object":Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/MessageNanoPrinter;->sanitizeString(Ljava/lang/String;)Ljava/lang/String;

    #@1d4
    move-result-object v19

    #@1d5
    .line 183
    .local v19, "stringMessage":Ljava/lang/String;
    const-string/jumbo v22, "\""

    #@1d8
    move-object/from16 v0, p3

    #@1da
    move-object/from16 v1, v22

    #@1dc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1df
    move-result-object v22

    #@1e0
    move-object/from16 v0, v22

    #@1e2
    move-object/from16 v1, v19

    #@1e4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e7
    move-result-object v22

    #@1e8
    const-string/jumbo v23, "\""

    #@1eb
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1ee
    .line 189
    .end local v19    # "stringMessage":Ljava/lang/String;
    :goto_7
    const-string/jumbo v22, "\n"

    #@1f1
    move-object/from16 v0, p3

    #@1f3
    move-object/from16 v1, v22

    #@1f5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1f8
    goto/16 :goto_0

    #@1fa
    .line 184
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_d
    move-object/from16 v0, p1

    #@1fc
    instance-of v0, v0, [B

    #@1fe
    move/from16 v22, v0

    #@200
    if-eqz v22, :cond_e

    #@202
    .line 185
    check-cast p1, [B

    #@204
    .end local p1    # "object":Ljava/lang/Object;
    move-object/from16 v0, p1

    #@206
    move-object/from16 v1, p3

    #@208
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/MessageNanoPrinter;->appendQuotedBytes([BLjava/lang/StringBuffer;)V

    #@20b
    goto :goto_7

    #@20c
    .line 187
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_e
    move-object/from16 v0, p3

    #@20e
    move-object/from16 v1, p1

    #@210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@213
    goto :goto_7

    #@214
    .line 166
    .restart local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v11, "getter":Ljava/lang/reflect/Method;
    .restart local v12    # "hazzer":Ljava/lang/reflect/Method;
    .restart local v15    # "method":Ljava/lang/reflect/Method;
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v18    # "origIndentBufLength":I
    .restart local v20    # "subfieldName":Ljava/lang/String;
    :catch_0
    move-exception v6

    #@215
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    goto/16 :goto_6

    #@217
    .line 155
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    .end local v11    # "getter":Ljava/lang/reflect/Method;
    .local v12, "hazzer":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v6

    #@218
    .restart local v6    # "e":Ljava/lang/NoSuchMethodException;
    goto/16 :goto_6
.end method

.method private static sanitizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0xc8

    #@2
    .line 215
    const-string/jumbo v0, "http"

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@e
    move-result v0

    #@f
    if-le v0, v2, :cond_0

    #@11
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const/4 v1, 0x0

    #@17
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "[...]"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object p0

    #@2a
    .line 219
    :cond_0
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/MessageNanoPrinter;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method
