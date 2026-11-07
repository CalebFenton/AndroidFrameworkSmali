.class final Ljava/lang/constant/ReferenceClassDescImpl;
.super Ljava/lang/Object;
.source "ReferenceClassDescImpl.java"

# interfaces
.implements Ljava/lang/constant/ClassDesc;


# instance fields
.field private final blacklist descriptor:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1, v0}, Ljava/lang/constant/ConstantUtils;->skipOverFieldSignature(Ljava/lang/String;IIZ)I

    move-result v0

    .line 53
    .local v0, "len":I
    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1d

    .line 56
    iput-object p1, p0, Ljava/lang/constant/ReferenceClassDescImpl;->descriptor:Ljava/lang/String;

    .line 57
    return-void

    .line 55
    :cond_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not a valid reference type descriptor: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api descriptorString()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Ljava/lang/constant/ReferenceClassDescImpl;->descriptor:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 95
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 96
    :cond_4
    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1f

    .line 98
    :cond_11
    move-object v0, p1

    check-cast v0, Ljava/lang/constant/ClassDesc;

    .line 99
    .local v0, "constant":Ljava/lang/constant/ClassDesc;
    iget-object v1, p0, Ljava/lang/constant/ReferenceClassDescImpl;->descriptor:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 96
    .end local v0    # "constant":Ljava/lang/constant/ClassDesc;
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 104
    iget-object v0, p0, Ljava/lang/constant/ReferenceClassDescImpl;->descriptor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;
    .registers 6
    .param p1, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 67
    move-object v0, p0

    .line 68
    .local v0, "c":Ljava/lang/constant/ClassDesc;
    invoke-virtual {p0}, Ljava/lang/constant/ReferenceClassDescImpl;->descriptorString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/constant/ConstantUtils;->arrayDepth(Ljava/lang/String;)I

    move-result v1

    .line 69
    .local v1, "depth":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_13

    .line 70
    invoke-interface {v0}, Ljava/lang/constant/ClassDesc;->componentType()Ljava/lang/constant/ClassDesc;

    move-result-object v0

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 72
    .end local v2    # "i":I
    :cond_13
    invoke-interface {v0}, Ljava/lang/constant/ClassDesc;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 73
    invoke-virtual {p0}, Ljava/lang/constant/ReferenceClassDescImpl;->descriptorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    return-object v2

    .line 75
    :cond_22
    invoke-interface {v0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/constant/ConstantUtils;->dropFirstAndLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/constant/ConstantUtils;->internalToBinary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 76
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    if-ge v3, v1, :cond_3c

    .line 77
    invoke-virtual {v2}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v2

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 78
    .end local v3    # "i":I
    :cond_3c
    return-object v2
.end method

.method public bridge synthetic blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/constant/ReferenceClassDescImpl;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 109
    invoke-virtual {p0}, Ljava/lang/constant/ReferenceClassDescImpl;->displayName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ClassDesc[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
