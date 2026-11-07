.class public Landroid/security/identity/ICredentialStore$Default;
.super Ljava/lang/Object;
.source "ICredentialStore.java"

# interfaces
.implements Landroid/security/identity/ICredentialStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/ICredentialStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createCredential(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/IWritableCredential;
    .registers 4
    .param p1, "credentialName"    # Ljava/lang/String;
    .param p2, "docType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createPresentationSession(I)Landroid/security/identity/ISession;
    .registers 3
    .param p1, "cipherSuite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCredentialByName(Ljava/lang/String;I)Landroid/security/identity/ICredential;
    .registers 4
    .param p1, "credentialName"    # Ljava/lang/String;
    .param p2, "cipherSuite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSecurityHardwareInfo()Landroid/security/identity/SecurityHardwareInfoParcel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method
