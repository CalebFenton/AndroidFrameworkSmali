.class public abstract Landroid/security/identity/PresentationSession;
.super Ljava/lang/Object;
.source "PresentationSession.java"


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist getCredentialData(Ljava/lang/String;Landroid/security/identity/CredentialDataRequest;)Landroid/security/identity/CredentialDataResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/NoAuthenticationKeyAvailableException;,
            Landroid/security/identity/InvalidReaderSignatureException;,
            Landroid/security/identity/InvalidRequestMessageException;,
            Landroid/security/identity/EphemeralPublicKeyNotFoundException;
        }
    .end annotation
.end method

.method public abstract blacklist getCredstoreOperationHandle()J
.end method

.method public abstract whitelist getEphemeralKeyPair()Ljava/security/KeyPair;
.end method

.method public abstract whitelist setReaderEphemeralPublicKey(Ljava/security/PublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public abstract whitelist setSessionTranscript([B)V
.end method
