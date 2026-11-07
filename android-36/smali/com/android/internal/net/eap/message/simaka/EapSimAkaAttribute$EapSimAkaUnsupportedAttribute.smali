.class public Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaUnsupportedAttribute;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EapSimAkaUnsupportedAttribute"
.end annotation


# static fields
.field private static final blacklist HEADER_BYTES:I = 0x2


# instance fields
.field public final blacklist data:[B


# direct methods
.method public constructor blacklist <init>(IILjava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "attributeType"    # I
    .param p2, "lengthInBytes"    # I
    .param p3, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 238
    add-int/lit8 v0, p2, -0x2

    .line 239
    .local v0, "remainingBytes":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaUnsupportedAttribute;->data:[B

    .line 240
    iget-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaUnsupportedAttribute;->data:[B

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 241
    return-void
.end method

.method public constructor blacklist <init>(II[B)V
    .registers 4
    .param p1, "attributeType"    # I
    .param p2, "lengthInBytes"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 246
    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 247
    iput-object p3, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaUnsupportedAttribute;->data:[B

    .line 248
    return-void
.end method


# virtual methods
.method public blacklist encode(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaUnsupportedAttribute;->encodeAttributeHeader(Ljava/nio/ByteBuffer;)V

    .line 253
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaUnsupportedAttribute;->data:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 254
    return-void
.end method
