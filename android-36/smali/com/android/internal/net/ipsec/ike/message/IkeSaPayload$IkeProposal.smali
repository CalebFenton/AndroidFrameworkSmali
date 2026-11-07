.class public final Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;
.super Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;
.source "IkeSaPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IkeProposal"
.end annotation


# instance fields
.field private blacklist mIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

.field public final blacklist saProposal:Landroid/net/ipsec/ike/IkeSaProposal;


# direct methods
.method constructor blacklist <init>(BBJLandroid/net/ipsec/ike/IkeSaProposal;Z)V
    .registers 14
    .param p1, "number"    # B
    .param p2, "spiSize"    # B
    .param p3, "spi"    # J
    .param p5, "saProposal"    # Landroid/net/ipsec/ike/IkeSaProposal;
    .param p6, "hasUnrecognizedTransform"    # Z

    .line 840
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-wide v4, p3

    move v6, p6

    .end local p1    # "number":B
    .end local p2    # "spiSize":B
    .end local p3    # "spi":J
    .end local p6    # "hasUnrecognizedTransform":Z
    .local v1, "number":B
    .local v3, "spiSize":B
    .local v4, "spi":J
    .local v6, "hasUnrecognizedTransform":Z
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;-><init>(BIBJZ)V

    .line 841
    iput-object p5, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->saProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    .line 842
    return-void
.end method

.method private constructor blacklist <init>(BBLcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Landroid/net/ipsec/ike/IkeSaProposal;)V
    .registers 14
    .param p1, "number"    # B
    .param p2, "spiSize"    # B
    .param p3, "ikeSpiResource"    # Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    .param p4, "saProposal"    # Landroid/net/ipsec/ike/IkeSaProposal;

    .line 850
    nop

    .line 854
    if-nez p3, :cond_6

    const-wide/16 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p3}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->getSpi()J

    move-result-wide v0

    :goto_a
    move-wide v6, v0

    .line 850
    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move v5, p2

    .end local p1    # "number":B
    .end local p2    # "spiSize":B
    .local v3, "number":B
    .local v5, "spiSize":B
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;-><init>(BIBJZ)V

    .line 856
    iput-object p3, v2, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->mIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    .line 857
    iput-object p4, v2, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->saProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    .line 858
    return-void
.end method

.method static blacklist createIkeProposal(BBLandroid/net/ipsec/ike/IkeSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;
    .registers 7
    .param p0, "number"    # B
    .param p1, "spiSize"    # B
    .param p2, "saProposal"    # Landroid/net/ipsec/ike/IkeSaProposal;
    .param p3, "ikeSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;
    .param p4, "localAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 875
    if-nez p1, :cond_4

    .line 876
    const/4 v0, 0x0

    goto :goto_8

    .line 877
    :cond_4
    invoke-virtual {p3, p4}, Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;->allocateSpi(Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    move-result-object v0

    :goto_8
    nop

    .line 878
    .local v0, "spiResource":Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;-><init>(BBLcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Landroid/net/ipsec/ike/IkeSaProposal;)V

    return-object v1
.end method


# virtual methods
.method blacklist allocateResourceForRemoteIkeSpi(Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "ikeSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;
    .param p2, "remoteAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 895
    iget-wide v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->spi:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;->allocateSpi(Ljava/net/InetAddress;J)Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->mIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    .line 896
    return-void
.end method

.method public blacklist getIkeSpiResource()Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    .registers 2

    .line 909
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->mIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    return-object v0
.end method

.method public blacklist getSaProposal()Landroid/net/ipsec/ike/SaProposal;
    .registers 2

    .line 900
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->saProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    return-object v0
.end method

.method blacklist releaseSpiResourceIfExists()V
    .registers 2

    .line 884
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->mIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    if-nez v0, :cond_5

    return-void

    .line 885
    :cond_5
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->mIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->close()V

    .line 886
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IkeProposal;->mIkeSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    .line 887
    return-void
.end method
