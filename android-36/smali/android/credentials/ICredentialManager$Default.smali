.class public Landroid/credentials/ICredentialManager$Default;
.super Ljava/lang/Object;
.source "ICredentialManager.java"

# interfaces
.implements Landroid/credentials/ICredentialManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/ICredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist clearCredentialState(Landroid/credentials/ClearCredentialStateRequest;Landroid/credentials/IClearCredentialStateCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .registers 5
    .param p1, "request"    # Landroid/credentials/ClearCredentialStateRequest;
    .param p2, "callback"    # Landroid/credentials/IClearCredentialStateCallback;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist executeCreateCredential(Landroid/credentials/CreateCredentialRequest;Landroid/credentials/ICreateCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .registers 5
    .param p1, "request"    # Landroid/credentials/CreateCredentialRequest;
    .param p2, "callback"    # Landroid/credentials/ICreateCredentialCallback;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist executeGetCredential(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IGetCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .registers 5
    .param p1, "request"    # Landroid/credentials/GetCredentialRequest;
    .param p2, "callback"    # Landroid/credentials/IGetCredentialCallback;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist executePrepareGetCredential(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IPrepareGetCredentialCallback;Landroid/credentials/IGetCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .registers 6
    .param p1, "request"    # Landroid/credentials/GetCredentialRequest;
    .param p2, "prepareGetCredentialCallback"    # Landroid/credentials/IPrepareGetCredentialCallback;
    .param p3, "getCredentialCallback"    # Landroid/credentials/IGetCredentialCallback;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCandidateCredentials(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IGetCandidateCredentialsCallback;Landroid/os/IBinder;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .registers 6
    .param p1, "request"    # Landroid/credentials/GetCredentialRequest;
    .param p2, "callback"    # Landroid/credentials/IGetCandidateCredentialsCallback;
    .param p3, "clientCallback"    # Landroid/os/IBinder;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCredentialProviderServices(II)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "providerFilter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCredentialProviderServicesForTesting(I)Ljava/util/List;
    .registers 3
    .param p1, "providerFilter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isEnabledCredentialProviderService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isServiceEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerCredentialDescription(Landroid/credentials/RegisterCredentialDescriptionRequest;Ljava/lang/String;)V
    .registers 3
    .param p1, "request"    # Landroid/credentials/RegisterCredentialDescriptionRequest;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist setEnabledProviders(Ljava/util/List;Ljava/util/List;ILandroid/credentials/ISetEnabledProvidersCallback;)V
    .registers 5
    .param p3, "userId"    # I
    .param p4, "callback"    # Landroid/credentials/ISetEnabledProvidersCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/credentials/ISetEnabledProvidersCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    .local p1, "primaryProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist unregisterCredentialDescription(Landroid/credentials/UnregisterCredentialDescriptionRequest;Ljava/lang/String;)V
    .registers 3
    .param p1, "request"    # Landroid/credentials/UnregisterCredentialDescriptionRequest;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method
