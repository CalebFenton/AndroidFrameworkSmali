.class Landroid/net/NetworkAgent$NetworkAgentBinder;
.super Landroid/net/INetworkAgent$Stub;
.source "NetworkAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkAgentBinder"
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 852
    const-class v0, Landroid/net/NetworkAgent$NetworkAgentBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/NetworkAgent$NetworkAgentBinder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 856
    invoke-direct {p0}, Landroid/net/INetworkAgent$Stub;-><init>()V

    .line 857
    iput-object p1, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    .line 858
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Handler;Landroid/net/NetworkAgent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/NetworkAgent$NetworkAgentBinder;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public blacklist onAddNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketData;)V
    .registers 7
    .param p1, "slot"    # I
    .param p2, "packetData"    # Landroid/net/NattKeepalivePacketData;

    .line 924
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 926
    return-void
.end method

.method public blacklist onAddTcpKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketData;)V
    .registers 7
    .param p1, "slot"    # I
    .param p2, "packetData"    # Landroid/net/TcpKeepalivePacketData;

    .line 931
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 933
    return-void
.end method

.method public blacklist onBandwidthUpdateRequested()V
    .registers 4

    .line 872
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 873
    return-void
.end method

.method public blacklist onDisconnected()V
    .registers 4

    .line 867
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xdb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 868
    return-void
.end method

.method public blacklist onDscpPolicyStatusUpdated(II)V
    .registers 6
    .param p1, "policyId"    # I
    .param p2, "status"    # I

    .line 973
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe4

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 975
    return-void
.end method

.method public blacklist onNetworkCreated()V
    .registers 4

    .line 962
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xde

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 963
    return-void
.end method

.method public blacklist onNetworkDestroyed()V
    .registers 4

    .line 967
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xdf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 968
    return-void
.end method

.method public blacklist onPreventAutomaticReconnect()V
    .registers 4

    .line 918
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 919
    return-void
.end method

.method public blacklist onQosCallbackUnregistered(I)V
    .registers 7
    .param p1, "qosCallbackId"    # I

    .line 956
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xdd

    invoke-virtual {v1, v4, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 958
    return-void
.end method

.method public blacklist onQosFilterCallbackRegistered(ILandroid/net/connectivity/android/net/QosFilterParcelable;)V
    .registers 8
    .param p1, "qosCallbackId"    # I
    .param p2, "qosFilterParcelable"    # Landroid/net/connectivity/android/net/QosFilterParcelable;

    .line 944
    invoke-virtual {p2}, Landroid/net/connectivity/android/net/QosFilterParcelable;->getQosFilter()Landroid/net/QosFilter;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 945
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    .line 947
    invoke-virtual {p2}, Landroid/net/connectivity/android/net/QosFilterParcelable;->getQosFilter()Landroid/net/QosFilter;

    move-result-object v2

    .line 946
    const/16 v3, 0xdc

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 945
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 948
    return-void

    .line 951
    :cond_19
    sget-object v0, Landroid/net/NetworkAgent$NetworkAgentBinder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onQosFilterCallbackRegistered: qos filter is null."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    return-void
.end method

.method public blacklist onRegistered()V
    .registers 4

    .line 862
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xda

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 863
    return-void
.end method

.method public blacklist onRemoveKeepalivePacketFilter(I)V
    .registers 6
    .param p1, "slot"    # I

    .line 937
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 939
    return-void
.end method

.method public blacklist onSaveAcceptUnvalidated(Z)V
    .registers 6
    .param p1, "acceptUnvalidated"    # Z

    .line 887
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    .line 888
    nop

    .line 887
    const/16 v2, 0xd1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 889
    return-void
.end method

.method public blacklist onSignalStrengthThresholdsUpdated([I)V
    .registers 5
    .param p1, "thresholds"    # [I

    .line 912
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 914
    return-void
.end method

.method public blacklist onStartNattSocketKeepalive(IILandroid/net/NattKeepalivePacketData;)V
    .registers 7
    .param p1, "slot"    # I
    .param p2, "intervalDurationMs"    # I
    .param p3, "packetData"    # Landroid/net/NattKeepalivePacketData;

    .line 894
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd3

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 896
    return-void
.end method

.method public blacklist onStartTcpSocketKeepalive(IILandroid/net/TcpKeepalivePacketData;)V
    .registers 7
    .param p1, "slot"    # I
    .param p2, "intervalDurationMs"    # I
    .param p3, "packetData"    # Landroid/net/TcpKeepalivePacketData;

    .line 901
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd3

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 903
    return-void
.end method

.method public blacklist onStopSocketKeepalive(I)V
    .registers 6
    .param p1, "slot"    # I

    .line 907
    iget-object v0, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 908
    return-void
.end method

.method public blacklist onValidationStatusChanged(ILjava/lang/String;)V
    .registers 8
    .param p1, "validationStatus"    # I
    .param p2, "captivePortalUrl"    # Ljava/lang/String;

    .line 879
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 880
    .local v0, "redirectUrlBundle":Landroid/os/Bundle;
    const-string v1, "redirect URL"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    iget-object v1, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/net/NetworkAgent$NetworkAgentBinder;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xcf

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 883
    return-void
.end method
