.class public abstract Landroid/security/identity/IdentityCredentialStore;
.super Ljava/lang/Object;
.source "IdentityCredentialStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/IdentityCredentialStore$Ciphersuite;
    }
.end annotation


# static fields
.field public static final whitelist CIPHERSUITE_ECDHE_HKDF_ECDSA_WITH_AES_256_GCM_SHA256:I = 0x1


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getDirectAccessInstance(Landroid/content/Context;)Landroid/security/identity/IdentityCredentialStore;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 137
    invoke-static {p0}, Landroid/security/identity/CredstoreIdentityCredentialStore;->getDirectAccessInstance(Landroid/content/Context;)Landroid/security/identity/IdentityCredentialStore;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/security/identity/IdentityCredentialStore;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 120
    invoke-static {p0}, Landroid/security/identity/CredstoreIdentityCredentialStore;->getInstance(Landroid/content/Context;)Landroid/security/identity/IdentityCredentialStore;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist createCredential(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/WritableIdentityCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/AlreadyPersonalizedException;,
            Landroid/security/identity/DocTypeNotSupportedException;
        }
    .end annotation
.end method

.method public whitelist createPresentationSession(I)Landroid/security/identity/PresentationSession;
    .registers 3
    .param p1, "cipherSuite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/CipherSuiteNotSupportedException;
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist deleteCredentialByName(Ljava/lang/String;)[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getCredentialByName(Ljava/lang/String;I)Landroid/security/identity/IdentityCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/CipherSuiteNotSupportedException;
        }
    .end annotation
.end method

.method public abstract whitelist getSupportedDocTypes()[Ljava/lang/String;
.end method
