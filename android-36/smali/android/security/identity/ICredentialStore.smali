.class public interface abstract Landroid/security/identity/ICredentialStore;
.super Ljava/lang/Object;
.source "ICredentialStore.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/ICredentialStore$Stub;,
        Landroid/security/identity/ICredentialStore$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.security.identity.ICredentialStore"

.field public static final blacklist ERROR_ALREADY_PERSONALIZED:I = 0x2

.field public static final blacklist ERROR_AUTHENTICATION_KEY_NOT_FOUND:I = 0x9

.field public static final blacklist ERROR_CIPHER_SUITE_NOT_SUPPORTED:I = 0x4

.field public static final blacklist ERROR_DOCUMENT_TYPE_NOT_SUPPORTED:I = 0x8

.field public static final blacklist ERROR_EPHEMERAL_PUBLIC_KEY_NOT_FOUND:I = 0x5

.field public static final blacklist ERROR_GENERIC:I = 0x1

.field public static final blacklist ERROR_INVALID_ITEMS_REQUEST_MESSAGE:I = 0xa

.field public static final blacklist ERROR_INVALID_READER_SIGNATURE:I = 0x7

.field public static final blacklist ERROR_NONE:I = 0x0

.field public static final blacklist ERROR_NOT_SUPPORTED:I = 0xc

.field public static final blacklist ERROR_NO_AUTHENTICATION_KEY_AVAILABLE:I = 0x6

.field public static final blacklist ERROR_NO_SUCH_CREDENTIAL:I = 0x3

.field public static final blacklist ERROR_SESSION_TRANSCRIPT_MISMATCH:I = 0xb


# virtual methods
.method public abstract blacklist createCredential(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/IWritableCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist createPresentationSession(I)Landroid/security/identity/ISession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCredentialByName(Ljava/lang/String;I)Landroid/security/identity/ICredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSecurityHardwareInfo()Landroid/security/identity/SecurityHardwareInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
