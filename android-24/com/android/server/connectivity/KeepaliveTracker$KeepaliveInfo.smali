.class Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
.super Ljava/lang/Object;
.source "KeepaliveTracker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/KeepaliveTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeepaliveInfo"
.end annotation


# instance fields
.field public isStarted:Z

.field private final mBinder:Landroid/os/IBinder;

.field private final mInterval:I

.field private final mMessenger:Landroid/os/Messenger;

.field private final mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private final mPacket:Lcom/android/server/connectivity/KeepalivePacketData;

.field private final mPid:I

.field private mSlot:I

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/connectivity/KeepaliveTracker;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)I
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isValid()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>(Lcom/android/server/connectivity/KeepaliveTracker;Landroid/os/Messenger;Landroid/os/IBinder;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/KeepalivePacketData;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/connectivity/KeepaliveTracker;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p5, "packet"    # Lcom/android/server/connectivity/KeepalivePacketData;
    .param p6, "interval"    # I

    #@0
    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 92
    const/4 v1, -0x1

    #@6
    iput v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    #@8
    .line 103
    iput-object p2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mMessenger:Landroid/os/Messenger;

    #@a
    .line 104
    iput-object p3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mBinder:Landroid/os/IBinder;

    #@c
    .line 105
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@f
    move-result v1

    #@10
    iput v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPid:I

    #@12
    .line 106
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@15
    move-result v1

    #@16
    iput v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mUid:I

    #@18
    .line 108
    iput-object p4, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1a
    .line 109
    iput-object p5, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Lcom/android/server/connectivity/KeepalivePacketData;

    #@1c
    .line 110
    iput p6, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mInterval:I

    #@1e
    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mBinder:Landroid/os/IBinder;

    #@20
    const/4 v2, 0x0

    #@21
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 102
    :goto_0
    return-void

    #@25
    .line 114
    :catch_0
    move-exception v0

    #@26
    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->binderDied()V

    #@29
    goto :goto_0
.end method

.method private checkInterval()I
    .locals 2

    #@0
    .prologue
    .line 175
    iget v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mInterval:I

    #@2
    const/16 v1, 0x14

    #@4
    if-lt v0, v1, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/16 v0, -0x18

    #@a
    goto :goto_0
.end method

.method private checkNetworkConnected()I
    .locals 1

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@2
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 159
    const/16 v0, -0x14

    #@c
    return v0

    #@d
    .line 161
    :cond_0
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method private checkSourceAddress()I
    .locals 3

    #@0
    .prologue
    .line 166
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@2
    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@4
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "address$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljava/net/InetAddress;

    #@18
    .line 167
    .local v0, "address":Ljava/net/InetAddress;
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Lcom/android/server/connectivity/KeepalivePacketData;

    #@1a
    iget-object v2, v2, Lcom/android/server/connectivity/KeepalivePacketData;->srcAddress:Ljava/net/InetAddress;

    #@1c
    invoke-virtual {v0, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 168
    const/4 v2, 0x0

    #@23
    return v2

    #@24
    .line 171
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_1
    const/16 v2, -0x15

    #@26
    return v2
.end method

.method private isValid()I
    .locals 3

    #@0
    .prologue
    .line 179
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@2
    monitor-enter v2

    #@3
    .line 180
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->checkInterval()I

    #@6
    move-result v0

    #@7
    .line 181
    .local v0, "error":I
    if-nez v0, :cond_0

    #@9
    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->checkNetworkConnected()I

    #@c
    move-result v0

    #@d
    .line 182
    :cond_0
    if-nez v0, :cond_1

    #@f
    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->checkSourceAddress()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v0

    #@13
    :cond_1
    monitor-exit v2

    #@14
    .line 183
    return v0

    #@15
    .line 179
    .end local v0    # "error":I
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    #@2
    invoke-static {v0}, Lcom/android/server/connectivity/KeepaliveTracker;->-get0(Lcom/android/server/connectivity/KeepaliveTracker;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    .line 148
    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    #@8
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@a
    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@c
    .line 147
    const v3, 0x8100c

    #@f
    .line 148
    const/16 v4, -0xa

    #@11
    .line 146
    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@18
    .line 144
    return-void
.end method

.method public getNai()Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@2
    return-object v0
.end method

.method notifyMessenger(II)V
    .locals 2
    .param p1, "slot"    # I
    .param p2, "err"    # I

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    #@2
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mMessenger:Landroid/os/Messenger;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyMessenger(Landroid/os/Messenger;II)V

    #@7
    .line 139
    return-void
.end method

.method start(I)V
    .locals 5
    .param p1, "slot"    # I

    #@0
    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isValid()I

    #@3
    move-result v0

    #@4
    .line 189
    .local v0, "error":I
    if-nez v0, :cond_0

    #@6
    .line 190
    iput p1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    #@8
    .line 191
    const-string/jumbo v1, "KeepaliveTracker"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Starting keepalive "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    iget v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, " on "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@26
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 192
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@37
    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@39
    iget v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mInterval:I

    #@3b
    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Lcom/android/server/connectivity/KeepalivePacketData;

    #@3d
    const v4, 0x8100b

    #@40
    invoke-virtual {v1, v4, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@43
    .line 187
    return-void

    #@44
    .line 194
    :cond_0
    const/4 v1, -0x1

    #@45
    invoke-virtual {p0, v1, v0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->notifyMessenger(II)V

    #@48
    .line 195
    return-void
.end method

.method stop(I)V
    .locals 4
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 200
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 201
    .local v0, "uid":I
    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mUid:I

    #@6
    if-eq v0, v1, :cond_0

    #@8
    const/16 v1, 0x3e8

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 206
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isStarted:Z

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 207
    const-string/jumbo v1, "KeepaliveTracker"

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Stopping keepalive "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    iget v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    const-string/jumbo v3, " on "

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@2e
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 208
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@3f
    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@41
    iget v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    #@43
    const v3, 0x8100c

    #@46
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    #@49
    .line 212
    :cond_1
    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    #@4b
    invoke-virtual {p0, v1, p1}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->notifyMessenger(II)V

    #@4e
    .line 213
    invoke-virtual {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->unlinkDeathRecipient()V

    #@51
    .line 199
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    const-string/jumbo v1, "KeepaliveInfo ["

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@8
    .line 125
    const-string/jumbo v1, " network="

    #@b
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e
    move-result-object v0

    #@f
    .line 125
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@11
    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@13
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@16
    move-result-object v0

    #@17
    .line 126
    const-string/jumbo v1, " isStarted="

    #@1a
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1d
    move-result-object v0

    #@1e
    .line 126
    iget-boolean v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isStarted:Z

    #@20
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    #@23
    move-result-object v0

    #@24
    .line 127
    const-string/jumbo v1, " "

    #@27
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    move-result-object v0

    #@2b
    .line 128
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Lcom/android/server/connectivity/KeepalivePacketData;

    #@2d
    iget-object v1, v1, Lcom/android/server/connectivity/KeepalivePacketData;->srcAddress:Ljava/net/InetAddress;

    #@2f
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Lcom/android/server/connectivity/KeepalivePacketData;

    #@31
    iget v2, v2, Lcom/android/server/connectivity/KeepalivePacketData;->srcPort:I

    #@33
    invoke-static {v1, v2}, Landroid/net/util/IpUtils;->addressAndPortToString(Ljava/net/InetAddress;I)Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3a
    move-result-object v0

    #@3b
    .line 129
    const-string/jumbo v1, "->"

    #@3e
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@41
    move-result-object v0

    #@42
    .line 130
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Lcom/android/server/connectivity/KeepalivePacketData;

    #@44
    iget-object v1, v1, Lcom/android/server/connectivity/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    #@46
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Lcom/android/server/connectivity/KeepalivePacketData;

    #@48
    iget v2, v2, Lcom/android/server/connectivity/KeepalivePacketData;->dstPort:I

    #@4a
    invoke-static {v1, v2}, Landroid/net/util/IpUtils;->addressAndPortToString(Ljava/net/InetAddress;I)Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@51
    move-result-object v0

    #@52
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v2, " interval="

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    iget v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mInterval:I

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6b
    move-result-object v0

    #@6c
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v2, " data="

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Lcom/android/server/connectivity/KeepalivePacketData;

    #@7a
    iget-object v2, v2, Lcom/android/server/connectivity/KeepalivePacketData;->data:[B

    #@7c
    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v1

    #@84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v1

    #@88
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8b
    move-result-object v0

    #@8c
    .line 133
    const-string/jumbo v1, " uid="

    #@8f
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@92
    move-result-object v0

    #@93
    .line 133
    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mUid:I

    #@95
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@98
    move-result-object v0

    #@99
    .line 133
    const-string/jumbo v1, " pid="

    #@9c
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9f
    move-result-object v0

    #@a0
    .line 133
    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPid:I

    #@a2
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@a5
    move-result-object v0

    #@a6
    .line 134
    const-string/jumbo v1, " ]"

    #@a9
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ac
    move-result-object v0

    #@ad
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@b0
    move-result-object v0

    #@b1
    return-object v0
.end method

.method unlinkDeathRecipient()V
    .locals 2

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mBinder:Landroid/os/IBinder;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 153
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mBinder:Landroid/os/IBinder;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@a
    .line 151
    :cond_0
    return-void
.end method
