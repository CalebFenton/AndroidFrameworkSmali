.class public final Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$UnrecognizedTransform;
.super Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
.source "IkeSaPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "UnrecognizedTransform"
.end annotation


# direct methods
.method protected constructor blacklist <init>(IILjava/util/List;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;",
            ">;)V"
        }
    .end annotation

    .line 1734
    .local p3, "attributeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;-><init>(IILjava/util/List;)V

    .line 1735
    return-void
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(ZLjava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "isLast"    # Z
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 1749
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It is not supported to encode a Transform with"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1750
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$UnrecognizedTransform;->getTransformTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist getTransformLength()I
    .registers 4

    .line 1755
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It is not supported to get length of a Transform with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1757
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$UnrecognizedTransform;->getTransformTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getTransformTypeString()Ljava/lang/String;
    .registers 2

    .line 1767
    const-string v0, "Unrecognized Transform Type."

    return-object v0
.end method

.method protected blacklist hasUnrecognizedAttribute(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;",
            ">;)Z"
        }
    .end annotation

    .line 1744
    .local p1, "attributeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected blacklist isSupportedTransformId(I)Z
    .registers 3
    .param p1, "id"    # I

    .line 1739
    const/4 v0, 0x0

    return v0
.end method
