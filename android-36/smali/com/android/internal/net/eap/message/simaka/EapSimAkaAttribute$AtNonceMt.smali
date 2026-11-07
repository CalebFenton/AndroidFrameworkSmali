.class public Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtNonceMt"
.end annotation


# static fields
.field private static final blacklist LENGTH:I = 0x14

.field public static final blacklist NONCE_MT_LENGTH:I = 0x10


# instance fields
.field public final blacklist nonceMt:[B


# direct methods
.method public constructor blacklist <init>(ILjava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "lengthInBytes"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 370
    const/4 v0, 0x7

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;-><init>(IILjava/nio/ByteBuffer;)V

    .line 366
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;->nonceMt:[B

    .line 371
    if-ne p1, v1, :cond_14

    .line 375
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;->nonceMt:[B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 376
    return-void

    .line 372
    :cond_14
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v1, "Invalid Length specified"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>([B)V
    .registers 5
    .param p1, "nonceMt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 380
    const/4 v0, 0x7

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;-><init>(II)V

    .line 366
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;->nonceMt:[B

    .line 382
    array-length v1, p1

    if-ne v1, v0, :cond_16

    .line 385
    iget-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;->nonceMt:[B

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    return-void

    .line 383
    :cond_16
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v1, "NonceMt length must be 16B"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist encode(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 390
    invoke-super {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;->encode(Ljava/nio/ByteBuffer;)V

    .line 392
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;->nonceMt:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 393
    return-void
.end method
