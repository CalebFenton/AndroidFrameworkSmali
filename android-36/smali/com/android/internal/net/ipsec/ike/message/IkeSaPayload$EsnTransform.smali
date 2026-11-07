.class public final Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;
.super Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
.source "IkeSaPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EsnTransform"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform$EsnPolicy;
    }
.end annotation


# static fields
.field public static final blacklist ESN_POLICY_EXTENDED:I = 0x1

.field public static final blacklist ESN_POLICY_NO_EXTENDED:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 1664
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;-><init>(II)V

    .line 1665
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

    .line 1676
    .local p2, "attributeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;>;"
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;-><init>(IILjava/util/List;)V

    .line 1677
    return-void
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(ZLjava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "isLast"    # Z
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 1704
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;->encodeBasicTransformToByteBuffer(ZLjava/nio/ByteBuffer;)V

    .line 1705
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1686
    instance-of v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1688
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    .line 1689
    .local v0, "other":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;
    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;->type:I

    iget v3, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;->type:I

    if-ne v2, v3, :cond_16

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;->id:I

    iget v3, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;->id:I

    if-ne v2, v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method protected blacklist getTransformLength()I
    .registers 2

    .line 1709
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransformTypeString()Ljava/lang/String;
    .registers 2

    .line 1714
    const-string v0, "Extended Sequence Numbers"

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

    .line 1699
    .local p1, "attributeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1681
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected blacklist isSupportedTransformId(I)Z
    .registers 3
    .param p1, "id"    # I

    .line 1694
    const/4 v0, 0x1

    if-eqz p1, :cond_7

    if-ne p1, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_7
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1720
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;->id:I

    if-nez v0, :cond_7

    .line 1721
    const-string v0, "ESN_No_Extended"

    return-object v0

    .line 1723
    :cond_7
    const-string v0, "ESN_Extended"

    return-object v0
.end method
