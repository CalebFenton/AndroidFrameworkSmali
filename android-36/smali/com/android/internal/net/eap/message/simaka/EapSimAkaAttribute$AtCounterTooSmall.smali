.class public Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtCounterTooSmall;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtCounterTooSmall"
.end annotation


# static fields
.field private static final blacklist ATTR_HEADER:I = 0x2

.field private static final blacklist ATTR_LENGTH:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 760
    const/16 v0, 0x14

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 761
    return-void
.end method

.method public constructor blacklist <init>(ILjava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "lengthInBytes"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 751
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 753
    const/4 v0, 0x4

    if-ne p1, v0, :cond_d

    .line 756
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtCounterTooSmall;->consumePadding(ILjava/nio/ByteBuffer;)V

    .line 757
    return-void

    .line 754
    :cond_d
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v1, "Invalid Length specified"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist encode(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 765
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtCounterTooSmall;->encodeAttributeHeader(Ljava/nio/ByteBuffer;)V

    .line 766
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtCounterTooSmall;->addPadding(ILjava/nio/ByteBuffer;)V

    .line 767
    return-void
.end method
