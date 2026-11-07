.class public abstract Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttributeFactory;
.super Ljava/lang/Object;
.source "EapSimAkaAttributeFactory.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist getAttribute(IILjava/nio/ByteBuffer;)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    .registers 7
    .param p1, "attributeType"    # I
    .param p2, "lengthInBytes"    # I
    .param p3, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;,
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaUnsupportedAttributeException;
        }
    .end annotation

    .line 85
    sparse-switch p1, :sswitch_data_82

    .line 118
    const/16 v0, 0x80

    if-lt p1, v0, :cond_69

    .line 119
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaUnsupportedAttribute;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaUnsupportedAttribute;-><init>(IILjava/nio/ByteBuffer;)V

    return-object v0

    .line 115
    :sswitch_d
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0

    .line 113
    :sswitch_13
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtEncrData;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtEncrData;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0

    .line 111
    :sswitch_19
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0

    .line 108
    :sswitch_1f
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    .line 109
    .local v0, "errorCode":I
    new-instance v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-direct {v1, p2, v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;-><init>(II)V

    return-object v1

    .line 104
    .end local v0    # "errorCode":I
    :sswitch_2d
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceS;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceS;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0

    .line 102
    :sswitch_33
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtCounterTooSmall;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtCounterTooSmall;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0

    .line 100
    :sswitch_39
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtCounter;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtCounter;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0

    .line 92
    :sswitch_3f
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtFullauthIdReq;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtFullauthIdReq;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0

    .line 94
    :sswitch_45
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0

    .line 90
    :sswitch_4b
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAnyIdReq;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAnyIdReq;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0

    .line 106
    :sswitch_51
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0

    .line 98
    :sswitch_57
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0

    .line 88
    :sswitch_5d
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtPermanentIdReq;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtPermanentIdReq;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0

    .line 96
    :sswitch_63
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtPadding;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtPadding;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0

    .line 123
    :cond_69
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaUnsupportedAttributeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected EAP Attribute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaUnsupportedAttributeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_82
    .sparse-switch
        0x6 -> :sswitch_63
        0xa -> :sswitch_5d
        0xb -> :sswitch_57
        0xc -> :sswitch_51
        0xd -> :sswitch_4b
        0xe -> :sswitch_45
        0x11 -> :sswitch_3f
        0x13 -> :sswitch_39
        0x14 -> :sswitch_33
        0x15 -> :sswitch_2d
        0x16 -> :sswitch_1f
        0x81 -> :sswitch_19
        0x82 -> :sswitch_13
        0x85 -> :sswitch_d
    .end sparse-switch
.end method

.method public blacklist getAttribute(Ljava/nio/ByteBuffer;)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    .registers 5
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;,
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaUnsupportedAttributeException;
        }
    .end annotation

    .line 137
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    .line 140
    .local v0, "attributeType":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 141
    .local v1, "lengthInBytes":I
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttributeFactory;->getAttribute(IILjava/nio/ByteBuffer;)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;

    move-result-object v2

    return-object v2
.end method
