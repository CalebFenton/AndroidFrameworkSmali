.class public Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRes;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtRes"
.end annotation


# static fields
.field private static final blacklist BITS_PER_BYTE:I = 0x8

.field private static final blacklist MAX_RES_LEN_BYTES:I = 0x10

.field private static final blacklist MIN_RES_LEN_BYTES:I = 0x4


# instance fields
.field public final blacklist res:[B


# direct methods
.method public constructor blacklist <init>(ILjava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "lengthInBytes"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 996
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 1000
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    .line 1001
    .local v0, "resLength":I
    rem-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_30

    .line 1004
    div-int/lit8 v1, v0, 0x8

    .line 1005
    .local v1, "resLengthBytes":I
    const/4 v2, 0x4

    if-lt v1, v2, :cond_28

    const/16 v2, 0x10

    if-gt v1, v2, :cond_28

    .line 1010
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRes;->res:[B

    .line 1011
    iget-object v2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRes;->res:[B

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1013
    add-int/lit8 v2, v1, 0x4

    .line 1014
    .local v2, "bytesUsed":I
    invoke-virtual {p0, v2, p2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRes;->consumePadding(ILjava/nio/ByteBuffer;)V

    .line 1015
    return-void

    .line 1006
    .end local v2    # "bytesUsed":I
    :cond_28
    new-instance v2, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v3, "RES length must be: 4B <= len <= 16B"

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1002
    .end local v1    # "resLengthBytes":I
    :cond_30
    new-instance v1, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v2, "RES length must be multiple of 8"

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>(I[B)V
    .registers 5
    .param p1, "lengthInBytes"    # I
    .param p2, "res"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 1019
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 1021
    array-length v0, p2

    const/4 v1, 0x4

    if-lt v0, v1, :cond_10

    array-length v0, p2

    const/16 v1, 0x10

    if-gt v0, v1, :cond_10

    .line 1026
    iput-object p2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRes;->res:[B

    .line 1027
    return-void

    .line 1022
    :cond_10
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v1, "RES length must be: 4B <= len <= 16B"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getAtRes([B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRes;
    .registers 3
    .param p0, "res"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 1050
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4

    .line 1051
    .local v0, "resLenBytes":I
    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_c

    .line 1052
    rem-int/lit8 v1, v0, 0x4

    rsub-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 1055
    :cond_c
    new-instance v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRes;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRes;-><init>(I[B)V

    return-object v1
.end method

.method public static blacklist isValidResLen(I)Z
    .registers 2
    .param p0, "resLenBytes"    # I

    .line 1065
    const/4 v0, 0x4

    if-lt p0, v0, :cond_9

    const/16 v0, 0x10

    if-gt p0, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method


# virtual methods
.method public blacklist encode(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 1031
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRes;->encodeAttributeHeader(Ljava/nio/ByteBuffer;)V

    .line 1033
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRes;->res:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    .line 1034
    .local v0, "resLenBits":I
    int-to-short v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1035
    iget-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRes;->res:[B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1037
    iget-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRes;->res:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    .line 1038
    .local v1, "bytesUsed":I
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRes;->addPadding(ILjava/nio/ByteBuffer;)V

    .line 1039
    return-void
.end method
