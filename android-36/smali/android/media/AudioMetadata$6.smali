.class Landroid/media/AudioMetadata$6;
.super Ljava/lang/Object;
.source "AudioMetadata.java"

# interfaces
.implements Landroid/media/AudioMetadata$DataPackage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/media/AudioMetadata$DataPackage<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 689
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioMetadata$6;->pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Ljava/lang/String;)Z
    .registers 5
    .param p1, "output"    # Landroid/media/AudioMetadata$AutoGrowByteBuffer;
    .param p2, "obj"    # Ljava/lang/String;

    .line 710
    invoke-static {}, Landroid/media/AudioMetadata;->-$$Nest$sfgetAUDIO_METADATA_CHARSET()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 711
    .local v0, "valueArr":[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->putInt(I)Landroid/media/AudioMetadata$AutoGrowByteBuffer;

    .line 712
    invoke-virtual {p1, v0}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->put([B)Landroid/media/AudioMetadata$AutoGrowByteBuffer;

    .line 713
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic blacklist unpack(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 689
    invoke-virtual {p0, p1}, Landroid/media/AudioMetadata$6;->unpack(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist unpack(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 693
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 694
    .local v0, "dataSize":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-le v1, v2, :cond_11

    .line 695
    const/4 v1, 0x0

    return-object v1

    .line 697
    :cond_11
    new-array v1, v0, [B

    .line 698
    .local v1, "valueArr":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 699
    new-instance v2, Ljava/lang/String;

    invoke-static {}, Landroid/media/AudioMetadata;->-$$Nest$sfgetAUDIO_METADATA_CHARSET()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 700
    .local v2, "value":Ljava/lang/String;
    return-object v2
.end method
