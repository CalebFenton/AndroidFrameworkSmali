.class public Lcom/android/internal/net/eap/message/simaka/EapAkaAttributeFactory;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttributeFactory;
.source "EapAkaAttributeFactory.java"


# static fields
.field private static blacklist sInstance:Lcom/android/internal/net/eap/message/simaka/EapAkaAttributeFactory;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapAkaAttributeFactory;

    invoke-direct {v0}, Lcom/android/internal/net/eap/message/simaka/EapAkaAttributeFactory;-><init>()V

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaAttributeFactory;->sInstance:Lcom/android/internal/net/eap/message/simaka/EapAkaAttributeFactory;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttributeFactory;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/net/eap/message/simaka/EapAkaAttributeFactory;
    .registers 1

    .line 50
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaAttributeFactory;->sInstance:Lcom/android/internal/net/eap/message/simaka/EapAkaAttributeFactory;

    return-object v0
.end method


# virtual methods
.method protected blacklist getAttribute(IILjava/nio/ByteBuffer;)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    .registers 5
    .param p1, "attributeType"    # I
    .param p2, "lengthInBytes"    # I
    .param p3, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;,
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaUnsupportedAttributeException;
        }
    .end annotation

    .line 80
    sparse-switch p1, :sswitch_data_26

    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttributeFactory;->getAttribute(IILjava/nio/ByteBuffer;)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;

    move-result-object v0

    return-object v0

    .line 90
    :sswitch_8
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtBidding;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtBidding;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0

    .line 88
    :sswitch_e
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAuts;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAuts;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0

    .line 86
    :sswitch_14
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRes;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRes;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0

    .line 84
    :sswitch_1a
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAutn;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAutn;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0

    .line 82
    :sswitch_20
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandAka;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandAka;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0

    :sswitch_data_26
    .sparse-switch
        0x1 -> :sswitch_20
        0x2 -> :sswitch_1a
        0x3 -> :sswitch_14
        0x4 -> :sswitch_e
        0x88 -> :sswitch_8
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

    .line 68
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    .line 71
    .local v0, "attributeType":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 73
    .local v1, "lengthInBytes":I
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/net/eap/message/simaka/EapAkaAttributeFactory;->getAttribute(IILjava/nio/ByteBuffer;)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;

    move-result-object v2

    return-object v2
.end method
