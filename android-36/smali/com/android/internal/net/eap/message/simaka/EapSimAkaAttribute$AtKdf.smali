.class public Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdf;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtKdf"
.end annotation


# static fields
.field private static final blacklist ATTR_LENGTH:I = 0x4


# instance fields
.field public final blacklist kdf:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "kdf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 1165
    const/16 v0, 0x18

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 1167
    iput p1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdf;->kdf:I

    .line 1168
    return-void
.end method

.method public constructor blacklist <init>(ILjava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "lengthInBytes"    # I
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 1154
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 1156
    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    .line 1160
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdf;->kdf:I

    .line 1161
    return-void

    .line 1157
    :cond_13
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v1, "AtKdf length must be 4B"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist encode(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 1172
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdf;->encodeAttributeHeader(Ljava/nio/ByteBuffer;)V

    .line 1174
    iget v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdf;->kdf:I

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1175
    return-void
.end method
