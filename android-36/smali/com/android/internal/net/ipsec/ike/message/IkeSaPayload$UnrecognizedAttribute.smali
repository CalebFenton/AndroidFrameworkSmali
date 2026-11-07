.class public final Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$UnrecognizedAttribute;
.super Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;
.source "IkeSaPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "UnrecognizedAttribute"
.end annotation


# direct methods
.method protected constructor blacklist <init>(I[B)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "value"    # [B

    .line 1888
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;-><init>(I)V

    .line 1889
    return-void
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 1893
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "It is not supported to encode an unrecognized Attribute."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist getAttributeLength()I
    .registers 3

    .line 1899
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "It is not supported to get length of an unrecognized Attribute."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
