.class public Landroid/hardware/security/keymint/IKeyMintDevice$Default;
.super Ljava/lang/Object;
.source "IKeyMintDevice.java"

# interfaces
.implements Landroid/hardware/security/keymint/IKeyMintDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/security/keymint/IKeyMintDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addRngEntropy([B)V
    .registers 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist begin(I[B[Landroid/hardware/security/keymint/KeyParameter;Landroid/hardware/security/keymint/HardwareAuthToken;)Landroid/hardware/security/keymint/BeginResult;
    .registers 6
    .param p1, "purpose"    # I
    .param p2, "keyBlob"    # [B
    .param p3, "params"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p4, "authToken"    # Landroid/hardware/security/keymint/HardwareAuthToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist convertStorageKeyToEphemeral([B)[B
    .registers 3
    .param p1, "storageKeyBlob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist deleteAllKeys()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist deleteKey([B)V
    .registers 2
    .param p1, "keyBlob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist destroyAttestationIds()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist deviceLocked(ZLandroid/hardware/security/secureclock/TimeStampToken;)V
    .registers 3
    .param p1, "passwordOnly"    # Z
    .param p2, "timestampToken"    # Landroid/hardware/security/secureclock/TimeStampToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    return-void
.end method

.method public blacklist earlyBootEnded()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public blacklist generateKey([Landroid/hardware/security/keymint/KeyParameter;Landroid/hardware/security/keymint/AttestationKey;)Landroid/hardware/security/keymint/KeyCreationResult;
    .registers 4
    .param p1, "keyParams"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p2, "attestationKey"    # Landroid/hardware/security/keymint/AttestationKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHardwareInfo()Landroid/hardware/security/keymint/KeyMintHardwareInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 95
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getKeyCharacteristics([B[B[B)[Landroid/hardware/security/keymint/KeyCharacteristics;
    .registers 5
    .param p1, "keyBlob"    # [B
    .param p2, "appId"    # [B
    .param p3, "appData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRootOfTrust([B)[B
    .registers 3
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRootOfTrustChallenge()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist importKey([Landroid/hardware/security/keymint/KeyParameter;I[BLandroid/hardware/security/keymint/AttestationKey;)Landroid/hardware/security/keymint/KeyCreationResult;
    .registers 6
    .param p1, "keyParams"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p2, "keyFormat"    # I
    .param p3, "keyData"    # [B
    .param p4, "attestationKey"    # Landroid/hardware/security/keymint/AttestationKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist importWrappedKey([B[B[B[Landroid/hardware/security/keymint/KeyParameter;JJ)Landroid/hardware/security/keymint/KeyCreationResult;
    .registers 10
    .param p1, "wrappedKeyData"    # [B
    .param p2, "wrappingKeyBlob"    # [B
    .param p3, "maskingKey"    # [B
    .param p4, "unwrappingParams"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p5, "passwordSid"    # J
    .param p7, "biometricSid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendRootOfTrust([B)V
    .registers 2
    .param p1, "rootOfTrust"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    return-void
.end method

.method public blacklist setAdditionalAttestationInfo([Landroid/hardware/security/keymint/KeyParameter;)V
    .registers 2
    .param p1, "info"    # [Landroid/hardware/security/keymint/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    return-void
.end method

.method public blacklist upgradeKey([B[Landroid/hardware/security/keymint/KeyParameter;)[B
    .registers 4
    .param p1, "keyBlobToUpgrade"    # [B
    .param p2, "upgradeParams"    # [Landroid/hardware/security/keymint/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method
