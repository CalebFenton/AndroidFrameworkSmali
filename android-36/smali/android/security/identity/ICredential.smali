.class public interface abstract Landroid/security/identity/ICredential;
.super Ljava/lang/Object;
.source "ICredential.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/ICredential$Stub;,
        Landroid/security/identity/ICredential$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.security.identity.ICredential"

.field public static final blacklist STATUS_NOT_IN_REQUEST_MESSAGE:I = 0x3

.field public static final blacklist STATUS_NOT_REQUESTED:I = 0x2

.field public static final blacklist STATUS_NO_ACCESS_CONTROL_PROFILES:I = 0x6

.field public static final blacklist STATUS_NO_SUCH_ENTRY:I = 0x1

.field public static final blacklist STATUS_OK:I = 0x0

.field public static final blacklist STATUS_READER_AUTHENTICATION_FAILED:I = 0x5

.field public static final blacklist STATUS_USER_AUTHENTICATION_FAILED:I = 0x4


# virtual methods
.method public abstract blacklist createEphemeralKeyPair()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist deleteCredential()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist deleteWithChallenge([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getAuthKeysNeedingCertification()[Landroid/security/identity/AuthKeyParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getAuthenticationDataExpirations()[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getAuthenticationDataUsageCount()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCredentialKeyCertificateChain()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getEntries([B[Landroid/security/identity/RequestNamespaceParcel;[B[BZZZ)Landroid/security/identity/GetEntriesResultParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist proveOwnership([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist selectAuthKey(ZZZ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setAvailableAuthenticationKeys(IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setReaderEphemeralPublicKey([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist storeStaticAuthenticationData(Landroid/security/identity/AuthKeyParcel;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist storeStaticAuthenticationDataWithExpiration(Landroid/security/identity/AuthKeyParcel;J[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist update()Landroid/security/identity/IWritableCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
