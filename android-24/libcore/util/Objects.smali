.class public final Llibcore/util/Objects;
.super Ljava/lang/Object;
.source "Objects.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 30
    if-eq p0, p1, :cond_0

    #@2
    if-eqz p0, :cond_1

    #@4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0

    #@b
    :cond_1
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 34
    if-nez p0, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@7
    move-result v0

    #@8
    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 12
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4
    move-result-object v0

    #@5
    .line 44
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    .line 45
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@d
    move-result-object v8

    #@e
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v8

    #@12
    const/16 v9, 0x5b

    #@14
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 46
    const/4 v2, 0x0

    #@18
    .line 47
    .local v2, "i":I
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@1b
    move-result-object v8

    #@1c
    array-length v9, v8

    #@1d
    move v3, v2

    #@1e
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v7, v9, :cond_d

    #@20
    aget-object v1, v8, v7

    #@22
    .line 48
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    #@25
    move-result v10

    #@26
    and-int/lit16 v10, v10, 0x88

    #@28
    if-eqz v10, :cond_0

    #@2a
    move v2, v3

    #@2b
    .line 47
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@2d
    move v3, v2

    #@2e
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@2f
    .line 51
    :cond_0
    const/4 v10, 0x1

    #@30
    invoke-virtual {v1, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@33
    .line 53
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    #@36
    move-result-object v6

    #@37
    .line 55
    .local v6, "value":Ljava/lang/Object;
    add-int/lit8 v2, v3, 0x1

    #@39
    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-lez v3, :cond_1

    #@3b
    .line 56
    const/16 v10, 0x2c

    #@3d
    :try_start_1
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    .line 59
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@43
    move-result-object v10

    #@44
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 60
    const/16 v10, 0x3d

    #@49
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4c
    .line 62
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4f
    move-result-object v10

    #@50
    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    #@53
    move-result v10

    #@54
    if-eqz v10, :cond_a

    #@56
    .line 63
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@59
    move-result-object v10

    #@5a
    const-class v11, [Z

    #@5c
    if-ne v10, v11, :cond_2

    #@5e
    .line 64
    check-cast v6, [Z

    #@60
    .end local v6    # "value":Ljava/lang/Object;
    invoke-static {v6}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    #@63
    move-result-object v10

    #@64
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    #@67
    goto :goto_1

    #@68
    .line 89
    :catch_0
    move-exception v5

    #@69
    .line 90
    .local v5, "unexpected":Ljava/lang/IllegalAccessException;
    :goto_2
    new-instance v7, Ljava/lang/AssertionError;

    #@6b
    invoke-direct {v7, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@6e
    throw v7

    #@6f
    .line 65
    .end local v5    # "unexpected":Ljava/lang/IllegalAccessException;
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@72
    move-result-object v10

    #@73
    const-class v11, [B

    #@75
    if-ne v10, v11, :cond_3

    #@77
    .line 66
    check-cast v6, [B

    #@79
    .end local v6    # "value":Ljava/lang/Object;
    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@7c
    move-result-object v10

    #@7d
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    goto :goto_1

    #@81
    .line 67
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@84
    move-result-object v10

    #@85
    const-class v11, [C

    #@87
    if-ne v10, v11, :cond_4

    #@89
    .line 68
    check-cast v6, [C

    #@8b
    .end local v6    # "value":Ljava/lang/Object;
    invoke-static {v6}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    #@8e
    move-result-object v10

    #@8f
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    goto :goto_1

    #@93
    .line 69
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@96
    move-result-object v10

    #@97
    const-class v11, [D

    #@99
    if-ne v10, v11, :cond_5

    #@9b
    .line 70
    check-cast v6, [D

    #@9d
    .end local v6    # "value":Ljava/lang/Object;
    invoke-static {v6}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    #@a0
    move-result-object v10

    #@a1
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    goto :goto_1

    #@a5
    .line 71
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a8
    move-result-object v10

    #@a9
    const-class v11, [F

    #@ab
    if-ne v10, v11, :cond_6

    #@ad
    .line 72
    check-cast v6, [F

    #@af
    .end local v6    # "value":Ljava/lang/Object;
    invoke-static {v6}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    #@b2
    move-result-object v10

    #@b3
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    goto/16 :goto_1

    #@b8
    .line 73
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_6
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@bb
    move-result-object v10

    #@bc
    const-class v11, [I

    #@be
    if-ne v10, v11, :cond_7

    #@c0
    .line 74
    check-cast v6, [I

    #@c2
    .end local v6    # "value":Ljava/lang/Object;
    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@c5
    move-result-object v10

    #@c6
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    goto/16 :goto_1

    #@cb
    .line 75
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@ce
    move-result-object v10

    #@cf
    const-class v11, [J

    #@d1
    if-ne v10, v11, :cond_8

    #@d3
    .line 76
    check-cast v6, [J

    #@d5
    .end local v6    # "value":Ljava/lang/Object;
    invoke-static {v6}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    #@d8
    move-result-object v10

    #@d9
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    goto/16 :goto_1

    #@de
    .line 77
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e1
    move-result-object v10

    #@e2
    const-class v11, [S

    #@e4
    if-ne v10, v11, :cond_9

    #@e6
    .line 78
    check-cast v6, [S

    #@e8
    .end local v6    # "value":Ljava/lang/Object;
    invoke-static {v6}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    #@eb
    move-result-object v10

    #@ec
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    goto/16 :goto_1

    #@f1
    .line 80
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_9
    check-cast v6, [Ljava/lang/Object;

    #@f3
    .end local v6    # "value":Ljava/lang/Object;
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@f6
    move-result-object v10

    #@f7
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    goto/16 :goto_1

    #@fc
    .line 82
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@ff
    move-result-object v10

    #@100
    const-class v11, Ljava/lang/Character;

    #@102
    if-ne v10, v11, :cond_b

    #@104
    .line 83
    const/16 v10, 0x27

    #@106
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@109
    move-result-object v10

    #@10a
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v10

    #@10e
    const/16 v11, 0x27

    #@110
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@113
    goto/16 :goto_1

    #@115
    .line 84
    :cond_b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@118
    move-result-object v10

    #@119
    const-class v11, Ljava/lang/String;

    #@11b
    if-ne v10, v11, :cond_c

    #@11d
    .line 85
    const/16 v10, 0x22

    #@11f
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@122
    move-result-object v10

    #@123
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v10

    #@127
    const/16 v11, 0x22

    #@129
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12c
    goto/16 :goto_1

    #@12e
    .line 87
    :cond_c
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    #@131
    goto/16 :goto_1

    #@133
    .line 93
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "i":I
    .end local v6    # "value":Ljava/lang/Object;
    .restart local v3    # "i":I
    :cond_d
    const-string/jumbo v7, "]"

    #@136
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13c
    move-result-object v7

    #@13d
    return-object v7

    #@13e
    .line 89
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v5

    #@13f
    .restart local v5    # "unexpected":Ljava/lang/IllegalAccessException;
    move v2, v3

    #@140
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_2
.end method
