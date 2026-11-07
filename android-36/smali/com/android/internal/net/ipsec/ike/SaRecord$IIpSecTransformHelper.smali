.class interface abstract Lcom/android/internal/net/ipsec/ike/SaRecord$IIpSecTransformHelper;
.super Ljava/lang/Object;
.source "SaRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/SaRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IIpSecTransformHelper"
.end annotation


# virtual methods
.method public abstract blacklist makeIpSecTransform(Landroid/content/Context;Ljava/net/InetAddress;Landroid/net/IpSecManager$UdpEncapsulationSocket;Landroid/net/IpSecManager$SecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[BZ)Landroid/net/IpSecTransform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
