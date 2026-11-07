.class public final Llibcore/util/Objects;
.super Ljava/lang/Object;
.source "Objects.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 11
    .param p0, "o"    # Ljava/lang/Object;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 33
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    const/4 v2, 0x0

    .line 36
    .local v2, "i":I
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v4, :cond_139

    aget-object v6, v3, v5

    .line 37
    .local v6, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    and-int/lit16 v7, v7, 0x88

    if-eqz v7, :cond_2b

    .line 38
    goto/16 :goto_12a

    .line 40
    :cond_2b
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 42
    :try_start_2f
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_33} :catch_130

    .line 44
    .local v7, "value":Ljava/lang/Object;
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "i":I
    .local v8, "i":I
    if-lez v2, :cond_3c

    .line 45
    const/16 v2, 0x2c

    :try_start_39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    :cond_3c
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 52
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v9, [Z

    if-ne v2, v9, :cond_66

    .line 53
    move-object v2, v7

    check-cast v2, [Z

    invoke-static {v2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_129

    .line 54
    :cond_66
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v9, [B

    if-ne v2, v9, :cond_7a

    .line 55
    move-object v2, v7

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_129

    .line 56
    :cond_7a
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v9, [C

    if-ne v2, v9, :cond_8e

    .line 57
    move-object v2, v7

    check-cast v2, [C

    invoke-static {v2}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_129

    .line 58
    :cond_8e
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v9, [D

    if-ne v2, v9, :cond_a2

    .line 59
    move-object v2, v7

    check-cast v2, [D

    invoke-static {v2}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_129

    .line 60
    :cond_a2
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v9, [F

    if-ne v2, v9, :cond_b6

    .line 61
    move-object v2, v7

    check-cast v2, [F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_129

    .line 62
    :cond_b6
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v9, [I

    if-ne v2, v9, :cond_c9

    .line 63
    move-object v2, v7

    check-cast v2, [I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_129

    .line 64
    :cond_c9
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v9, [J

    if-ne v2, v9, :cond_dc

    .line 65
    move-object v2, v7

    check-cast v2, [J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_129

    .line 66
    :cond_dc
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v9, [S

    if-ne v2, v9, :cond_ef

    .line 67
    move-object v2, v7

    check-cast v2, [S

    invoke-static {v2}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_129

    .line 69
    :cond_ef
    move-object v2, v7

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_129

    .line 71
    :cond_fa
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v9, Ljava/lang/Character;

    if-ne v2, v9, :cond_110

    .line 72
    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_129

    .line 73
    :cond_110
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v9, Ljava/lang/String;

    if-ne v2, v9, :cond_126

    .line 74
    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_129

    .line 76
    :cond_126
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_129
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_129} :catch_12e

    .line 80
    .end local v7    # "value":Ljava/lang/Object;
    :goto_129
    move v2, v8

    .line 36
    .end local v6    # "f":Ljava/lang/reflect/Field;
    .end local v8    # "i":I
    .restart local v2    # "i":I
    :goto_12a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1d

    .line 78
    .end local v2    # "i":I
    .restart local v6    # "f":Ljava/lang/reflect/Field;
    .restart local v8    # "i":I
    :catch_12e
    move-exception v2

    goto :goto_133

    .end local v8    # "i":I
    .restart local v2    # "i":I
    :catch_130
    move-exception v3

    move v8, v2

    move-object v2, v3

    .line 79
    .local v2, "unexpected":Ljava/lang/IllegalAccessException;
    .restart local v8    # "i":I
    :goto_133
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 82
    .end local v6    # "f":Ljava/lang/reflect/Field;
    .end local v8    # "i":I
    .local v2, "i":I
    :cond_139
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
