.class public Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeAttributeFactory;
.super Lcom/android/internal/net/eap/message/simaka/EapAkaAttributeFactory;
.source "EapAkaPrimeAttributeFactory.java"


# static fields
.field private static blacklist sInstance:Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeAttributeFactory;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeAttributeFactory;

    invoke-direct {v0}, Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeAttributeFactory;-><init>()V

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeAttributeFactory;->sInstance:Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeAttributeFactory;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/android/internal/net/eap/message/simaka/EapAkaAttributeFactory;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeAttributeFactory;
    .registers 1

    .line 44
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeAttributeFactory;->sInstance:Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeAttributeFactory;

    return-object v0
.end method


# virtual methods
.method public blacklist getAttribute(Ljava/nio/ByteBuffer;)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    .registers 5
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;,
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaUnsupportedAttributeException;
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    .line 66
    .local v0, "attributeType":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 68
    .local v1, "lengthInBytes":I
    packed-switch v0, :pswitch_data_26

    .line 74
    invoke-super {p0, v0, v1, p1}, Lcom/android/internal/net/eap/message/simaka/EapAkaAttributeFactory;->getAttribute(IILjava/nio/ByteBuffer;)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;

    move-result-object v2

    return-object v2

    .line 72
    :pswitch_1a
    new-instance v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdf;

    invoke-direct {v2, v1, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdf;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v2

    .line 70
    :pswitch_20
    new-instance v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;

    invoke-direct {v2, v1, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v2

    :pswitch_data_26
    .packed-switch 0x17
        :pswitch_20
        :pswitch_1a
    .end packed-switch
.end method
