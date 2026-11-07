.class final Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;
.super Ljava/lang/Object;
.source "SaRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/SaRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ChildSaRecordConfig"
.end annotation


# instance fields
.field public final blacklist context:Landroid/content/Context;

.field public final blacklist encryptionAlgo:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

.field public final blacklist hasIntegrityAlgo:Z

.field public final blacklist ikePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

.field public final blacklist initAddress:Ljava/net/InetAddress;

.field public final blacklist initSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

.field public final blacklist integrityAlgo:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

.field public final blacklist isLocalInit:Z

.field public final blacklist isTransport:Z

.field public final blacklist respAddress:Ljava/net/InetAddress;

.field public final blacklist respSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

.field public final blacklist saLifetimeAlarmScheduler:Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

.field public final blacklist skD:[B

.field public final blacklist udpEncapSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/net/IpSecManager$SecurityParameterIndex;Landroid/net/IpSecManager$SecurityParameterIndex;Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/IpSecManager$UdpEncapsulationSocket;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[BZZLcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initSpi"    # Landroid/net/IpSecManager$SecurityParameterIndex;
    .param p3, "respSpi"    # Landroid/net/IpSecManager$SecurityParameterIndex;
    .param p4, "localAddress"    # Ljava/net/InetAddress;
    .param p5, "remoteAddress"    # Ljava/net/InetAddress;
    .param p6, "udpEncapSocket"    # Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .param p7, "ikePrf"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    .param p8, "integrityAlgo"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p9, "encryptionAlgo"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .param p10, "skD"    # [B
    .param p11, "isTransport"    # Z
    .param p12, "isLocalInit"    # Z
    .param p13, "saLifetimeAlarmScheduler"    # Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->context:Landroid/content/Context;

    .line 612
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->initSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    .line 613
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->respSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    .line 614
    if-eqz p12, :cond_d

    move-object v0, p4

    goto :goto_e

    :cond_d
    move-object v0, p5

    :goto_e
    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->initAddress:Ljava/net/InetAddress;

    .line 615
    if-eqz p12, :cond_14

    move-object v0, p5

    goto :goto_15

    :cond_14
    move-object v0, p4

    :goto_15
    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->respAddress:Ljava/net/InetAddress;

    .line 616
    iput-object p6, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->udpEncapSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    .line 617
    iput-object p7, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->ikePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    .line 618
    iput-object p8, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->integrityAlgo:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    .line 619
    iput-object p9, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->encryptionAlgo:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    .line 620
    iput-object p10, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->skD:[B

    .line 621
    iput-boolean p11, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->isTransport:Z

    .line 622
    iput-boolean p12, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->isLocalInit:Z

    .line 623
    if-eqz p8, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->hasIntegrityAlgo:Z

    .line 624
    iput-object p13, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->saLifetimeAlarmScheduler:Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

    .line 625
    return-void
.end method
