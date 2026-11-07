.class public final Llibcore/reflect/WildcardTypeImpl;
.super Ljava/lang/Object;
.source "WildcardTypeImpl.java"

# interfaces
.implements Ljava/lang/reflect/WildcardType;


# instance fields
.field private final blacklist extendsBound:Llibcore/reflect/ListOfTypes;

.field private final blacklist superBound:Llibcore/reflect/ListOfTypes;


# direct methods
.method public constructor blacklist <init>(Llibcore/reflect/ListOfTypes;Llibcore/reflect/ListOfTypes;)V
    .registers 3
    .param p1, "extendsBound"    # Llibcore/reflect/ListOfTypes;
    .param p2, "superBound"    # Llibcore/reflect/ListOfTypes;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Llibcore/reflect/WildcardTypeImpl;->extendsBound:Llibcore/reflect/ListOfTypes;

    .line 30
    iput-object p2, p0, Llibcore/reflect/WildcardTypeImpl;->superBound:Llibcore/reflect/ListOfTypes;

    .line 31
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 45
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 46
    return v1

    .line 48
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 49
    .local v0, "that":Ljava/lang/reflect/WildcardType;
    invoke-virtual {p0}, Llibcore/reflect/WildcardTypeImpl;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 50
    invoke-virtual {p0}, Llibcore/reflect/WildcardTypeImpl;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    nop

    .line 49
    :goto_28
    return v1
.end method

.method public whitelist test-api getLowerBounds()[Ljava/lang/reflect/Type;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/TypeNotPresentException;,
            Ljava/lang/reflect/MalformedParameterizedTypeException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Llibcore/reflect/WildcardTypeImpl;->superBound:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v0}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public whitelist test-api getUpperBounds()[Ljava/lang/reflect/Type;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/TypeNotPresentException;,
            Ljava/lang/reflect/MalformedParameterizedTypeException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Llibcore/reflect/WildcardTypeImpl;->extendsBound:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v0}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 55
    invoke-virtual {p0}, Llibcore/reflect/WildcardTypeImpl;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 56
    invoke-virtual {p0}, Llibcore/reflect/WildcardTypeImpl;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Llibcore/reflect/WildcardTypeImpl;->extendsBound:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v1}, Llibcore/reflect/ListOfTypes;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    iget-object v1, p0, Llibcore/reflect/WildcardTypeImpl;->extendsBound:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v1}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    const-class v3, Ljava/lang/Object;

    if-ne v1, v3, :cond_25

    :cond_1d
    iget-object v1, p0, Llibcore/reflect/WildcardTypeImpl;->extendsBound:Llibcore/reflect/ListOfTypes;

    .line 63
    invoke-virtual {v1}, Llibcore/reflect/ListOfTypes;->length()I

    move-result v1

    if-le v1, v2, :cond_31

    .line 64
    :cond_25
    const-string v1, " extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/reflect/WildcardTypeImpl;->extendsBound:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 65
    :cond_31
    iget-object v1, p0, Llibcore/reflect/WildcardTypeImpl;->superBound:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v1}, Llibcore/reflect/ListOfTypes;->length()I

    move-result v1

    if-lez v1, :cond_44

    .line 66
    const-string v1, " super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/reflect/WildcardTypeImpl;->superBound:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    :cond_44
    :goto_44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
