.class Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;
.super Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;
.source "WifiAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiAwareDiscoverySessionCallbackProxy"
.end annotation


# instance fields
.field private final greylist-max-o mAwareManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/wifi/aware/WifiAwareManager;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mClientId:I

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mIsPublish:Z

.field private final greylist-max-o mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

.field private greylist-max-o mSession:Landroid/net/wifi/aware/DiscoverySession;


# direct methods
.method public static synthetic blacklist $r8$lambda$-Gxjcp6WsyK9MCvqNTFjX4CdPVo(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->lambda$onMatchExpired$7(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DSuzKcZD29BcchOCYpGEzqnEqho(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->lambda$onSessionStarted$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$E07ajpPSQ8bKpcn6Tmlr2Xd74nw(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->lambda$onPairingVerificationConfirmed$14(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EZ8ZfESOgyEDJjAjNkO0cJYgGJ8(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->lambda$onBootstrappingVerificationConfirmed$17(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FZS4pe9i8shoM2uNPpD2j3ezRvk(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->lambda$onSessionSuspendFail$3(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KxojsZSH25SdwWGQuaLo9f1-3hY(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->lambda$onSessionTerminated$2(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NA0zeKbWLfStUbe0pBd52EhZdZY(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->lambda$onPairingSetupConfirmed$13(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZeVuJ7Rm06sbW13GNWcjDlverhY(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;[BI[BII[BLjava/lang/String;Landroid/net/wifi/aware/AwarePairingConfig;[Landroid/net/wifi/OuiKeyedData;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->lambda$onMatchWithDistance$6([BI[BII[BLjava/lang/String;Landroid/net/wifi/aware/AwarePairingConfig;[Landroid/net/wifi/OuiKeyedData;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fFi-VuUvDDLEepZFOs6KGgHTsPY(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->lambda$onSessionConfigFail$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gLrB9-65IIfokOJ6CoF3tay-I3g(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->lambda$onMessageReceived$10(I[B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jA13EY5qhM9_f1TmUNgY0IMUC_E(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->lambda$onBootstrappingVerificationConfirmed$16(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$k7q-Hslm8hn-UK0C-P_gtMF-XTY(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->lambda$onSessionResumeFail$4(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oUY0i98R_qa-jThy6QZViLhGio0(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->lambda$onPairingSetupConfirmed$12(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pP_e37wCDtkbO-ESLxFNjCE6mkU(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->lambda$onMessageSendSuccess$8(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qc1VCVcZN44rI8VrV4Xuxua8MOk(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->lambda$onPairingSetupRequestReceived$11(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rbxaOKuFVKuCSziGHUcWCGVX7P0(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->lambda$onMessageSendFail$9(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$v-ooMKK89GdFj0HfGg9JiMVLtSs(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;[BI[BI[BLjava/lang/String;Landroid/net/wifi/aware/AwarePairingConfig;[Landroid/net/wifi/OuiKeyedData;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->lambda$onMatch$5([BI[BI[BLjava/lang/String;Landroid/net/wifi/aware/AwarePairingConfig;[Landroid/net/wifi/OuiKeyedData;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$y3acyz0KU35OqEg8fcuU1tlnYOs(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->lambda$onPairingVerificationConfirmed$15(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yKtfJx98td7YKikZVDjJFgIm8N0(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->lambda$onRangingResultsReceived$18(Ljava/util/List;)V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;ZLandroid/net/wifi/aware/DiscoverySessionCallback;I)V
    .registers 7
    .param p1, "mgr"    # Landroid/net/wifi/aware/WifiAwareManager;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "isPublish"    # Z
    .param p4, "originalCallback"    # Landroid/net/wifi/aware/DiscoverySessionCallback;
    .param p5, "clientId"    # I

    .line 1040
    invoke-direct {p0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;-><init>()V

    .line 1041
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    .line 1042
    iput-boolean p3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mIsPublish:Z

    .line 1043
    iput-object p4, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    .line 1044
    iput p5, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mClientId:I

    .line 1050
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 1051
    return-void
.end method

.method private blacklist getMatchFilterList([B)Ljava/util/List;
    .registers 7
    .param p1, "matchFilter"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1125
    const/4 v0, 0x0

    .line 1127
    .local v0, "matchFilterList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :try_start_1
    new-instance v1, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;-><init>(II[B)V

    invoke-virtual {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->toList()Ljava/util/List;

    move-result-object v1
    :try_end_c
    .catch Ljava/nio/BufferOverflowException; {:try_start_1 .. :try_end_c} :catch_d

    .line 1133
    .end local v0    # "matchFilterList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v1, "matchFilterList":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto :goto_3e

    .line 1128
    .end local v1    # "matchFilterList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v0    # "matchFilterList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :catch_d
    move-exception v1

    .line 1129
    .local v1, "e":Ljava/nio/BufferOverflowException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceDiscovered: invalid match filter byte array \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    .line 1131
    invoke-static {p1}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' - cannot be parsed: e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1130
    const-string v3, "WifiAwareManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 1134
    .end local v0    # "matchFilterList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v1, "matchFilterList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_3e
    return-object v1
.end method

.method private synthetic blacklist lambda$onBootstrappingVerificationConfirmed$16(II)V
    .registers 5
    .param p1, "peerId"    # I
    .param p2, "method"    # I

    .line 1223
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    new-instance v1, Landroid/net/wifi/aware/PeerHandle;

    invoke-direct {v1, p1}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onBootstrappingSucceeded(Landroid/net/wifi/aware/PeerHandle;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onBootstrappingVerificationConfirmed$17(I)V
    .registers 4
    .param p1, "peerId"    # I

    .line 1226
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    new-instance v1, Landroid/net/wifi/aware/PeerHandle;

    invoke-direct {v1, p1}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onBootstrappingFailed(Landroid/net/wifi/aware/PeerHandle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onMatch$5([BI[BI[BLjava/lang/String;Landroid/net/wifi/aware/AwarePairingConfig;[Landroid/net/wifi/OuiKeyedData;)V
    .registers 19
    .param p1, "matchFilter"    # [B
    .param p2, "peerId"    # I
    .param p3, "serviceSpecificInfo"    # [B
    .param p4, "peerCipherSuite"    # I
    .param p5, "scid"    # [B
    .param p6, "pairingAlias"    # Ljava/lang/String;
    .param p7, "pairingConfig"    # Landroid/net/wifi/aware/AwarePairingConfig;
    .param p8, "vendorData"    # [Landroid/net/wifi/OuiKeyedData;

    .line 1114
    invoke-direct/range {p0 .. p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->getMatchFilterList([B)Ljava/util/List;

    move-result-object v4

    .line 1115
    .local v4, "matchFilterList":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    new-instance v1, Landroid/net/wifi/aware/PeerHandle;

    invoke-direct {v1, p2}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    invoke-virtual {v0, v1, p3, v4}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onServiceDiscovered(Landroid/net/wifi/aware/PeerHandle;[BLjava/util/List;)V

    .line 1117
    iget-object v9, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    new-instance v0, Landroid/net/wifi/aware/ServiceDiscoveryInfo;

    new-instance v1, Landroid/net/wifi/aware/PeerHandle;

    invoke-direct {v1, p2}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    move-object v3, p3

    move v2, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/aware/ServiceDiscoveryInfo;-><init>(Landroid/net/wifi/aware/PeerHandle;I[BLjava/util/List;[BLjava/lang/String;Landroid/net/wifi/aware/AwarePairingConfig;[Landroid/net/wifi/OuiKeyedData;)V

    invoke-virtual {v9, v0}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onServiceDiscovered(Landroid/net/wifi/aware/ServiceDiscoveryInfo;)V

    .line 1121
    return-void
.end method

.method private synthetic blacklist lambda$onMatchExpired$7(I)V
    .registers 5
    .param p1, "peerId"    # I

    .line 1169
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    new-instance v1, Landroid/net/wifi/aware/PeerHandle;

    invoke-direct {v1, p1}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onServiceLost(Landroid/net/wifi/aware/PeerHandle;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onMatchWithDistance$6([BI[BII[BLjava/lang/String;Landroid/net/wifi/aware/AwarePairingConfig;[Landroid/net/wifi/OuiKeyedData;)V
    .registers 20
    .param p1, "matchFilter"    # [B
    .param p2, "peerId"    # I
    .param p3, "serviceSpecificInfo"    # [B
    .param p4, "distanceMm"    # I
    .param p5, "peerCipherSuite"    # I
    .param p6, "scid"    # [B
    .param p7, "pairingAlias"    # Ljava/lang/String;
    .param p8, "pairingConfig"    # Landroid/net/wifi/aware/AwarePairingConfig;
    .param p9, "vendorData"    # [Landroid/net/wifi/OuiKeyedData;

    .line 1145
    invoke-direct/range {p0 .. p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->getMatchFilterList([B)Ljava/util/List;

    move-result-object v4

    .line 1146
    .local v4, "matchFilterList":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    new-instance v1, Landroid/net/wifi/aware/PeerHandle;

    invoke-direct {v1, p2}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    invoke-virtual {v0, v1, p3, v4, p4}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onServiceDiscoveredWithinRange(Landroid/net/wifi/aware/PeerHandle;[BLjava/util/List;I)V

    .line 1150
    iget-object v9, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    new-instance v0, Landroid/net/wifi/aware/ServiceDiscoveryInfo;

    new-instance v1, Landroid/net/wifi/aware/PeerHandle;

    invoke-direct {v1, p2}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    move-object v3, p3

    move v2, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/aware/ServiceDiscoveryInfo;-><init>(Landroid/net/wifi/aware/PeerHandle;I[BLjava/util/List;[BLjava/lang/String;Landroid/net/wifi/aware/AwarePairingConfig;[Landroid/net/wifi/OuiKeyedData;)V

    invoke-virtual {v9, v0, p4}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onServiceDiscoveredWithinRange(Landroid/net/wifi/aware/ServiceDiscoveryInfo;I)V

    .line 1161
    return-void
.end method

.method private synthetic blacklist lambda$onMessageReceived$10(I[B)V
    .registers 5
    .param p1, "peerId"    # I
    .param p2, "message"    # [B

    .line 1190
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    new-instance v1, Landroid/net/wifi/aware/PeerHandle;

    invoke-direct {v1, p1}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onMessageReceived(Landroid/net/wifi/aware/PeerHandle;[B)V

    return-void
.end method

.method private synthetic blacklist lambda$onMessageSendFail$9(I)V
    .registers 3
    .param p1, "messageId"    # I

    .line 1182
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onMessageSendFailed(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onMessageSendSuccess$8(I)V
    .registers 3
    .param p1, "messageId"    # I

    .line 1176
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onMessageSendSucceeded(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onPairingSetupConfirmed$12(ILjava/lang/String;)V
    .registers 5
    .param p1, "peerId"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .line 1203
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    new-instance v1, Landroid/net/wifi/aware/PeerHandle;

    invoke-direct {v1, p1}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    .line 1204
    invoke-virtual {v0, v1, p2}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onPairingSetupSucceeded(Landroid/net/wifi/aware/PeerHandle;Ljava/lang/String;)V

    .line 1203
    return-void
.end method

.method private synthetic blacklist lambda$onPairingSetupConfirmed$13(I)V
    .registers 4
    .param p1, "peerId"    # I

    .line 1206
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    new-instance v1, Landroid/net/wifi/aware/PeerHandle;

    invoke-direct {v1, p1}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    .line 1207
    invoke-virtual {v0, v1}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onPairingSetupFailed(Landroid/net/wifi/aware/PeerHandle;)V

    .line 1206
    return-void
.end method

.method private synthetic blacklist lambda$onPairingSetupRequestReceived$11(II)V
    .registers 5
    .param p1, "peerId"    # I
    .param p2, "requestId"    # I

    .line 1197
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    new-instance v1, Landroid/net/wifi/aware/PeerHandle;

    invoke-direct {v1, p1}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onPairingSetupRequestReceived(Landroid/net/wifi/aware/PeerHandle;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onPairingVerificationConfirmed$14(ILjava/lang/String;)V
    .registers 5
    .param p1, "peerId"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .line 1213
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    new-instance v1, Landroid/net/wifi/aware/PeerHandle;

    invoke-direct {v1, p1}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onPairingVerificationSucceed(Landroid/net/wifi/aware/PeerHandle;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPairingVerificationConfirmed$15(I)V
    .registers 4
    .param p1, "peerId"    # I

    .line 1216
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    new-instance v1, Landroid/net/wifi/aware/PeerHandle;

    invoke-direct {v1, p1}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    .line 1217
    invoke-virtual {v0, v1}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onPairingVerificationFailed(Landroid/net/wifi/aware/PeerHandle;)V

    .line 1216
    return-void
.end method

.method private synthetic blacklist lambda$onRangingResultsReceived$18(Ljava/util/List;)V
    .registers 3
    .param p1, "rangingResults"    # Ljava/util/List;

    .line 1233
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onRangingResultsReceived(Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSessionConfigFail$1()V
    .registers 2

    .line 1069
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-virtual {v0}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onSessionConfigFailed()V

    .line 1070
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    if-nez v0, :cond_e

    .line 1072
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1074
    :cond_e
    return-void
.end method

.method private synthetic blacklist lambda$onSessionResumeFail$4(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 1104
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onSessionResumeFailed(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onSessionStarted$0(I)V
    .registers 2
    .param p1, "sessionId"    # I

    .line 1056
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->onProxySessionStarted(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onSessionSuspendFail$3(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 1092
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onSessionSuspendFailed(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onSessionTerminated$2(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 1080
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->onProxySessionTerminated(I)V

    return-void
.end method


# virtual methods
.method public blacklist onBootstrappingVerificationConfirmed(IZI)V
    .registers 6
    .param p1, "peerId"    # I
    .param p2, "accept"    # Z
    .param p3, "method"    # I

    .line 1222
    if-eqz p2, :cond_d

    .line 1223
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p3}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda7;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    .line 1226
    :cond_d
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda8;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1229
    :goto_17
    return-void
.end method

.method public blacklist onMatch(I[B[BI[BLjava/lang/String;Landroid/net/wifi/aware/AwarePairingConfig;[Landroid/net/wifi/OuiKeyedData;)V
    .registers 20
    .param p1, "peerId"    # I
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "matchFilter"    # [B
    .param p4, "peerCipherSuite"    # I
    .param p5, "scid"    # [B
    .param p6, "pairingAlias"    # Ljava/lang/String;
    .param p7, "pairingConfig"    # Landroid/net/wifi/aware/AwarePairingConfig;
    .param p8, "vendorData"    # [Landroid/net/wifi/OuiKeyedData;

    .line 1113
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda17;

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v3, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda17;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;[BI[BI[BLjava/lang/String;Landroid/net/wifi/aware/AwarePairingConfig;[Landroid/net/wifi/OuiKeyedData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1122
    return-void
.end method

.method public blacklist onMatchExpired(I)V
    .registers 4
    .param p1, "peerId"    # I

    .line 1168
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda10;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1171
    return-void
.end method

.method public blacklist onMatchWithDistance(I[B[BII[BLjava/lang/String;Landroid/net/wifi/aware/AwarePairingConfig;[Landroid/net/wifi/OuiKeyedData;)V
    .registers 22
    .param p1, "peerId"    # I
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "matchFilter"    # [B
    .param p4, "distanceMm"    # I
    .param p5, "peerCipherSuite"    # I
    .param p6, "scid"    # [B
    .param p7, "pairingAlias"    # Ljava/lang/String;
    .param p8, "pairingConfig"    # Landroid/net/wifi/aware/AwarePairingConfig;
    .param p9, "vendorData"    # [Landroid/net/wifi/OuiKeyedData;

    .line 1144
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;[BI[BII[BLjava/lang/String;Landroid/net/wifi/aware/AwarePairingConfig;[Landroid/net/wifi/OuiKeyedData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1162
    return-void
.end method

.method public greylist-max-o onMessageReceived(I[B)V
    .registers 5
    .param p1, "peerId"    # I
    .param p2, "message"    # [B

    .line 1190
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda20;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1192
    return-void
.end method

.method public greylist-max-o onMessageSendFail(II)V
    .registers 5
    .param p1, "messageId"    # I
    .param p2, "reason"    # I

    .line 1182
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda16;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1183
    return-void
.end method

.method public greylist-max-o onMessageSendSuccess(I)V
    .registers 4
    .param p1, "messageId"    # I

    .line 1176
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda12;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1177
    return-void
.end method

.method public blacklist onPairingSetupConfirmed(IZLjava/lang/String;)V
    .registers 6
    .param p1, "peerId"    # I
    .param p2, "accept"    # Z
    .param p3, "alias"    # Ljava/lang/String;

    .line 1202
    if-eqz p2, :cond_d

    .line 1203
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p3}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda4;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    .line 1206
    :cond_d
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda5;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1209
    :goto_17
    return-void
.end method

.method public blacklist onPairingSetupRequestReceived(II)V
    .registers 5
    .param p1, "peerId"    # I
    .param p2, "requestId"    # I

    .line 1196
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda6;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1199
    return-void
.end method

.method public blacklist onPairingVerificationConfirmed(IZLjava/lang/String;)V
    .registers 6
    .param p1, "peerId"    # I
    .param p2, "accept"    # Z
    .param p3, "alias"    # Ljava/lang/String;

    .line 1212
    if-eqz p2, :cond_d

    .line 1213
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p3}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    .line 1216
    :cond_d
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1219
    :goto_17
    return-void
.end method

.method public greylist-max-o onProxySessionStarted(I)V
    .registers 6
    .param p1, "sessionId"    # I

    .line 1241
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    const-string v1, "WifiAwareManager"

    if-nez v0, :cond_38

    .line 1248
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 1249
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_16

    .line 1250
    const-string v2, "onProxySessionStarted: mgr GC\'d"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    return-void

    .line 1254
    :cond_16
    iget-boolean v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mIsPublish:Z

    if-eqz v1, :cond_29

    .line 1255
    new-instance v1, Landroid/net/wifi/aware/PublishDiscoverySession;

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mClientId:I

    invoke-direct {v1, v0, v2, p1}, Landroid/net/wifi/aware/PublishDiscoverySession;-><init>(Landroid/net/wifi/aware/WifiAwareManager;II)V

    .line 1257
    .local v1, "session":Landroid/net/wifi/aware/PublishDiscoverySession;
    iput-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    .line 1258
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-virtual {v2, v1}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onPublishStarted(Landroid/net/wifi/aware/PublishDiscoverySession;)V

    .line 1259
    .end local v1    # "session":Landroid/net/wifi/aware/PublishDiscoverySession;
    goto :goto_37

    .line 1261
    :cond_29
    new-instance v1, Landroid/net/wifi/aware/SubscribeDiscoverySession;

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mClientId:I

    invoke-direct {v1, v0, v2, p1}, Landroid/net/wifi/aware/SubscribeDiscoverySession;-><init>(Landroid/net/wifi/aware/WifiAwareManager;II)V

    .line 1262
    .local v1, "session":Landroid/net/wifi/aware/SubscribeDiscoverySession;
    iput-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    .line 1263
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-virtual {v2, v1}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onSubscribeStarted(Landroid/net/wifi/aware/SubscribeDiscoverySession;)V

    .line 1265
    .end local v1    # "session":Landroid/net/wifi/aware/SubscribeDiscoverySession;
    :goto_37
    return-void

    .line 1242
    .end local v0    # "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionStarted: sessionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": session already created!?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o onProxySessionTerminated(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 1269
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    if-eqz v0, :cond_d

    .line 1270
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    invoke-virtual {v0}, Landroid/net/wifi/aware/DiscoverySession;->setTerminated()V

    .line 1271
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    goto :goto_14

    .line 1273
    :cond_d
    const-string v0, "WifiAwareManager"

    const-string v1, "Proxy: onSessionTerminated called but mSession is null!?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :goto_14
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1276
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-virtual {v0}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onSessionTerminated()V

    .line 1277
    return-void
.end method

.method public blacklist onRangingResultsReceived(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/rtt/RangingResult;",
            ">;)V"
        }
    .end annotation

    .line 1233
    .local p1, "rangingResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/rtt/RangingResult;>;"
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda18;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1234
    return-void
.end method

.method public greylist-max-o onSessionConfigFail(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 1068
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda19;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1075
    return-void
.end method

.method public greylist-max-o onSessionConfigSuccess()V
    .registers 4

    .line 1062
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda13;

    invoke-direct {v2, v1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda13;-><init>(Landroid/net/wifi/aware/DiscoverySessionCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1063
    return-void
.end method

.method public blacklist onSessionResumeFail(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 1104
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda9;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1105
    return-void
.end method

.method public blacklist onSessionResumeSucceeded()V
    .registers 4

    .line 1098
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda14;

    invoke-direct {v2, v1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda14;-><init>(Landroid/net/wifi/aware/DiscoverySessionCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1099
    return-void
.end method

.method public greylist-max-o onSessionStarted(I)V
    .registers 4
    .param p1, "sessionId"    # I

    .line 1056
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1057
    return-void
.end method

.method public blacklist onSessionSuspendFail(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 1092
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda15;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1093
    return-void
.end method

.method public blacklist onSessionSuspendSucceeded()V
    .registers 4

    .line 1086
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda21;

    invoke-direct {v2, v1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda21;-><init>(Landroid/net/wifi/aware/DiscoverySessionCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1087
    return-void
.end method

.method public greylist-max-o onSessionTerminated(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 1080
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$$ExternalSyntheticLambda11;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1081
    return-void
.end method
