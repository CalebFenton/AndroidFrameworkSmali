.class public final Ljava/lang/reflect/Parameter;
.super Ljava/lang/Object;
.source "Parameter.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;


# instance fields
.field private final greylist-max-o executable:Ljava/lang/reflect/Executable;

.field private final greylist-max-o index:I

.field private final greylist-max-o modifiers:I

.field private final greylist-max-o name:Ljava/lang/String;

.field private volatile transient greylist-max-o parameterClassCache:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile transient greylist-max-o parameterTypeCache:Ljava/lang/reflect/Type;


# direct methods
.method constructor greylist-max-r <init>(Ljava/lang/String;ILjava/lang/reflect/Executable;I)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "modifiers"    # I
    .param p3, "executable"    # Ljava/lang/reflect/Executable;
    .param p4, "index"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/reflect/Parameter;->parameterClassCache:Ljava/lang/Class;

    .line 70
    iput-object p1, p0, Ljava/lang/reflect/Parameter;->name:Ljava/lang/String;

    .line 71
    iput p2, p0, Ljava/lang/reflect/Parameter;->modifiers:I

    .line 72
    iput-object p3, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    .line 73
    iput p4, p0, Ljava/lang/reflect/Parameter;->index:I

    .line 74
    return-void
.end method

.method private static native greylist-max-o getAnnotationNative(Ljava/lang/reflect/Executable;ILjava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/Executable;",
            "I",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 83
    instance-of v0, p1, Ljava/lang/reflect/Parameter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 84
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Parameter;

    .line 85
    .local v0, "other":Ljava/lang/reflect/Parameter;
    iget-object v2, v0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    iget-object v3, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget v2, v0, Ljava/lang/reflect/Parameter;->index:I

    iget v3, p0, Ljava/lang/reflect/Parameter;->index:I

    if-ne v2, v3, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1

    .line 88
    .end local v0    # "other":Ljava/lang/reflect/Parameter;
    :cond_1a
    return v1
.end method

.method public whitelist test-api getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 276
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    iget v1, p0, Ljava/lang/reflect/Parameter;->index:I

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Parameter;->getAnnotationNative(Ljava/lang/reflect/Executable;ILjava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .line 327
    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 292
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Llibcore/reflect/AnnotatedElements;->getDirectOrIndirectAnnotationsByType(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 309
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Parameter;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 3

    .line 299
    iget-object v0, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v0}, Ljava/lang/reflect/Executable;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iget v1, p0, Ljava/lang/reflect/Parameter;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist test-api getDeclaredAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 320
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Parameter;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDeclaringExecutable()Ljava/lang/reflect/Executable;
    .registers 2

    .line 153
    iget-object v0, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    return-object v0
.end method

.method public whitelist test-api getModifiers()I
    .registers 2

    .line 163
    iget v0, p0, Ljava/lang/reflect/Parameter;->modifiers:I

    return v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 3

    .line 182
    iget-object v0, p0, Ljava/lang/reflect/Parameter;->name:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Ljava/lang/reflect/Parameter;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_12

    .line 185
    :cond_f
    iget-object v0, p0, Ljava/lang/reflect/Parameter;->name:Ljava/lang/String;

    return-object v0

    .line 183
    :cond_12
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/lang/reflect/Parameter;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getParameterizedType()Ljava/lang/reflect/Type;
    .registers 4

    .line 202
    iget-object v0, p0, Ljava/lang/reflect/Parameter;->parameterTypeCache:Ljava/lang/reflect/Type;

    .line 203
    .local v0, "tmp":Ljava/lang/reflect/Type;
    if-nez v0, :cond_10

    .line 204
    iget-object v1, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v1}, Ljava/lang/reflect/Executable;->getAllGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    iget v2, p0, Ljava/lang/reflect/Parameter;->index:I

    aget-object v0, v1, v2

    .line 205
    iput-object v0, p0, Ljava/lang/reflect/Parameter;->parameterTypeCache:Ljava/lang/reflect/Type;

    .line 208
    :cond_10
    return-object v0
.end method

.method greylist-max-o getRealName()Ljava/lang/String;
    .registers 2

    .line 190
    iget-object v0, p0, Ljava/lang/reflect/Parameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getType()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Ljava/lang/reflect/Parameter;->parameterClassCache:Ljava/lang/Class;

    .line 223
    .local v0, "tmp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_10

    .line 224
    iget-object v1, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v1}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    iget v2, p0, Ljava/lang/reflect/Parameter;->index:I

    aget-object v0, v1, v2

    .line 225
    iput-object v0, p0, Ljava/lang/reflect/Parameter;->parameterClassCache:Ljava/lang/Class;

    .line 227
    :cond_10
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 98
    iget-object v0, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/lang/reflect/Parameter;->index:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isImplicit()Z
    .registers 2

    .line 241
    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isMandated(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isNamePresent()Z
    .registers 2

    .line 110
    iget-object v0, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v0}, Ljava/lang/reflect/Executable;->hasRealParameterData()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Ljava/lang/reflect/Parameter;->name:Ljava/lang/String;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api isSynthetic()Z
    .registers 2

    .line 255
    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isSynthetic(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isVarArgs()Z
    .registers 4

    .line 266
    iget-object v0, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    invoke-virtual {v0}, Ljava/lang/reflect/Executable;->isVarArgs()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Ljava/lang/reflect/Parameter;->index:I

    iget-object v1, p0, Ljava/lang/reflect/Parameter;->executable:Ljava/lang/reflect/Executable;

    .line 267
    invoke-virtual {v1}, Ljava/lang/reflect/Executable;->getParameterCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    .line 266
    :goto_16
    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->getParameterizedType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 129
    .local v1, "type":Ljava/lang/reflect/Type;
    invoke-interface {v1}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "typename":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget v3, p0, Ljava/lang/reflect/Parameter;->modifiers:I

    const/16 v4, 0x20

    if-eqz v3, :cond_21

    .line 134
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    :cond_21
    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->isVarArgs()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 137
    const-string v3, "\\[\\]$"

    const-string v5, "..."

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 139
    :cond_33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :goto_36
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
