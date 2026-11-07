.class Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform$AttributeDecoderImpl;
.super Ljava/lang/Object;
.source "IkeSaPayload.java"

# interfaces
.implements Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$AttributeDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttributeDecoderImpl"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform$AttributeDecoderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist decodeAttributes(ILjava/nio/ByteBuffer;)Ljava/util/List;
    .registers 7
    .param p1, "length"    # I
    .param p2, "inputBuffer"    # Ljava/nio/ByteBuffer;
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

    .line 1114
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1115
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;>;"
    const/16 v1, 0x8

    .line 1116
    .local v1, "parsedLength":I
    :goto_7
    if-ge v1, p1, :cond_1e

    .line 1117
    invoke-static {p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;->readFrom(Ljava/nio/ByteBuffer;)Landroid/util/Pair;

    move-result-object v2

    .line 1118
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;Ljava/lang/Integer;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v1, v3

    .line 1119
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1120
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;Ljava/lang/Integer;>;"
    goto :goto_7

    .line 1122
    :cond_1e
    return-object v0
.end method
