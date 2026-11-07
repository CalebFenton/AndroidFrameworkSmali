.class final Ljava/lang/constant/MethodTypeDescImpl;
.super Ljava/lang/Object;
.source "MethodTypeDescImpl.java"

# interfaces
.implements Ljava/lang/constant/MethodTypeDesc;


# instance fields
.field private final blacklist argTypes:[Ljava/lang/constant/ClassDesc;

.field private final blacklist returnType:Ljava/lang/constant/ClassDesc;


# direct methods
.method constructor blacklist <init>(Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)V
    .registers 8
    .param p1, "returnType"    # Ljava/lang/constant/ClassDesc;
    .param p2, "argTypes"    # [Ljava/lang/constant/ClassDesc;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/constant/ClassDesc;

    iput-object v0, p0, Ljava/lang/constant/MethodTypeDescImpl;->returnType:Ljava/lang/constant/ClassDesc;

    .line 54
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/constant/ClassDesc;

    iput-object v0, p0, Ljava/lang/constant/MethodTypeDescImpl;->argTypes:[Ljava/lang/constant/ClassDesc;

    .line 56
    array-length v0, p2

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_37

    aget-object v2, p2, v1

    .line 57
    .local v2, "cr":Ljava/lang/constant/ClassDesc;
    invoke-interface {v2}, Ljava/lang/constant/ClassDesc;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "V"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_34

    .line 58
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Void parameters not permitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    .end local v2    # "cr":Ljava/lang/constant/ClassDesc;
    :cond_34
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 59
    :cond_37
    return-void
.end method

.method static synthetic blacklist lambda$ofDescriptor$0(I)[Ljava/lang/constant/ClassDesc;
    .registers 2
    .param p0, "x$0"    # I

    .line 73
    new-array v0, p0, [Ljava/lang/constant/ClassDesc;

    return-object v0
.end method

.method static blacklist ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/MethodTypeDescImpl;
    .registers 5
    .param p0, "descriptor"    # Ljava/lang/String;

    .line 71
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {p0}, Ljava/lang/constant/ConstantUtils;->parseMethodDescriptor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Ljava/lang/constant/MethodTypeDescImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/constant/MethodTypeDescImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Ljava/lang/constant/MethodTypeDescImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/constant/MethodTypeDescImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/constant/ClassDesc;

    .line 74
    .local v1, "paramTypes":[Ljava/lang/constant/ClassDesc;
    new-instance v2, Ljava/lang/constant/MethodTypeDescImpl;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/constant/ClassDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/constant/MethodTypeDescImpl;-><init>(Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)V

    return-object v2
.end method


# virtual methods
.method public blacklist changeParameterType(ILjava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;
    .registers 5
    .param p1, "index"    # I
    .param p2, "paramType"    # Ljava/lang/constant/ClassDesc;

    .line 109
    iget-object v0, p0, Ljava/lang/constant/MethodTypeDescImpl;->argTypes:[Ljava/lang/constant/ClassDesc;

    invoke-virtual {v0}, [Ljava/lang/constant/ClassDesc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/constant/ClassDesc;

    .line 110
    .local v0, "newArgs":[Ljava/lang/constant/ClassDesc;
    aput-object p2, v0, p1

    .line 111
    iget-object v1, p0, Ljava/lang/constant/MethodTypeDescImpl;->returnType:Ljava/lang/constant/ClassDesc;

    invoke-static {v1, v0}, Ljava/lang/constant/MethodTypeDesc;->of(Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic whitelist test-api changeParameterType(ILjava/lang/invoke/TypeDescriptor$OfField;)Ljava/lang/invoke/TypeDescriptor$OfMethod;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 41
    check-cast p2, Ljava/lang/constant/ClassDesc;

    invoke-virtual {p0, p1, p2}, Ljava/lang/constant/MethodTypeDescImpl;->changeParameterType(ILjava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object p1

    return-object p1
.end method

.method public blacklist changeReturnType(Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;
    .registers 3
    .param p1, "returnType"    # Ljava/lang/constant/ClassDesc;

    .line 104
    iget-object v0, p0, Ljava/lang/constant/MethodTypeDescImpl;->argTypes:[Ljava/lang/constant/ClassDesc;

    invoke-static {p1, v0}, Ljava/lang/constant/MethodTypeDesc;->of(Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api changeReturnType(Ljava/lang/invoke/TypeDescriptor$OfField;)Ljava/lang/invoke/TypeDescriptor$OfMethod;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 41
    check-cast p1, Ljava/lang/constant/ClassDesc;

    invoke-virtual {p0, p1}, Ljava/lang/constant/MethodTypeDescImpl;->changeReturnType(Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object p1

    return-object p1
.end method

.method public blacklist dropParameterTypes(II)Ljava/lang/constant/MethodTypeDesc;
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 116
    if-ltz p1, :cond_2e

    iget-object v0, p0, Ljava/lang/constant/MethodTypeDescImpl;->argTypes:[Ljava/lang/constant/ClassDesc;

    array-length v0, v0

    if-ge p1, v0, :cond_2e

    if-ltz p2, :cond_2e

    iget-object v0, p0, Ljava/lang/constant/MethodTypeDescImpl;->argTypes:[Ljava/lang/constant/ClassDesc;

    array-length v0, v0

    if-gt p2, v0, :cond_2e

    if-gt p1, p2, :cond_2e

    .line 118
    iget-object v0, p0, Ljava/lang/constant/MethodTypeDescImpl;->argTypes:[Ljava/lang/constant/ClassDesc;

    array-length v0, v0

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/constant/ClassDesc;

    .line 119
    .local v0, "newArgs":[Ljava/lang/constant/ClassDesc;
    iget-object v1, p0, Ljava/lang/constant/MethodTypeDescImpl;->argTypes:[Ljava/lang/constant/ClassDesc;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iget-object v1, p0, Ljava/lang/constant/MethodTypeDescImpl;->argTypes:[Ljava/lang/constant/ClassDesc;

    iget-object v2, p0, Ljava/lang/constant/MethodTypeDescImpl;->argTypes:[Ljava/lang/constant/ClassDesc;

    array-length v2, v2

    sub-int/2addr v2, p2

    invoke-static {v1, p2, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iget-object v1, p0, Ljava/lang/constant/MethodTypeDescImpl;->returnType:Ljava/lang/constant/ClassDesc;

    invoke-static {v1, v0}, Ljava/lang/constant/MethodTypeDesc;->of(Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object v1

    return-object v1

    .line 117
    .end local v0    # "newArgs":[Ljava/lang/constant/ClassDesc;
    :cond_2e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api dropParameterTypes(II)Ljava/lang/invoke/TypeDescriptor$OfMethod;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Ljava/lang/constant/MethodTypeDescImpl;->dropParameterTypes(II)Ljava/lang/constant/MethodTypeDesc;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 167
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 168
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 170
    :cond_12
    move-object v2, p1

    check-cast v2, Ljava/lang/constant/MethodTypeDescImpl;

    .line 172
    .local v2, "constant":Ljava/lang/constant/MethodTypeDescImpl;
    iget-object v3, p0, Ljava/lang/constant/MethodTypeDescImpl;->returnType:Ljava/lang/constant/ClassDesc;

    iget-object v4, v2, Ljava/lang/constant/MethodTypeDescImpl;->returnType:Ljava/lang/constant/ClassDesc;

    invoke-interface {v3, v4}, Ljava/lang/constant/ClassDesc;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Ljava/lang/constant/MethodTypeDescImpl;->argTypes:[Ljava/lang/constant/ClassDesc;

    iget-object v4, v2, Ljava/lang/constant/MethodTypeDescImpl;->argTypes:[Ljava/lang/constant/ClassDesc;

    .line 173
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 172
    :goto_2b
    return v0

    .line 168
    .end local v2    # "constant":Ljava/lang/constant/MethodTypeDescImpl;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 178
    iget-object v0, p0, Ljava/lang/constant/MethodTypeDescImpl;->returnType:Ljava/lang/constant/ClassDesc;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 179
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ljava/lang/constant/MethodTypeDescImpl;->argTypes:[Ljava/lang/constant/ClassDesc;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 180
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public varargs blacklist insertParameterTypes(I[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;
    .registers 7
    .param p1, "pos"    # I
    .param p2, "paramTypes"    # [Ljava/lang/constant/ClassDesc;

    .line 126
    if-ltz p1, :cond_2a

    iget-object v0, p0, Ljava/lang/constant/MethodTypeDescImpl;->argTypes:[Ljava/lang/constant/ClassDesc;

    array-length v0, v0

    if-gt p1, v0, :cond_2a

    .line 128
    iget-object v0, p0, Ljava/lang/constant/MethodTypeDescImpl;->argTypes:[Ljava/lang/constant/ClassDesc;

    array-length v0, v0

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/constant/ClassDesc;

    .line 129
    .local v0, "newArgs":[Ljava/lang/constant/ClassDesc;
    iget-object v1, p0, Ljava/lang/constant/MethodTypeDescImpl;->argTypes:[Ljava/lang/constant/ClassDesc;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    array-length v1, p2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    iget-object v1, p0, Ljava/lang/constant/MethodTypeDescImpl;->argTypes:[Ljava/lang/constant/ClassDesc;

    array-length v2, p2

    add-int/2addr v2, p1

    iget-object v3, p0, Ljava/lang/constant/MethodTypeDescImpl;->argTypes:[Ljava/lang/constant/ClassDesc;

    array-length v3, v3

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget-object v1, p0, Ljava/lang/constant/MethodTypeDescImpl;->returnType:Ljava/lang/constant/ClassDesc;

    invoke-static {v1, v0}, Ljava/lang/constant/MethodTypeDesc;->of(Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object v1

    return-object v1

    .line 127
    .end local v0    # "newArgs":[Ljava/lang/constant/ClassDesc;
    :cond_2a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api insertParameterTypes(I[Ljava/lang/invoke/TypeDescriptor$OfField;)Ljava/lang/invoke/TypeDescriptor$OfMethod;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 41
    check-cast p2, [Ljava/lang/constant/ClassDesc;

    invoke-virtual {p0, p1, p2}, Ljava/lang/constant/MethodTypeDescImpl;->insertParameterTypes(I[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object p1

    return-object p1
.end method

.method public blacklist parameterArray()[Ljava/lang/constant/ClassDesc;
    .registers 2

    .line 99
    iget-object v0, p0, Ljava/lang/constant/MethodTypeDescImpl;->argTypes:[Ljava/lang/constant/ClassDesc;

    invoke-virtual {v0}, [Ljava/lang/constant/ClassDesc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/constant/ClassDesc;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api parameterArray()[Ljava/lang/invoke/TypeDescriptor$OfField;
    .registers 2

    .line 41
    invoke-virtual {p0}, Ljava/lang/constant/MethodTypeDescImpl;->parameterArray()[Ljava/lang/constant/ClassDesc;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api parameterCount()I
    .registers 2

    .line 84
    iget-object v0, p0, Ljava/lang/constant/MethodTypeDescImpl;->argTypes:[Ljava/lang/constant/ClassDesc;

    array-length v0, v0

    return v0
.end method

.method public whitelist test-api parameterList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/constant/ClassDesc;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Ljava/lang/constant/MethodTypeDescImpl;->argTypes:[Ljava/lang/constant/ClassDesc;

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parameterType(I)Ljava/lang/constant/ClassDesc;
    .registers 3
    .param p1, "index"    # I

    .line 89
    iget-object v0, p0, Ljava/lang/constant/MethodTypeDescImpl;->argTypes:[Ljava/lang/constant/ClassDesc;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic whitelist test-api parameterType(I)Ljava/lang/invoke/TypeDescriptor$OfField;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/constant/MethodTypeDescImpl;->parameterType(I)Ljava/lang/constant/ClassDesc;

    move-result-object p1

    return-object p1
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

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/constant/MethodTypeDescImpl;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/invoke/MethodType;

    move-result-object p1

    return-object p1
.end method

.method public blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/invoke/MethodType;
    .registers 7
    .param p1, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/lang/constant/MethodTypeDescImpl$1;

    invoke-direct {v0, p0, p1}, Ljava/lang/constant/MethodTypeDescImpl$1;-><init>(Ljava/lang/constant/MethodTypeDescImpl;Ljava/lang/invoke/MethodHandles$Lookup;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodType;

    .line 147
    .local v0, "mtype":Ljava/lang/invoke/MethodType;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->accessClass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 148
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterArray()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    .line 149
    .local v4, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->accessClass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 148
    .end local v4    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 151
    :cond_22
    return-object v0
.end method

.method public blacklist returnType()Ljava/lang/constant/ClassDesc;
    .registers 2

    .line 79
    iget-object v0, p0, Ljava/lang/constant/MethodTypeDescImpl;->returnType:Ljava/lang/constant/ClassDesc;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api returnType()Ljava/lang/invoke/TypeDescriptor$OfField;
    .registers 2

    .line 41
    invoke-virtual {p0}, Ljava/lang/constant/MethodTypeDescImpl;->returnType()Ljava/lang/constant/ClassDesc;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 185
    invoke-virtual {p0}, Ljava/lang/constant/MethodTypeDescImpl;->displayDescriptor()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "MethodTypeDesc[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
