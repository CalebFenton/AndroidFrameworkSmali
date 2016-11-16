.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean$MarshalerBoolean;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableBoolean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerBoolean"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 33
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean$MarshalerBoolean;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;

    #@2
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    #@5
    .line 33
    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 1

    #@0
    .prologue
    .line 50
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public marshal(Ljava/lang/Boolean;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Boolean;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 39
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@3
    move-result v0

    #@4
    .line 40
    .local v0, "unboxValue":Z
    if-eqz v0, :cond_0

    #@6
    const/4 v1, 0x1

    #@7
    :goto_0
    int-to-byte v1, v1

    #@8
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@b
    .line 38
    return-void

    #@c
    .line 40
    :cond_0
    const/4 v1, 0x0

    #@d
    goto :goto_0
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 38
    check-cast p1, Ljava/lang/Boolean;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean$MarshalerBoolean;->marshal(Ljava/lang/Boolean;Ljava/nio/ByteBuffer;)V

    #@5
    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 44
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean$MarshalerBoolean;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
