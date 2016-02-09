.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerEnum"
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

.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;Landroid/hardware/camera2/utils/TypeReference;I)V
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
    .line 52
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>.MarshalerEnum;"
    .local p1, "this$0":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>;"
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;

    #@2
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    #@5
    .line 55
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->mClass:Ljava/lang/Class;

    #@b
    .line 52
    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 1

    #@0
    .prologue
    .line 97
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>.MarshalerEnum;"
    iget v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->mNativeType:I

    #@2
    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalHelpers;->getPrimitiveTypeSize(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public marshal(Ljava/lang/Enum;Ljava/nio/ByteBuffer;)V
    .locals 6
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
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>.MarshalerEnum;"
    .local p1, "value":Ljava/lang/Enum;, "TT;"
    const/4 v3, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 60
    invoke-static {p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->-wrap0(Ljava/lang/Enum;)I

    #@5
    move-result v0

    #@6
    .line 62
    .local v0, "enumValue":I
    iget v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->mNativeType:I

    #@8
    if-ne v1, v3, :cond_0

    #@a
    .line 63
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@d
    .line 59
    :goto_0
    return-void

    #@e
    .line 64
    :cond_0
    iget v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->mNativeType:I

    #@10
    if-nez v1, :cond_3

    #@12
    .line 65
    if-ltz v0, :cond_1

    #@14
    const/16 v1, 0xff

    #@16
    if-le v0, v1, :cond_2

    #@18
    .line 66
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@1a
    .line 67
    const-string/jumbo v2, "Enum value %x too large to fit into unsigned byte"

    #@1d
    .line 66
    new-array v3, v3, [Ljava/lang/Object;

    #@1f
    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v4

    #@23
    aput-object v4, v3, v5

    #@25
    .line 66
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 69
    :cond_2
    int-to-byte v1, v0

    #@2e
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@31
    goto :goto_0

    #@32
    .line 71
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    #@34
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@37
    throw v1
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 59
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>.MarshalerEnum;"
    check-cast p1, Ljava/lang/Enum;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->marshal(Ljava/lang/Enum;Ljava/nio/ByteBuffer;)V

    #@5
    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Enum;
    .locals 3
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
    .line 79
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>.MarshalerEnum;"
    iget v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->mNativeType:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 88
    new-instance v1, Ljava/lang/AssertionError;

    #@7
    .line 89
    const-string/jumbo v2, "Unexpected native type; impossible since its not supported"

    #@a
    .line 88
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@d
    throw v1

    #@e
    .line 81
    :pswitch_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@11
    move-result v0

    #@12
    .line 92
    .local v0, "enumValue":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->mClass:Ljava/lang/Class;

    #@14
    invoke-static {v1, v0}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->-wrap1(Ljava/lang/Class;I)Ljava/lang/Enum;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 85
    .end local v0    # "enumValue":I
    :pswitch_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@1c
    move-result v1

    #@1d
    and-int/lit16 v0, v1, 0xff

    #@1f
    .line 86
    .restart local v0    # "enumValue":I
    goto :goto_0

    #@20
    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 76
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>.MarshalerEnum;"
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Enum;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
