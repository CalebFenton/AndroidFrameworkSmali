.class public Landroid/accounts/AccountAuthenticatorResponse;
.super Ljava/lang/Object;
.source "AccountAuthenticatorResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/accounts/AccountAuthenticatorResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AccountAuthenticator"


# instance fields
.field private greylist-max-o mAccountAuthenticatorResponse:Landroid/accounts/IAccountAuthenticatorResponse;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 90
    new-instance v0, Landroid/accounts/AccountAuthenticatorResponse$1;

    invoke-direct {v0}, Landroid/accounts/AccountAuthenticatorResponse$1;-><init>()V

    sput-object v0, Landroid/accounts/AccountAuthenticatorResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(Landroid/accounts/IAccountAuthenticatorResponse;)V
    .registers 2
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/accounts/AccountAuthenticatorResponse;->mAccountAuthenticatorResponse:Landroid/accounts/IAccountAuthenticatorResponse;

    .line 40
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    nop

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/AccountAuthenticatorResponse;->mAccountAuthenticatorResponse:Landroid/accounts/IAccountAuthenticatorResponse;

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onError(ILjava/lang/String;)V
    .registers 6
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 72
    const/4 v0, 0x2

    const-string v1, "AccountAuthenticator"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountAuthenticatorResponse.onError: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_29
    :try_start_29
    iget-object v0, p0, Landroid/accounts/AccountAuthenticatorResponse;->mAccountAuthenticatorResponse:Landroid/accounts/IAccountAuthenticatorResponse;

    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f

    .line 79
    goto :goto_30

    .line 77
    :catch_2f
    move-exception v0

    .line 80
    :goto_30
    return-void
.end method

.method public whitelist onRequestContinued()V
    .registers 3

    .line 61
    const/4 v0, 0x2

    const-string v1, "AccountAuthenticator"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 62
    const-string v0, "AccountAuthenticatorResponse.onRequestContinued"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/accounts/AccountAuthenticatorResponse;->mAccountAuthenticatorResponse:Landroid/accounts/IAccountAuthenticatorResponse;

    invoke-interface {v0}, Landroid/accounts/IAccountAuthenticatorResponse;->onRequestContinued()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    .line 68
    goto :goto_15

    .line 66
    :catch_14
    move-exception v0

    .line 69
    :goto_15
    return-void
.end method

.method public whitelist onResult(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "result"    # Landroid/os/Bundle;

    .line 48
    const/4 v0, 0x2

    const-string v1, "AccountAuthenticator"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 49
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountAuthenticatorResponse.onResult: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    invoke-static {p1}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_26
    :try_start_26
    iget-object v0, p0, Landroid/accounts/AccountAuthenticatorResponse;->mAccountAuthenticatorResponse:Landroid/accounts/IAccountAuthenticatorResponse;

    invoke-interface {v0, p1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c

    .line 57
    goto :goto_2d

    .line 55
    :catch_2c
    move-exception v0

    .line 58
    :goto_2d
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 87
    iget-object v0, p0, Landroid/accounts/AccountAuthenticatorResponse;->mAccountAuthenticatorResponse:Landroid/accounts/IAccountAuthenticatorResponse;

    invoke-interface {v0}, Landroid/accounts/IAccountAuthenticatorResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 88
    return-void
.end method
