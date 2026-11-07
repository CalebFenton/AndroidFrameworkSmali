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
        "Landroid/util/Property<",
        "TT;TV;>;"
    }
.end annotation


# static fields
.field private static final blacklist PREFIX_GET:Ljava/lang/String; = "get"

.field private static final blacklist PREFIX_IS:Ljava/lang/String; = "is"

.field private static final blacklist PREFIX_SET:Ljava/lang/String; = "set"


# instance fields
.field private blacklist mField:Ljava/lang/reflect/Field;

.field private blacklist mGetter:Ljava/lang/reflect/Method;

.field private blacklist mSetter:Ljava/lang/reflect/Method;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 21
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 48
    .local p0, "this":Landroid/util/ReflectiveProperty;, "Landroid/util/ReflectiveProperty<TT;TV;>;"
    .local p1, "propertyHolder":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, ")"

    const-string v6, ") does not match Property type ("

    const-string v7, "Underlying type ("

    invoke-direct {v1, v3, v4}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 49
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    .line 50
    .local v9, "firstLetter":C
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 51
    .local v11, "theRest":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 52
    .local v12, "capitalizedName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 54
    .local v13, "getterName":Ljava/lang/String;
    const/4 v14, 0x0

    :try_start_44
    move-object v0, v14

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Landroid/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;
    :try_end_4d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_44 .. :try_end_4d} :catch_50

    .line 76
    move/from16 v16, v8

    goto :goto_71

    .line 55
    :catch_50
    move-exception v0

    move-object v15, v0

    .line 57
    .local v15, "e":Ljava/lang/NoSuchMethodException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v8

    const-string v8, "is"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 59
    :try_start_67
    move-object v0, v14

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Landroid/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;
    :try_end_70
    .catch Ljava/lang/NoSuchMethodException; {:try_start_67 .. :try_end_70} :catch_c1

    .line 75
    nop

    .line 77
    .end local v15    # "e":Ljava/lang/NoSuchMethodException;
    :goto_71
    iget-object v0, v1, Landroid/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    .line 79
    .local v8, "getterType":Ljava/lang/Class;
    invoke-direct {v1, v3, v8}, Landroid/util/ReflectiveProperty;->typesMatch(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "setterName":Ljava/lang/String;
    :try_start_91
    new-array v0, v10, [Ljava/lang/Class;

    aput-object v8, v0, v16

    invoke-virtual {v2, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Landroid/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;
    :try_end_9b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_91 .. :try_end_9b} :catch_9c

    .line 88
    goto :goto_9d

    .line 86
    :catch_9c
    move-exception v0

    .line 89
    :goto_9d
    return-void

    .line 80
    .end local v5    # "setterName":Ljava/lang/String;
    :cond_9e
    new-instance v0, Landroid/util/NoSuchPropertyException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/util/NoSuchPropertyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    .end local v8    # "getterType":Ljava/lang/Class;
    .restart local v15    # "e":Ljava/lang/NoSuchMethodException;
    :catch_c1
    move-exception v0

    move-object v8, v0

    .line 63
    .local v8, "e1":Ljava/lang/NoSuchMethodException;
    :try_start_c3
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, v1, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    .line 64
    iget-object v0, v1, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 65
    .local v0, "fieldType":Ljava/lang/Class;
    invoke-direct {v1, v3, v0}, Landroid/util/ReflectiveProperty;->typesMatch(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_d6

    .line 69
    return-void

    .line 66
    :cond_d6
    new-instance v10, Landroid/util/NoSuchPropertyException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Landroid/util/NoSuchPropertyException;-><init>(Ljava/lang/String;)V

    .end local v8    # "e1":Ljava/lang/NoSuchMethodException;
    .end local v9    # "firstLetter":C
    .end local v11    # "theRest":Ljava/lang/String;
    .end local v12    # "capitalizedName":Ljava/lang/String;
    .end local v13    # "getterName":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/NoSuchMethodException;
    .end local p0    # "this":Landroid/util/ReflectiveProperty;, "Landroid/util/ReflectiveProperty<TT;TV;>;"
    .end local p1    # "propertyHolder":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    .end local p3    # "name":Ljava/lang/String;
    throw v10
    :try_end_f9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_c3 .. :try_end_f9} :catch_f9

    .line 70
    .end local v0    # "fieldType":Ljava/lang/Class;
    .restart local v8    # "e1":Ljava/lang/NoSuchMethodException;
    .restart local v9    # "firstLetter":C
    .restart local v11    # "theRest":Ljava/lang/String;
    .restart local v12    # "capitalizedName":Ljava/lang/String;
    .restart local v13    # "getterName":Ljava/lang/String;
    .restart local v15    # "e":Ljava/lang/NoSuchMethodException;
    .restart local p0    # "this":Landroid/util/ReflectiveProperty;, "Landroid/util/ReflectiveProperty<TT;TV;>;"
    .restart local p1    # "propertyHolder":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p2    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    .restart local p3    # "name":Ljava/lang/String;
    :catch_f9
    move-exception v0

    .line 72
    .local v0, "e2":Ljava/lang/NoSuchFieldException;
    new-instance v5, Landroid/util/NoSuchPropertyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No accessor method or field found for property with name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/NoSuchPropertyException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private blacklist typesMatch(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 6
    .param p2, "getterType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/Class;",
            ")Z"
        }
    .end annotation

    .line 99
    .local p0, "this":Landroid/util/ReflectiveProperty;, "Landroid/util/ReflectiveProperty<TT;TV;>;"
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const/4 v0, 0x1

    if-eq p2, p1, :cond_4e

    .line 100
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4d

    .line 101
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_12

    const-class v1, Ljava/lang/Float;

    if-eq p1, v1, :cond_4c

    :cond_12
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_1a

    const-class v1, Ljava/lang/Integer;

    if-eq p1, v1, :cond_4c

    :cond_1a
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_22

    const-class v1, Ljava/lang/Boolean;

    if-eq p1, v1, :cond_4c

    :cond_22
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_2a

    const-class v1, Ljava/lang/Long;

    if-eq p1, v1, :cond_4c

    :cond_2a
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_32

    const-class v1, Ljava/lang/Double;

    if-eq p1, v1, :cond_4c

    :cond_32
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_3a

    const-class v1, Ljava/lang/Short;

    if-eq p1, v1, :cond_4c

    :cond_3a
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_42

    const-class v1, Ljava/lang/Byte;

    if-eq p1, v1, :cond_4c

    :cond_42
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_4b

    const-class v1, Ljava/lang/Character;

    if-ne p1, v1, :cond_4b

    goto :goto_4c

    :cond_4b
    move v0, v2

    :cond_4c
    :goto_4c
    return v0

    .line 110
    :cond_4d
    return v2

    .line 112
    :cond_4e
    return v0
.end method


# virtual methods
.method public whitelist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    .line 138
    .local p0, "this":Landroid/util/ReflectiveProperty;, "Landroid/util/ReflectiveProperty<TT;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_21

    .line 140
    :try_start_4
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_e} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_e} :catch_f

    return-object v0

    .line 143
    :catch_f
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 141
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1a
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 146
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_21
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_33

    .line 148
    :try_start_25
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_2b} :catch_2c

    return-object v0

    .line 149
    :catch_2c
    move-exception v0

    .line 150
    .restart local v0    # "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 154
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_33
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public whitelist isReadOnly()Z
    .registers 2

    .line 162
    .local p0, "this":Landroid/util/ReflectiveProperty;, "Landroid/util/ReflectiveProperty<TT;TV;>;"
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Landroid/util/ReflectiveProperty;, "Landroid/util/ReflectiveProperty<TT;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    .line 119
    :try_start_4
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_d} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_d} :catch_e

    .line 124
    goto :goto_2a

    .line 122
    :catch_e
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 120
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_19
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 125
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_20
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_32

    .line 127
    :try_start_24
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_29} :catch_2b

    .line 130
    nop

    .line 134
    :goto_2a
    return-void

    .line 128
    :catch_2b
    move-exception v0

    .line 129
    .restart local v0    # "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 132
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/ReflectiveProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is read-only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
