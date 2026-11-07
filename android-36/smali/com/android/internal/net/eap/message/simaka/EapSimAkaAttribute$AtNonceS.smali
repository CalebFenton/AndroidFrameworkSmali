.class public Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceS;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtNonceS"
.end annotation


# static fields
.field private static final blacklist ATTR_LENGTH:I = 0x14

.field private static final blacklist NONCE_S_LENGTH:I = 0x10


# instance fields
.field public final blacklist nonceS:[B


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

    .line 783
    const/16 v0, 0x15

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;-><init>(IILjava/nio/ByteBuffer;)V

    .line 779
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceS;->nonceS:[B

    .line 785
    const/16 v0, 0x14

    if-ne p1, v0, :cond_15

    .line 789
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceS;->nonceS:[B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 790
    return-void

    .line 786
    :cond_15
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v1, "Invalid Length specified"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>([B)V
    .registers 5
    .param p1, "nonceS"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 794
    const/16 v0, 0x15

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;-><init>(II)V

    .line 779
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceS;->nonceS:[B

    .line 796
    array-length v1, p1

    if-ne v1, v0, :cond_17

    .line 800
    iget-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceS;->nonceS:[B

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 801
    return-void

    .line 797
    :cond_17
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v1, "NonceS length must be 16B"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist encode(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 805
    invoke-super {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;->encode(Ljava/nio/ByteBuffer;)V

    .line 807
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceS;->nonceS:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 808
    return-void
.end method
