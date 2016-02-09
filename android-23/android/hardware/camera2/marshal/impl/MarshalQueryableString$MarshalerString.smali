.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableString$MarshalerString;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerString"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 41
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString$MarshalerString;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;

    #@2
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    #@5
    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic calculateMarshalSize(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 54
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString$MarshalerString;->calculateMarshalSize(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public calculateMarshalSize(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 55
    invoke-static {}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;->-get0()Ljava/nio/charset/Charset;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@7
    move-result-object v0

    #@8
    .line 57
    .local v0, "arr":[B
    array-length v1, v0

    #@9
    add-int/lit8 v1, v1, 0x1

    #@b
    return v1
.end method

.method public getNativeSize()I
    .locals 1

    #@0
    .prologue
    .line 96
    sget v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString$MarshalerString;->NATIVE_SIZE_DYNAMIC:I

    #@2
    return v0
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 46
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString$MarshalerString;->marshal(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    #@5
    return-void
.end method

.method public marshal(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 47
    invoke-static {}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;->-get0()Ljava/nio/charset/Charset;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@7
    move-result-object v0

    #@8
    .line 49
    .local v0, "arr":[B
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@b
    .line 50
    const/4 v1, 0x0

    #@c
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@f
    .line 46
    return-void
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString$MarshalerString;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 62
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    #@4
    .line 64
    const/4 v0, 0x0

    #@5
    .line 65
    .local v0, "foundNull":Z
    const/4 v2, 0x0

    #@6
    .line 66
    .local v2, "stringLength":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_1

    #@12
    .line 68
    const/4 v0, 0x1

    #@13
    .line 81
    :cond_0
    if-nez v0, :cond_2

    #@15
    .line 82
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@17
    const-string/jumbo v4, "Strings must be null-terminated"

    #@1a
    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v3

    #@1e
    .line 72
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 85
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    #@24
    .line 87
    add-int/lit8 v3, v2, 0x1

    #@26
    new-array v1, v3, [B

    #@28
    .line 88
    .local v1, "strBytes":[B
    add-int/lit8 v3, v2, 0x1

    #@2a
    invoke-virtual {p1, v1, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@2d
    .line 91
    new-instance v3, Ljava/lang/String;

    #@2f
    invoke-static {}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;->-get0()Ljava/nio/charset/Charset;

    #@32
    move-result-object v4

    #@33
    invoke-direct {v3, v1, v5, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@36
    return-object v3
.end method
