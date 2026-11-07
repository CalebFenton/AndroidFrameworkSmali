.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeSaHelper;
.super Ljava/lang/Object;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateIkeSaHelper"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 6108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getCreateIkeSaPayloads(ILcom/android/internal/net/ipsec/ike/message/IkeSaPayload;Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)Ljava/util/List;
    .registers 5
    .param p0, "selectedDhGroup"    # I
    .param p1, "saPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .param p2, "randomFactory"    # Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;",
            "Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6194
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_21

    .line 6198
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6207
    .local v0, "payloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6210
    invoke-static {p0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->createOutboundKePayload(ILcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6212
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    invoke-direct {v1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;-><init>(Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6214
    return-object v0

    .line 6195
    .end local v0    # "payloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid SA proposal list - was empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getIkeInitSaRequestPayloads([Landroid/net/ipsec/ike/IkeSaProposal;IJJLjava/net/InetAddress;Ljava/net/InetAddress;IILcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;Z)Ljava/util/List;
    .registers 24
    .param p0, "saProposals"    # [Landroid/net/ipsec/ike/IkeSaProposal;
    .param p1, "selectedDhGroup"    # I
    .param p2, "initIkeSpi"    # J
    .param p4, "respIkeSpi"    # J
    .param p6, "localAddr"    # Ljava/net/InetAddress;
    .param p7, "remoteAddr"    # Ljava/net/InetAddress;
    .param p8, "localPort"    # I
    .param p9, "remotePort"    # I
    .param p10, "randomFactory"    # Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;
    .param p11, "isForceUdpEncapEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/net/ipsec/ike/IkeSaProposal;",
            "IJJ",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "II",
            "Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6121
    nop

    .line 6124
    invoke-static {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->createInitialIkeSaPayload([Landroid/net/ipsec/ike/IkeSaProposal;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    move-result-object v0

    .line 6122
    move-object/from16 v1, p10

    invoke-static {p1, v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeSaHelper;->getCreateIkeSaPayloads(ILcom/android/internal/net/ipsec/ike/message/IkeSaPayload;Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)Ljava/util/List;

    move-result-object v2

    .line 6127
    .local v2, "payloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    move-object/from16 v4, p7

    instance-of v0, v4, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1f

    .line 6131
    move-wide v7, p2

    move-wide/from16 v9, p4

    move-object/from16 v3, p6

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v11, p11

    invoke-static/range {v2 .. v11}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$smaddNatDetectionPayloadsToList(Ljava/util/List;Ljava/net/InetAddress;Ljava/net/InetAddress;IIJJZ)V

    .line 6142
    :cond_1f
    return-object v2
.end method

.method public static blacklist getRekeyIkeSaRequestPayloads([Landroid/net/ipsec/ike/IkeSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)Ljava/util/List;
    .registers 6
    .param p0, "saProposals"    # [Landroid/net/ipsec/ike/IkeSaProposal;
    .param p1, "ikeSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;
    .param p2, "localAddr"    # Ljava/net/InetAddress;
    .param p3, "randomFactory"    # Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/net/ipsec/ike/IkeSaProposal;",
            "Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;",
            "Ljava/net/InetAddress;",
            "Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6151
    if-eqz p2, :cond_17

    .line 6157
    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSaProposal;->getDhGroupTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    move-result-object v1

    aget-object v0, v1, v0

    iget v0, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;->id:I

    .line 6159
    .local v0, "selectedDhGroup":I
    nop

    .line 6161
    invoke-static {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->createRekeyIkeSaRequestPayload([Landroid/net/ipsec/ike/IkeSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    move-result-object v1

    .line 6159
    invoke-static {v0, v1, p3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeSaHelper;->getCreateIkeSaPayloads(ILcom/android/internal/net/ipsec/ike/message/IkeSaPayload;Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 6152
    .end local v0    # "selectedDhGroup":I
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Local address was null for rekey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getRekeyIkeSaResponsePayloads(BLandroid/net/ipsec/ike/IkeSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)Ljava/util/List;
    .registers 7
    .param p0, "respProposalNumber"    # B
    .param p1, "saProposal"    # Landroid/net/ipsec/ike/IkeSaProposal;
    .param p2, "ikeSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "randomFactory"    # Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Landroid/net/ipsec/ike/IkeSaProposal;",
            "Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;",
            "Ljava/net/InetAddress;",
            "Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6173
    if-eqz p3, :cond_15

    .line 6177
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSaProposal;->getDhGroupTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;->id:I

    .line 6179
    .local v0, "selectedDhGroup":I
    nop

    .line 6181
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->createRekeyIkeSaResponsePayload(BLandroid/net/ipsec/ike/IkeSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    move-result-object v1

    .line 6179
    invoke-static {v0, v1, p4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeSaHelper;->getCreateIkeSaPayloads(ILcom/android/internal/net/ipsec/ike/message/IkeSaPayload;Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 6174
    .end local v0    # "selectedDhGroup":I
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Local address was null for rekey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
