.class public final Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;
.super Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;
.source "IkeSaPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChildProposal"
.end annotation


# instance fields
.field private blacklist mChildSpiResource:Landroid/net/IpSecManager$SecurityParameterIndex;

.field public final blacklist saProposal:Landroid/net/ipsec/ike/ChildSaProposal;


# direct methods
.method constructor blacklist <init>(BJLandroid/net/ipsec/ike/ChildSaProposal;Z)V
    .registers 13
    .param p1, "number"    # B
    .param p2, "spi"    # J
    .param p4, "saProposal"    # Landroid/net/ipsec/ike/ChildSaProposal;
    .param p5, "hasUnrecognizedTransform"    # Z

    .line 929
    const/4 v2, 0x3

    const/4 v3, 0x4

    move-object v0, p0

    move v1, p1

    move-wide v4, p2

    move v6, p5

    .end local p1    # "number":B
    .end local p2    # "spi":J
    .end local p5    # "hasUnrecognizedTransform":Z
    .local v1, "number":B
    .local v4, "spi":J
    .local v6, "hasUnrecognizedTransform":Z
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;-><init>(BIBJZ)V

    .line 935
    iput-object p4, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->saProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    .line 936
    return-void
.end method

.method private constructor blacklist <init>(BLandroid/net/IpSecManager$SecurityParameterIndex;Landroid/net/ipsec/ike/ChildSaProposal;)V
    .registers 12
    .param p1, "number"    # B
    .param p2, "childSpiResource"    # Landroid/net/IpSecManager$SecurityParameterIndex;
    .param p3, "saProposal"    # Landroid/net/ipsec/ike/ChildSaProposal;

    .line 941
    nop

    .line 945
    invoke-virtual {p2}, Landroid/net/IpSecManager$SecurityParameterIndex;->getSpi()I

    move-result v0

    int-to-long v5, v0

    .line 941
    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    .end local p1    # "number":B
    .local v2, "number":B
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;-><init>(BIBJZ)V

    .line 947
    iput-object p2, v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->mChildSpiResource:Landroid/net/IpSecManager$SecurityParameterIndex;

    .line 948
    iput-object p3, v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->saProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    .line 949
    return-void
.end method

.method static blacklist createChildProposal(BLandroid/net/ipsec/ike/ChildSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;
    .registers 6
    .param p0, "number"    # B
    .param p1, "saProposal"    # Landroid/net/ipsec/ike/ChildSaProposal;
    .param p2, "ipSecSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 963
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;

    .line 964
    invoke-virtual {p2, p3}, Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;->allocateSpi(Ljava/net/InetAddress;)Landroid/net/IpSecManager$SecurityParameterIndex;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;-><init>(BLandroid/net/IpSecManager$SecurityParameterIndex;Landroid/net/ipsec/ike/ChildSaProposal;)V

    .line 963
    return-object v0
.end method


# virtual methods
.method blacklist allocateResourceForRemoteChildSpi(Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "ipSecSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .param p2, "remoteAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;
        }
    .end annotation

    .line 982
    iget-wide v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->spi:J

    long-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;->allocateSpi(Ljava/net/InetAddress;I)Landroid/net/IpSecManager$SecurityParameterIndex;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->mChildSpiResource:Landroid/net/IpSecManager$SecurityParameterIndex;

    .line 983
    return-void
.end method

.method public blacklist getChildSpiResource()Landroid/net/IpSecManager$SecurityParameterIndex;
    .registers 2

    .line 996
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->mChildSpiResource:Landroid/net/IpSecManager$SecurityParameterIndex;

    return-object v0
.end method

.method public blacklist getSaProposal()Landroid/net/ipsec/ike/SaProposal;
    .registers 2

    .line 987
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->saProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    return-object v0
.end method

.method blacklist releaseSpiResourceIfExists()V
    .registers 2

    .line 969
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->mChildSpiResource:Landroid/net/IpSecManager$SecurityParameterIndex;

    if-nez v0, :cond_5

    return-void

    .line 971
    :cond_5
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->mChildSpiResource:Landroid/net/IpSecManager$SecurityParameterIndex;

    invoke-virtual {v0}, Landroid/net/IpSecManager$SecurityParameterIndex;->close()V

    .line 972
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->mChildSpiResource:Landroid/net/IpSecManager$SecurityParameterIndex;

    .line 973
    return-void
.end method
