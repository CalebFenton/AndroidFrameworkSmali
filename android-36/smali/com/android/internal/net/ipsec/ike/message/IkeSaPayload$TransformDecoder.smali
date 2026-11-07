.class interface abstract Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$TransformDecoder;
.super Ljava/lang/Object;
.source "IkeSaPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TransformDecoder"
.end annotation


# virtual methods
.method public abstract blacklist decodeTransforms(ILjava/nio/ByteBuffer;)[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation
.end method
