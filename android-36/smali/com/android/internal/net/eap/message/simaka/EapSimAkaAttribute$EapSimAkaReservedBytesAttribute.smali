.class public abstract Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "EapSimAkaReservedBytesAttribute"
.end annotation


# static fields
.field protected static final blacklist RESERVED_BYTES_LEN:I = 0x2


# instance fields
.field public final blacklist reservedBytes:[B


# direct methods
.method protected constructor blacklist <init>(II)V
    .registers 4
    .param p1, "attributeType"    # I
    .param p2, "lengthInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;->reservedBytes:[B

    .line 181
    return-void
.end method

.method protected constructor blacklist <init>(IILjava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "attributeType"    # I
    .param p2, "lengthInBytes"    # I
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;->reservedBytes:[B

    .line 172
    :try_start_8
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;->reservedBytes:[B

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_d
    .catch Ljava/nio/BufferUnderflowException; {:try_start_8 .. :try_end_d} :catch_f

    .line 175
    nop

    .line 176
    return-void

    .line 173
    :catch_f
    move-exception v0

    .line 174
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    new-instance v1, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v2, "Invalid attribute length"

    invoke-direct {v1, v2, v0}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor blacklist <init>(II[B)V
    .registers 7
    .param p1, "attributeType"    # I
    .param p2, "lengthInBytes"    # I
    .param p3, "reservedBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;-><init>(II)V

    .line 188
    array-length v0, p3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 191
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;->reservedBytes:[B

    const/4 v2, 0x0

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    return-void

    .line 189
    :cond_e
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v1, "Invalid attribute length"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist encode(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;->encodeAttributeHeader(Ljava/nio/ByteBuffer;)V

    .line 203
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;->reservedBytes:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 204
    return-void
.end method
