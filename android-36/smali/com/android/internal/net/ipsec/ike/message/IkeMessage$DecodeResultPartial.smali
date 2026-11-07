.class public Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;
.super Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;
.source "IkeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodeResultPartial"
.end annotation


# instance fields
.field public final blacklist collectedFragsList:[[B

.field public final blacklist firstFragBytes:[B

.field public final blacklist firstPayloadType:I

.field public final blacklist ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[BLcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;ILcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;)V
    .registers 10
    .param p1, "ikeHeader"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p2, "inputPacket"    # [B
    .param p3, "skfPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;
    .param p4, "nextPayloadType"    # I
    .param p5, "collectedFragments"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

    .line 1016
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;-><init>(I)V

    .line 1018
    iget v1, p3, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->fragmentNum:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    move v1, v0

    goto :goto_c

    :cond_b
    move v1, v2

    .line 1019
    .local v1, "isFirstFragment":Z
    :goto_c
    if-nez p5, :cond_24

    .line 1021
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    .line 1022
    nop

    .line 1023
    if-eqz v1, :cond_14

    move v2, p4

    :cond_14
    iput v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->firstPayloadType:I

    .line 1024
    if-eqz v1, :cond_1a

    move-object v2, p2

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->firstFragBytes:[B

    .line 1025
    iget v2, p3, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->totalFragments:I

    new-array v2, v2, [[B

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->collectedFragsList:[[B

    goto :goto_3e

    .line 1027
    :cond_24
    iget-object v2, p5, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    .line 1028
    nop

    .line 1029
    if-eqz v1, :cond_2d

    move v2, p4

    goto :goto_2f

    :cond_2d
    iget v2, p5, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->firstPayloadType:I

    :goto_2f
    iput v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->firstPayloadType:I

    .line 1030
    nop

    .line 1031
    if-eqz v1, :cond_36

    move-object v2, p2

    goto :goto_38

    :cond_36
    iget-object v2, p5, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->firstFragBytes:[B

    :goto_38
    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->firstFragBytes:[B

    .line 1032
    iget-object v2, p5, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->collectedFragsList:[[B

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->collectedFragsList:[[B

    .line 1035
    :goto_3e
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->collectedFragsList:[[B

    iget v3, p3, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->fragmentNum:I

    sub-int/2addr v3, v0

    invoke-virtual {p3}, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->getUnencryptedData()[B

    move-result-object v0

    aput-object v0, v2, v3

    .line 1036
    return-void
.end method


# virtual methods
.method public blacklist isAllFragmentsReceived()Z
    .registers 6

    .line 1040
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->collectedFragsList:[[B

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_f

    aget-object v4, v0, v3

    .line 1041
    .local v4, "frag":[B
    if-nez v4, :cond_c

    return v2

    .line 1040
    .end local v4    # "frag":[B
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1043
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist reassembleAllFrags()[B
    .registers 8

    .line 1048
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->isAllFragmentsReceived()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1052
    const/4 v0, 0x0

    .line 1053
    .local v0, "len":I
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->collectedFragsList:[[B

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_15

    aget-object v5, v1, v4

    .line 1054
    .local v5, "frag":[B
    array-length v6, v5

    add-int/2addr v0, v6

    .line 1053
    .end local v5    # "frag":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1057
    :cond_15
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1058
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->collectedFragsList:[[B

    array-length v4, v2

    :goto_1c
    if-ge v3, v4, :cond_26

    aget-object v5, v2, v3

    .line 1059
    .restart local v5    # "frag":[B
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1058
    .end local v5    # "frag":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 1062
    :cond_26
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2

    .line 1049
    .end local v0    # "len":I
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not all fragments have been received"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
