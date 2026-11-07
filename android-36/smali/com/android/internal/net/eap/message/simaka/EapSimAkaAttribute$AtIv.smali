.class public Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtIv"
.end annotation


# static fields
.field private static final blacklist ATTR_LENGTH:I = 0x14

.field private static final blacklist IV_LENGTH:I = 0x10


# instance fields
.field public final blacklist iv:[B


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

    .line 1227
    const/16 v0, 0x81

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;-><init>(IILjava/nio/ByteBuffer;)V

    .line 1223
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;->iv:[B

    .line 1228
    if-ne p1, v1, :cond_15

    .line 1232
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;->iv:[B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1233
    return-void

    .line 1229
    :cond_15
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v1, "Invalid Length, AtIv must be 20B"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Ljava/security/SecureRandom;)V
    .registers 4
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 1236
    const/16 v0, 0x81

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;-><init>(II)V

    .line 1223
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;->iv:[B

    .line 1237
    iget-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;->iv:[B

    invoke-virtual {p1, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1238
    iget-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;->iv:[B

    array-length v1, v1

    if-ne v1, v0, :cond_18

    .line 1241
    return-void

    .line 1239
    :cond_18
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v1, "IV length must be 16B"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist encode(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 1245
    invoke-super {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;->encode(Ljava/nio/ByteBuffer;)V

    .line 1247
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;->iv:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1248
    return-void
.end method
