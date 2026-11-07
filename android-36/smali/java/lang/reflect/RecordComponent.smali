.class public final Ljava/lang/reflect/RecordComponent;
.super Ljava/lang/Object;
.source "RecordComponent.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;


# instance fields
.field private blacklist accessor:Ljava/lang/reflect/Method;

.field private blacklist clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile transient blacklist declaredAnnotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist name:Ljava/lang/String;

.field private blacklist parent:Llibcore/reflect/RecordComponents;

.field private blacklist selfIndex:I

.field private blacklist signature:Ljava/lang/String;

.field private blacklist type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Llibcore/reflect/RecordComponents;I)V
    .registers 7
    .param p2, "name"    # Ljava/lang/String;
    .param p4, "parent"    # Llibcore/reflect/RecordComponents;
    .param p5, "selfIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Llibcore/reflect/RecordComponents;",
            "I)V"
        }
    .end annotation

    .line 73
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Ljava/lang/reflect/RecordComponent;->clazz:Ljava/lang/Class;

    .line 75
    iput-object p2, p0, Ljava/lang/reflect/RecordComponent;->name:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Ljava/lang/reflect/RecordComponent;->type:Ljava/lang/Class;

    .line 77
    iput-object p4, p0, Ljava/lang/reflect/RecordComponent;->parent:Llibcore/reflect/RecordComponents;

    .line 78
    iput p5, p0, Ljava/lang/reflect/RecordComponent;->selfIndex:I

    .line 79
    invoke-virtual {p4, p5}, Llibcore/reflect/RecordComponents;->getGenericSignature(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/reflect/RecordComponent;->signature:Ljava/lang/String;

    .line 81
    if-eqz p2, :cond_20

    .line 83
    const/4 v0, 0x0

    :try_start_16
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/reflect/RecordComponent;->accessor:Ljava/lang/reflect/Method;
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_1e} :catch_1f

    .line 86
    goto :goto_20

    .line 84
    :catch_1f
    move-exception v0

    .line 88
    :cond_20
    :goto_20
    return-void
.end method

.method private blacklist declaredAnnotations()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Ljava/lang/reflect/RecordComponent;->declaredAnnotations:Ljava/util/Map;

    move-object v1, v0

    .local v1, "declAnnos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Ljava/lang/annotation/Annotation;>;"
    if-nez v0, :cond_37

    .line 233
    monitor-enter p0

    .line 234
    :try_start_6
    iget-object v0, p0, Ljava/lang/reflect/RecordComponent;->declaredAnnotations:Ljava/util/Map;

    move-object v1, v0

    if-nez v0, :cond_32

    .line 248
    iget-object v0, p0, Ljava/lang/reflect/RecordComponent;->parent:Llibcore/reflect/RecordComponents;

    iget v2, p0, Ljava/lang/reflect/RecordComponent;->selfIndex:I

    invoke-virtual {v0, v2}, Llibcore/reflect/RecordComponents;->getVisibleAnnotations(I)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 249
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;
    if-nez v0, :cond_18

    .line 250
    sget-object v2, Llibcore/util/EmptyArray;->ANNOTATION:[Ljava/lang/annotation/Annotation;

    move-object v0, v2

    .line 252
    :cond_18
    new-instance v2, Ljava/util/HashMap;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    move-object v1, v2

    .line 253
    array-length v2, v0

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_30

    aget-object v4, v0, v3

    .line 254
    .local v4, "a":Ljava/lang/annotation/Annotation;
    invoke-interface {v4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    nop

    .end local v4    # "a":Ljava/lang/annotation/Annotation;
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 256
    :cond_30
    iput-object v1, p0, Ljava/lang/reflect/RecordComponent;->declaredAnnotations:Ljava/util/Map;

    .line 258
    .end local v0    # "annotations":[Ljava/lang/annotation/Annotation;
    :cond_32
    monitor-exit p0

    goto :goto_37

    :catchall_34
    move-exception v0

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_34

    throw v0

    .line 260
    :cond_37
    :goto_37
    return-object v1
.end method


# virtual methods
.method public whitelist test-api getAccessor()Ljava/lang/reflect/Method;
    .registers 2

    .line 213
    iget-object v0, p0, Ljava/lang/reflect/RecordComponent;->accessor:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public whitelist test-api getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
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

    .line 224
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-direct {p0}, Ljava/lang/reflect/RecordComponent;->declaredAnnotations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public whitelist test-api getAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .line 270
    invoke-virtual {p0}, Ljava/lang/reflect/RecordComponent;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 3

    .line 282
    invoke-direct {p0}, Ljava/lang/reflect/RecordComponent;->declaredAnnotations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Llibcore/util/EmptyArray;->ANNOTATION:[Ljava/lang/annotation/Annotation;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public whitelist test-api getDeclaringRecord()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Ljava/lang/reflect/RecordComponent;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public whitelist test-api getGenericSignature()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Ljava/lang/reflect/RecordComponent;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getGenericType()Ljava/lang/reflect/Type;
    .registers 5

    .line 154
    invoke-virtual {p0}, Ljava/lang/reflect/RecordComponent;->getGenericSignature()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "signatureAttribute":Ljava/lang/String;
    iget-object v1, p0, Ljava/lang/reflect/RecordComponent;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 156
    .local v1, "cl":Ljava/lang/ClassLoader;
    new-instance v2, Llibcore/reflect/GenericSignatureParser;

    invoke-direct {v2, v1}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 157
    .local v2, "parser":Llibcore/reflect/GenericSignatureParser;
    iget-object v3, p0, Ljava/lang/reflect/RecordComponent;->clazz:Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Llibcore/reflect/GenericSignatureParser;->parseForField(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 158
    iget-object v3, v2, Llibcore/reflect/GenericSignatureParser;->fieldType:Ljava/lang/reflect/Type;

    .line 159
    .local v3, "genericType":Ljava/lang/reflect/Type;
    if-nez v3, :cond_1c

    .line 160
    invoke-virtual {p0}, Ljava/lang/reflect/RecordComponent;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 162
    :cond_1c
    return-object v3
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Ljava/lang/reflect/RecordComponent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Ljava/lang/reflect/RecordComponent;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/reflect/RecordComponent;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/RecordComponent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
