.class public Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtMac"
.end annotation


# static fields
.field private static final blacklist ATTR_LENGTH:I = 0x14

.field public static final blacklist MAC_LENGTH:I = 0x10


# instance fields
.field public final blacklist mac:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 673
    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;-><init>([B)V

    .line 674
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

    .line 660
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;-><init>(IILjava/nio/ByteBuffer;)V

    .line 662
    const/16 v0, 0x14

    if-ne p1, v0, :cond_15

    .line 666
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;->mac:[B

    .line 667
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;->mac:[B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 668
    return-void

    .line 663
    :cond_15
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v1, "Invalid Length specified"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "mac"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 677
    const/4 v0, 0x2

    new-array v0, v0, [B

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;-><init>([B[B)V

    .line 678
    return-void
.end method

.method public constructor blacklist <init>([B[B)V
    .registers 5
    .param p1, "reservedBytes"    # [B
    .param p2, "mac"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 682
    const/16 v0, 0xb

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;-><init>(II[B)V

    .line 684
    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_f

    .line 687
    iput-object p2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;->mac:[B

    .line 688
    return-void

    .line 685
    :cond_f
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v1, "Invalid length for MAC"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist encode(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 692
    invoke-super {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;->encode(Ljava/nio/ByteBuffer;)V

    .line 694
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;->mac:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 695
    return-void
.end method

.method public blacklist getAtMacWithMacCleared()Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 704
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;

    iget-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;->reservedBytes:[B

    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;-><init>([B[B)V

    return-object v0
.end method
