.class public Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;
.super Lcom/android/internal/net/ipsec/ike/SaRecord;
.source "SaRecord.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/SaRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildSaRecord"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/net/ipsec/ike/SaRecord;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ChildSaRecord"


# instance fields
.field private final blacklist mInboundSpi:I

.field private final blacklist mInboundTransform:Landroid/net/IpSecTransform;

.field private final blacklist mOutboundSpi:I

.field private final blacklist mOutboundTransform:Landroid/net/IpSecTransform;


# direct methods
.method constructor blacklist <init>(IIZ[B[B[B[B[B[BLandroid/net/IpSecTransform;Landroid/net/IpSecTransform;Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;)V
    .registers 22
    .param p1, "inSpi"    # I
    .param p2, "outSpi"    # I
    .param p3, "localInit"    # Z
    .param p4, "nonceInit"    # [B
    .param p5, "nonceResp"    # [B
    .param p6, "skAi"    # [B
    .param p7, "skAr"    # [B
    .param p8, "skEi"    # [B
    .param p9, "skEr"    # [B
    .param p10, "inTransform"    # Landroid/net/IpSecTransform;
    .param p11, "outTransform"    # Landroid/net/IpSecTransform;
    .param p12, "saLifetimeAlarmScheduler"    # Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

    .line 1001
    move-object v0, p0

    move v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/net/ipsec/ike/SaRecord;-><init>(Z[B[B[B[B[B[BLcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;)V

    .line 1011
    iput p1, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->mInboundSpi:I

    .line 1012
    iput p2, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->mOutboundSpi:I

    .line 1013
    move-object/from16 v1, p10

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->mInboundTransform:Landroid/net/IpSecTransform;

    .line 1014
    move-object/from16 v2, p11

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->mOutboundTransform:Landroid/net/IpSecTransform;

    .line 1015
    return-void
.end method

.method static blacklist makeChildSaRecord(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroid/net/IpSecManager$SecurityParameterIndex;Landroid/net/IpSecManager$SecurityParameterIndex;Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/IpSecManager$UdpEncapsulationSocket;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[BZZLcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;)Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;
    .registers 30
    .param p0, "context"    # Landroid/content/Context;
    .param p3, "initSpi"    # Landroid/net/IpSecManager$SecurityParameterIndex;
    .param p4, "respSpi"    # Landroid/net/IpSecManager$SecurityParameterIndex;
    .param p5, "localAddress"    # Ljava/net/InetAddress;
    .param p6, "remoteAddress"    # Ljava/net/InetAddress;
    .param p7, "udpEncapSocket"    # Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .param p8, "prf"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    .param p9, "integrityAlgo"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p10, "encryptionAlgo"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .param p11, "skD"    # [B
    .param p12, "isTransport"    # Z
    .param p13, "isLocalInit"    # Z
    .param p14, "saLifetimeAlarmScheduler"    # Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Landroid/net/IpSecManager$SecurityParameterIndex;",
            "Landroid/net/IpSecManager$SecurityParameterIndex;",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "Landroid/net/IpSecManager$UdpEncapsulationSocket;",
            "Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;",
            "Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;",
            "Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;",
            "[BZZ",
            "Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;",
            ")",
            "Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1039
    .local p1, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local p2, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/SaRecord;->-$$Nest$sfgetsSaRecordHelper()Lcom/android/internal/net/ipsec/ike/SaRecord$ISaRecordHelper;

    move-result-object v0

    new-instance v1, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;

    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    invoke-direct/range {v1 .. v14}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;-><init>(Landroid/content/Context;Landroid/net/IpSecManager$SecurityParameterIndex;Landroid/net/IpSecManager$SecurityParameterIndex;Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/IpSecManager$UdpEncapsulationSocket;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[BZZLcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;)V

    move-object/from16 v2, p2

    move-object v3, v1

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/SaRecord$ISaRecordHelper;->makeChildSaRecord(Ljava/util/List;Ljava/util/List;Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;)Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 1099
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/SaRecord;->close()V

    .line 1100
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->mInboundTransform:Landroid/net/IpSecTransform;

    invoke-virtual {v0}, Landroid/net/IpSecTransform;->close()V

    .line 1101
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->mOutboundTransform:Landroid/net/IpSecTransform;

    invoke-virtual {v0}, Landroid/net/IpSecTransform;->close()V

    .line 1102
    return-void
.end method

.method public blacklist compareTo(Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;)I
    .registers 3
    .param p1, "record"    # Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 1093
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 974
    check-cast p1, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->compareTo(Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;)I

    move-result p1

    return p1
.end method

.method blacklist getInboundIpSecTransform()Landroid/net/IpSecTransform;
    .registers 2

    .line 1075
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->mInboundTransform:Landroid/net/IpSecTransform;

    return-object v0
.end method

.method blacklist getLocalSpi()I
    .registers 2

    .line 1065
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->mInboundSpi:I

    return v0
.end method

.method blacklist getOutboundIpSecTransform()Landroid/net/IpSecTransform;
    .registers 2

    .line 1080
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->mOutboundTransform:Landroid/net/IpSecTransform;

    return-object v0
.end method

.method blacklist getRemoteSpi()I
    .registers 2

    .line 1070
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->mOutboundSpi:I

    return v0
.end method

.method protected blacklist getTag()Ljava/lang/String;
    .registers 2

    .line 1060
    const-string v0, "ChildSaRecord"

    return-object v0
.end method
