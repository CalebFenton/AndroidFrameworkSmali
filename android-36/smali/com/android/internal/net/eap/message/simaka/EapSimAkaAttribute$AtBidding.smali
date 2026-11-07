.class public Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtBidding;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtBidding"
.end annotation


# static fields
.field private static final blacklist ATTR_LENGTH:I = 0x4

.field private static final blacklist SUPPORTS_EAP_AKA_PRIME_MASK:I = 0x8000


# instance fields
.field public final blacklist doesServerSupportEapAkaPrime:Z


# direct methods
.method public constructor blacklist <init>(ILjava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "lengthInBytes"    # I
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 1189
    const/16 v0, 0x88

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 1191
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1c

    .line 1195
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    .line 1196
    .local v0, "serverFlag":I
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    iput-boolean v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtBidding;->doesServerSupportEapAkaPrime:Z

    .line 1197
    return-void

    .line 1192
    .end local v0    # "serverFlag":I
    :cond_1c
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v1, "AtBidding length must be 4B"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Z)V
    .registers 4
    .param p1, "doesServerSupportEapAkaPrime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 1202
    const/16 v0, 0x88

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 1204
    iput-boolean p1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtBidding;->doesServerSupportEapAkaPrime:Z

    .line 1205
    return-void
.end method


# virtual methods
.method public blacklist encode(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 1209
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtBidding;->encodeAttributeHeader(Ljava/nio/ByteBuffer;)V

    .line 1211
    iget-boolean v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtBidding;->doesServerSupportEapAkaPrime:Z

    if-eqz v0, :cond_b

    const v0, 0x8000

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1212
    .local v0, "flagToWrite":I
    :goto_c
    int-to-short v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1213
    return-void
.end method
