.class public final Llibcore/reflect/ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "ParameterizedTypeImpl.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# instance fields
.field private final args:Llibcore/reflect/ListOfTypes;

.field private final loader:Ljava/lang/ClassLoader;

.field private final ownerType0:Llibcore/reflect/ParameterizedTypeImpl;

.field private ownerTypeRes:Ljava/lang/reflect/Type;

.field private rawType:Ljava/lang/Class;

.field private final rawTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Llibcore/reflect/ParameterizedTypeImpl;Ljava/lang/String;Llibcore/reflect/ListOfTypes;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "ownerType"    # Llibcore/reflect/ParameterizedTypeImpl;
    .param p2, "rawTypeName"    # Ljava/lang/String;
    .param p3, "args"    # Llibcore/reflect/ListOfTypes;
    .param p4, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    if-nez p3, :cond_0

    #@5
    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 37
    :cond_0
    iput-object p1, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerType0:Llibcore/reflect/ParameterizedTypeImpl;

    #@d
    .line 38
    iput-object p2, p0, Llibcore/reflect/ParameterizedTypeImpl;->rawTypeName:Ljava/lang/String;

    #@f
    .line 39
    iput-object p3, p0, Llibcore/reflect/ParameterizedTypeImpl;->args:Llibcore/reflect/ListOfTypes;

    #@11
    .line 40
    iput-object p4, p0, Llibcore/reflect/ParameterizedTypeImpl;->loader:Ljava/lang/ClassLoader;

    #@13
    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 84
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 85
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 87
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    #@9
    .line 88
    .local v0, "that":Ljava/lang/reflect/ParameterizedType;
    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getRawType()Ljava/lang/Class;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    #@10
    move-result-object v3

    #@11
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 89
    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getOwnerType()Ljava/lang/reflect/Type;

    #@1a
    move-result-object v2

    #@1b
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    .line 88
    if-eqz v2, :cond_1

    #@25
    .line 90
    iget-object v1, p0, Llibcore/reflect/ParameterizedTypeImpl;->args:Llibcore/reflect/ListOfTypes;

    #@27
    invoke-virtual {v1}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    #@2a
    move-result-object v1

    #@2b
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@2e
    move-result-object v2

    #@2f
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@32
    move-result v1

    #@33
    .line 88
    :cond_1
    return v1
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->args:Llibcore/reflect/ListOfTypes;

    #@2
    invoke-virtual {v0}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [Ljava/lang/reflect/Type;

    #@c
    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerTypeRes:Ljava/lang/reflect/Type;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 50
    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerType0:Llibcore/reflect/ParameterizedTypeImpl;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 51
    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerType0:Llibcore/reflect/ParameterizedTypeImpl;

    #@a
    invoke-virtual {v0}, Llibcore/reflect/ParameterizedTypeImpl;->getResolvedType()Ljava/lang/reflect/Type;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerTypeRes:Ljava/lang/reflect/Type;

    #@10
    .line 56
    :cond_0
    :goto_0
    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerTypeRes:Ljava/lang/reflect/Type;

    #@12
    return-object v0

    #@13
    .line 53
    :cond_1
    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getRawType()Ljava/lang/Class;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->ownerTypeRes:Ljava/lang/reflect/Type;

    #@1d
    goto :goto_0
.end method

.method public getRawType()Ljava/lang/Class;
    .locals 4

    #@0
    .prologue
    .line 60
    iget-object v1, p0, Llibcore/reflect/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 65
    :try_start_0
    iget-object v1, p0, Llibcore/reflect/ParameterizedTypeImpl;->rawTypeName:Ljava/lang/String;

    #@6
    iget-object v2, p0, Llibcore/reflect/ParameterizedTypeImpl;->loader:Ljava/lang/ClassLoader;

    #@8
    const/4 v3, 0x0

    #@9
    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Llibcore/reflect/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 70
    :cond_0
    iget-object v1, p0, Llibcore/reflect/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    #@11
    return-object v1

    #@12
    .line 66
    :catch_0
    move-exception v0

    #@13
    .line 67
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/TypeNotPresentException;

    #@15
    iget-object v2, p0, Llibcore/reflect/ParameterizedTypeImpl;->rawTypeName:Ljava/lang/String;

    #@17
    invoke-direct {v1, v2, v0}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    throw v1
.end method

.method public bridge synthetic getRawType()Ljava/lang/reflect/Type;
    .locals 1

    #@0
    .prologue
    .line 59
    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getRawType()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method getResolvedType()Ljava/lang/reflect/Type;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Llibcore/reflect/ParameterizedTypeImpl;->args:Llibcore/reflect/ListOfTypes;

    #@2
    invoke-virtual {v0}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    #@5
    move-result-object v0

    #@6
    array-length v0, v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 76
    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getRawType()Ljava/lang/Class;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 78
    :cond_0
    return-object p0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 95
    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getRawType()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@7
    move-result v0

    #@8
    mul-int/lit8 v0, v0, 0x1f

    #@a
    invoke-virtual {p0}, Llibcore/reflect/ParameterizedTypeImpl;->getOwnerType()Ljava/lang/reflect/Type;

    #@d
    move-result-object v1

    #@e
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@11
    move-result v1

    #@12
    add-int/2addr v0, v1

    #@13
    mul-int/lit8 v0, v0, 0x1f

    #@15
    .line 96
    iget-object v1, p0, Llibcore/reflect/ParameterizedTypeImpl;->args:Llibcore/reflect/ListOfTypes;

    #@17
    invoke-virtual {v1}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@1e
    move-result v1

    #@1f
    .line 95
    add-int/2addr v0, v1

    #@20
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 102
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Llibcore/reflect/ParameterizedTypeImpl;->rawTypeName:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 103
    iget-object v1, p0, Llibcore/reflect/ParameterizedTypeImpl;->args:Llibcore/reflect/ListOfTypes;

    #@c
    invoke-virtual {v1}, Llibcore/reflect/ListOfTypes;->length()I

    #@f
    move-result v1

    #@10
    if-lez v1, :cond_0

    #@12
    .line 104
    const-string/jumbo v1, "<"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget-object v2, p0, Llibcore/reflect/ParameterizedTypeImpl;->args:Llibcore/reflect/ListOfTypes;

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, ">"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    return-object v1
.end method
