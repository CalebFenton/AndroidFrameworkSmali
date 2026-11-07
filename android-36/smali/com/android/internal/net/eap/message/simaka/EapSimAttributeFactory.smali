.class public Lcom/android/internal/net/eap/message/simaka/EapSimAttributeFactory;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttributeFactory;
.source "EapSimAttributeFactory.java"


# static fields
.field private static blacklist sInstance:Lcom/android/internal/net/eap/message/simaka/EapSimAttributeFactory;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAttributeFactory;

    invoke-direct {v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAttributeFactory;-><init>()V

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAttributeFactory;->sInstance:Lcom/android/internal/net/eap/message/simaka/EapSimAttributeFactory;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttributeFactory;-><init>()V

    .line 46
    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/net/eap/message/simaka/EapSimAttributeFactory;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAttributeFactory;->sInstance:Lcom/android/internal/net/eap/message/simaka/EapSimAttributeFactory;

    return-object v0
.end method


# virtual methods
.method public blacklist getAttribute(Ljava/nio/ByteBuffer;)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    .registers 6
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;,
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaUnsupportedAttributeException;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    .line 70
    .local v0, "attributeType":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 72
    .local v1, "lengthInBytes":I
    sparse-switch v0, :sswitch_data_3a

    .line 84
    invoke-super {p0, v0, v1, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttributeFactory;->getAttribute(IILjava/nio/ByteBuffer;)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;

    move-result-object v2

    return-object v2

    .line 77
    :sswitch_1a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v2

    .line 78
    .local v2, "selectedVersion":I
    new-instance v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtSelectedVersion;

    invoke-direct {v3, v1, v2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtSelectedVersion;-><init>(II)V

    return-object v3

    .line 75
    .end local v2    # "selectedVersion":I
    :sswitch_28
    new-instance v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtVersionList;

    invoke-direct {v2, v1, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtVersionList;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v2

    .line 80
    :sswitch_2e
    new-instance v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;

    invoke-direct {v2, v1, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v2

    .line 82
    :sswitch_34
    new-instance v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandSim;

    invoke-direct {v2, v1, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandSim;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v2

    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_34
        0x7 -> :sswitch_2e
        0xf -> :sswitch_28
        0x10 -> :sswitch_1a
    .end sparse-switch
.end method
