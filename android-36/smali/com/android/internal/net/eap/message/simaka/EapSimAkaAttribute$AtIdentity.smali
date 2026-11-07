.class public Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtIdentity"
.end annotation


# instance fields
.field public final blacklist identity:[B


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

    .line 469
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 471
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    .line 472
    .local v0, "identityLength":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;->identity:[B

    .line 473
    iget-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;->identity:[B

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 475
    add-int/lit8 v1, v0, 0x4

    .line 476
    .local v1, "bytesUsed":I
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;->consumePadding(ILjava/nio/ByteBuffer;)V

    .line 477
    return-void
.end method

.method public constructor blacklist <init>(I[B)V
    .registers 4
    .param p1, "lengthInBytes"    # I
    .param p2, "identity"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 482
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 483
    iput-object p2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;->identity:[B

    .line 484
    return-void
.end method

.method public static blacklist getAtIdentity([B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;
    .registers 3
    .param p0, "identity"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 504
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4

    .line 505
    .local v0, "lengthInBytes":I
    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_c

    .line 506
    rem-int/lit8 v1, v0, 0x4

    rsub-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 509
    :cond_c
    new-instance v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;-><init>(I[B)V

    return-object v1
.end method


# virtual methods
.method public blacklist encode(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 488
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;->encodeAttributeHeader(Ljava/nio/ByteBuffer;)V

    .line 489
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;->identity:[B

    array-length v0, v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 490
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;->identity:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 492
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;->identity:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    .line 493
    .local v0, "bytesUsed":I
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;->addPadding(ILjava/nio/ByteBuffer;)V

    .line 494
    return-void
.end method
