.class Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryablePrimitive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 1
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 56
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>.MarshalerPrimitive;"
    .local p1, "this$0":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>;"
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;

    #@2
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    #@5
    .line 60
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalHelpers;->wrapClassIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mClass:Ljava/lang/Class;

    #@f
    .line 56
    return-void
.end method

.method private marshalPrimitive(BLjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # B
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 126
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>.MarshalerPrimitive;"
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@3
    .line 125
    return-void
.end method

.method private marshalPrimitive(DLjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "value"    # D
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 113
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>.MarshalerPrimitive;"
    invoke-virtual {p3, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    #@3
    .line 112
    return-void
.end method

.method private marshalPrimitive(FLjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # F
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 109
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>.MarshalerPrimitive;"
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    #@3
    .line 108
    return-void
.end method

.method private marshalPrimitive(ILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 105
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>.MarshalerPrimitive;"
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@3
    .line 104
    return-void
.end method

.method private marshalPrimitive(JLjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "value"    # J
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 117
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>.MarshalerPrimitive;"
    invoke-virtual {p3, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    #@3
    .line 116
    return-void
.end method

.method private marshalPrimitive(Landroid/util/Rational;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "value"    # Landroid/util/Rational;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 121
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>.MarshalerPrimitive;"
    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@7
    .line 122
    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@e
    .line 120
    return-void
.end method

.method private unmarshalObject(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 130
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>.MarshalerPrimitive;"
    iget v2, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mNativeType:I

    #@2
    packed-switch v2, :pswitch_data_0

    #@5
    .line 146
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@7
    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "Can\'t unmarshal native type "

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    iget v4, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mNativeType:I

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 146
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 132
    :pswitch_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@24
    move-result v2

    #@25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v2

    #@29
    return-object v2

    #@2a
    .line 134
    :pswitch_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    #@2d
    move-result v2

    #@2e
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@31
    move-result-object v2

    #@32
    return-object v2

    #@33
    .line 136
    :pswitch_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    #@36
    move-result-wide v2

    #@37
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3a
    move-result-object v2

    #@3b
    return-object v2

    #@3c
    .line 138
    :pswitch_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@3f
    move-result v1

    #@40
    .line 139
    .local v1, "numerator":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@43
    move-result v0

    #@44
    .line 140
    .local v0, "denominator":I
    new-instance v2, Landroid/util/Rational;

    #@46
    invoke-direct {v2, v1, v0}, Landroid/util/Rational;-><init>(II)V

    #@49
    return-object v2

    #@4a
    .line 142
    .end local v0    # "denominator":I
    .end local v1    # "numerator":I
    :pswitch_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    #@4d
    move-result-wide v2

    #@4e
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@51
    move-result-object v2

    #@52
    return-object v2

    #@53
    .line 144
    :pswitch_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@56
    move-result v2

    #@57
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@5a
    move-result-object v2

    #@5b
    return-object v2

    #@5c
    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public calculateMarshalSize(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 70
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>.MarshalerPrimitive;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mNativeType:I

    #@2
    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalHelpers;->getPrimitiveTypeSize(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNativeSize()I
    .locals 1

    #@0
    .prologue
    .line 153
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>.MarshalerPrimitive;"
    iget v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mNativeType:I

    #@2
    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalHelpers;->getPrimitiveTypeSize(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 75
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>.MarshalerPrimitive;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    instance-of v5, p1, Ljava/lang/Integer;

    #@2
    if-eqz v5, :cond_0

    #@4
    .line 76
    iget v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mNativeType:I

    #@6
    const/4 v8, 0x1

    #@7
    invoke-static {v8, v5}, Landroid/hardware/camera2/marshal/MarshalHelpers;->checkNativeTypeEquals(II)I

    #@a
    .line 77
    check-cast p1, Ljava/lang/Integer;

    #@c
    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@f
    move-result v4

    #@10
    .line 78
    .local v4, "val":I
    invoke-direct {p0, v4, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->marshalPrimitive(ILjava/nio/ByteBuffer;)V

    #@13
    .line 74
    .end local v4    # "val":I
    :goto_0
    return-void

    #@14
    .line 79
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    instance-of v5, p1, Ljava/lang/Float;

    #@16
    if-eqz v5, :cond_1

    #@18
    .line 80
    iget v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mNativeType:I

    #@1a
    const/4 v8, 0x2

    #@1b
    invoke-static {v8, v5}, Landroid/hardware/camera2/marshal/MarshalHelpers;->checkNativeTypeEquals(II)I

    #@1e
    .line 81
    check-cast p1, Ljava/lang/Float;

    #@20
    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@23
    move-result v1

    #@24
    .line 82
    .local v1, "val":F
    invoke-direct {p0, v1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->marshalPrimitive(FLjava/nio/ByteBuffer;)V

    #@27
    goto :goto_0

    #@28
    .line 83
    .end local v1    # "val":F
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_1
    instance-of v5, p1, Ljava/lang/Long;

    #@2a
    if-eqz v5, :cond_2

    #@2c
    .line 84
    iget v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mNativeType:I

    #@2e
    const/4 v8, 0x3

    #@2f
    invoke-static {v8, v5}, Landroid/hardware/camera2/marshal/MarshalHelpers;->checkNativeTypeEquals(II)I

    #@32
    .line 85
    check-cast p1, Ljava/lang/Long;

    #@34
    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@37
    move-result-wide v6

    #@38
    .line 86
    .local v6, "val":J
    invoke-direct {p0, v6, v7, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->marshalPrimitive(JLjava/nio/ByteBuffer;)V

    #@3b
    goto :goto_0

    #@3c
    .line 87
    .end local v6    # "val":J
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    instance-of v5, p1, Landroid/util/Rational;

    #@3e
    if-eqz v5, :cond_3

    #@40
    .line 88
    iget v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mNativeType:I

    #@42
    const/4 v8, 0x5

    #@43
    invoke-static {v8, v5}, Landroid/hardware/camera2/marshal/MarshalHelpers;->checkNativeTypeEquals(II)I

    #@46
    .line 89
    check-cast p1, Landroid/util/Rational;

    #@48
    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->marshalPrimitive(Landroid/util/Rational;Ljava/nio/ByteBuffer;)V

    #@4b
    goto :goto_0

    #@4c
    .line 90
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_3
    instance-of v5, p1, Ljava/lang/Double;

    #@4e
    if-eqz v5, :cond_4

    #@50
    .line 91
    iget v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mNativeType:I

    #@52
    const/4 v8, 0x4

    #@53
    invoke-static {v8, v5}, Landroid/hardware/camera2/marshal/MarshalHelpers;->checkNativeTypeEquals(II)I

    #@56
    .line 92
    check-cast p1, Ljava/lang/Double;

    #@58
    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    #@5b
    move-result-wide v2

    #@5c
    .line 93
    .local v2, "val":D
    invoke-direct {p0, v2, v3, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->marshalPrimitive(DLjava/nio/ByteBuffer;)V

    #@5f
    goto :goto_0

    #@60
    .line 94
    .end local v2    # "val":D
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_4
    instance-of v5, p1, Ljava/lang/Byte;

    #@62
    if-eqz v5, :cond_5

    #@64
    .line 95
    iget v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mNativeType:I

    #@66
    const/4 v8, 0x0

    #@67
    invoke-static {v8, v5}, Landroid/hardware/camera2/marshal/MarshalHelpers;->checkNativeTypeEquals(II)I

    #@6a
    .line 96
    check-cast p1, Ljava/lang/Byte;

    #@6c
    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    #@6f
    move-result v0

    #@70
    .line 97
    .local v0, "val":B
    invoke-direct {p0, v0, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->marshalPrimitive(BLjava/nio/ByteBuffer;)V

    #@73
    goto :goto_0

    #@74
    .line 99
    .end local v0    # "val":B
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_5
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    #@76
    .line 100
    new-instance v8, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v9, "Can\'t marshal managed type "

    #@7e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v8

    #@82
    iget-object v9, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    #@84
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v8

    #@88
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v8

    #@8c
    .line 99
    invoke-direct {v5, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v5
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 65
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>.MarshalerPrimitive;"
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->mClass:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;->unmarshalObject(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method
