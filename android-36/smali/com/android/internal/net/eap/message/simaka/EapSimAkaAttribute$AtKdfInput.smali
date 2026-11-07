.class public Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtKdfInput"
.end annotation


# instance fields
.field public final blacklist networkName:[B


# direct methods
.method public constructor blacklist <init>(ILjava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "lengthInBytes"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 1115
    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 1117
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    .line 1118
    .local v0, "networkNameLength":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;->networkName:[B

    .line 1119
    iget-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;->networkName:[B

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1121
    add-int/lit8 v1, v0, 0x4

    .line 1122
    .local v1, "bytesUsed":I
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;->consumePadding(ILjava/nio/ByteBuffer;)V

    .line 1123
    return-void
.end method

.method public constructor blacklist <init>(I[B)V
    .registers 4
    .param p1, "lengthInbytes"    # I
    .param p2, "networkName"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 1128
    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 1130
    iput-object p2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;->networkName:[B

    .line 1131
    return-void
.end method


# virtual methods
.method public blacklist encode(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 1135
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;->encodeAttributeHeader(Ljava/nio/ByteBuffer;)V

    .line 1136
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;->networkName:[B

    array-length v0, v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1137
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;->networkName:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1139
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;->networkName:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    .line 1140
    .local v0, "bytesUsed":I
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;->addPadding(ILjava/nio/ByteBuffer;)V

    .line 1141
    return-void
.end method
