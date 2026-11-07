.class final Lcom/android/framework/protobuf/MessageLiteToString;
.super Ljava/lang/Object;
.source "MessageLiteToString.java"


# static fields
.field private static final blacklist BUILDER_LIST_SUFFIX:Ljava/lang/String; = "OrBuilderList"

.field private static final blacklist BYTES_SUFFIX:Ljava/lang/String; = "Bytes"

.field private static final blacklist INDENT_BUFFER:[C

.field private static final blacklist LIST_SUFFIX:Ljava/lang/String; = "List"

.field private static final blacklist MAP_SUFFIX:Ljava/lang/String; = "Map"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 52
    const/16 v0, 0x50

    new-array v0, v0, [C

    sput-object v0, Lcom/android/framework/protobuf/MessageLiteToString;->INDENT_BUFFER:[C

    .line 55
    sget-object v0, Lcom/android/framework/protobuf/MessageLiteToString;->INDENT_BUFFER:[C

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 56
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method private static blacklist indent(ILjava/lang/StringBuilder;)V
    .registers 5
    .param p0, "indent"    # I
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .line 283
    nop

    :goto_1
    if-lez p0, :cond_14

    .line 284
    move v0, p0

    .line 285
    .local v0, "partialIndent":I
    sget-object v1, Lcom/android/framework/protobuf/MessageLiteToString;->INDENT_BUFFER:[C

    array-length v1, v1

    if-le v0, v1, :cond_c

    .line 286
    sget-object v1, Lcom/android/framework/protobuf/MessageLiteToString;->INDENT_BUFFER:[C

    array-length v0, v1

    .line 288
    :cond_c
    sget-object v1, Lcom/android/framework/protobuf/MessageLiteToString;->INDENT_BUFFER:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 289
    sub-int/2addr p0, v0

    .line 290
    .end local v0    # "partialIndent":I
    goto :goto_1

    .line 291
    :cond_14
    return-void
.end method

.method private static blacklist isDefaultValue(Ljava/lang/Object;)Z
    .registers 8
    .param p0, "o"    # Ljava/lang/Object;

    .line 201
    instance-of v0, p0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 202
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 204
    :cond_e
    instance-of v0, p0, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    .line 205
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1

    .line 207
    :cond_1f
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_33

    .line 208
    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    if-nez v0, :cond_31

    goto :goto_32

    :cond_31
    move v1, v2

    :goto_32
    return v1

    .line 210
    :cond_33
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_4b

    .line 211
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_49

    goto :goto_4a

    :cond_49
    move v1, v2

    :goto_4a
    return v1

    .line 213
    :cond_4b
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_56

    .line 214
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 216
    :cond_56
    instance-of v0, p0, Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_61

    .line 217
    sget-object v0, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 219
    :cond_61
    instance-of v0, p0, Lcom/android/framework/protobuf/MessageLite;

    if-eqz v0, :cond_71

    .line 220
    move-object v0, p0

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    if-ne p0, v0, :cond_6f

    goto :goto_70

    :cond_6f
    move v1, v2

    :goto_70
    return v1

    .line 222
    :cond_71
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_81

    .line 223
    move-object v0, p0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-nez v0, :cond_7f

    goto :goto_80

    :cond_7f
    move v1, v2

    :goto_80
    return v1

    .line 226
    :cond_81
    return v2
.end method

.method private static blacklist pascalCaseToSnakeCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "pascalCase"    # Ljava/lang/String;

    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 295
    return-object p0

    .line 298
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 301
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 302
    .local v2, "ch":C
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 303
    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_2e
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    .end local v2    # "ch":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 307
    .end local v1    # "i":I
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static blacklist printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "indent"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;

    .line 240
    instance-of v0, p3, Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 241
    move-object v0, p3

    check-cast v0, Ljava/util/List;

    .line 242
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 243
    .local v2, "entry":Ljava/lang/Object;
    invoke-static {p0, p1, p2, v2}, Lcom/android/framework/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 244
    .end local v2    # "entry":Ljava/lang/Object;
    goto :goto_b

    .line 245
    :cond_19
    return-void

    .line 247
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_1a
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_3a

    .line 248
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    .line 249
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 250
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-static {p0, p1, p2, v2}, Lcom/android/framework/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 251
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    goto :goto_29

    .line 252
    :cond_39
    return-void

    .line 255
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_3a
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    invoke-static {p1, p0}, Lcom/android/framework/protobuf/MessageLiteToString;->indent(ILjava/lang/StringBuilder;)V

    .line 257
    invoke-static {p2}, Lcom/android/framework/protobuf/MessageLiteToString;->pascalCaseToSnakeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    instance-of v0, p3, Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, ": \""

    if-eqz v0, :cond_64

    .line 260
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/framework/protobuf/TextFormatEscaper;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_cf

    .line 261
    :cond_64
    instance-of v0, p3, Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_7b

    .line 262
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v2, p3

    check-cast v2, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v2}, Lcom/android/framework/protobuf/TextFormatEscaper;->escapeBytes(Lcom/android/framework/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_cf

    .line 263
    :cond_7b
    instance-of v0, p3, Lcom/android/framework/protobuf/GeneratedMessageLite;

    const-string/jumbo v1, "}"

    const-string v2, "\n"

    const-string v3, " {"

    if-eqz v0, :cond_9b

    .line 264
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    move-object v0, p3

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    add-int/lit8 v3, p1, 0x2

    invoke-static {v0, p0, v3}, Lcom/android/framework/protobuf/MessageLiteToString;->reflectivePrintWithIndent(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/StringBuilder;I)V

    .line 266
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-static {p1, p0}, Lcom/android/framework/protobuf/MessageLiteToString;->indent(ILjava/lang/StringBuilder;)V

    .line 268
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cf

    .line 269
    :cond_9b
    instance-of v0, p3, Ljava/util/Map$Entry;

    if-eqz v0, :cond_c6

    .line 270
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    move-object v0, p3

    check-cast v0, Ljava/util/Map$Entry;

    .line 272
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    add-int/lit8 v3, p1, 0x2

    const-string v4, "key"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0, v3, v4, v5}, Lcom/android/framework/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 273
    add-int/lit8 v3, p1, 0x2

    const-string/jumbo v4, "value"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0, v3, v4, v5}, Lcom/android/framework/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 274
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-static {p1, p0}, Lcom/android/framework/protobuf/MessageLiteToString;->indent(ILjava/lang/StringBuilder;)V

    .line 276
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    goto :goto_cf

    .line 278
    :cond_c6
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    :goto_cf
    return-void
.end method

.method private static blacklist reflectivePrintWithIndent(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/StringBuilder;I)V
    .registers 20
    .param p0, "messageLite"    # Lcom/android/framework/protobuf/MessageLite;
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I

    .line 87
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 88
    .local v3, "setters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v4, "hazzers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 90
    .local v5, "getters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    const/4 v9, 0x0

    :goto_1f
    const-string v10, "get"

    const-string v11, "has"

    const-string/jumbo v12, "set"

    const/4 v13, 0x3

    if-ge v9, v7, :cond_8c

    aget-object v14, v6, v9

    .line 91
    .local v14, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v15

    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v15

    if-eqz v15, :cond_36

    .line 92
    goto :goto_89

    .line 94
    :cond_36
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v15, v13, :cond_41

    .line 95
    goto :goto_89

    .line 98
    :cond_41
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_53

    .line 99
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    goto :goto_89

    .line 103
    :cond_53
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v12

    if-nez v12, :cond_5e

    .line 104
    goto :goto_89

    .line 107
    :cond_5e
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v12, v12

    if-eqz v12, :cond_66

    .line 108
    goto :goto_89

    .line 111
    :cond_66
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_78

    .line 112
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    .line 113
    :cond_78
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_89

    .line 114
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v14    # "method":Ljava/lang/reflect/Method;
    :cond_89
    :goto_89
    add-int/lit8 v9, v9, 0x1

    goto :goto_1f

    .line 118
    :cond_8c
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_94
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 119
    .local v7, "getter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 120
    .local v9, "suffix":Ljava/lang/String;
    const-string v14, "List"

    invoke-virtual {v9, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_ee

    .line 121
    const-string v15, "OrBuilderList"

    invoke-virtual {v9, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_ee

    .line 123
    invoke-virtual {v9, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ee

    .line 126
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/reflect/Method;

    .line 127
    .local v15, "listMethod":Ljava/lang/reflect/Method;
    if-eqz v15, :cond_ee

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v13

    const-class v8, Ljava/util/List;

    invoke-virtual {v13, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ee

    .line 128
    nop

    .line 131
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v8, v13

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    new-array v14, v13, [Ljava/lang/Object;

    .line 132
    invoke-static {v15, v0, v14}, Lcom/android/framework/protobuf/GeneratedMessageLite;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 128
    invoke-static {v1, v2, v8, v13}, Lcom/android/framework/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 133
    const/4 v13, 0x3

    goto :goto_94

    .line 136
    .end local v15    # "listMethod":Ljava/lang/reflect/Method;
    :cond_ee
    const-string v8, "Map"

    invoke-virtual {v9, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_13d

    .line 138
    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_13d

    .line 141
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/Method;

    .line 142
    .local v13, "mapMethod":Ljava/lang/reflect/Method;
    if-eqz v13, :cond_13d

    .line 143
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v14

    const-class v15, Ljava/util/Map;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13d

    const-class v14, Ljava/lang/Deprecated;

    .line 146
    invoke-virtual {v13, v14}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_13d

    .line 148
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v14

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v14

    if-eqz v14, :cond_13d

    .line 149
    nop

    .line 152
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v14, v8

    const/4 v8, 0x0

    invoke-virtual {v9, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    new-array v15, v8, [Ljava/lang/Object;

    .line 153
    invoke-static {v13, v0, v15}, Lcom/android/framework/protobuf/GeneratedMessageLite;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 149
    invoke-static {v1, v2, v14, v8}, Lcom/android/framework/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 154
    const/4 v13, 0x3

    goto/16 :goto_94

    .line 158
    .end local v13    # "mapMethod":Ljava/lang/reflect/Method;
    :cond_13d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_157

    .line 159
    const/4 v13, 0x3

    goto/16 :goto_94

    .line 161
    :cond_157
    const-string v8, "Bytes"

    invoke-virtual {v9, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_187

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 162
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v14, v8

    const/4 v8, 0x0

    invoke-virtual {v9, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_187

    .line 164
    const/4 v13, 0x3

    goto/16 :goto_94

    .line 169
    :cond_187
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Method;

    .line 170
    .local v8, "getMethod":Ljava/lang/reflect/Method;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/Method;

    .line 172
    .local v13, "hasMethod":Ljava/lang/reflect/Method;
    if-eqz v8, :cond_1de

    .line 173
    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v8, v0, v15}, Lcom/android/framework/protobuf/GeneratedMessageLite;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 175
    .local v14, "value":Ljava/lang/Object;
    if-nez v13, :cond_1bf

    .line 176
    invoke-static {v14}, Lcom/android/framework/protobuf/MessageLiteToString;->isDefaultValue(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1ba

    const/4 v15, 0x1

    move-object/from16 v16, v3

    move v3, v15

    goto :goto_1bd

    :cond_1ba
    move-object/from16 v16, v3

    const/4 v3, 0x0

    :goto_1bd
    const/4 v15, 0x0

    goto :goto_1ce

    .line 177
    :cond_1bf
    move-object/from16 v16, v3

    const/4 v15, 0x0

    .end local v3    # "setters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v16, "setters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v13, v0, v3}, Lcom/android/framework/protobuf/GeneratedMessageLite;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_1ce
    nop

    .line 179
    .local v3, "hasValue":Z
    if-eqz v3, :cond_1d9

    .line 180
    invoke-static {v1, v2, v9, v14}, Lcom/android/framework/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v3, v16

    const/4 v13, 0x3

    goto/16 :goto_94

    .line 179
    :cond_1d9
    move-object/from16 v3, v16

    const/4 v13, 0x3

    goto/16 :goto_94

    .line 172
    .end local v14    # "value":Ljava/lang/Object;
    .end local v16    # "setters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v3, "setters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1de
    move-object/from16 v16, v3

    const/4 v15, 0x0

    .line 184
    .end local v3    # "setters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "getter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .end local v8    # "getMethod":Ljava/lang/reflect/Method;
    .end local v9    # "suffix":Ljava/lang/String;
    .end local v13    # "hasMethod":Ljava/lang/reflect/Method;
    .restart local v16    # "setters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v13, 0x3

    goto/16 :goto_94

    .line 186
    .end local v16    # "setters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "setters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1e4
    move-object/from16 v16, v3

    .end local v3    # "setters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "setters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    instance-of v3, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    if-eqz v3, :cond_22a

    .line 187
    move-object v3, v0

    check-cast v3, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v3, v3, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    .line 188
    invoke-virtual {v3}, Lcom/android/framework/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 189
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;>;>;"
    :goto_1f3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22a

    .line 190
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 191
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v8}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v1, v2, v7, v8}, Lcom/android/framework/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 192
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;>;"
    goto :goto_1f3

    .line 195
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;>;>;"
    :cond_22a
    move-object v3, v0

    check-cast v3, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iget-object v3, v3, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    if-eqz v3, :cond_239

    .line 196
    move-object v3, v0

    check-cast v3, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iget-object v3, v3, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v3, v1, v2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->printWithIndent(Ljava/lang/StringBuilder;I)V

    .line 198
    :cond_239
    return-void
.end method

.method static blacklist toString(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "messageLite"    # Lcom/android/framework/protobuf/MessageLite;
    .param p1, "commentString"    # Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/MessageLiteToString;->reflectivePrintWithIndent(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/StringBuilder;I)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
