.class public Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtPadding;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtPadding"
.end annotation


# static fields
.field private static final blacklist ATTR_HEADER:I = 0x2


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "lengthInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 637
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 638
    return-void
.end method

.method public constructor blacklist <init>(ILjava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "lengthInBytes"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 624
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 626
    add-int/lit8 v0, p1, -0x2

    .line 627
    .local v0, "remainingBytes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1a

    .line 629
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-nez v2, :cond_12

    .line 627
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 630
    :cond_12
    new-instance v2, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAtPaddingException;

    const-string v3, "Padding bytes must all be 0x00"

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAtPaddingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 633
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method


# virtual methods
.method public blacklist encode(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 642
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtPadding;->encodeAttributeHeader(Ljava/nio/ByteBuffer;)V

    .line 644
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtPadding;->addPadding(ILjava/nio/ByteBuffer;)V

    .line 645
    return-void
.end method
