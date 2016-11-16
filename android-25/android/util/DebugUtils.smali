.class public Landroid/util/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "cls"    # Ljava/lang/Object;
    .param p1, "out"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 112
    if-nez p0, :cond_0

    #@2
    .line 113
    const-string/jumbo v2, "null"

    #@5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    .line 111
    :goto_0
    return-void

    #@9
    .line 115
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 116
    .local v1, "simpleName":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@13
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 117
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 118
    const/16 v2, 0x2e

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@26
    move-result v0

    #@27
    .line 119
    .local v0, "end":I
    if-lez v0, :cond_2

    #@29
    .line 120
    add-int/lit8 v2, v0, 0x1

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 123
    .end local v0    # "end":I
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 124
    const/16 v2, 0x7b

    #@34
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    .line 125
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@3a
    move-result v2

    #@3b
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    goto :goto_0
.end method

.method public static flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    #@1
    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 240
    .local v3, "res":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@9
    move-result-object v6

    #@a
    array-length v7, v6

    #@b
    :goto_0
    if-ge v5, v7, :cond_1

    #@d
    aget-object v0, v6, v5

    #@f
    .line 241
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    #@12
    move-result v2

    #@13
    .line 242
    .local v2, "modifiers":I
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@16
    move-result v8

    #@17
    if-eqz v8, :cond_0

    #@19
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    #@1c
    move-result v8

    #@1d
    if-eqz v8, :cond_0

    #@1f
    .line 243
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@22
    move-result-object v8

    #@23
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@25
    invoke-virtual {v8, v9}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v8

    #@29
    .line 242
    if-eqz v8, :cond_0

    #@2b
    .line 243
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@2e
    move-result-object v8

    #@2f
    invoke-virtual {v8, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@32
    move-result v8

    #@33
    .line 242
    if-eqz v8, :cond_0

    #@35
    .line 245
    const/4 v8, 0x0

    #@36
    :try_start_0
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@39
    move-result v4

    #@3a
    .line 246
    .local v4, "value":I
    and-int v8, p2, v4

    #@3c
    if-eqz v8, :cond_0

    #@3e
    .line 247
    not-int v8, v4

    #@3f
    and-int/2addr p2, v8

    #@40
    .line 248
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@43
    move-result-object v8

    #@44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@47
    move-result v9

    #@48
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4b
    move-result-object v8

    #@4c
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v8

    #@50
    const/16 v9, 0x7c

    #@52
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@55
    .line 240
    .end local v4    # "value":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@57
    goto :goto_0

    #@58
    .line 254
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "modifiers":I
    :cond_1
    if-nez p2, :cond_2

    #@5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@5d
    move-result v5

    #@5e
    if-nez v5, :cond_3

    #@60
    .line 255
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    .line 259
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    return-object v5

    #@6c
    .line 257
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@6f
    move-result v5

    #@70
    add-int/lit8 v5, v5, -0x1

    #@72
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    #@75
    goto :goto_2

    #@76
    .line 250
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "modifiers":I
    :catch_0
    move-exception v1

    #@77
    .local v1, "ignored":Ljava/lang/IllegalAccessException;
    goto :goto_1
.end method

.method public static isObjectSelected(Ljava/lang/Object;)Z
    .locals 17
    .param p0, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 70
    const/4 v7, 0x0

    #@1
    .line 71
    .local v7, "match":Z
    const-string/jumbo v13, "ANDROID_OBJECT_FILTER"

    #@4
    invoke-static {v13}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v10

    #@8
    .line 72
    .local v10, "s":Ljava/lang/String;
    if-eqz v10, :cond_4

    #@a
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@d
    move-result v13

    #@e
    if-lez v13, :cond_4

    #@10
    .line 73
    const-string/jumbo v13, "@"

    #@13
    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@16
    move-result-object v11

    #@17
    .line 75
    .local v11, "selectors":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1a
    move-result-object v13

    #@1b
    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1e
    move-result-object v13

    #@1f
    const/4 v14, 0x0

    #@20
    aget-object v14, v11, v14

    #@22
    invoke-virtual {v13, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@25
    move-result v13

    #@26
    if-eqz v13, :cond_4

    #@28
    .line 77
    const/4 v5, 0x1

    #@29
    .end local v7    # "match":Z
    .local v5, "i":I
    :goto_0
    array-length v13, v11

    #@2a
    if-ge v5, v13, :cond_4

    #@2c
    .line 78
    aget-object v13, v11, v5

    #@2e
    const-string/jumbo v14, "="

    #@31
    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@34
    move-result-object v8

    #@35
    .line 79
    .local v8, "pair":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@38
    move-result-object v6

    #@39
    .line 81
    .local v6, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    #@3a
    .line 82
    .local v1, "declaredMethod":Ljava/lang/reflect/Method;
    move-object v9, v6

    #@3b
    .line 84
    .end local v1    # "declaredMethod":Ljava/lang/reflect/Method;
    .local v9, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v14, "get"

    #@43
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v13

    #@47
    .line 85
    const/4 v14, 0x0

    #@48
    aget-object v14, v8, v14

    #@4a
    const/4 v15, 0x0

    #@4b
    const/16 v16, 0x1

    #@4d
    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@50
    move-result-object v14

    #@51
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@53
    invoke-virtual {v14, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@56
    move-result-object v14

    #@57
    .line 84
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v13

    #@5b
    .line 86
    const/4 v14, 0x0

    #@5c
    aget-object v14, v8, v14

    #@5e
    const/4 v15, 0x1

    #@5f
    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@62
    move-result-object v14

    #@63
    .line 84
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v13

    #@67
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v14

    #@6b
    .line 87
    const/4 v13, 0x0

    #@6c
    check-cast v13, [Ljava/lang/Class;

    #@6e
    .line 84
    invoke-virtual {v9, v14, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@71
    move-result-object v1

    #@72
    .line 88
    .local v1, "declaredMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@75
    move-result-object v9

    #@76
    if-eqz v9, :cond_1

    #@78
    .line 89
    if-eqz v1, :cond_0

    #@7a
    .line 91
    :cond_1
    if-eqz v1, :cond_2

    #@7c
    .line 93
    const/4 v13, 0x0

    #@7d
    check-cast v13, [Ljava/lang/Object;

    #@7f
    .line 92
    move-object/from16 v0, p0

    #@81
    invoke-virtual {v1, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    move-result-object v12

    #@85
    .line 94
    .local v12, "value":Ljava/lang/Object;
    if-eqz v12, :cond_3

    #@87
    .line 95
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8a
    move-result-object v13

    #@8b
    :goto_1
    const/4 v14, 0x1

    #@8c
    aget-object v14, v8, v14

    #@8e
    .line 94
    invoke-virtual {v13, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@91
    move-result v13

    #@92
    or-int/2addr v7, v13

    #@93
    .line 77
    .end local v1    # "declaredMethod":Ljava/lang/reflect/Method;
    .end local v12    # "value":Ljava/lang/Object;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    #@95
    goto :goto_0

    #@96
    .line 95
    .restart local v1    # "declaredMethod":Ljava/lang/reflect/Method;
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v13, "null"
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@99
    goto :goto_1

    #@9a
    .line 101
    .end local v1    # "declaredMethod":Ljava/lang/reflect/Method;
    .end local v12    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v4

    #@9b
    .line 102
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    #@9e
    goto :goto_2

    #@9f
    .line 99
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    #@a0
    .line 100
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    #@a3
    goto :goto_2

    #@a4
    .line 97
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    #@a5
    .line 98
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    #@a8
    goto :goto_2

    #@a9
    .line 107
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    .end local v5    # "i":I
    .end local v6    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "pair":[Ljava/lang/String;
    .end local v9    # "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "selectors":[Ljava/lang/String;
    :cond_4
    return v7
.end method

.method public static printSizeValue(Ljava/io/PrintWriter;J)V
    .locals 9
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "number"    # J

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/high16 v5, 0x44800000    # 1024.0f

    #@4
    const/high16 v4, 0x44610000    # 900.0f

    #@6
    .line 131
    long-to-float v0, p1

    #@7
    .line 132
    .local v0, "result":F
    const-string/jumbo v1, ""

    #@a
    .line 133
    .local v1, "suffix":Ljava/lang/String;
    cmpl-float v3, v0, v4

    #@c
    if-lez v3, :cond_0

    #@e
    .line 134
    const-string/jumbo v1, "KB"

    #@11
    .line 135
    div-float/2addr v0, v5

    #@12
    .line 137
    :cond_0
    cmpl-float v3, v0, v4

    #@14
    if-lez v3, :cond_1

    #@16
    .line 138
    const-string/jumbo v1, "MB"

    #@19
    .line 139
    div-float/2addr v0, v5

    #@1a
    .line 141
    :cond_1
    cmpl-float v3, v0, v4

    #@1c
    if-lez v3, :cond_2

    #@1e
    .line 142
    const-string/jumbo v1, "GB"

    #@21
    .line 143
    div-float/2addr v0, v5

    #@22
    .line 145
    :cond_2
    cmpl-float v3, v0, v4

    #@24
    if-lez v3, :cond_3

    #@26
    .line 146
    const-string/jumbo v1, "TB"

    #@29
    .line 147
    div-float/2addr v0, v5

    #@2a
    .line 149
    :cond_3
    cmpl-float v3, v0, v4

    #@2c
    if-lez v3, :cond_4

    #@2e
    .line 150
    const-string/jumbo v1, "PB"

    #@31
    .line 151
    div-float/2addr v0, v5

    #@32
    .line 154
    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    #@34
    cmpg-float v3, v0, v3

    #@36
    if-gez v3, :cond_5

    #@38
    .line 155
    const-string/jumbo v3, "%.2f"

    #@3b
    new-array v4, v7, [Ljava/lang/Object;

    #@3d
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@40
    move-result-object v5

    #@41
    aput-object v5, v4, v6

    #@43
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    .line 163
    .local v2, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a
    .line 164
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    .line 130
    return-void

    #@4e
    .line 156
    .end local v2    # "value":Ljava/lang/String;
    :cond_5
    const/high16 v3, 0x41200000    # 10.0f

    #@50
    cmpg-float v3, v0, v3

    #@52
    if-gez v3, :cond_6

    #@54
    .line 157
    const-string/jumbo v3, "%.1f"

    #@57
    new-array v4, v7, [Ljava/lang/Object;

    #@59
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@5c
    move-result-object v5

    #@5d
    aput-object v5, v4, v6

    #@5f
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@62
    move-result-object v2

    #@63
    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    #@64
    .line 158
    .end local v2    # "value":Ljava/lang/String;
    :cond_6
    const/high16 v3, 0x42c80000    # 100.0f

    #@66
    cmpg-float v3, v0, v3

    #@68
    if-gez v3, :cond_7

    #@6a
    .line 159
    const-string/jumbo v3, "%.0f"

    #@6d
    new-array v4, v7, [Ljava/lang/Object;

    #@6f
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@72
    move-result-object v5

    #@73
    aput-object v5, v4, v6

    #@75
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@78
    move-result-object v2

    #@79
    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    #@7a
    .line 161
    .end local v2    # "value":Ljava/lang/String;
    :cond_7
    const-string/jumbo v3, "%.0f"

    #@7d
    new-array v4, v7, [Ljava/lang/Object;

    #@7f
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@82
    move-result-object v5

    #@83
    aput-object v5, v4, v6

    #@85
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@88
    move-result-object v2

    #@89
    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method public static sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;
    .locals 8
    .param p0, "number"    # J
    .param p2, "outBuilder"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/high16 v5, 0x44800000    # 1024.0f

    #@4
    const/high16 v4, 0x44610000    # 900.0f

    #@6
    .line 169
    if-nez p2, :cond_0

    #@8
    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    #@a
    .end local p2    # "outBuilder":Ljava/lang/StringBuilder;
    const/16 v3, 0x20

    #@c
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@f
    .line 172
    .restart local p2    # "outBuilder":Ljava/lang/StringBuilder;
    :cond_0
    long-to-float v0, p0

    #@10
    .line 173
    .local v0, "result":F
    const-string/jumbo v1, ""

    #@13
    .line 174
    .local v1, "suffix":Ljava/lang/String;
    cmpl-float v3, v0, v4

    #@15
    if-lez v3, :cond_1

    #@17
    .line 175
    const-string/jumbo v1, "KB"

    #@1a
    .line 176
    div-float/2addr v0, v5

    #@1b
    .line 178
    :cond_1
    cmpl-float v3, v0, v4

    #@1d
    if-lez v3, :cond_2

    #@1f
    .line 179
    const-string/jumbo v1, "MB"

    #@22
    .line 180
    div-float/2addr v0, v5

    #@23
    .line 182
    :cond_2
    cmpl-float v3, v0, v4

    #@25
    if-lez v3, :cond_3

    #@27
    .line 183
    const-string/jumbo v1, "GB"

    #@2a
    .line 184
    div-float/2addr v0, v5

    #@2b
    .line 186
    :cond_3
    cmpl-float v3, v0, v4

    #@2d
    if-lez v3, :cond_4

    #@2f
    .line 187
    const-string/jumbo v1, "TB"

    #@32
    .line 188
    div-float/2addr v0, v5

    #@33
    .line 190
    :cond_4
    cmpl-float v3, v0, v4

    #@35
    if-lez v3, :cond_5

    #@37
    .line 191
    const-string/jumbo v1, "PB"

    #@3a
    .line 192
    div-float/2addr v0, v5

    #@3b
    .line 195
    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    #@3d
    cmpg-float v3, v0, v3

    #@3f
    if-gez v3, :cond_6

    #@41
    .line 196
    const-string/jumbo v3, "%.2f"

    #@44
    new-array v4, v7, [Ljava/lang/Object;

    #@46
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@49
    move-result-object v5

    #@4a
    aput-object v5, v4, v6

    #@4c
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    .line 204
    .local v2, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    .line 205
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 206
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    return-object v3

    #@5b
    .line 197
    .end local v2    # "value":Ljava/lang/String;
    :cond_6
    const/high16 v3, 0x41200000    # 10.0f

    #@5d
    cmpg-float v3, v0, v3

    #@5f
    if-gez v3, :cond_7

    #@61
    .line 198
    const-string/jumbo v3, "%.1f"

    #@64
    new-array v4, v7, [Ljava/lang/Object;

    #@66
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@69
    move-result-object v5

    #@6a
    aput-object v5, v4, v6

    #@6c
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    #@71
    .line 199
    .end local v2    # "value":Ljava/lang/String;
    :cond_7
    const/high16 v3, 0x42c80000    # 100.0f

    #@73
    cmpg-float v3, v0, v3

    #@75
    if-gez v3, :cond_8

    #@77
    .line 200
    const-string/jumbo v3, "%.0f"

    #@7a
    new-array v4, v7, [Ljava/lang/Object;

    #@7c
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@7f
    move-result-object v5

    #@80
    aput-object v5, v4, v6

    #@82
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@85
    move-result-object v2

    #@86
    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    #@87
    .line 202
    .end local v2    # "value":Ljava/lang/String;
    :cond_8
    const-string/jumbo v3, "%.0f"

    #@8a
    new-array v4, v7, [Ljava/lang/Object;

    #@8c
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@8f
    move-result-object v5

    #@90
    aput-object v5, v4, v6

    #@92
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@95
    move-result-object v2

    #@96
    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method public static valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 216
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@3
    move-result-object v4

    #@4
    const/4 v3, 0x0

    #@5
    array-length v5, v4

    #@6
    :goto_0
    if-ge v3, v5, :cond_1

    #@8
    aget-object v0, v4, v3

    #@a
    .line 217
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    #@d
    move-result v2

    #@e
    .line 218
    .local v2, "modifiers":I
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_0

    #@14
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    #@17
    move-result v6

    #@18
    if-eqz v6, :cond_0

    #@1a
    .line 219
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@1d
    move-result-object v6

    #@1e
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@20
    invoke-virtual {v6, v7}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v6

    #@24
    .line 218
    if-eqz v6, :cond_0

    #@26
    .line 219
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2d
    move-result v6

    #@2e
    .line 218
    if-eqz v6, :cond_0

    #@30
    .line 221
    const/4 v6, 0x0

    #@31
    :try_start_0
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@34
    move-result v6

    #@35
    if-ne p2, v6, :cond_0

    #@37
    .line 222
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3e
    move-result v7

    #@3f
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    move-result-object v3

    #@43
    return-object v3

    #@44
    .line 224
    :catch_0
    move-exception v1

    #@45
    .line 216
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@47
    goto :goto_0

    #@48
    .line 228
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "modifiers":I
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    return-object v3
.end method
