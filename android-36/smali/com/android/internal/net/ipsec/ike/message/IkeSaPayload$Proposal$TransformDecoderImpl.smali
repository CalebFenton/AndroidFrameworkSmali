.class Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal$TransformDecoderImpl;
.super Ljava/lang/Object;
.source "IkeSaPayload.java"

# interfaces
.implements Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$TransformDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformDecoderImpl"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal$TransformDecoderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist decodeTransforms(ILjava/nio/ByteBuffer;)[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    .registers 6
    .param p1, "count"    # I
    .param p2, "inputBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 738
    new-array v0, p1, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;

    .line 739
    .local v0, "transformArray":[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p1, :cond_e

    .line 740
    invoke-static {p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->readFrom(Ljava/nio/ByteBuffer;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;

    move-result-object v2

    .line 741
    .local v2, "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    aput-object v2, v0, v1

    .line 739
    .end local v2    # "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 743
    .end local v1    # "i":I
    :cond_e
    return-object v0
.end method
