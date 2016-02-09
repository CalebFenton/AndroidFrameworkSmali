.class Landroid/util/ReflectiveProperty;
.super Landroid/util/Property;
.source "ReflectiveProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/Property",
        "<TT;TV;>;"
    }
.end annotation


# static fields
.field private static final PREFIX_GET:Ljava/lang/String; = "get"

.field private static final PREFIX_IS:Ljava/lang/String; = "is"

.field private static final PREFIX_SET:Ljava/lang/String; = "set"


# instance fields
.field private mField:Ljava/lang/reflect/Field;

.field private mGetter:Ljava/lang/reflect/Method;

.field private mSetter:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 17
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 47
    .local p0, "this":Landroid/util/ReflectiveProperty;, "Landroid/util/ReflectiveProperty<TT;TV;>;"
    .local p1, "propertyHolder":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p2

    #@4
    move-object/from16 v2, p3

    #@6
    invoke-direct {v0, v1, v2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@9
    .line 48
    const/4 v14, 0x0

    #@a
    move-object/from16 v0, p3

    #@c
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v14

    #@10
    invoke-static {v14}, Ljava/lang/Character;->toUpperCase(C)C

    #@13
    move-result v8

    #@14
    .line 49
    .local v8, "firstLetter":C
    const/4 v14, 0x1

    #@15
    move-object/from16 v0, p3

    #@17
    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1a
    move-result-object v13

    #@1b
    .line 50
    .local v13, "theRest":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    move-result-object v14

    #@24
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v14

    #@28
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    .line 51
    .local v3, "capitalizedName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v15, "get"

    #@34
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v14

    #@38
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v14

    #@3c
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v9

    #@40
    .line 53
    .local v9, "getterName":Ljava/lang/String;
    const/4 v14, 0x0

    #@41
    :try_start_0
    check-cast v14, [Ljava/lang/Class;

    #@43
    move-object/from16 v0, p1

    #@45
    invoke-virtual {v0, v9, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@48
    move-result-object v14

    #@49
    move-object/from16 v0, p0

    #@4b
    iput-object v14, v0, Landroid/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@4d
    .line 76
    :goto_0
    move-object/from16 v0, p0

    #@4f
    iget-object v14, v0, Landroid/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    #@51
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@54
    move-result-object v10

    #@55
    .line 78
    .local v10, "getterType":Ljava/lang/Class;
    move-object/from16 v0, p0

    #@57
    move-object/from16 v1, p2

    #@59
    invoke-direct {v0, v1, v10}, Landroid/util/ReflectiveProperty;->typesMatch(Ljava/lang/Class;Ljava/lang/Class;)Z

    #@5c
    move-result v14

    #@5d
    if-nez v14, :cond_1

    #@5f
    .line 79
    new-instance v14, Landroid/util/NoSuchPropertyException;

    #@61
    new-instance v15, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v16, "Underlying type ("

    #@69
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v15

    #@6d
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v15

    #@71
    const-string/jumbo v16, ") "

    #@74
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v15

    #@78
    .line 80
    const-string/jumbo v16, "does not match Property type ("

    #@7b
    .line 79
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v15

    #@7f
    move-object/from16 v0, p2

    #@81
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v15

    #@85
    .line 80
    const-string/jumbo v16, ")"

    #@88
    .line 79
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v15

    #@8c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v15

    #@90
    invoke-direct {v14, v15}, Landroid/util/NoSuchPropertyException;-><init>(Ljava/lang/String;)V

    #@93
    throw v14

    #@94
    .line 54
    .end local v10    # "getterType":Ljava/lang/Class;
    :catch_0
    move-exception v4

    #@95
    .line 56
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    new-instance v14, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v15, "is"

    #@9d
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v14

    #@a1
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v14

    #@a5
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v9

    #@a9
    .line 58
    const/4 v14, 0x0

    #@aa
    :try_start_1
    check-cast v14, [Ljava/lang/Class;

    #@ac
    move-object/from16 v0, p1

    #@ae
    invoke-virtual {v0, v9, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@b1
    move-result-object v14

    #@b2
    move-object/from16 v0, p0

    #@b4
    iput-object v14, v0, Landroid/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    #@b6
    goto :goto_0

    #@b7
    .line 59
    :catch_1
    move-exception v5

    #@b8
    .line 62
    .local v5, "e1":Ljava/lang/NoSuchMethodException;
    :try_start_2
    move-object/from16 v0, p1

    #@ba
    move-object/from16 v1, p3

    #@bc
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@bf
    move-result-object v14

    #@c0
    move-object/from16 v0, p0

    #@c2
    iput-object v14, v0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    #@c4
    .line 63
    move-object/from16 v0, p0

    #@c6
    iget-object v14, v0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    #@c8
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@cb
    move-result-object v7

    #@cc
    .line 64
    .local v7, "fieldType":Ljava/lang/Class;
    move-object/from16 v0, p0

    #@ce
    move-object/from16 v1, p2

    #@d0
    invoke-direct {v0, v1, v7}, Landroid/util/ReflectiveProperty;->typesMatch(Ljava/lang/Class;Ljava/lang/Class;)Z

    #@d3
    move-result v14

    #@d4
    if-nez v14, :cond_0

    #@d6
    .line 65
    new-instance v14, Landroid/util/NoSuchPropertyException;

    #@d8
    new-instance v15, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    const-string/jumbo v16, "Underlying type ("

    #@e0
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v15

    #@e4
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v15

    #@e8
    const-string/jumbo v16, ") "

    #@eb
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v15

    #@ef
    .line 66
    const-string/jumbo v16, "does not match Property type ("

    #@f2
    .line 65
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v15

    #@f6
    move-object/from16 v0, p2

    #@f8
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v15

    #@fc
    .line 66
    const-string/jumbo v16, ")"

    #@ff
    .line 65
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v15

    #@103
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v15

    #@107
    invoke-direct {v14, v15}, Landroid/util/NoSuchPropertyException;-><init>(Ljava/lang/String;)V

    #@10a
    throw v14
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    #@10b
    .line 69
    .end local v7    # "fieldType":Ljava/lang/Class;
    :catch_2
    move-exception v6

    #@10c
    .line 71
    .local v6, "e2":Ljava/lang/NoSuchFieldException;
    new-instance v14, Landroid/util/NoSuchPropertyException;

    #@10e
    new-instance v15, Ljava/lang/StringBuilder;

    #@110
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@113
    const-string/jumbo v16, "No accessor method or field found for property with name "

    #@116
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v15

    #@11a
    move-object/from16 v0, p3

    #@11c
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v15

    #@120
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@123
    move-result-object v15

    #@124
    invoke-direct {v14, v15}, Landroid/util/NoSuchPropertyException;-><init>(Ljava/lang/String;)V

    #@127
    throw v14

    #@128
    .line 68
    .end local v6    # "e2":Ljava/lang/NoSuchFieldException;
    .restart local v7    # "fieldType":Ljava/lang/Class;
    :cond_0
    return-void

    #@129
    .line 82
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    .end local v5    # "e1":Ljava/lang/NoSuchMethodException;
    .end local v7    # "fieldType":Ljava/lang/Class;
    .restart local v10    # "getterType":Ljava/lang/Class;
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    #@12b
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@12e
    const-string/jumbo v15, "set"

    #@131
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v14

    #@135
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v14

    #@139
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13c
    move-result-object v12

    #@13d
    .line 84
    .local v12, "setterName":Ljava/lang/String;
    const/4 v14, 0x1

    #@13e
    :try_start_3
    new-array v14, v14, [Ljava/lang/Class;

    #@140
    const/4 v15, 0x0

    #@141
    aput-object v10, v14, v15

    #@143
    move-object/from16 v0, p1

    #@145
    invoke-virtual {v0, v12, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@148
    move-result-object v14

    #@149
    move-object/from16 v0, p0

    #@14b
    iput-object v14, v0, Landroid/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    #@14d
    .line 45
    :goto_1
    return-void

    #@14e
    .line 85
    :catch_3
    move-exception v11

    #@14f
    .local v11, "ignored":Ljava/lang/NoSuchMethodException;
    goto :goto_1
.end method

.method private typesMatch(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3
    .param p2, "getterType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TV;>;",
            "Ljava/lang/Class;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/util/ReflectiveProperty;, "Landroid/util/ReflectiveProperty<TT;TV;>;"
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 98
    if-eq p2, p1, :cond_a

    #@4
    .line 99
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_9

    #@a
    .line 100
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@c
    if-ne p2, v2, :cond_1

    #@e
    const-class v2, Ljava/lang/Float;

    #@10
    if-ne p1, v2, :cond_1

    #@12
    :cond_0
    :goto_0
    return v0

    #@13
    .line 101
    :cond_1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@15
    if-ne p2, v2, :cond_2

    #@17
    const-class v2, Ljava/lang/Integer;

    #@19
    if-eq p1, v2, :cond_0

    #@1b
    .line 102
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@1d
    if-ne p2, v2, :cond_3

    #@1f
    const-class v2, Ljava/lang/Boolean;

    #@21
    if-eq p1, v2, :cond_0

    #@23
    .line 103
    :cond_3
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@25
    if-ne p2, v2, :cond_4

    #@27
    const-class v2, Ljava/lang/Long;

    #@29
    if-eq p1, v2, :cond_0

    #@2b
    .line 104
    :cond_4
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@2d
    if-ne p2, v2, :cond_5

    #@2f
    const-class v2, Ljava/lang/Double;

    #@31
    if-eq p1, v2, :cond_0

    #@33
    .line 105
    :cond_5
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@35
    if-ne p2, v2, :cond_6

    #@37
    const-class v2, Ljava/lang/Short;

    #@39
    if-eq p1, v2, :cond_0

    #@3b
    .line 106
    :cond_6
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@3d
    if-ne p2, v2, :cond_7

    #@3f
    const-class v2, Ljava/lang/Byte;

    #@41
    if-eq p1, v2, :cond_0

    #@43
    .line 107
    :cond_7
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@45
    if-ne p2, v2, :cond_8

    #@47
    const-class v2, Ljava/lang/Character;

    #@49
    if-eq p1, v2, :cond_0

    #@4b
    :cond_8
    move v0, v1

    #@4c
    goto :goto_0

    #@4d
    .line 109
    :cond_9
    return v1

    #@4e
    .line 111
    :cond_a
    return v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 137
    .local p0, "this":Landroid/util/ReflectiveProperty;, "Landroid/util/ReflectiveProperty<TT;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Landroid/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 139
    :try_start_0
    iget-object v3, p0, Landroid/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    #@6
    const/4 v2, 0x0

    #@7
    check-cast v2, [Ljava/lang/Object;

    #@9
    invoke-virtual {v3, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v2

    #@d
    return-object v2

    #@e
    .line 142
    :catch_0
    move-exception v1

    #@f
    .line 143
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@11
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@14
    move-result-object v3

    #@15
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@18
    throw v2

    #@19
    .line 140
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    #@1a
    .line 141
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    #@1c
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@1f
    throw v2

    #@20
    .line 145
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    iget-object v2, p0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    #@22
    if-eqz v2, :cond_1

    #@24
    .line 147
    :try_start_1
    iget-object v2, p0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    #@26
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    #@29
    move-result-object v2

    #@2a
    return-object v2

    #@2b
    .line 148
    :catch_2
    move-exception v0

    #@2c
    .line 149
    .restart local v0    # "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    #@2e
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@31
    throw v2

    #@32
    .line 153
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    #@34
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@37
    throw v2
.end method

.method public isReadOnly()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Landroid/util/ReflectiveProperty;, "Landroid/util/ReflectiveProperty<TT;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 161
    iget-object v1, p0, Landroid/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 116
    .local p0, "this":Landroid/util/ReflectiveProperty;, "Landroid/util/ReflectiveProperty<TT;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Landroid/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 118
    :try_start_0
    iget-object v2, p0, Landroid/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;

    #@6
    const/4 v3, 0x1

    #@7
    new-array v3, v3, [Ljava/lang/Object;

    #@9
    const/4 v4, 0x0

    #@a
    aput-object p2, v3, v4

    #@c
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 115
    :goto_0
    return-void

    #@10
    .line 121
    :catch_0
    move-exception v1

    #@11
    .line 122
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@13
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@16
    move-result-object v3

    #@17
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1a
    throw v2

    #@1b
    .line 119
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    #@1c
    .line 120
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    #@1e
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@21
    throw v2

    #@22
    .line 124
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    iget-object v2, p0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    #@24
    if-eqz v2, :cond_1

    #@26
    .line 126
    :try_start_1
    iget-object v2, p0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    #@28
    invoke-virtual {v2, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    #@2b
    goto :goto_0

    #@2c
    .line 127
    :catch_2
    move-exception v0

    #@2d
    .line 128
    .restart local v0    # "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    #@2f
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@32
    throw v2

    #@33
    .line 131
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@35
    new-instance v3, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v4, "Property "

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {p0}, Landroid/util/ReflectiveProperty;->getName()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    const-string/jumbo v4, " is read-only"

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@57
    throw v2
.end method
