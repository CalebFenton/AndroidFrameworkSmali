.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mComponentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;Landroid/hardware/camera2/utils/TypeReference;I)V
    .registers 5
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;I)V"
        }
    .end annotation

    .line 110
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray<TT;>.MarshalerArray;"
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    .line 112
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mClass:Ljava/lang/Class;

    .line 114
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getComponentType()Landroid/hardware/camera2/utils/TypeReference;

    move-result-object p1

    .line 115
    .local p1, "componentToken":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<*>;"
    iget v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mNativeType:I

    invoke-static {p1, v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    .line 116
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentClass:Ljava/lang/Class;

    .line 117
    return-void
.end method

.method private blacklist calculateElementMarshalSize(Landroid/hardware/camera2/marshal/Marshaler;Ljava/lang/Object;I)I
    .registers 6
    .param p2, "array"    # Ljava/lang/Object;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TElem:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TTElem;>;",
            "Ljava/lang/Object;",
            "I)I"
        }
    .end annotation

    .line 225
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray<TT;>.MarshalerArray;"
    .local p1, "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TTElem;>;"
    invoke-static {p2, p3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 227
    .local v0, "elem":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private blacklist copyListToArray(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p2, "arrayDest"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 219
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray<TT;>.MarshalerArray;"
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private blacklist marshalArrayElement(Landroid/hardware/camera2/marshal/Marshaler;Ljava/nio/ByteBuffer;Ljava/lang/Object;I)V
    .registers 6
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "array"    # Ljava/lang/Object;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TElem:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TTElem;>;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 214
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray<TT;>.MarshalerArray;"
    .local p1, "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TTElem;>;"
    invoke-static {p3, p4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    .line 215
    return-void
.end method


# virtual methods
.method public blacklist calculateMarshalSize(Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 190
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray<TT;>.MarshalerArray;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v0}, Landroid/hardware/camera2/marshal/Marshaler;->getNativeSize()I

    move-result v0

    .line 191
    .local v0, "elementSize":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 193
    .local v1, "arrayLength":I
    sget v2, Landroid/hardware/camera2/marshal/Marshaler;->NATIVE_SIZE_DYNAMIC:I

    if-eq v0, v2, :cond_11

    .line 195
    mul-int v2, v0, v1

    return v2

    .line 198
    :cond_11
    const/4 v2, 0x0

    .line 199
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v1, :cond_1f

    .line 200
    iget-object v4, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-direct {p0, v4, p1, v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->calculateElementMarshalSize(Landroid/hardware/camera2/marshal/Marshaler;Ljava/lang/Object;I)I

    move-result v4

    add-int/2addr v2, v4

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 203
    .end local v3    # "i":I
    :cond_1f
    return v2
.end method

.method public blacklist getNativeSize()I
    .registers 2

    .line 185
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray<TT;>.MarshalerArray;"
    sget v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->NATIVE_SIZE_DYNAMIC:I

    return v0
.end method

.method public blacklist marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .line 121
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray<TT;>.MarshalerArray;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 122
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_f

    .line 123
    iget-object v2, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-direct {p0, v2, p2, p1, v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->marshalArrayElement(Landroid/hardware/camera2/marshal/Marshaler;Ljava/nio/ByteBuffer;Ljava/lang/Object;I)V

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 125
    .end local v1    # "i":I
    :cond_f
    return-void
.end method

.method public blacklist unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .line 131
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray<TT;>.MarshalerArray;"
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v0}, Landroid/hardware/camera2/marshal/Marshaler;->getNativeSize()I

    move-result v0

    .line 133
    .local v0, "elementSize":I
    sget v1, Landroid/hardware/camera2/marshal/Marshaler;->NATIVE_SIZE_DYNAMIC:I

    if-eq v0, v1, :cond_7d

    .line 134
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 135
    .local v1, "remaining":I
    div-int v2, v1, v0

    .line 137
    .local v2, "arraySize":I
    rem-int v3, v1, v0

    if-nez v3, :cond_46

    .line 150
    iget-object v3, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentClass:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    .line 151
    .local v3, "array":Ljava/lang/Object;
    iget-object v4, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentClass:Ljava/lang/Class;

    invoke-static {v4}, Landroid/hardware/camera2/marshal/MarshalHelpers;->isUnwrappedPrimitiveClass(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_36

    iget-object v4, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentClass:Ljava/lang/Class;

    iget v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mNativeType:I

    .line 152
    invoke-static {v5}, Landroid/hardware/camera2/marshal/MarshalHelpers;->getPrimitiveTypeClass(I)Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_36

    .line 153
    iget-object v4, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentClass:Ljava/lang/Class;

    invoke-static {v4}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller;->getPrimitiveArrayFiller(Ljava/lang/Class;)Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller;

    move-result-object v4

    invoke-interface {v4, v3, v2, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller;->fillArray(Ljava/lang/Object;ILjava/nio/ByteBuffer;)V

    goto :goto_45

    .line 156
    :cond_36
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_37
    if-ge v4, v2, :cond_45

    .line 157
    iget-object v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v5, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v5

    .line 158
    .local v5, "elem":Ljava/lang/Object;
    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 156
    .end local v5    # "elem":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 161
    .end local v1    # "remaining":I
    .end local v2    # "arraySize":I
    .end local v4    # "i":I
    :cond_45
    :goto_45
    goto :goto_a0

    .line 138
    .end local v3    # "array":Ljava/lang/Object;
    .restart local v1    # "remaining":I
    .restart local v2    # "arraySize":I
    :cond_46
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Arrays for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must be packed tighly into a multiple of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; but there are "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    rem-int v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " left over bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    .end local v1    # "remaining":I
    .end local v2    # "arraySize":I
    :cond_7d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_82
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 167
    iget-object v2, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v2

    .line 168
    .local v2, "elem":Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v2    # "elem":Ljava/lang/Object;
    goto :goto_82

    .line 171
    :cond_92
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 172
    .local v2, "arraySize":I
    iget-object v3, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentClass:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->copyListToArray(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 175
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v2    # "arraySize":I
    .restart local v3    # "array":Ljava/lang/Object;
    :goto_a0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-eqz v1, :cond_d0

    .line 176
    invoke-static {}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trailing bytes ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") left over after unpacking "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mClass:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_d0
    iget-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mClass:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
