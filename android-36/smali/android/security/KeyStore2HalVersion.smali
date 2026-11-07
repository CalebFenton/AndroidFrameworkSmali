.class Landroid/security/KeyStore2HalVersion;
.super Ljava/lang/Object;
.source "KeyStore2HalLatest.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getSupplementaryAttestationInfoHelper(ILandroid/security/KeyStore2;)[B
    .registers 3
    .param p0, "tag"    # I
    .param p1, "ks"    # Landroid/security/KeyStore2;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 28
    new-instance v0, Landroid/security/KeyStore2HalVersion$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/security/KeyStore2HalVersion$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method static synthetic blacklist lambda$getSupplementaryAttestationInfoHelper$0(ILandroid/system/keystore2/IKeystoreService;)[B
    .registers 3
    .param p0, "tag"    # I
    .param p1, "service"    # Landroid/system/keystore2/IKeystoreService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    invoke-interface {p1, p0}, Landroid/system/keystore2/IKeystoreService;->getSupplementaryAttestationInfo(I)[B

    move-result-object v0

    return-object v0
.end method
