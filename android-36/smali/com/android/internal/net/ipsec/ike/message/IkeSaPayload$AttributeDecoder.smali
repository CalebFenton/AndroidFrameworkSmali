.class interface abstract Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$AttributeDecoder;
.super Ljava/lang/Object;
.source "IkeSaPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AttributeDecoder"
.end annotation


# virtual methods
.method public abstract blacklist decodeAttributes(ILjava/nio/ByteBuffer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation
.end method
