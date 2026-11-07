.class public interface abstract Ljava/lang/constant/MethodTypeDesc;
.super Ljava/lang/Object;
.source "MethodTypeDesc.java"

# interfaces
.implements Ljava/lang/constant/ConstantDesc;
.implements Ljava/lang/invoke/TypeDescriptor$OfMethod;


# annotations
.annotation system Ldalvik/annotation/PermittedSubclasses;
    value = {
        Ljava/lang/constant/MethodTypeDescImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/constant/ConstantDesc;",
        "Ljava/lang/invoke/TypeDescriptor$OfMethod<",
        "Ljava/lang/constant/ClassDesc;",
        "Ljava/lang/constant/MethodTypeDesc;",
        ">;"
    }
.end annotation


# direct methods
.method public static varargs blacklist of(Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;
    .registers 3
    .param p0, "returnDesc"    # Ljava/lang/constant/ClassDesc;
    .param p1, "paramDescs"    # [Ljava/lang/constant/ClassDesc;

    .line 69
    new-instance v0, Ljava/lang/constant/MethodTypeDescImpl;

    invoke-direct {v0, p0, p1}, Ljava/lang/constant/MethodTypeDescImpl;-><init>(Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)V

    return-object v0
.end method

.method public static blacklist ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/MethodTypeDesc;
    .registers 2
    .param p0, "descriptor"    # Ljava/lang/String;

    .line 54
    invoke-static {p0}, Ljava/lang/constant/MethodTypeDescImpl;->ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/MethodTypeDescImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract blacklist changeParameterType(ILjava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;
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

    .line 39
    check-cast p2, Ljava/lang/constant/ClassDesc;

    invoke-interface {p0, p1, p2}, Ljava/lang/constant/MethodTypeDesc;->changeParameterType(ILjava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object p1

    return-object p1
.end method

.method public abstract blacklist changeReturnType(Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;
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

    .line 39
    check-cast p1, Ljava/lang/constant/ClassDesc;

    invoke-interface {p0, p1}, Ljava/lang/constant/MethodTypeDesc;->changeReturnType(Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api descriptorString()Ljava/lang/String;
    .registers 3

    .line 170
    nop

    .line 171
    invoke-interface {p0}, Ljava/lang/constant/MethodTypeDesc;->parameterArray()[Ljava/lang/constant/ClassDesc;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/constant/MethodTypeDesc$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/constant/MethodTypeDesc$$ExternalSyntheticLambda1;-><init>()V

    .line 172
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 173
    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    .line 174
    invoke-interface {p0}, Ljava/lang/constant/MethodTypeDesc;->returnType()Ljava/lang/constant/ClassDesc;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 170
    const-string v1, "(%s)%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist displayDescriptor()Ljava/lang/String;
    .registers 3

    .line 184
    nop

    .line 185
    invoke-interface {p0}, Ljava/lang/constant/MethodTypeDesc;->parameterArray()[Ljava/lang/constant/ClassDesc;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/constant/MethodTypeDesc$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/constant/MethodTypeDesc$$ExternalSyntheticLambda0;-><init>()V

    .line 186
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 187
    const-string v1, ","

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    .line 188
    invoke-interface {p0}, Ljava/lang/constant/MethodTypeDesc;->returnType()Ljava/lang/constant/ClassDesc;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/constant/ClassDesc;->displayName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 184
    const-string v1, "(%s)%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist dropParameterTypes(II)Ljava/lang/constant/MethodTypeDesc;
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

    .line 39
    invoke-interface {p0, p1, p2}, Ljava/lang/constant/MethodTypeDesc;->dropParameterTypes(II)Ljava/lang/constant/MethodTypeDesc;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist test-api equals(Ljava/lang/Object;)Z
.end method

.method public varargs abstract blacklist insertParameterTypes(I[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;
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

    .line 39
    check-cast p2, [Ljava/lang/constant/ClassDesc;

    invoke-interface {p0, p1, p2}, Ljava/lang/constant/MethodTypeDesc;->insertParameterTypes(I[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object p1

    return-object p1
.end method

.method public abstract blacklist parameterArray()[Ljava/lang/constant/ClassDesc;
.end method

.method public bridge synthetic whitelist test-api parameterArray()[Ljava/lang/invoke/TypeDescriptor$OfField;
    .registers 2

    .line 39
    invoke-interface {p0}, Ljava/lang/constant/MethodTypeDesc;->parameterArray()[Ljava/lang/constant/ClassDesc;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api parameterCount()I
.end method

.method public abstract whitelist test-api parameterList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/constant/ClassDesc;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist parameterType(I)Ljava/lang/constant/ClassDesc;
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

    .line 39
    invoke-interface {p0, p1}, Ljava/lang/constant/MethodTypeDesc;->parameterType(I)Ljava/lang/constant/ClassDesc;

    move-result-object p1

    return-object p1
.end method

.method public abstract blacklist returnType()Ljava/lang/constant/ClassDesc;
.end method

.method public bridge synthetic whitelist test-api returnType()Ljava/lang/invoke/TypeDescriptor$OfField;
    .registers 2

    .line 39
    invoke-interface {p0}, Ljava/lang/constant/MethodTypeDesc;->returnType()Ljava/lang/constant/ClassDesc;

    move-result-object v0

    return-object v0
.end method
