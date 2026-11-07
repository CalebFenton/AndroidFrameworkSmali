.class Lcom/android/internal/net/ipsec/ike/SaRecord$IpSecTransformHelper;
.super Ljava/lang/Object;
.source "SaRecord.java"

# interfaces
.implements Lcom/android/internal/net/ipsec/ike/SaRecord$IIpSecTransformHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/SaRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IpSecTransformHelper"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "IpSecTransformHelper"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist makeIpSecTransform(Landroid/content/Context;Ljava/net/InetAddress;Landroid/net/IpSecManager$UdpEncapsulationSocket;Landroid/net/IpSecManager$SecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[BZ)Landroid/net/IpSecTransform;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceAddress"    # Ljava/net/InetAddress;
    .param p3, "udpEncapSocket"    # Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .param p4, "spi"    # Landroid/net/IpSecManager$SecurityParameterIndex;
    .param p5, "integrityAlgo"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p6, "encryptionAlgo"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .param p7, "integrityKey"    # [B
    .param p8, "encryptionKey"    # [B
    .param p9, "isTransport"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    new-instance v0, Landroid/net/IpSecTransform$Builder;

    invoke-direct {v0, p1}, Landroid/net/IpSecTransform$Builder;-><init>(Landroid/content/Context;)V

    .line 509
    .local v0, "builder":Landroid/net/IpSecTransform$Builder;
    invoke-virtual {p6}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->isAead()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 510
    nop

    .line 511
    invoke-virtual {p6, p8}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->buildIpSecAlgorithmWithKey([B)Landroid/net/IpSecAlgorithm;

    move-result-object v1

    .line 510
    invoke-virtual {v0, v1}, Landroid/net/IpSecTransform$Builder;->setAuthenticatedEncryption(Landroid/net/IpSecAlgorithm;)Landroid/net/IpSecTransform$Builder;

    goto :goto_22

    .line 513
    :cond_14
    invoke-virtual {p6, p8}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->buildIpSecAlgorithmWithKey([B)Landroid/net/IpSecAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/IpSecTransform$Builder;->setEncryption(Landroid/net/IpSecAlgorithm;)Landroid/net/IpSecTransform$Builder;

    .line 514
    invoke-virtual {p5, p7}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->buildIpSecAlgorithmWithKey([B)Landroid/net/IpSecAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/IpSecTransform$Builder;->setAuthentication(Landroid/net/IpSecAlgorithm;)Landroid/net/IpSecTransform$Builder;

    .line 517
    :goto_22
    if-eqz p3, :cond_33

    instance-of v1, p2, Ljava/net/Inet6Address;

    if-eqz v1, :cond_33

    .line 518
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    const-string v2, "IpSecTransformHelper"

    const-string v3, "Kernel does not support UDP encapsulation for IPv6 SAs"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_33
    if-eqz p3, :cond_3e

    instance-of v1, p2, Ljava/net/Inet4Address;

    if-eqz v1, :cond_3e

    .line 521
    const/16 v1, 0x1194

    invoke-virtual {v0, p3, v1}, Landroid/net/IpSecTransform$Builder;->setIpv4Encapsulation(Landroid/net/IpSecManager$UdpEncapsulationSocket;I)Landroid/net/IpSecTransform$Builder;

    .line 525
    :cond_3e
    if-eqz p9, :cond_45

    .line 526
    invoke-virtual {v0, p2, p4}, Landroid/net/IpSecTransform$Builder;->buildTransportModeTransform(Ljava/net/InetAddress;Landroid/net/IpSecManager$SecurityParameterIndex;)Landroid/net/IpSecTransform;

    move-result-object v1

    return-object v1

    .line 528
    :cond_45
    invoke-virtual {v0, p2, p4}, Landroid/net/IpSecTransform$Builder;->buildTunnelModeTransform(Ljava/net/InetAddress;Landroid/net/IpSecManager$SecurityParameterIndex;)Landroid/net/IpSecTransform;

    move-result-object v1

    return-object v1
.end method
