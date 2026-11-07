.class public Landroid/util/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-p buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .registers 5
    .param p0, "cls"    # Ljava/lang/Object;
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .line 121
    if-nez p0, :cond_8

    .line 122
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 124
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "simpleName":Ljava/lang/String;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 126
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 127
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 128
    .local v1, "end":I
    if-lez v1, :cond_2e

    .line 129
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    .end local v1    # "end":I
    :cond_2e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const/16 v1, 0x7b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .end local v0    # "simpleName":Ljava/lang/String;
    :goto_41
    return-void
.end method

.method public static blacklist callersWithin(Ljava/lang/Class;I)Ljava/util/List;
    .registers 5
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 320
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    add-int/lit8 v1, p1, 0x3

    int-to-long v1, v1

    .line 321
    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/util/DebugUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/util/DebugUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    .line 322
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/util/DebugUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/util/DebugUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 323
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 324
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 325
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 326
    return-object v0
.end method

.method private static greylist-max-o constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .registers 4
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 310
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 295
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_41

    aget-object v3, v0, v2

    .line 296
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 298
    .local v4, "modifiers":I
    :try_start_e
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 299
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 300
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p2, :cond_3c

    .line 301
    invoke-static {p1, v3}, Landroid/util/DebugUtils;->constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0
    :try_end_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_3b} :catch_3d

    return-object v0

    .line 304
    :cond_3c
    goto :goto_3e

    .line 303
    :catch_3d
    move-exception v5

    .line 295
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "modifiers":I
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 306
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;
    .registers 21
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 247
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v1, "res":Ljava/lang/StringBuilder;
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_11

    move v4, v6

    goto :goto_12

    :cond_11
    move v4, v5

    .line 250
    .local v4, "flagsWasZero":Z
    :goto_12
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    array-length v8, v7

    move-wide/from16 v9, p2

    .end local p2    # "flags":J
    .local v9, "flags":J
    :goto_19
    if-ge v5, v8, :cond_86

    aget-object v11, v7, v5

    .line 251
    .local v11, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    .line 252
    .local v12, "modifiers":I
    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v13

    if-eqz v13, :cond_81

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v13

    if-eqz v13, :cond_81

    .line 253
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_48

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_46

    goto :goto_48

    :cond_46
    move-wide v15, v2

    goto :goto_82

    .line 254
    :cond_48
    :goto_48
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7f

    .line 255
    invoke-static {v11}, Landroid/util/DebugUtils;->getFieldValue(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    .line 256
    .local v13, "value":J
    cmp-long v15, v13, v2

    if-nez v15, :cond_61

    if-eqz v4, :cond_61

    .line 257
    invoke-static {v0, v11}, Landroid/util/DebugUtils;->constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 259
    :cond_61
    cmp-long v15, v13, v2

    if-eqz v15, :cond_7d

    and-long v15, v9, v13

    cmp-long v15, v15, v13

    if-nez v15, :cond_7d

    .line 260
    move-wide v15, v2

    not-long v2, v13

    and-long/2addr v2, v9

    .line 261
    .end local v9    # "flags":J
    .local v2, "flags":J
    invoke-static {v0, v11}, Landroid/util/DebugUtils;->constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x7c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide v9, v2

    goto :goto_82

    .line 259
    .end local v2    # "flags":J
    .restart local v9    # "flags":J
    :cond_7d
    move-wide v15, v2

    goto :goto_82

    .line 254
    .end local v13    # "value":J
    :cond_7f
    move-wide v15, v2

    goto :goto_82

    .line 252
    :cond_81
    move-wide v15, v2

    .line 250
    .end local v11    # "field":Ljava/lang/reflect/Field;
    .end local v12    # "modifiers":I
    :goto_82
    add-int/lit8 v5, v5, 0x1

    move-wide v2, v15

    goto :goto_19

    .line 265
    :cond_86
    move-wide v15, v2

    cmp-long v2, v9, v15

    if-nez v2, :cond_9b

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_92

    goto :goto_9b

    .line 268
    :cond_92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 266
    :cond_9b
    :goto_9b
    invoke-static {v9, v10}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :goto_a2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getFieldValue(Ljava/lang/reflect/Field;)J
    .registers 7
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 276
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v3

    .line 277
    .local v3, "longValue":J
    cmp-long v5, v3, v0

    if-eqz v5, :cond_c

    .line 278
    return-wide v3

    .line 280
    :cond_c
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2
    :try_end_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_10} :catch_15

    .line 281
    .local v2, "intValue":I
    if-eqz v2, :cond_14

    .line 282
    int-to-long v0, v2

    return-wide v0

    .line 285
    .end local v2    # "intValue":I
    .end local v3    # "longValue":J
    :cond_14
    goto :goto_16

    .line 284
    :catch_15
    move-exception v2

    .line 286
    :goto_16
    return-wide v0
.end method

.method public static whitelist isObjectSelected(Ljava/lang/Object;)Z
    .registers 14
    .param p0, "object"    # Ljava/lang/Object;

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "match":Z
    const-string v1, "ANDROID_OBJECT_FILTER"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_a0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a0

    .line 81
    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "selectors":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 85
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_27
    array-length v5, v2

    if-ge v3, v5, :cond_a0

    .line 86
    aget-object v5, v2, v3

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "pair":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 89
    .local v6, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    .line 90
    .local v7, "declaredMethod":Ljava/lang/reflect/Method;
    move-object v8, v6

    .line 92
    .local v8, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_38
    :try_start_38
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v4

    .line 93
    const/4 v11, 0x1

    invoke-virtual {v10, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v4

    .line 94
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v12, v10

    check-cast v12, [Ljava/lang/Class;

    .line 92
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v7, v9

    .line 96
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    move-object v8, v9

    if-eqz v9, :cond_74

    if-eqz v7, :cond_38

    .line 99
    :cond_74
    if-eqz v7, :cond_8d

    .line 100
    move-object v9, v10

    check-cast v9, [Ljava/lang/Object;

    .line 101
    invoke-virtual {v7, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 102
    .local v9, "value":Ljava/lang/Object;
    if-eqz v9, :cond_84

    .line 103
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_86

    :cond_84
    const-string v10, "null"

    :goto_86
    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10
    :try_end_8c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_38 .. :try_end_8c} :catch_98
    .catch Ljava/lang/IllegalAccessException; {:try_start_38 .. :try_end_8c} :catch_93
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_38 .. :try_end_8c} :catch_8e

    or-int/2addr v0, v10

    .line 111
    .end local v7    # "declaredMethod":Ljava/lang/reflect/Method;
    .end local v8    # "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "value":Ljava/lang/Object;
    :cond_8d
    :goto_8d
    goto :goto_9d

    .line 109
    :catch_8e
    move-exception v7

    .line 110
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_9d

    .line 107
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_93
    move-exception v7

    .line 108
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_8d

    .line 105
    :catch_98
    move-exception v7

    .line 106
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v7}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_8d

    .line 85
    .end local v5    # "pair":[Ljava/lang/String;
    .end local v6    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_9d
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 115
    .end local v2    # "selectors":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_a0
    return v0
.end method

.method static synthetic blacklist lambda$callersWithin$0(Ljava/lang/Class;Ljava/lang/StackTraceElement;)Z
    .registers 4
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "st"    # Ljava/lang/StackTraceElement;

    .line 322
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o printSizeValue(Ljava/io/PrintWriter;J)V
    .registers 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "number"    # J

    .line 140
    long-to-float v0, p1

    .line 141
    .local v0, "result":F
    const-string v1, ""

    .line 142
    .local v1, "suffix":Ljava/lang/String;
    const/high16 v2, 0x44610000    # 900.0f

    cmpl-float v3, v0, v2

    const/high16 v4, 0x44800000    # 1024.0f

    if-lez v3, :cond_e

    .line 143
    const-string v1, "KB"

    .line 144
    div-float/2addr v0, v4

    .line 146
    :cond_e
    cmpl-float v3, v0, v2

    if-lez v3, :cond_15

    .line 147
    const-string v1, "MB"

    .line 148
    div-float/2addr v0, v4

    .line 150
    :cond_15
    cmpl-float v3, v0, v2

    if-lez v3, :cond_1c

    .line 151
    const-string v1, "GB"

    .line 152
    div-float/2addr v0, v4

    .line 154
    :cond_1c
    cmpl-float v3, v0, v2

    if-lez v3, :cond_23

    .line 155
    const-string v1, "TB"

    .line 156
    div-float/2addr v0, v4

    .line 158
    :cond_23
    cmpl-float v2, v0, v2

    if-lez v2, :cond_2a

    .line 159
    const-string v1, "PB"

    .line 160
    div-float/2addr v0, v4

    .line 163
    :cond_2a
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3f

    .line 164
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    goto :goto_75

    .line 165
    .end local v2    # "value":Ljava/lang/String;
    :cond_3f
    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_54

    .line 166
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.1f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_75

    .line 167
    .end local v2    # "value":Ljava/lang/String;
    :cond_54
    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, v0, v2

    const-string v3, "%.0f"

    if-gez v2, :cond_69

    .line 168
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_75

    .line 170
    .end local v2    # "value":Ljava/lang/String;
    :cond_69
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .restart local v2    # "value":Ljava/lang/String;
    :goto_75
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public static greylist-max-o sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;
    .registers 8
    .param p0, "number"    # J
    .param p2, "outBuilder"    # Ljava/lang/StringBuilder;

    .line 178
    if-nez p2, :cond_a

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object p2, v0

    .line 181
    :cond_a
    long-to-float v0, p0

    .line 182
    .local v0, "result":F
    const-string v1, ""

    .line 183
    .local v1, "suffix":Ljava/lang/String;
    const/high16 v2, 0x44610000    # 900.0f

    cmpl-float v3, v0, v2

    const/high16 v4, 0x44800000    # 1024.0f

    if-lez v3, :cond_18

    .line 184
    const-string v1, "KB"

    .line 185
    div-float/2addr v0, v4

    .line 187
    :cond_18
    cmpl-float v3, v0, v2

    if-lez v3, :cond_1f

    .line 188
    const-string v1, "MB"

    .line 189
    div-float/2addr v0, v4

    .line 191
    :cond_1f
    cmpl-float v3, v0, v2

    if-lez v3, :cond_26

    .line 192
    const-string v1, "GB"

    .line 193
    div-float/2addr v0, v4

    .line 195
    :cond_26
    cmpl-float v3, v0, v2

    if-lez v3, :cond_2d

    .line 196
    const-string v1, "TB"

    .line 197
    div-float/2addr v0, v4

    .line 199
    :cond_2d
    cmpl-float v2, v0, v2

    if-lez v2, :cond_34

    .line 200
    const-string v1, "PB"

    .line 201
    div-float/2addr v0, v4

    .line 204
    :cond_34
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_49

    .line 205
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    goto :goto_7f

    .line 206
    .end local v2    # "value":Ljava/lang/String;
    :cond_49
    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_5e

    .line 207
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.1f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_7f

    .line 208
    .end local v2    # "value":Ljava/lang/String;
    :cond_5e
    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, v0, v2

    const-string v3, "%.0f"

    if-gez v2, :cond_73

    .line 209
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_7f

    .line 211
    .end local v2    # "value":Ljava/lang/String;
    :cond_73
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .restart local v2    # "value":Ljava/lang/String;
    :goto_7f
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static greylist-max-o valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 225
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_41

    aget-object v3, v0, v2

    .line 226
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 227
    .local v4, "modifiers":I
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 228
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 230
    const/4 v5, 0x0

    :try_start_31
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    if-ne p2, v5, :cond_3c

    .line 231
    invoke-static {p1, v3}, Landroid/util/DebugUtils;->constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0
    :try_end_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_3b} :catch_3d

    return-object v0

    .line 234
    :cond_3c
    goto :goto_3e

    .line 233
    :catch_3d
    move-exception v5

    .line 225
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "modifiers":I
    :cond_3e
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 237
    :cond_41
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
