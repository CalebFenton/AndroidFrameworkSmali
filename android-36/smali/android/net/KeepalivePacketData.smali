.class public Landroid/net/KeepalivePacketData;
.super Ljava/lang/Object;
.source "KeepalivePacketData.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "KeepalivePacketData"


# instance fields
.field private final blacklist mDstAddress:Ljava/net/InetAddress;

.field private final blacklist mDstPort:I

.field private final greylist-max-o mPacket:[B

.field private final blacklist mSrcAddress:Ljava/net/InetAddress;

.field private final blacklist mSrcPort:I


# direct methods
.method protected constructor whitelist <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[B)V
    .registers 9
    .param p1, "srcAddress"    # Ljava/net/InetAddress;
    .param p2, "srcPort"    # I
    .param p3, "dstAddress"    # Ljava/net/InetAddress;
    .param p4, "dstPort"    # I
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/InvalidPacketException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroid/net/KeepalivePacketData;->mSrcAddress:Ljava/net/InetAddress;

    .line 70
    iput-object p3, p0, Landroid/net/KeepalivePacketData;->mDstAddress:Ljava/net/InetAddress;

    .line 71
    iput p2, p0, Landroid/net/KeepalivePacketData;->mSrcPort:I

    .line 72
    iput p4, p0, Landroid/net/KeepalivePacketData;->mDstPort:I

    .line 73
    iput-object p5, p0, Landroid/net/KeepalivePacketData;->mPacket:[B

    .line 76
    const-string v0, "KeepalivePacketData"

    if-eqz p1, :cond_43

    if-eqz p3, :cond_43

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 83
    invoke-static {p2}, Landroid/net/connectivity/com/android/net/module/util/IpUtils;->isValidUdpOrTcpPort(I)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-static {p4}, Landroid/net/connectivity/com/android/net/module/util/IpUtils;->isValidUdpOrTcpPort(I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 87
    return-void

    .line 84
    :cond_36
    const-string v1, "Invalid ports in KeepalivePacketData"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Landroid/net/InvalidPacketException;

    const/16 v1, -0x16

    invoke-direct {v0, v1}, Landroid/net/InvalidPacketException;-><init>(I)V

    throw v0

    .line 78
    :cond_43
    const-string v1, "Invalid or mismatched InetAddresses in KeepalivePacketData"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Landroid/net/InvalidPacketException;

    const/16 v1, -0x15

    invoke-direct {v0, v1}, Landroid/net/InvalidPacketException;-><init>(I)V

    throw v0
.end method


# virtual methods
.method public whitelist getDstAddress()Ljava/net/InetAddress;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/net/KeepalivePacketData;->mDstAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public whitelist getDstPort()I
    .registers 2

    .line 108
    iget v0, p0, Landroid/net/KeepalivePacketData;->mDstPort:I

    return v0
.end method

.method public whitelist getPacket()[B
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/net/KeepalivePacketData;->mPacket:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist getSrcAddress()Ljava/net/InetAddress;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/net/KeepalivePacketData;->mSrcAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public whitelist getSrcPort()I
    .registers 2

    .line 103
    iget v0, p0, Landroid/net/KeepalivePacketData;->mSrcPort:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeepalivePacketData[srcAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/KeepalivePacketData;->mSrcAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dstAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/KeepalivePacketData;->mDstAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", srcPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/KeepalivePacketData;->mSrcPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dstPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/KeepalivePacketData;->mDstPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packet.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/KeepalivePacketData;->mPacket:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
