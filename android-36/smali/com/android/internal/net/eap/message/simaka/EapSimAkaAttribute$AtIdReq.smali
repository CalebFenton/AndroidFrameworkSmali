.class abstract Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdReq;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AtIdReq"
.end annotation


# static fields
.field private static final blacklist ATTR_LENGTH:I = 0x4


# direct methods
.method protected constructor blacklist <init>(I)V
    .registers 3
    .param p1, "attributeType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 410
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;-><init>(II)V

    .line 411
    return-void
.end method

.method protected constructor blacklist <init>(IILjava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "lengthInBytes"    # I
    .param p2, "attributeType"    # I
    .param p3, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 401
    const/4 v0, 0x4

    invoke-direct {p0, p2, v0, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;-><init>(IILjava/nio/ByteBuffer;)V

    .line 403
    if-ne p1, v0, :cond_7

    .line 406
    return-void

    .line 404
    :cond_7
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v1, "Invalid Length specified"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
