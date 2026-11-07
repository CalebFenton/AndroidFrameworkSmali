.class public final Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkePayload;
.source "IkeSaPayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;,
        Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;,
        Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;,
        Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$UnrecognizedAttribute;,
        Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$KeyLengthAttribute;,
        Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;,
        Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$UnrecognizedTransform;,
        Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;,
        Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;,
        Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;,
        Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;,
        Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;,
        Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;,
        Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$AttributeDecoder;,
        Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$TransformDecoder;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "IkeSaPayload"


# instance fields
.field public final blacklist isSaResponse:Z

.field public final blacklist proposalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(BLandroid/net/ipsec/ike/ChildSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)V
    .registers 8
    .param p1, "proposalNumber"    # B
    .param p2, "saProposal"    # Landroid/net/ipsec/ike/ChildSaProposal;
    .param p3, "ipSecSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .param p4, "localAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 218
    const/4 v0, 0x1

    invoke-direct {p0, v0, p3, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;-><init>(ZLcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)V

    .line 220
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    .line 221
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->createChildProposal(BLandroid/net/ipsec/ike/ChildSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;

    move-result-object v1

    .line 220
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IkeSaPayload"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method constructor blacklist <init>(ZBBLandroid/net/ipsec/ike/IkeSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;)V
    .registers 10
    .param p1, "isResp"    # Z
    .param p2, "spiSize"    # B
    .param p3, "proposalNumber"    # B
    .param p4, "saProposal"    # Landroid/net/ipsec/ike/IkeSaProposal;
    .param p5, "ikeSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;
    .param p6, "localAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1, p2, p6}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;-><init>(ZBLjava/net/InetAddress;)V

    .line 152
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    .line 153
    invoke-static {p3, p2, p4, p5, p6}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->createIkeProposal(BBLandroid/net/ipsec/ike/IkeSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;

    move-result-object v1

    .line 152
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IkeSaPayload"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method private constructor blacklist <init>(ZBLjava/net/InetAddress;)V
    .registers 6
    .param p1, "isResp"    # Z
    .param p2, "spiSize"    # B
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 168
    iput-boolean p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->isSaResponse:Z

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    .line 174
    return-void
.end method

.method constructor blacklist <init>(ZB[Landroid/net/ipsec/ike/IkeSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;)V
    .registers 10
    .param p1, "isResp"    # Z
    .param p2, "spiSize"    # B
    .param p3, "saProposals"    # [Landroid/net/ipsec/ike/IkeSaProposal;
    .param p4, "ikeSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;
    .param p5, "localAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1, p2, p5}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;-><init>(ZBLjava/net/InetAddress;)V

    .line 122
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_42

    if-eqz p1, :cond_c

    array-length v0, p3

    if-gt v0, v1, :cond_42

    .line 126
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    array-length v1, p3

    if-ge v0, v1, :cond_21

    .line 128
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    int-to-byte v2, v2

    aget-object v3, p3, v0

    .line 129
    invoke-static {v2, p2, v3, p4, p5}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->createIkeProposal(BBLandroid/net/ipsec/ike/IkeSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;

    move-result-object v2

    .line 128
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 137
    .end local v0    # "i":I
    :cond_21
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IkeSaPayload"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void

    .line 123
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid SA payload."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(ZLcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)V
    .registers 6
    .param p1, "isResp"    # Z
    .param p2, "ipSecSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .param p3, "localAddress"    # Ljava/net/InetAddress;

    .line 230
    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 232
    iput-boolean p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->isSaResponse:Z

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    .line 238
    return-void
.end method

.method constructor blacklist <init>(ZZ[B)V
    .registers 11
    .param p1, "critical"    # Z
    .param p2, "isResp"    # Z
    .param p3, "payloadBody"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 77
    const/16 v0, 0x21

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 79
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 80
    .local v0, "inputBuffer":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    .line 81
    :goto_10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 82
    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->readFrom(Ljava/nio/ByteBuffer;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;

    move-result-object v1

    .line 83
    .local v1, "proposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v1    # "proposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;
    goto :goto_10

    .line 86
    :cond_20
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_96

    .line 91
    const/4 v1, 0x1

    if-eqz p2, :cond_3c

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_34

    goto :goto_3c

    .line 92
    :cond_34
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v2, "Expected only one negotiated proposal from SA response: Multiple negotiated proposals found."

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_3c
    :goto_3c
    iput-boolean p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->isSaResponse:Z

    .line 98
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;

    iget v2, v2, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->protocolId:I

    if-ne v2, v1, :cond_4d

    move v2, v1

    goto :goto_4e

    :cond_4d
    move v2, v3

    .line 99
    .local v2, "firstIsIkeProposal":Z
    :goto_4e
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_4f
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, "IkeSaPayload"

    if-ge v4, v5, :cond_77

    .line 100
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;

    iget v5, v5, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->protocolId:I

    if-ne v5, v1, :cond_67

    move v5, v1

    goto :goto_68

    :cond_67
    move v5, v3

    .line 101
    .local v5, "isIkeProposal":Z
    :goto_68
    if-eq v2, v5, :cond_74

    .line 102
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    .line 103
    const-string v3, "Found both IKE proposals and Child proposals in this SA Payload."

    invoke-virtual {v1, v6, v3}, Lcom/android/internal/net/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    goto :goto_77

    .line 99
    .end local v5    # "isIkeProposal":Z
    :cond_74
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 108
    .end local v4    # "i":I
    :cond_77
    :goto_77
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void

    .line 87
    .end local v2    # "firstIsIkeProposal":Z
    :cond_96
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v2, "Found no SA Proposal in this SA Payload."

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor blacklist <init>([Landroid/net/ipsec/ike/ChildSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)V
    .registers 8
    .param p1, "saProposals"    # [Landroid/net/ipsec/ike/ChildSaProposal;
    .param p2, "ipSecSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;-><init>(ZLcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)V

    .line 188
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3e

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    array-length v1, p1

    if-ge v0, v1, :cond_1d

    .line 196
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    int-to-byte v2, v2

    aget-object v3, p1, v0

    .line 197
    invoke-static {v2, v3, p2, p3}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->createChildProposal(BLandroid/net/ipsec/ike/ChildSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;

    move-result-object v2

    .line 196
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 204
    .end local v0    # "i":I
    :cond_1d
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IkeSaPayload"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void

    .line 189
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid SA payload."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createChildSaRequestPayload([Landroid/net/ipsec/ike/ChildSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .registers 4
    .param p0, "saProposals"    # [Landroid/net/ipsec/ike/ChildSaProposal;
    .param p1, "ipSecSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .param p2, "localAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 310
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;-><init>([Landroid/net/ipsec/ike/ChildSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)V

    return-object v0
.end method

.method public static blacklist createChildSaResponsePayload(BLandroid/net/ipsec/ike/ChildSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .registers 5
    .param p0, "respProposalNumber"    # B
    .param p1, "saProposal"    # Landroid/net/ipsec/ike/ChildSaProposal;
    .param p2, "ipSecSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 328
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;-><init>(BLandroid/net/ipsec/ike/ChildSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)V

    return-object v0
.end method

.method public static blacklist createInitialIkeSaPayload([Landroid/net/ipsec/ike/IkeSaProposal;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .registers 7
    .param p0, "saProposals"    # [Landroid/net/ipsec/ike/IkeSaProposal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    .end local p0    # "saProposals":[Landroid/net/ipsec/ike/IkeSaProposal;
    .local v3, "saProposals":[Landroid/net/ipsec/ike/IkeSaProposal;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;-><init>(ZB[Landroid/net/ipsec/ike/IkeSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;)V

    return-object v0
.end method

.method public static blacklist createRekeyIkeSaRequestPayload([Landroid/net/ipsec/ike/IkeSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .registers 9
    .param p0, "saProposals"    # [Landroid/net/ipsec/ike/IkeSaProposal;
    .param p1, "ikeSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;
    .param p2, "localAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    const/4 v1, 0x0

    const/16 v2, 0x8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .end local p0    # "saProposals":[Landroid/net/ipsec/ike/IkeSaProposal;
    .end local p1    # "ikeSpiGenerator":Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;
    .end local p2    # "localAddress":Ljava/net/InetAddress;
    .local v3, "saProposals":[Landroid/net/ipsec/ike/IkeSaProposal;
    .local v4, "ikeSpiGenerator":Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;
    .local v5, "localAddress":Ljava/net/InetAddress;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;-><init>(ZB[Landroid/net/ipsec/ike/IkeSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;)V

    return-object v0
.end method

.method public static blacklist createRekeyIkeSaResponsePayload(BLandroid/net/ipsec/ike/IkeSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .registers 11
    .param p0, "respProposalNumber"    # B
    .param p1, "saProposal"    # Landroid/net/ipsec/ike/IkeSaProposal;
    .param p2, "ikeSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    const/4 v1, 0x1

    const/16 v2, 0x8

    move v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p0    # "respProposalNumber":B
    .end local p1    # "saProposal":Landroid/net/ipsec/ike/IkeSaProposal;
    .end local p2    # "ikeSpiGenerator":Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;
    .end local p3    # "localAddress":Ljava/net/InetAddress;
    .local v3, "respProposalNumber":B
    .local v4, "saProposal":Landroid/net/ipsec/ike/IkeSaProposal;
    .local v5, "ikeSpiGenerator":Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;
    .local v6, "localAddress":Ljava/net/InetAddress;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;-><init>(ZBBLandroid/net/ipsec/ike/IkeSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;)V

    return-object v0
.end method

.method public static blacklist getVerifiedNegotiatedChildProposalPair(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)Landroid/util/Pair;
    .registers 8
    .param p0, "reqSaPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .param p1, "respSaPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .param p2, "ipSecSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .param p3, "remoteAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;",
            "Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;",
            "Ljava/net/InetAddress;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;
        }
    .end annotation

    .line 515
    nop

    .line 516
    invoke-static {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->getVerifiedNegotiatedProposalPair(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;)Landroid/util/Pair;

    move-result-object v0

    .line 517
    .local v0, "proposalPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;

    .line 518
    .local v1, "reqProposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;

    .line 522
    .local v2, "respProposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;
    :try_start_d
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->getChildSpiResource()Landroid/net/IpSecManager$SecurityParameterIndex;

    move-result-object v3

    if-nez v3, :cond_16

    .line 523
    invoke-virtual {v1, p2, p3}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->allocateResourceForRemoteChildSpi(Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)V

    .line 526
    :cond_16
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->getChildSpiResource()Landroid/net/IpSecManager$SecurityParameterIndex;

    move-result-object v3

    if-nez v3, :cond_1f

    .line 527
    invoke-virtual {v2, p2, p3}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->allocateResourceForRemoteChildSpi(Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)V

    .line 530
    :cond_1f
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_24} :catch_25

    return-object v3

    .line 531
    :catch_25
    move-exception v3

    .line 532
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->releaseSpiResourceIfExists()V

    .line 533
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->releaseSpiResourceIfExists()V

    .line 534
    throw v3
.end method

.method public static blacklist getVerifiedNegotiatedIkeProposalPair(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;)Landroid/util/Pair;
    .registers 8
    .param p0, "reqSaPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .param p1, "respSaPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .param p2, "ikeSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;
    .param p3, "remoteAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;",
            "Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;",
            "Ljava/net/InetAddress;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    nop

    .line 452
    invoke-static {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->getVerifiedNegotiatedProposalPair(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;)Landroid/util/Pair;

    move-result-object v0

    .line 453
    .local v0, "proposalPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;

    .line 454
    .local v1, "reqProposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;

    .line 458
    .local v2, "respProposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;
    :try_start_d
    iget-byte v3, v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->spiSize:B

    if-eqz v3, :cond_1a

    .line 459
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->getIkeSpiResource()Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    move-result-object v3

    if-nez v3, :cond_1a

    .line 460
    invoke-virtual {v1, p2, p3}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->allocateResourceForRemoteIkeSpi(Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;)V

    .line 463
    :cond_1a
    iget-byte v3, v2, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->spiSize:B

    if-eqz v3, :cond_27

    .line 464
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->getIkeSpiResource()Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    move-result-object v3

    if-nez v3, :cond_27

    .line 465
    invoke-virtual {v2, p2, p3}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->allocateResourceForRemoteIkeSpi(Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;)V

    .line 468
    :cond_27
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2c} :catch_2d

    return-object v3

    .line 469
    :catch_2d
    move-exception v3

    .line 470
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->releaseSpiResourceIfExists()V

    .line 471
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->releaseSpiResourceIfExists()V

    .line 472
    throw v3
.end method

.method private static blacklist getVerifiedNegotiatedProposalPair(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;)Landroid/util/Pair;
    .registers 8
    .param p0, "reqSaPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .param p1, "respSaPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;
        }
    .end annotation

    .line 543
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;

    .line 544
    .local v0, "respProposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;
    iget-boolean v1, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->hasUnrecognizedTransform:Z

    if-nez v1, :cond_54

    .line 552
    iget-byte v1, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->number:B

    .line 553
    .local v1, "negotiatedProposalNum":I
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    .line 554
    .local v2, "reqProposalList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;>;"
    const/4 v3, 0x1

    if-lt v1, v3, :cond_4c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gt v1, v3, :cond_4c

    .line 559
    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;

    .line 560
    .local v3, "reqProposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;
    invoke-virtual {v0, v3}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->isNegotiatedFrom(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 567
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;

    .line 568
    .local v5, "p":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;
    if-eq v3, v5, :cond_3d

    invoke-virtual {v5}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->releaseSpiResourceIfExists()V

    .line 569
    .end local v5    # "p":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;
    :cond_3d
    goto :goto_2c

    .line 571
    :cond_3e
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 561
    :cond_44
    new-instance v4, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;

    const-string v5, "Invalid negotiated proposal."

    invoke-direct {v4, v5}, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;-><init>(Ljava/lang/String;)V

    .end local p0    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .end local p1    # "respSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    throw v4

    .line 555
    .end local v3    # "reqProposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;
    .restart local p0    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .restart local p1    # "respSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    :cond_4c
    new-instance v3, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;

    const-string v4, "Negotiated proposal has invalid proposal number."

    invoke-direct {v3, v4}, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;-><init>(Ljava/lang/String;)V

    .end local p0    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .end local p1    # "respSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    throw v3

    .line 545
    .end local v1    # "negotiatedProposalNum":I
    .end local v2    # "reqProposalList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;>;"
    .restart local p0    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .restart local p1    # "respSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    :cond_54
    new-instance v1, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;

    const-string v2, "Negotiated proposal has unrecognized Transform."

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;-><init>(Ljava/lang/String;)V

    .end local p0    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .end local p1    # "respSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    throw v1
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5c} :catch_5c

    .line 572
    .end local v0    # "respProposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;
    .restart local p0    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .restart local p1    # "respSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    :catch_5c
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;

    .local v2, "p":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->releaseSpiResourceIfExists()V

    .end local v2    # "p":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;
    goto :goto_63

    .line 576
    :cond_73
    throw v0
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "nextPayload"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 1912
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->getPayloadLength()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->encodePayloadHeaderToByteBuffer(IILjava/nio/ByteBuffer;)V

    .line 1914
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 1916
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_23

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :goto_24
    invoke-virtual {v1, v3, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->encodeToByteBuffer(ZLjava/nio/ByteBuffer;)V

    .line 1914
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1918
    .end local v0    # "i":I
    :cond_2a
    return-void
.end method

.method public blacklist getNegotiatedChildProposalWithDh(Landroid/net/ipsec/ike/ChildSaProposal;Ljava/util/List;II)Landroid/net/ipsec/ike/ChildSaProposal;
    .registers 12
    .param p1, "currentProposal"    # Landroid/net/ipsec/ike/ChildSaProposal;
    .param p3, "reqKePayloadDh"    # I
    .param p4, "ikeDh"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/ipsec/ike/ChildSaProposal;",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/ChildSaProposal;",
            ">;II)",
            "Landroid/net/ipsec/ike/ChildSaProposal;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;,
            Landroid/net/ipsec/ike/exceptions/InvalidKeException;
        }
    .end annotation

    .line 374
    .local p2, "callerConfiguredProposals":Ljava/util/List;, "Ljava/util/List<Landroid/net/ipsec/ike/ChildSaProposal;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v0, "proposalCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/net/ipsec/ike/ChildSaProposal;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ipsec/ike/ChildSaProposal;

    .line 377
    .local v2, "callerProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    invoke-virtual {p1, v2}, Landroid/net/ipsec/ike/ChildSaProposal;->isNegotiatedFromExceptDhGroup(Landroid/net/ipsec/ike/SaProposal;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 378
    goto :goto_9

    .line 388
    :cond_1c
    invoke-virtual {v2}, Landroid/net/ipsec/ike/ChildSaProposal;->getDhGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 389
    invoke-virtual {v2, p4}, Landroid/net/ipsec/ike/ChildSaProposal;->getCopyWithAdditionalDhTransform(I)Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object v2

    .line 392
    :cond_2a
    invoke-virtual {v2}, Landroid/net/ipsec/ike/ChildSaProposal;->getDhGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 393
    .local v4, "callerDh":I
    nop

    .line 394
    invoke-virtual {p1, v4}, Landroid/net/ipsec/ike/ChildSaProposal;->getCopyWithAdditionalDhTransform(I)Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object v5

    .line 396
    .local v5, "negotiatedProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    :try_start_47
    invoke-virtual {p0, v5}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->getNegotiatedProposalNumber(Landroid/net/ipsec/ike/SaProposal;)B

    .line 397
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException; {:try_start_47 .. :try_end_4d} :catch_4f

    .line 400
    nop

    .line 401
    .end local v4    # "callerDh":I
    .end local v5    # "negotiatedProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    goto :goto_32

    .line 398
    .restart local v4    # "callerDh":I
    .restart local v5    # "negotiatedProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    :catch_4f
    move-exception v6

    .line 399
    .local v6, "e":Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;
    goto :goto_32

    .line 402
    .end local v2    # "callerProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    .end local v4    # "callerDh":I
    .end local v5    # "negotiatedProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    .end local v6    # "e":Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;
    :cond_51
    goto :goto_9

    .line 405
    :cond_52
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_95

    .line 408
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ipsec/ike/ChildSaProposal;

    .line 409
    .local v2, "negotiatedProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    invoke-virtual {v2}, Landroid/net/ipsec/ike/ChildSaProposal;->getDhGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p3, v3, :cond_7a

    .line 410
    return-object v2

    .line 412
    .end local v2    # "negotiatedProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    :cond_7a
    goto :goto_5c

    .line 413
    :cond_7b
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidKeException;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ipsec/ike/ChildSaProposal;

    invoke-virtual {v2}, Landroid/net/ipsec/ike/ChildSaProposal;->getDhGroups()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/InvalidKeException;-><init>(I)V

    throw v1

    .line 406
    :cond_95
    new-instance v1, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;

    const-string v2, "No acceptable SA proposal in the request"

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getNegotiatedProposalNumber(Landroid/net/ipsec/ike/SaProposal;)B
    .registers 6
    .param p1, "respProposal"    # Landroid/net/ipsec/ike/SaProposal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;
        }
    .end annotation

    .line 340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 341
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;

    .line 342
    .local v1, "reqProposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->getSaProposal()Landroid/net/ipsec/ike/SaProposal;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/ipsec/ike/SaProposal;->isNegotiatedFrom(Landroid/net/ipsec/ike/SaProposal;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 343
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->getSaProposal()Landroid/net/ipsec/ike/SaProposal;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ipsec/ike/SaProposal;->getProtocolId()I

    move-result v2

    .line 344
    invoke-virtual {p1}, Landroid/net/ipsec/ike/SaProposal;->getProtocolId()I

    move-result v3

    if-ne v2, v3, :cond_2c

    .line 345
    iget-byte v2, v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->number:B

    return v2

    .line 340
    .end local v1    # "reqProposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 348
    .end local v0    # "i":I
    :cond_2f
    new-instance v0, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;

    const-string v1, "No remotely proposed protocol acceptable"

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist getPayloadLength()I
    .registers 5

    .line 1927
    const/4 v0, 0x4

    .line 1929
    .local v0, "len":I
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;

    .local v2, "p":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->getProposalLength()I

    move-result v3

    add-int/2addr v0, v3

    .end local v2    # "p":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;
    goto :goto_7

    .line 1931
    :cond_19
    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .registers 2

    .line 1941
    const-string v0, "SA"

    return-object v0
.end method

.method public blacklist releaseSpiResources()V
    .registers 3

    .line 594
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;

    .line 595
    .local v1, "proposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->releaseSpiResourceIfExists()V

    .line 596
    .end local v1    # "proposal":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;
    goto :goto_6

    .line 597
    :cond_16
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1948
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->isSaResponse:Z

    if-eqz v1, :cond_f

    .line 1949
    const-string v1, "SA Response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 1951
    :cond_f
    const-string v1, "SA Request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1954
    :goto_14
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1955
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v1, :cond_38

    .line 1956
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;

    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1957
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_35

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1960
    .end local v2    # "i":I
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
