.class public final Llibcore/reflect/GenericArrayTypeImpl;
.super Ljava/lang/Object;
.source "GenericArrayTypeImpl.java"

# interfaces
.implements Ljava/lang/reflect/GenericArrayType;


# instance fields
.field private final blacklist componentType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/reflect/Type;)V
    .registers 2
    .param p1, "componentType"    # Ljava/lang/reflect/Type;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Llibcore/reflect/GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    .line 28
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 39
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_6

    .line 40
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 43
    .local v0, "that":Ljava/lang/reflect/GenericArrayType;
    invoke-virtual {p0}, Llibcore/reflect/GenericArrayTypeImpl;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api getGenericComponentType()Ljava/lang/reflect/Type;
    .registers 2

    .line 31
    iget-object v0, p0, Llibcore/reflect/GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    instance-of v0, v0, Llibcore/reflect/ParameterizedTypeImpl;

    if-eqz v0, :cond_f

    .line 32
    iget-object v0, p0, Llibcore/reflect/GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    check-cast v0, Llibcore/reflect/ParameterizedTypeImpl;

    invoke-virtual {v0}, Llibcore/reflect/ParameterizedTypeImpl;->getResolvedType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    .line 34
    :cond_f
    iget-object v0, p0, Llibcore/reflect/GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 48
    invoke-virtual {p0}, Llibcore/reflect/GenericArrayTypeImpl;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Llibcore/reflect/GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
