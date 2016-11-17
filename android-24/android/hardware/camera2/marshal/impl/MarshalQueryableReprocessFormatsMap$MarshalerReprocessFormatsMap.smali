.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap$MarshalerReprocessFormatsMap;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableReprocessFormatsMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerReprocessFormatsMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Landroid/hardware/camera2/params/ReprocessFormatsMap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/hardware/camera2/params/ReprocessFormatsMap;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 38
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/hardware/camera2/params/ReprocessFormatsMap;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap$MarshalerReprocessFormatsMap;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;

    #@2
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    #@5
    .line 39
    return-void
.end method


# virtual methods
.method public calculateMarshalSize(Landroid/hardware/camera2/params/ReprocessFormatsMap;)I
    .locals 7
    .param p1, "value"    # Landroid/hardware/camera2/params/ReprocessFormatsMap;

    #@0
    .prologue
    .line 104
    const/4 v2, 0x0

    #@1
    .line 106
    .local v2, "length":I
    invoke-virtual {p1}, Landroid/hardware/camera2/params/ReprocessFormatsMap;->getInputs()[I

    #@4
    move-result-object v1

    #@5
    .line 107
    .local v1, "inputs":[I
    const/4 v4, 0x0

    #@6
    array-length v5, v1

    #@7
    :goto_0
    if-ge v4, v5, :cond_0

    #@9
    aget v0, v1, v4

    #@b
    .line 109
    .local v0, "input":I
    add-int/lit8 v2, v2, 0x1

    #@d
    .line 110
    add-int/lit8 v2, v2, 0x1

    #@f
    .line 112
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/ReprocessFormatsMap;->getOutputs(I)[I

    #@12
    move-result-object v3

    #@13
    .line 113
    .local v3, "outputs":[I
    array-length v6, v3

    #@14
    add-int/2addr v2, v6

    #@15
    .line 107
    add-int/lit8 v4, v4, 0x1

    #@17
    goto :goto_0

    #@18
    .line 116
    .end local v0    # "input":I
    .end local v3    # "outputs":[I
    :cond_0
    mul-int/lit8 v4, v2, 0x4

    #@1a
    return v4
.end method

.method public bridge synthetic calculateMarshalSize(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 94
    check-cast p1, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap$MarshalerReprocessFormatsMap;->calculateMarshalSize(Landroid/hardware/camera2/params/ReprocessFormatsMap;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNativeSize()I
    .locals 1

    #@0
    .prologue
    .line 90
    sget v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap$MarshalerReprocessFormatsMap;->NATIVE_SIZE_DYNAMIC:I

    #@2
    return v0
.end method

.method public marshal(Landroid/hardware/camera2/params/ReprocessFormatsMap;Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "value"    # Landroid/hardware/camera2/params/ReprocessFormatsMap;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 54
    invoke-virtual {p1}, Landroid/hardware/camera2/params/ReprocessFormatsMap;->getInputs()[I

    #@4
    move-result-object v4

    #@5
    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal([I)[I

    #@8
    move-result-object v1

    #@9
    .line 55
    .local v1, "inputs":[I
    array-length v7, v1

    #@a
    move v6, v5

    #@b
    :goto_0
    if-ge v6, v7, :cond_1

    #@d
    aget v0, v1, v6

    #@f
    .line 57
    .local v0, "input":I
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@12
    .line 60
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/ReprocessFormatsMap;->getOutputs(I)[I

    #@15
    move-result-object v4

    #@16
    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal([I)[I

    #@19
    move-result-object v3

    #@1a
    .line 62
    .local v3, "outputs":[I
    array-length v4, v3

    #@1b
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@1e
    .line 65
    array-length v8, v3

    #@1f
    move v4, v5

    #@20
    :goto_1
    if-ge v4, v8, :cond_0

    #@22
    aget v2, v3, v4

    #@24
    .line 66
    .local v2, "output":I
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@27
    .line 65
    add-int/lit8 v4, v4, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 55
    .end local v2    # "output":I
    :cond_0
    add-int/lit8 v4, v6, 0x1

    #@2c
    move v6, v4

    #@2d
    goto :goto_0

    #@2e
    .line 44
    .end local v0    # "input":I
    .end local v3    # "outputs":[I
    :cond_1
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 44
    check-cast p1, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap$MarshalerReprocessFormatsMap;->marshal(Landroid/hardware/camera2/params/ReprocessFormatsMap;Ljava/nio/ByteBuffer;)V

    #@5
    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/ReprocessFormatsMap;
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@3
    move-result v3

    #@4
    div-int/lit8 v2, v3, 0x4

    #@6
    .line 74
    .local v2, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@9
    move-result v3

    #@a
    rem-int/lit8 v3, v3, 0x4

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 75
    new-instance v3, Ljava/lang/AssertionError;

    #@10
    const-string/jumbo v4, "ReprocessFormatsMap was not TYPE_INT32"

    #@13
    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@16
    throw v3

    #@17
    .line 78
    :cond_0
    new-array v0, v2, [I

    #@19
    .line 80
    .local v0, "entries":[I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    #@1c
    move-result-object v1

    #@1d
    .line 81
    .local v1, "intBuffer":Ljava/nio/IntBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    #@20
    .line 85
    new-instance v3, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    #@22
    invoke-direct {v3, v0}, Landroid/hardware/camera2/params/ReprocessFormatsMap;-><init>([I)V

    #@25
    return-object v3
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 72
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap$MarshalerReprocessFormatsMap;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/ReprocessFormatsMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
