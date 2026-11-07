.class public final Llibcore/reflect/ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "ParameterizedTypeImpl.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# instance fields
.field private final blacklist args:Llibcore/reflect/ListOfTypes;

.field private final blacklist loader:Ljava/lang/ClassLoader;

.field private final blacklist ownerType0:Llibcore/reflect/ParameterizedTypeImpl;

.field private blacklist ownerTypeRes:Ljava/lang/reflect/Type;

.field private blacklist rawType:Ljava/lang/Class;

.field private final blacklist rawTypeName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Llibcore/reflect/ParameterizedTypeImpl;Ljava/lang/String;Llibcore/reflect/ListOfTypes;Ljava/lang/ClassLoader;)V
    .registers 6
    .param p1, "ownerType"    # Llibcore/reflect/ParameterizedTypeImpl;
    .param p2, "rawTypeName"    # Ljava/lang/String;
    .param p3, "args"    # Llibcore/reflect/ListOfTypes;
    .param p4, "loader"    # Ljava/lang/ClassLoader;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-eqz p3, :cond_e

    .line 37
    iput-object p1, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerType0:Llibcore/reflect/ParameterizedTypeImpl;

    .line 38
    iput-object p2, p0, Llibcore/reflect/ParameterizedTypeImpl;->rawTypeName:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Llibcore/reflect/ParameterizedTypeImpl;->args:Llibcore/reflect/ListOfTypes;

    .line 40
    iput-object p4, p0, Llibcore/reflect/ParameterizedTypeImpl;->loader:Ljava/lang/ClassLoader;

    .line 41
    return-void

    .line 35
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 85
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 86
    return v1

    .line 88
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 89
    .local v0, "that":Ljava/lang/reflect/ParameterizedType;
    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getRawType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 90
    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Llibcore/reflect/ParameterizedTypeImpl;->args:Llibcore/reflect/ListOfTypes;

    .line 91
    invoke-virtual {v2}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v1, 0x1

    goto :goto_38

    :cond_37
    nop

    .line 89
    :goto_38
    return v1
.end method

.method public whitelist test-api getActualTypeArguments()[Ljava/lang/reflect/Type;
    .registers 2

    .line 45
    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->args:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v0}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public whitelist test-api getOwnerType()Ljava/lang/reflect/Type;
    .registers 2

    .line 50
    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerTypeRes:Ljava/lang/reflect/Type;

    if-nez v0, :cond_1b

    .line 51
    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerType0:Llibcore/reflect/ParameterizedTypeImpl;

    if-eqz v0, :cond_11

    .line 52
    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerType0:Llibcore/reflect/ParameterizedTypeImpl;

    invoke-virtual {v0}, Llibcore/reflect/ParameterizedTypeImpl;->getResolvedType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerTypeRes:Ljava/lang/reflect/Type;

    goto :goto_1b

    .line 54
    :cond_11
    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerTypeRes:Ljava/lang/reflect/Type;

    .line 57
    :cond_1b
    :goto_1b
    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerTypeRes:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public blacklist getRawType()Ljava/lang/Class;
    .registers 4

    .line 62
    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    if-nez v0, :cond_19

    .line 67
    :try_start_4
    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->rawTypeName:Ljava/lang/String;

    iget-object v1, p0, Llibcore/reflect/ParameterizedTypeImpl;->loader:Ljava/lang/ClassLoader;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_f} :catch_10

    .line 70
    goto :goto_19

    .line 68
    :catch_10
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/TypeNotPresentException;

    iget-object v2, p0, Llibcore/reflect/ParameterizedTypeImpl;->rawTypeName:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 72
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_19
    :goto_19
    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getRawType()Ljava/lang/reflect/Type;
    .registers 2

    .line 24
    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getRawType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method blacklist getResolvedType()Ljava/lang/reflect/Type;
    .registers 2

    .line 76
    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerType0:Llibcore/reflect/ParameterizedTypeImpl;

    if-nez v0, :cond_12

    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->args:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v0}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_12

    .line 77
    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getRawType()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 79
    :cond_12
    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 96
    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Llibcore/reflect/ParameterizedTypeImpl;->args:Llibcore/reflect/ListOfTypes;

    .line 97
    invoke-virtual {v1}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerType0:Llibcore/reflect/ParameterizedTypeImpl;

    if-eqz v1, :cond_1f

    .line 106
    iget-object v1, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerType0:Llibcore/reflect/ParameterizedTypeImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 110
    :cond_1f
    iget-object v1, p0, Llibcore/reflect/ParameterizedTypeImpl;->rawTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :goto_24
    iget-object v1, p0, Llibcore/reflect/ParameterizedTypeImpl;->args:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v1}, Llibcore/reflect/ListOfTypes;->length()I

    move-result v1

    if-lez v1, :cond_3d

    .line 113
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/reflect/ParameterizedTypeImpl;->args:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
