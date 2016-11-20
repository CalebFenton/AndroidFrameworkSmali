.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration$MarshalerStreamConfigurationDuration;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableStreamConfigurationDuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerStreamConfigurationDuration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration;
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 48
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration$MarshalerStreamConfigurationDuration;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration;

    #@2
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    #@5
    .line 49
    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 1

    #@0
    .prologue
    .line 73
    const/16 v0, 0x20

    #@2
    return v0
.end method

.method public marshal(Landroid/hardware/camera2/params/StreamConfigurationDuration;Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "value"    # Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    const-wide v2, 0xffffffffL

    #@a
    and-long/2addr v0, v2

    #@b
    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    #@e
    .line 56
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    #@11
    move-result v0

    #@12
    int-to-long v0, v0

    #@13
    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    #@16
    .line 57
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    #@19
    move-result v0

    #@1a
    int-to-long v0, v0

    #@1b
    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    #@1e
    .line 58
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    #@21
    move-result-wide v0

    #@22
    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    #@25
    .line 54
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 54
    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration$MarshalerStreamConfigurationDuration;->marshal(Landroid/hardware/camera2/params/StreamConfigurationDuration;Ljava/nio/ByteBuffer;)V

    #@5
    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .locals 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 63
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    #@3
    move-result-wide v6

    #@4
    long-to-int v1, v6

    #@5
    .line 64
    .local v1, "format":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    #@8
    move-result-wide v6

    #@9
    long-to-int v2, v6

    #@a
    .line 65
    .local v2, "width":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    #@d
    move-result-wide v6

    #@e
    long-to-int v3, v6

    #@f
    .line 66
    .local v3, "height":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    #@12
    move-result-wide v4

    #@13
    .line 68
    .local v4, "durationNs":J
    new-instance v0, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@15
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/StreamConfigurationDuration;-><init>(IIIJ)V

    #@18
    return-object v0
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration$MarshalerStreamConfigurationDuration;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
