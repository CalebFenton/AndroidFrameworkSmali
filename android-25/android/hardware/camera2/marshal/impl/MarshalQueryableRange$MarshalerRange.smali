.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableRange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Landroid/util/Range",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<-",
            "Landroid/util/Range",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Landroid/util/Range",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 9
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/util/Range",
            "<TT;>;>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange<TT;>.MarshalerRange;"
    .local p1, "this$0":Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange<TT;>;"
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/util/Range<TT;>;>;"
    const/4 v6, 0x0

    #@1
    .line 44
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;

    #@3
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    #@6
    .line 48
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    #@9
    move-result-object v5

    #@a
    iput-object v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mClass:Ljava/lang/Class;

    #@c
    .line 56
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Ljava/lang/reflect/ParameterizedType;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 60
    .local v4, "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@15
    move-result-object v5

    #@16
    aget-object v1, v5, v6

    #@18
    .line 63
    .local v1, "actualTypeArgument":Ljava/lang/reflect/Type;
    invoke-static {v1}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/reflect/Type;)Landroid/hardware/camera2/utils/TypeReference;

    #@1b
    move-result-object v0

    #@1c
    .line 66
    .local v0, "actualTypeArgToken":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<*>;"
    iget v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNativeType:I

    #@1e
    .line 65
    invoke-static {v0, v5}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    #@21
    move-result-object v5

    #@22
    iput-object v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    #@24
    .line 68
    :try_start_1
    iget-object v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mClass:Ljava/lang/Class;

    #@26
    const/4 v6, 0x2

    #@27
    new-array v6, v6, [Ljava/lang/Class;

    #@29
    .line 69
    const-class v7, Ljava/lang/Comparable;

    #@2b
    const/4 v8, 0x0

    #@2c
    aput-object v7, v6, v8

    #@2e
    const-class v7, Ljava/lang/Comparable;

    #@30
    const/4 v8, 0x1

    #@31
    aput-object v7, v6, v8

    #@33
    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@36
    move-result-object v5

    #@37
    iput-object v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mConstructor:Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    #@39
    .line 45
    return-void

    #@3a
    .line 57
    .end local v0    # "actualTypeArgToken":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<*>;"
    .end local v1    # "actualTypeArgument":Ljava/lang/reflect/Type;
    .end local v4    # "paramType":Ljava/lang/reflect/ParameterizedType;
    :catch_0
    move-exception v2

    #@3b
    .line 58
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v5, Ljava/lang/AssertionError;

    #@3d
    const-string/jumbo v6, "Raw use of Range is not supported"

    #@40
    invoke-direct {v5, v6, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@43
    throw v5

    #@44
    .line 70
    .end local v2    # "e":Ljava/lang/ClassCastException;
    .restart local v0    # "actualTypeArgToken":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<*>;"
    .restart local v1    # "actualTypeArgument":Ljava/lang/reflect/Type;
    .restart local v4    # "paramType":Ljava/lang/reflect/ParameterizedType;
    :catch_1
    move-exception v3

    #@45
    .line 71
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljava/lang/AssertionError;

    #@47
    invoke-direct {v5, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@4a
    throw v5
.end method


# virtual methods
.method public calculateMarshalSize(Landroid/util/Range;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<TT;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 112
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange<TT;>.MarshalerRange;"
    .local p1, "value":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    invoke-virtual {p0}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->getNativeSize()I

    #@3
    move-result v1

    #@4
    .line 114
    .local v1, "nativeSize":I
    sget v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->NATIVE_SIZE_DYNAMIC:I

    #@6
    if-eq v1, v3, :cond_0

    #@8
    .line 115
    return v1

    #@9
    .line 117
    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    #@b
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    #@12
    move-result v0

    #@13
    .line 118
    .local v0, "lowerSize":I
    iget-object v3, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    #@15
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    #@1c
    move-result v2

    #@1d
    .line 120
    .local v2, "upperSize":I
    add-int v3, v0, v2

    #@1f
    return v3
.end method

.method public bridge synthetic calculateMarshalSize(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 111
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange<TT;>.MarshalerRange;"
    check-cast p1, Landroid/util/Range;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->calculateMarshalSize(Landroid/util/Range;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNativeSize()I
    .locals 2

    #@0
    .prologue
    .line 101
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange<TT;>.MarshalerRange;"
    iget-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    #@2
    invoke-virtual {v1}, Landroid/hardware/camera2/marshal/Marshaler;->getNativeSize()I

    #@5
    move-result v0

    #@6
    .line 103
    .local v0, "nestedSize":I
    sget v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->NATIVE_SIZE_DYNAMIC:I

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 104
    mul-int/lit8 v1, v0, 0x2

    #@c
    return v1

    #@d
    .line 106
    :cond_0
    sget v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->NATIVE_SIZE_DYNAMIC:I

    #@f
    return v1
.end method

.method public marshal(Landroid/util/Range;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<TT;>;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 77
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange<TT;>.MarshalerRange;"
    .local p1, "value":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    #@2
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p2}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    #@9
    .line 78
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    #@b
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1, p2}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    #@12
    .line 76
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 76
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange<TT;>.MarshalerRange;"
    check-cast p1, Landroid/util/Range;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->marshal(Landroid/util/Range;Ljava/nio/ByteBuffer;)V

    #@5
    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/util/Range;
    .locals 9
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 83
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange<TT;>.MarshalerRange;"
    iget-object v6, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    #@2
    invoke-virtual {v6, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    check-cast v4, Ljava/lang/Comparable;

    #@8
    .line 84
    .local v4, "lower":Ljava/lang/Comparable;, "TT;"
    iget-object v6, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    #@a
    invoke-virtual {v6, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    #@d
    move-result-object v5

    #@e
    check-cast v5, Ljava/lang/Comparable;

    #@10
    .line 87
    .local v5, "upper":Ljava/lang/Comparable;, "TT;"
    :try_start_0
    iget-object v6, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mConstructor:Ljava/lang/reflect/Constructor;

    #@12
    const/4 v7, 0x2

    #@13
    new-array v7, v7, [Ljava/lang/Object;

    #@15
    const/4 v8, 0x0

    #@16
    aput-object v4, v7, v8

    #@18
    const/4 v8, 0x1

    #@19
    aput-object v5, v7, v8

    #@1b
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v6

    #@1f
    check-cast v6, Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    return-object v6

    #@22
    .line 94
    :catch_0
    move-exception v3

    #@23
    .line 95
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v6, Ljava/lang/AssertionError;

    #@25
    invoke-direct {v6, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@28
    throw v6

    #@29
    .line 92
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    #@2a
    .line 93
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/AssertionError;

    #@2c
    invoke-direct {v6, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2f
    throw v6

    #@30
    .line 90
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    #@31
    .line 91
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/AssertionError;

    #@33
    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@36
    throw v6

    #@37
    .line 88
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    #@38
    .line 89
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v6, Ljava/lang/AssertionError;

    #@3a
    invoke-direct {v6, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@3d
    throw v6
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 82
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange<TT;>.MarshalerRange;"
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/util/Range;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
