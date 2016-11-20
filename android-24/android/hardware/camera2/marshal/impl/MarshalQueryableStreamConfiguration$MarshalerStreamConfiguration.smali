.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration$MarshalerStreamConfiguration;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableStreamConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerStreamConfiguration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Landroid/hardware/camera2/params/StreamConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 39
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration$MarshalerStreamConfiguration;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;

    #@2
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    #@5
    .line 40
    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 1

    #@0
    .prologue
    .line 64
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method public marshal(Landroid/hardware/camera2/params/StreamConfiguration;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "value"    # Landroid/hardware/camera2/params/StreamConfiguration;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@7
    .line 47
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfiguration;->getWidth()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@e
    .line 48
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfiguration;->getHeight()I

    #@11
    move-result v0

    #@12
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@15
    .line 49
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfiguration;->isInput()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_0

    #@1b
    const/4 v0, 0x1

    #@1c
    :goto_0
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@1f
    .line 45
    return-void

    #@20
    .line 49
    :cond_0
    const/4 v0, 0x0

    #@21
    goto :goto_0
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 45
    check-cast p1, Landroid/hardware/camera2/params/StreamConfiguration;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration$MarshalerStreamConfiguration;->marshal(Landroid/hardware/camera2/params/StreamConfiguration;Ljava/nio/ByteBuffer;)V

    #@5
    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/StreamConfiguration;
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 54
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@3
    move-result v0

    #@4
    .line 55
    .local v0, "format":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@7
    move-result v3

    #@8
    .line 56
    .local v3, "width":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@b
    move-result v1

    #@c
    .line 57
    .local v1, "height":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    const/4 v2, 0x1

    #@13
    .line 59
    .local v2, "input":Z
    :goto_0
    new-instance v4, Landroid/hardware/camera2/params/StreamConfiguration;

    #@15
    invoke-direct {v4, v0, v3, v1, v2}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    #@18
    return-object v4

    #@19
    .line 57
    .end local v2    # "input":Z
    :cond_0
    const/4 v2, 0x0

    #@1a
    .restart local v2    # "input":Z
    goto :goto_0
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 53
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration$MarshalerStreamConfiguration;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/StreamConfiguration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
