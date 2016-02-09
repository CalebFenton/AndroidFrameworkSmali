.class public final Llibcore/reflect/GenericArrayTypeImpl;
.super Ljava/lang/Object;
.source "GenericArrayTypeImpl.java"

# interfaces
.implements Ljava/lang/reflect/GenericArrayType;


# instance fields
.field private final componentType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "componentType"    # Ljava/lang/reflect/Type;

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    iput-object p1, p0, Llibcore/reflect/GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    #@5
    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 40
    instance-of v1, p1, Ljava/lang/reflect/GenericArrayType;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 41
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 43
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    #@9
    .line 44
    .local v0, "that":Ljava/lang/reflect/GenericArrayType;
    invoke-virtual {p0}, Llibcore/reflect/GenericArrayTypeImpl;->getGenericComponentType()Ljava/lang/reflect/Type;

    #@c
    move-result-object v1

    #@d
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    #@10
    move-result-object v2

    #@11
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public getGenericComponentType()Ljava/lang/reflect/Type;
    .locals 2

    #@0
    .prologue
    .line 32
    :try_start_0
    iget-object v1, p0, Llibcore/reflect/GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    #@2
    check-cast v1, Llibcore/reflect/ParameterizedTypeImpl;

    #@4
    invoke-virtual {v1}, Llibcore/reflect/ParameterizedTypeImpl;->getResolvedType()Ljava/lang/reflect/Type;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 33
    :catch_0
    move-exception v0

    #@a
    .line 34
    .local v0, "e":Ljava/lang/ClassCastException;
    iget-object v1, p0, Llibcore/reflect/GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    #@c
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 49
    invoke-virtual {p0}, Llibcore/reflect/GenericArrayTypeImpl;->getGenericComponentType()Ljava/lang/reflect/Type;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Llibcore/reflect/GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    #@7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "[]"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method
