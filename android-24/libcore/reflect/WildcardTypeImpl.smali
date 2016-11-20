.class public final Llibcore/reflect/WildcardTypeImpl;
.super Ljava/lang/Object;
.source "WildcardTypeImpl.java"

# interfaces
.implements Ljava/lang/reflect/WildcardType;


# instance fields
.field private final extendsBound:Llibcore/reflect/ListOfTypes;

.field private final superBound:Llibcore/reflect/ListOfTypes;


# direct methods
.method public constructor <init>(Llibcore/reflect/ListOfTypes;Llibcore/reflect/ListOfTypes;)V
    .locals 0
    .param p1, "extendsBound"    # Llibcore/reflect/ListOfTypes;
    .param p2, "superBound"    # Llibcore/reflect/ListOfTypes;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    iput-object p1, p0, Llibcore/reflect/WildcardTypeImpl;->extendsBound:Llibcore/reflect/ListOfTypes;

    #@5
    .line 30
    iput-object p2, p0, Llibcore/reflect/WildcardTypeImpl;->superBound:Llibcore/reflect/ListOfTypes;

    #@7
    .line 28
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
    .line 45
    instance-of v2, p1, Ljava/lang/reflect/WildcardType;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 46
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 48
    check-cast v0, Ljava/lang/reflect/WildcardType;

    #@9
    .line 49
    .local v0, "that":Ljava/lang/reflect/WildcardType;
    invoke-virtual {p0}, Llibcore/reflect/WildcardTypeImpl;->getLowerBounds()[Ljava/lang/reflect/Type;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    #@10
    move-result-object v3

    #@11
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 50
    invoke-virtual {p0}, Llibcore/reflect/WildcardTypeImpl;->getUpperBounds()[Ljava/lang/reflect/Type;

    #@1a
    move-result-object v1

    #@1b
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    .line 49
    :cond_1
    return v1
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/TypeNotPresentException;,
            Ljava/lang/reflect/MalformedParameterizedTypeException;
        }
    .end annotation

    #@0
    .prologue
    .line 35
    iget-object v0, p0, Llibcore/reflect/WildcardTypeImpl;->superBound:Llibcore/reflect/ListOfTypes;

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

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/TypeNotPresentException;,
            Ljava/lang/reflect/MalformedParameterizedTypeException;
        }
    .end annotation

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Llibcore/reflect/WildcardTypeImpl;->extendsBound:Llibcore/reflect/ListOfTypes;

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

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 55
    invoke-virtual {p0}, Llibcore/reflect/WildcardTypeImpl;->getLowerBounds()[Ljava/lang/reflect/Type;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@7
    move-result v0

    #@8
    mul-int/lit8 v0, v0, 0x1f

    #@a
    .line 56
    invoke-virtual {p0}, Llibcore/reflect/WildcardTypeImpl;->getUpperBounds()[Ljava/lang/reflect/Type;

    #@d
    move-result-object v1

    #@e
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@11
    move-result v1

    #@12
    .line 55
    add-int/2addr v0, v1

    #@13
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v1, "?"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 62
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Llibcore/reflect/WildcardTypeImpl;->extendsBound:Llibcore/reflect/ListOfTypes;

    #@c
    invoke-virtual {v1}, Llibcore/reflect/ListOfTypes;->length()I

    #@f
    move-result v1

    #@10
    if-ne v1, v3, :cond_2

    #@12
    iget-object v1, p0, Llibcore/reflect/WildcardTypeImpl;->extendsBound:Llibcore/reflect/ListOfTypes;

    #@14
    invoke-virtual {v1}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    #@17
    move-result-object v1

    #@18
    aget-object v1, v1, v2

    #@1a
    const-class v2, Ljava/lang/Object;

    #@1c
    if-eq v1, v2, :cond_2

    #@1e
    .line 64
    :cond_0
    const-string/jumbo v1, " extends "

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget-object v2, p0, Llibcore/reflect/WildcardTypeImpl;->extendsBound:Llibcore/reflect/ListOfTypes;

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    .line 68
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    return-object v1

    #@2f
    .line 63
    :cond_2
    iget-object v1, p0, Llibcore/reflect/WildcardTypeImpl;->extendsBound:Llibcore/reflect/ListOfTypes;

    #@31
    invoke-virtual {v1}, Llibcore/reflect/ListOfTypes;->length()I

    #@34
    move-result v1

    #@35
    if-gt v1, v3, :cond_0

    #@37
    .line 65
    iget-object v1, p0, Llibcore/reflect/WildcardTypeImpl;->superBound:Llibcore/reflect/ListOfTypes;

    #@39
    invoke-virtual {v1}, Llibcore/reflect/ListOfTypes;->length()I

    #@3c
    move-result v1

    #@3d
    if-lez v1, :cond_1

    #@3f
    .line 66
    const-string/jumbo v1, " super "

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    iget-object v2, p0, Llibcore/reflect/WildcardTypeImpl;->superBound:Llibcore/reflect/ListOfTypes;

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    goto :goto_0
.end method
