.class public final Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$KeyLengthAttribute;
.super Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;
.source "IkeSaPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyLengthAttribute"
.end annotation


# instance fields
.field public final blacklist keyLength:I


# direct methods
.method protected constructor blacklist <init>(I)V
    .registers 3
    .param p1, "keyLength"    # I

    .line 1864
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;-><init>(I)V

    .line 1865
    iput p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$KeyLengthAttribute;->keyLength:I

    .line 1866
    return-void
.end method

.method protected constructor blacklist <init>([B)V
    .registers 3
    .param p1, "value"    # [B

    .line 1860
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$KeyLengthAttribute;-><init>(I)V

    .line 1861
    return-void
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 1870
    nop

    .line 1871
    const/16 v0, -0x7ff2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$KeyLengthAttribute;->keyLength:I

    int-to-short v1, v1

    .line 1872
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1873
    return-void
.end method

.method protected blacklist getAttributeLength()I
    .registers 2

    .line 1877
    const/4 v0, 0x4

    return v0
.end method
