.class Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryablePair.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Landroid/util/Pair",
        "<TT1;TT2;>;>;"
    }
.end annotation


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<-",
            "Landroid/util/Pair",
            "<TT1;TT2;>;>;"
        }
    .end annotation
.end field

.field private final mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Landroid/util/Pair",
            "<TT1;TT2;>;>;"
        }
    .end annotation
.end field

.field private final mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<TT1;>;"
        }
    .end annotation
.end field

.field private final mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<TT2;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 9
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/util/Pair",
            "<TT1;TT2;>;>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair<TT1;TT2;>.MarshalerPair;"
    .local p1, "this$0":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair<TT1;TT2;>;"
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/util/Pair<TT1;TT2;>;>;"
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 45
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;

    #@4
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    #@7
    .line 49
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    #@a
    move-result-object v5

    #@b
    iput-object v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mClass:Ljava/lang/Class;

    #@d
    .line 57
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Ljava/lang/reflect/ParameterizedType;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 64
    .local v4, "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@16
    move-result-object v5

    #@17
    aget-object v1, v5, v6

    #@19
    .line 67
    .local v1, "actualTypeArgument":Ljava/lang/reflect/Type;
    invoke-static {v1}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/reflect/Type;)Landroid/hardware/camera2/utils/TypeReference;

    #@1c
    move-result-object v0

    #@1d
    .line 70
    .local v0, "actualTypeArgToken":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<*>;"
    iget v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNativeType:I

    #@1f
    .line 69
    invoke-static {v0, v5}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    #@22
    move-result-object v5

    #@23
    iput-object v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;

    #@25
    .line 74
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@28
    move-result-object v5

    #@29
    aget-object v1, v5, v7

    #@2b
    .line 77
    invoke-static {v1}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/reflect/Type;)Landroid/hardware/camera2/utils/TypeReference;

    #@2e
    move-result-object v0

    #@2f
    .line 80
    iget v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNativeType:I

    #@31
    .line 79
    invoke-static {v0, v5}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    #@34
    move-result-object v5

    #@35
    iput-object v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;

    #@37
    .line 83
    :try_start_1
    iget-object v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mClass:Ljava/lang/Class;

    #@39
    const/4 v6, 0x2

    #@3a
    new-array v6, v6, [Ljava/lang/Class;

    #@3c
    .line 84
    const-class v7, Ljava/lang/Object;

    #@3e
    const/4 v8, 0x0

    #@3f
    aput-object v7, v6, v8

    #@41
    const-class v7, Ljava/lang/Object;

    #@43
    const/4 v8, 0x1

    #@44
    aput-object v7, v6, v8

    #@46
    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@49
    move-result-object v5

    #@4a
    iput-object v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mConstructor:Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    #@4c
    .line 46
    return-void

    #@4d
    .line 58
    .end local v0    # "actualTypeArgToken":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<*>;"
    .end local v1    # "actualTypeArgument":Ljava/lang/reflect/Type;
    .end local v4    # "paramType":Ljava/lang/reflect/ParameterizedType;
    :catch_0
    move-exception v2

    #@4e
    .line 59
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v5, Ljava/lang/AssertionError;

    #@50
    const-string/jumbo v6, "Raw use of Pair is not supported"

    #@53
    invoke-direct {v5, v6, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@56
    throw v5

    #@57
    .line 85
    .end local v2    # "e":Ljava/lang/ClassCastException;
    .restart local v0    # "actualTypeArgToken":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<*>;"
    .restart local v1    # "actualTypeArgument":Ljava/lang/reflect/Type;
    .restart local v4    # "paramType":Ljava/lang/reflect/ParameterizedType;
    :catch_1
    move-exception v3

    #@58
    .line 86
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljava/lang/AssertionError;

    #@5a
    invoke-direct {v5, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@5d
    throw v5
.end method


# virtual methods
.method public calculateMarshalSize(Landroid/util/Pair;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<TT1;TT2;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 134
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair<TT1;TT2;>.MarshalerPair;"
    .local p1, "value":Landroid/util/Pair;, "Landroid/util/Pair<TT1;TT2;>;"
    invoke-virtual {p0}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->getNativeSize()I

    #@3
    move-result v1

    #@4
    .line 136
    .local v1, "nativeSize":I
    sget v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->NATIVE_SIZE_DYNAMIC:I

    #@6
    if-eq v1, v3, :cond_0

    #@8
    .line 137
    return v1

    #@9
    .line 139
    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;

    #@b
    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@d
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    #@10
    move-result v0

    #@11
    .line 140
    .local v0, "firstSize":I
    iget-object v3, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;

    #@13
    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@15
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    #@18
    move-result v2

    #@19
    .line 142
    .local v2, "secondSize":I
    add-int v3, v0, v2

    #@1b
    return v3
.end method

.method public bridge synthetic calculateMarshalSize(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 133
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair<TT1;TT2;>.MarshalerPair;"
    check-cast p1, Landroid/util/Pair;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->calculateMarshalSize(Landroid/util/Pair;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNativeSize()I
    .locals 3

    #@0
    .prologue
    .line 122
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair<TT1;TT2;>.MarshalerPair;"
    iget-object v2, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;

    #@2
    invoke-virtual {v2}, Landroid/hardware/camera2/marshal/Marshaler;->getNativeSize()I

    #@5
    move-result v0

    #@6
    .line 123
    .local v0, "firstSize":I
    iget-object v2, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;

    #@8
    invoke-virtual {v2}, Landroid/hardware/camera2/marshal/Marshaler;->getNativeSize()I

    #@b
    move-result v1

    #@c
    .line 125
    .local v1, "secondSize":I
    sget v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->NATIVE_SIZE_DYNAMIC:I

    #@e
    if-eq v0, v2, :cond_0

    #@10
    sget v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->NATIVE_SIZE_DYNAMIC:I

    #@12
    if-eq v1, v2, :cond_0

    #@14
    .line 126
    add-int v2, v0, v1

    #@16
    return v2

    #@17
    .line 128
    :cond_0
    sget v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->NATIVE_SIZE_DYNAMIC:I

    #@19
    return v2
.end method

.method public marshal(Landroid/util/Pair;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<TT1;TT2;>;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 92
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair<TT1;TT2;>.MarshalerPair;"
    .local p1, "value":Landroid/util/Pair;, "Landroid/util/Pair<TT1;TT2;>;"
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    const-string/jumbo v1, "Pair#first must not be null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 94
    :cond_0
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@13
    const-string/jumbo v1, "Pair#second must not be null"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 98
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;

    #@1c
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1e
    invoke-virtual {v0, v1, p2}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    #@21
    .line 99
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;

    #@23
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@25
    invoke-virtual {v0, v1, p2}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    #@28
    .line 91
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 91
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair<TT1;TT2;>.MarshalerPair;"
    check-cast p1, Landroid/util/Pair;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->marshal(Landroid/util/Pair;Ljava/nio/ByteBuffer;)V

    #@5
    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/util/Pair;
    .locals 9
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Landroid/util/Pair",
            "<TT1;TT2;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 104
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair<TT1;TT2;>.MarshalerPair;"
    iget-object v6, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;

    #@2
    invoke-virtual {v6, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    .line 105
    .local v4, "first":Ljava/lang/Object;, "TT1;"
    iget-object v6, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;

    #@8
    invoke-virtual {v6, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    #@b
    move-result-object v5

    #@c
    .line 108
    .local v5, "second":Ljava/lang/Object;, "TT2;"
    :try_start_0
    iget-object v6, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mConstructor:Ljava/lang/reflect/Constructor;

    #@e
    const/4 v7, 0x2

    #@f
    new-array v7, v7, [Ljava/lang/Object;

    #@11
    const/4 v8, 0x0

    #@12
    aput-object v4, v7, v8

    #@14
    const/4 v8, 0x1

    #@15
    aput-object v5, v7, v8

    #@17
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    check-cast v6, Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    return-object v6

    #@1e
    .line 115
    :catch_0
    move-exception v3

    #@1f
    .line 116
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v6, Ljava/lang/AssertionError;

    #@21
    invoke-direct {v6, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@24
    throw v6

    #@25
    .line 113
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    #@26
    .line 114
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/AssertionError;

    #@28
    invoke-direct {v6, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2b
    throw v6

    #@2c
    .line 111
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    #@2d
    .line 112
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/AssertionError;

    #@2f
    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@32
    throw v6

    #@33
    .line 109
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    #@34
    .line 110
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v6, Ljava/lang/AssertionError;

    #@36
    invoke-direct {v6, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@39
    throw v6
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 103
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair<TT1;TT2;>.MarshalerPair;"
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/util/Pair;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
