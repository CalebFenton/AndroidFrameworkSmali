.class public final Llibcore/reflect/Types;
.super Ljava/lang/Object;
.source "Types.java"


# static fields
.field private static final PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@7
    sput-object v0, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    #@9
    .line 35
    sget-object v0, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    #@b
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@d
    const-string/jumbo v2, "B"

    #@10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 36
    sget-object v0, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    #@15
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@17
    const-string/jumbo v2, "C"

    #@1a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 37
    sget-object v0, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    #@1f
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@21
    const-string/jumbo v2, "S"

    #@24
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 38
    sget-object v0, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    #@29
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@2b
    const-string/jumbo v2, "I"

    #@2e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 39
    sget-object v0, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    #@33
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@35
    const-string/jumbo v2, "J"

    #@38
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 40
    sget-object v0, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    #@3d
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@3f
    const-string/jumbo v2, "F"

    #@42
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    .line 41
    sget-object v0, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    #@47
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@49
    const-string/jumbo v2, "D"

    #@4c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    .line 42
    sget-object v0, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    #@51
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@53
    const-string/jumbo v2, "V"

    #@56
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    .line 43
    sget-object v0, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    #@5b
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@5d
    const-string/jumbo v2, "Z"

    #@60
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static appendArrayGenericType(Ljava/lang/StringBuilder;[Ljava/lang/reflect/Type;)V
    .locals 3
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 115
    array-length v1, p1

    #@2
    if-nez v1, :cond_0

    #@4
    .line 116
    return-void

    #@5
    .line 118
    :cond_0
    aget-object v1, p1, v2

    #@7
    invoke-static {p0, v1}, Llibcore/reflect/Types;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    #@a
    .line 119
    const/4 v0, 0x1

    #@b
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@c
    if-ge v0, v1, :cond_1

    #@e
    .line 120
    const/16 v1, 0x2c

    #@10
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@13
    .line 121
    aget-object v1, p1, v0

    #@15
    invoke-static {p0, v1}, Llibcore/reflect/Types;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    #@18
    .line 119
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 114
    :cond_1
    return-void
.end method

.method public static appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V
    .locals 9
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "type"    # Ljava/lang/reflect/Type;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 126
    instance-of v6, p1, Ljava/lang/reflect/TypeVariable;

    #@3
    if-eqz v6, :cond_1

    #@5
    .line 127
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    #@7
    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    #@a
    move-result-object v6

    #@b
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 125
    :cond_0
    :goto_0
    return-void

    #@f
    .line 128
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v6, p1, Ljava/lang/reflect/ParameterizedType;

    #@11
    if-eqz v6, :cond_2

    #@13
    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@16
    move-result-object v6

    #@17
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    goto :goto_0

    #@1b
    .line 130
    :cond_2
    instance-of v6, p1, Ljava/lang/reflect/GenericArrayType;

    #@1d
    if-eqz v6, :cond_3

    #@1f
    .line 131
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    #@21
    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    #@24
    move-result-object v5

    #@25
    .line 132
    .local v5, "simplified":Ljava/lang/reflect/Type;
    invoke-static {p0, v5}, Llibcore/reflect/Types;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    #@28
    .line 133
    const-string/jumbo v6, "[]"

    #@2b
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    goto :goto_0

    #@2f
    .line 134
    .end local v5    # "simplified":Ljava/lang/reflect/Type;
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v6, p1, Ljava/lang/Class;

    #@31
    if-eqz v6, :cond_0

    #@33
    move-object v1, p1

    #@34
    .line 135
    check-cast v1, Ljava/lang/Class;

    #@36
    .line 136
    .local v1, "c":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_e

    #@3c
    .line 137
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    const-string/jumbo v7, "\\["

    #@43
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    .line 138
    .local v0, "as":[Ljava/lang/String;
    array-length v6, v0

    #@48
    add-int/lit8 v4, v6, -0x1

    #@4a
    .line 139
    .local v4, "len":I
    aget-object v6, v0, v4

    #@4c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@4f
    move-result v6

    #@50
    if-le v6, v8, :cond_5

    #@52
    .line 140
    aget-object v6, v0, v4

    #@54
    aget-object v7, v0, v4

    #@56
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@59
    move-result v7

    #@5a
    add-int/lit8 v7, v7, -0x1

    #@5c
    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 163
    :cond_4
    :goto_1
    const/4 v3, 0x0

    #@64
    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_0

    #@66
    .line 164
    const-string/jumbo v6, "[]"

    #@69
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    .line 163
    add-int/lit8 v3, v3, 0x1

    #@6e
    goto :goto_2

    #@6f
    .line 142
    .end local v3    # "i":I
    :cond_5
    aget-object v6, v0, v4

    #@71
    const/4 v7, 0x0

    #@72
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    #@75
    move-result v2

    #@76
    .line 143
    .local v2, "ch":C
    const/16 v6, 0x49

    #@78
    if-ne v2, v6, :cond_6

    #@7a
    .line 144
    const-string/jumbo v6, "int"

    #@7d
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    goto :goto_1

    #@81
    .line 145
    :cond_6
    const/16 v6, 0x42

    #@83
    if-ne v2, v6, :cond_7

    #@85
    .line 146
    const-string/jumbo v6, "byte"

    #@88
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    goto :goto_1

    #@8c
    .line 147
    :cond_7
    const/16 v6, 0x4a

    #@8e
    if-ne v2, v6, :cond_8

    #@90
    .line 148
    const-string/jumbo v6, "long"

    #@93
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    goto :goto_1

    #@97
    .line 149
    :cond_8
    const/16 v6, 0x46

    #@99
    if-ne v2, v6, :cond_9

    #@9b
    .line 150
    const-string/jumbo v6, "float"

    #@9e
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    goto :goto_1

    #@a2
    .line 151
    :cond_9
    const/16 v6, 0x44

    #@a4
    if-ne v2, v6, :cond_a

    #@a6
    .line 152
    const-string/jumbo v6, "double"

    #@a9
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    goto :goto_1

    #@ad
    .line 153
    :cond_a
    const/16 v6, 0x53

    #@af
    if-ne v2, v6, :cond_b

    #@b1
    .line 154
    const-string/jumbo v6, "short"

    #@b4
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    goto :goto_1

    #@b8
    .line 155
    :cond_b
    const/16 v6, 0x43

    #@ba
    if-ne v2, v6, :cond_c

    #@bc
    .line 156
    const-string/jumbo v6, "char"

    #@bf
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    goto :goto_1

    #@c3
    .line 157
    :cond_c
    const/16 v6, 0x5a

    #@c5
    if-ne v2, v6, :cond_d

    #@c7
    .line 158
    const-string/jumbo v6, "boolean"

    #@ca
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    goto :goto_1

    #@ce
    .line 159
    :cond_d
    const/16 v6, 0x56

    #@d0
    if-ne v2, v6, :cond_4

    #@d2
    .line 160
    const-string/jumbo v6, "void"

    #@d5
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    goto :goto_1

    #@d9
    .line 167
    .end local v0    # "as":[Ljava/lang/String;
    .end local v2    # "ch":C
    .end local v4    # "len":I
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@dc
    move-result-object v6

    #@dd
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    goto/16 :goto_0
.end method

.method public static appendTypeName(Ljava/lang/StringBuilder;Ljava/lang/Class;)V
    .locals 3
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 100
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    #@1
    .line 101
    .local v1, "dimensions":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 102
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@a
    move-result-object p1

    #@b
    .line 103
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 105
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 106
    const/4 v0, 0x0

    #@16
    .local v0, "d":I
    :goto_1
    if-ge v0, v1, :cond_1

    #@18
    .line 107
    const-string/jumbo v2, "[]"

    #@1b
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 106
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_1

    #@21
    .line 99
    :cond_1
    return-void
.end method

.method public static getSignature(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 65
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    #@2
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    .line 66
    .local v0, "primitiveSignature":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    .line 67
    return-object v0

    #@b
    .line 68
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "["

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@20
    move-result-object v2

    #@21
    invoke-static {v2}, Llibcore/reflect/Types;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    return-object v1

    #@2e
    .line 72
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v2, "L"

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    const-string/jumbo v2, ";"

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    return-object v1
.end method

.method public static getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    #@0
    .prologue
    .line 55
    instance-of v0, p0, Llibcore/reflect/ParameterizedTypeImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 56
    check-cast p0, Llibcore/reflect/ParameterizedTypeImpl;

    #@6
    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getResolvedType()Ljava/lang/reflect/Type;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 58
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    return-object p0
.end method

.method public static getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;
    .locals 2
    .param p0, "types"    # Llibcore/reflect/ListOfTypes;
    .param p1, "clone"    # Z

    #@0
    .prologue
    .line 47
    invoke-virtual {p0}, Llibcore/reflect/ListOfTypes;->length()I

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 48
    sget-object v1, Llibcore/util/EmptyArray;->TYPE:[Ljava/lang/reflect/Type;

    #@8
    return-object v1

    #@9
    .line 50
    :cond_0
    invoke-virtual {p0}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    #@c
    move-result-object v0

    #@d
    .line 51
    .local v0, "result":[Ljava/lang/reflect/Type;
    if-eqz p1, :cond_1

    #@f
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, [Ljava/lang/reflect/Type;

    #@15
    :goto_0
    return-object v1

    #@16
    :cond_1
    move-object v1, v0

    #@17
    goto :goto_0
.end method

.method public static toString([Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    #@1
    .line 80
    array-length v2, p0

    #@2
    if-nez v2, :cond_0

    #@4
    .line 81
    const-string/jumbo v2, ""

    #@7
    return-object v2

    #@8
    .line 83
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    .line 84
    .local v1, "result":Ljava/lang/StringBuilder;
    aget-object v2, p0, v3

    #@f
    invoke-static {v1, v2}, Llibcore/reflect/Types;->appendTypeName(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    #@12
    .line 85
    const/4 v0, 0x1

    #@13
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@14
    if-ge v0, v2, :cond_1

    #@16
    .line 86
    const/16 v2, 0x2c

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 87
    aget-object v2, p0, v0

    #@1d
    invoke-static {v1, v2}, Llibcore/reflect/Types;->appendTypeName(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    #@20
    .line 85
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 89
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    return-object v2
.end method
