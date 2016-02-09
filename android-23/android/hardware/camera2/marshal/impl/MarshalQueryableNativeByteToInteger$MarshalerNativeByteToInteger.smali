.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger$MarshalerNativeByteToInteger;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableNativeByteToInteger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerNativeByteToInteger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger;
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 35
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger$MarshalerNativeByteToInteger;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger;

    #@2
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    #@5
    .line 36
    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 1

    #@0
    .prologue
    .line 53
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public marshal(Ljava/lang/Integer;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@3
    move-result v0

    #@4
    int-to-byte v0, v0

    #@5
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@8
    .line 41
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 41
    check-cast p1, Ljava/lang/Integer;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger$MarshalerNativeByteToInteger;->marshal(Ljava/lang/Integer;Ljava/nio/ByteBuffer;)V

    #@5
    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Integer;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 48
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@3
    move-result v0

    #@4
    and-int/lit16 v0, v0, 0xff

    #@6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 46
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger$MarshalerNativeByteToInteger;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
