.class public final Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;
.super Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
.source "IkeSaPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DhGroupTransform"
.end annotation


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1577
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;-><init>(II)V

    .line 1578
    return-void
.end method

.method protected constructor blacklist <init>(ILjava/util/List;)V
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 1589
    .local p2, "attributeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;-><init>(IILjava/util/List;)V

    .line 1590
    return-void
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(ZLjava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "isLast"    # Z
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 1617
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;->encodeBasicTransformToByteBuffer(ZLjava/nio/ByteBuffer;)V

    .line 1618
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1599
    instance-of v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1601
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    .line 1602
    .local v0, "other":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;
    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;->type:I

    iget v3, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;->type:I

    if-ne v2, v3, :cond_16

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;->id:I

    iget v3, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;->id:I

    if-ne v2, v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method protected blacklist getTransformLength()I
    .registers 2

    .line 1622
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransformTypeString()Ljava/lang/String;
    .registers 2

    .line 1627
    const-string v0, "Diffie-Hellman Group"

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

    .line 1612
    .local p1, "attributeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1594
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected blacklist isSupportedTransformId(I)Z
    .registers 4
    .param p1, "id"    # I

    .line 1607
    invoke-static {}, Landroid/net/ipsec/ike/SaProposal;->getSupportedDhGroups()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1633
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;->isSupported:Z

    if-eqz v0, :cond_b

    .line 1634
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;->id:I

    invoke-static {v0}, Landroid/net/ipsec/ike/SaProposal;->getDhGroupString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1636
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DH("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
