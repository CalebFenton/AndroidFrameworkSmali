.class public final Llibcore/reflect/Types;
.super Ljava/lang/Object;
.source "Types.java"


# static fields
.field private static final blacklist PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 34
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    .line 35
    sget-object v0, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v2, "B"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v2, "C"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v2, "S"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "I"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v2, "J"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "F"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v2, "D"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "V"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v2, "Z"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static blacklist appendArrayGenericType(Ljava/lang/StringBuilder;[Ljava/lang/reflect/Type;)V
    .registers 4
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    .line 115
    array-length v0, p1

    if-nez v0, :cond_4

    .line 116
    return-void

    .line 118
    :cond_4
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {p0, v0}, Llibcore/reflect/Types;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 119
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_1b

    .line 120
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    aget-object v1, p1, v0

    invoke-static {p0, v1}, Llibcore/reflect/Types;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 123
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method public static blacklist appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V
    .registers 9
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 126
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_10

    .line 127
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d8

    .line 128
    :cond_10
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1d

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d8

    .line 130
    :cond_1d
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    const-string v1, "[]"

    if-eqz v0, :cond_32

    .line 131
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 132
    .local v0, "simplified":Ljava/lang/reflect/Type;
    invoke-static {p0, v0}, Llibcore/reflect/Types;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 133
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v0    # "simplified":Ljava/lang/reflect/Type;
    goto/16 :goto_d7

    .line 134
    :cond_32
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_d7

    .line 135
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    .line 136
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 137
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\["

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "as":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 139
    .local v3, "len":I
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v4, :cond_65

    .line 140
    aget-object v5, v2, v3

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c5

    .line 142
    :cond_65
    aget-object v4, v2, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 143
    .local v4, "ch":C
    const/16 v5, 0x49

    if-ne v4, v5, :cond_76

    .line 144
    const-string v5, "int"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c5

    .line 145
    :cond_76
    const/16 v5, 0x42

    if-ne v4, v5, :cond_80

    .line 146
    const-string v5, "byte"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c5

    .line 147
    :cond_80
    const/16 v5, 0x4a

    if-ne v4, v5, :cond_8a

    .line 148
    const-string v5, "long"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c5

    .line 149
    :cond_8a
    const/16 v5, 0x46

    if-ne v4, v5, :cond_94

    .line 150
    const-string v5, "float"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c5

    .line 151
    :cond_94
    const/16 v5, 0x44

    if-ne v4, v5, :cond_9e

    .line 152
    const-string v5, "double"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c5

    .line 153
    :cond_9e
    const/16 v5, 0x53

    if-ne v4, v5, :cond_a8

    .line 154
    const-string v5, "short"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c5

    .line 155
    :cond_a8
    const/16 v5, 0x43

    if-ne v4, v5, :cond_b2

    .line 156
    const-string v5, "char"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c5

    .line 157
    :cond_b2
    const/16 v5, 0x5a

    if-ne v4, v5, :cond_bc

    .line 158
    const-string v5, "boolean"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c5

    .line 159
    :cond_bc
    const/16 v5, 0x56

    if-ne v4, v5, :cond_c5

    .line 160
    const-string v5, "void"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .end local v4    # "ch":C
    :cond_c5
    :goto_c5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c6
    if-ge v4, v3, :cond_ce

    .line 164
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    add-int/lit8 v4, v4, 0x1

    goto :goto_c6

    .line 166
    .end local v2    # "as":[Ljava/lang/String;
    .end local v3    # "len":I
    .end local v4    # "i":I
    :cond_ce
    goto :goto_d8

    .line 167
    :cond_cf
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d8

    .line 134
    .end local v0    # "c":Ljava/lang/Class;
    :cond_d7
    :goto_d7
    nop

    .line 170
    :goto_d8
    return-void
.end method

.method public static blacklist appendTypeName(Ljava/lang/StringBuilder;Ljava/lang/Class;)V
    .registers 5
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 100
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 101
    .local v0, "dimensions":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 102
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const/4 v1, 0x0

    .local v1, "d":I
    :goto_16
    if-ge v1, v0, :cond_20

    .line 107
    const-string v2, "[]"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 109
    .end local v1    # "d":I
    :cond_20
    return-void
.end method

.method public static blacklist getSignature(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 65
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Llibcore/reflect/Types;->PRIMITIVE_TO_SIGNATURE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    .local v0, "primitiveSignature":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 67
    return-object v0

    .line 68
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Llibcore/reflect/Types;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 72
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 2
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 55
    instance-of v0, p0, Llibcore/reflect/ParameterizedTypeImpl;

    if-eqz v0, :cond_c

    .line 56
    move-object v0, p0

    check-cast v0, Llibcore/reflect/ParameterizedTypeImpl;

    invoke-virtual {v0}, Llibcore/reflect/ParameterizedTypeImpl;->getResolvedType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    .line 58
    :cond_c
    return-object p0
.end method

.method public static blacklist getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;
    .registers 4
    .param p0, "types"    # Llibcore/reflect/ListOfTypes;
    .param p1, "clone"    # Z

    .line 47
    invoke-virtual {p0}, Llibcore/reflect/ListOfTypes;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 48
    sget-object v0, Llibcore/util/EmptyArray;->TYPE:[Ljava/lang/reflect/Type;

    return-object v0

    .line 50
    :cond_9
    invoke-virtual {p0}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 51
    .local v0, "result":[Ljava/lang/reflect/Type;
    if-eqz p1, :cond_16

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Type;

    goto :goto_17

    :cond_16
    move-object v1, v0

    :goto_17
    return-object v1
.end method

.method public static blacklist toString([Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 80
    .local p0, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p0

    if-nez v0, :cond_6

    .line 81
    const-string v0, ""

    return-object v0

    .line 83
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v0, v1}, Llibcore/reflect/Types;->appendTypeName(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    .line 85
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_12
    array-length v2, p0

    if-ge v1, v2, :cond_22

    .line 86
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    aget-object v2, p0, v1

    invoke-static {v0, v2}, Llibcore/reflect/Types;->appendTypeName(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 89
    .end local v1    # "i":I
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
