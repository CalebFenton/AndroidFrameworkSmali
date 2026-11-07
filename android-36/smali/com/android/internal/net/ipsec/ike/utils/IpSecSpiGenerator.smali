.class public Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
.super Ljava/lang/Object;
.source "IpSecSpiGenerator.java"


# instance fields
.field private final blacklist mIpSecManager:Landroid/net/IpSecManager;

.field private final blacklist mRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor blacklist <init>(Landroid/net/IpSecManager;Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)V
    .registers 4
    .param p1, "ipSecManager"    # Landroid/net/IpSecManager;
    .param p2, "randomnessFactory"    # Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;->mIpSecManager:Landroid/net/IpSecManager;

    .line 42
    invoke-virtual {p2}, Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;->mRandom:Ljava/security/SecureRandom;

    .line 43
    return-void
.end method


# virtual methods
.method public blacklist allocateSpi(Ljava/net/InetAddress;)Landroid/net/IpSecManager$SecurityParameterIndex;
    .registers 4
    .param p1, "sourceAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;->mRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_b

    .line 57
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;->mIpSecManager:Landroid/net/IpSecManager;

    invoke-virtual {v0, p1}, Landroid/net/IpSecManager;->allocateSecurityParameterIndex(Ljava/net/InetAddress;)Landroid/net/IpSecManager$SecurityParameterIndex;

    move-result-object v0

    return-object v0

    .line 59
    :cond_b
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;->mIpSecManager:Landroid/net/IpSecManager;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;->mRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/net/IpSecManager;->allocateSecurityParameterIndex(Ljava/net/InetAddress;I)Landroid/net/IpSecManager$SecurityParameterIndex;

    move-result-object v0

    return-object v0
.end method

.method public blacklist allocateSpi(Ljava/net/InetAddress;I)Landroid/net/IpSecManager$SecurityParameterIndex;
    .registers 4
    .param p1, "sourceAddress"    # Ljava/net/InetAddress;
    .param p2, "requestedSpi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;->mIpSecManager:Landroid/net/IpSecManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/IpSecManager;->allocateSecurityParameterIndex(Ljava/net/InetAddress;I)Landroid/net/IpSecManager$SecurityParameterIndex;

    move-result-object v0

    return-object v0
.end method
