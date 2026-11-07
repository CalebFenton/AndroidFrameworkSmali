.class Landroid/security/identity/CredstoreIdentityCredentialStore;
.super Landroid/security/identity/IdentityCredentialStore;
.source "CredstoreIdentityCredentialStore.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CredstoreIdentityCredentialStore"

.field private static blacklist sInstanceDefault:Landroid/security/identity/CredstoreIdentityCredentialStore;

.field private static blacklist sInstanceDirectAccess:Landroid/security/identity/CredstoreIdentityCredentialStore;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mFeatureVersion:I

.field private blacklist mStore:Landroid/security/identity/ICredentialStore;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 86
    const/4 v0, 0x0

    sput-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDefault:Landroid/security/identity/CredstoreIdentityCredentialStore;

    .line 87
    sput-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDirectAccess:Landroid/security/identity/CredstoreIdentityCredentialStore;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/security/identity/ICredentialStore;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "store"    # Landroid/security/identity/ICredentialStore;

    .line 50
    invoke-direct {p0}, Landroid/security/identity/IdentityCredentialStore;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    .line 51
    iput-object p1, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    .line 53
    iget-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/security/identity/CredstoreIdentityCredentialStore;->getFeatureVersion(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mFeatureVersion:I

    .line 54
    return-void
.end method

.method public static blacklist getDirectAccessInstance(Landroid/content/Context;)Landroid/security/identity/IdentityCredentialStore;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 99
    sget-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDirectAccess:Landroid/security/identity/CredstoreIdentityCredentialStore;

    if-nez v0, :cond_b

    .line 100
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/security/identity/CredstoreIdentityCredentialStore;->getInstanceForType(Landroid/content/Context;I)Landroid/security/identity/CredstoreIdentityCredentialStore;

    move-result-object v0

    sput-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDirectAccess:Landroid/security/identity/CredstoreIdentityCredentialStore;

    .line 103
    :cond_b
    sget-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDirectAccess:Landroid/security/identity/CredstoreIdentityCredentialStore;

    return-object v0
.end method

.method static blacklist getFeatureVersion(Landroid/content/Context;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 36
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.identity_credential"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 37
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v2

    .line 38
    .local v2, "infos":[Landroid/content/pm/FeatureInfo;
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_11
    array-length v4, v2

    if-ge v3, v4, :cond_24

    .line 39
    aget-object v4, v2, v3

    .line 40
    .local v4, "info":Landroid/content/pm/FeatureInfo;
    iget-object v5, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 41
    iget v1, v4, Landroid/content/pm/FeatureInfo;->version:I

    return v1

    .line 38
    .end local v4    # "info":Landroid/content/pm/FeatureInfo;
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 47
    .end local v2    # "infos":[Landroid/content/pm/FeatureInfo;
    .end local v3    # "n":I
    :cond_24
    const v1, 0x31519

    return v1
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/security/identity/IdentityCredentialStore;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 90
    sget-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDefault:Landroid/security/identity/CredstoreIdentityCredentialStore;

    if-nez v0, :cond_b

    .line 91
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/security/identity/CredstoreIdentityCredentialStore;->getInstanceForType(Landroid/content/Context;I)Landroid/security/identity/CredstoreIdentityCredentialStore;

    move-result-object v0

    sput-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDefault:Landroid/security/identity/CredstoreIdentityCredentialStore;

    .line 94
    :cond_b
    sget-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDefault:Landroid/security/identity/CredstoreIdentityCredentialStore;

    return-object v0
.end method

.method static blacklist getInstanceForType(Landroid/content/Context;I)Landroid/security/identity/CredstoreIdentityCredentialStore;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "credentialStoreType"    # I

    .line 58
    nop

    .line 60
    const-string v0, "android.security.identity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/security/identity/ICredentialStoreFactory$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/identity/ICredentialStoreFactory;

    move-result-object v0

    .line 61
    .local v0, "storeFactory":Landroid/security/identity/ICredentialStoreFactory;
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 63
    return-object v1

    .line 66
    :cond_f
    const/4 v2, 0x0

    .line 68
    .local v2, "credStore":Landroid/security/identity/ICredentialStore;
    :try_start_10
    invoke-interface {v0, p1}, Landroid/security/identity/ICredentialStoreFactory;->getCredentialStore(I)Landroid/security/identity/ICredentialStore;

    move-result-object v3
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_40
    .catch Landroid/os/ServiceSpecificException; {:try_start_10 .. :try_end_14} :catch_1e

    .line 78
    .end local v2    # "credStore":Landroid/security/identity/ICredentialStore;
    .local v3, "credStore":Landroid/security/identity/ICredentialStore;
    nop

    .line 79
    if-nez v3, :cond_18

    .line 80
    return-object v1

    .line 83
    :cond_18
    new-instance v1, Landroid/security/identity/CredstoreIdentityCredentialStore;

    invoke-direct {v1, p0, v3}, Landroid/security/identity/CredstoreIdentityCredentialStore;-><init>(Landroid/content/Context;Landroid/security/identity/ICredentialStore;)V

    return-object v1

    .line 71
    .end local v3    # "credStore":Landroid/security/identity/ICredentialStore;
    .restart local v2    # "credStore":Landroid/security/identity/ICredentialStore;
    :catch_1e
    move-exception v3

    .line 72
    .local v3, "e":Landroid/os/ServiceSpecificException;
    iget v4, v3, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_25

    .line 73
    return-object v1

    .line 75
    :cond_25
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 69
    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    :catch_40
    move-exception v1

    .line 70
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected RemoteException "

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public whitelist createCredential(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/WritableIdentityCredential;
    .registers 7
    .param p1, "credentialName"    # Ljava/lang/String;
    .param p2, "docType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/AlreadyPersonalizedException;,
            Landroid/security/identity/DocTypeNotSupportedException;
        }
    .end annotation

    .line 125
    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    invoke-interface {v0, p1, p2}, Landroid/security/identity/ICredentialStore;->createCredential(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/IWritableCredential;

    move-result-object v0

    .line 126
    .local v0, "wc":Landroid/security/identity/IWritableCredential;
    new-instance v1, Landroid/security/identity/CredstoreWritableIdentityCredential;

    iget-object v2, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p2, v0}, Landroid/security/identity/CredstoreWritableIdentityCredential;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/security/identity/IWritableCredential;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_49
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v1

    .line 129
    .end local v0    # "wc":Landroid/security/identity/IWritableCredential;
    :catch_e
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3f

    .line 132
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_24

    .line 133
    new-instance v1, Landroid/security/identity/DocTypeNotSupportedException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/security/identity/DocTypeNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 135
    :cond_24
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 131
    :cond_3f
    new-instance v1, Landroid/security/identity/AlreadyPersonalizedException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/security/identity/AlreadyPersonalizedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 127
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_49
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist createPresentationSession(I)Landroid/security/identity/PresentationSession;
    .registers 9
    .param p1, "cipherSuite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/CipherSuiteNotSupportedException;
        }
    .end annotation

    .line 189
    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    invoke-interface {v0, p1}, Landroid/security/identity/ICredentialStore;->createPresentationSession(I)Landroid/security/identity/ISession;

    move-result-object v0

    move-object v5, v0

    .line 190
    .local v5, "credstoreSession":Landroid/security/identity/ISession;
    new-instance v1, Landroid/security/identity/CredstorePresentationSession;

    iget-object v2, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    iget v6, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mFeatureVersion:I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_46
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_d} :catch_19

    move-object v4, p0

    move v3, p1

    .end local p1    # "cipherSuite":I
    .local v3, "cipherSuite":I
    :try_start_f
    invoke-direct/range {v1 .. v6}, Landroid/security/identity/CredstorePresentationSession;-><init>(Landroid/content/Context;ILandroid/security/identity/CredstoreIdentityCredentialStore;Landroid/security/identity/ISession;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_f .. :try_end_12} :catch_13

    return-object v1

    .line 194
    .end local v5    # "credstoreSession":Landroid/security/identity/ISession;
    :catch_13
    move-exception v0

    move-object p1, v0

    goto :goto_1c

    .line 192
    :catch_16
    move-exception v0

    move-object p1, v0

    goto :goto_49

    .line 194
    .end local v3    # "cipherSuite":I
    .restart local p1    # "cipherSuite":I
    :catch_19
    move-exception v0

    move v3, p1

    move-object p1, v0

    .line 195
    .restart local v3    # "cipherSuite":I
    .local p1, "e":Landroid/os/ServiceSpecificException;
    :goto_1c
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2b

    .line 196
    new-instance v0, Landroid/security/identity/CipherSuiteNotSupportedException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/security/identity/CipherSuiteNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 198
    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 192
    .end local v3    # "cipherSuite":I
    .local p1, "cipherSuite":I
    :catch_46
    move-exception v0

    move v3, p1

    move-object p1, v0

    .line 193
    .restart local v3    # "cipherSuite":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected RemoteException "

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist deleteCredentialByName(Ljava/lang/String;)[B
    .registers 7
    .param p1, "credentialName"    # Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    .line 168
    .local v0, "credstoreCredential":Landroid/security/identity/ICredential;
    :try_start_1
    iget-object v1, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/security/identity/ICredentialStore;->getCredentialByName(Ljava/lang/String;I)Landroid/security/identity/ICredential;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_8} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a

    move-object v0, v1

    .line 174
    goto :goto_14

    .line 177
    :catch_a
    move-exception v1

    goto :goto_35

    .line 170
    :catch_c
    move-exception v1

    .line 171
    .local v1, "e":Landroid/os/ServiceSpecificException;
    :try_start_d
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    .line 172
    const/4 v2, 0x0

    return-object v2

    .line 175
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_14
    :goto_14
    invoke-interface {v0}, Landroid/security/identity/ICredential;->deleteCredential()[B

    move-result-object v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_a
    .catch Landroid/os/ServiceSpecificException; {:try_start_d .. :try_end_18} :catch_19

    .line 176
    .local v1, "proofOfDeletion":[B
    return-object v1

    .line 179
    .end local v1    # "proofOfDeletion":[B
    :catch_19
    move-exception v1

    .line 180
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 178
    .local v1, "e":Landroid/os/RemoteException;
    :goto_35
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected RemoteException "

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist getCredentialByName(Ljava/lang/String;I)Landroid/security/identity/IdentityCredential;
    .registers 11
    .param p1, "credentialName"    # Ljava/lang/String;
    .param p2, "cipherSuite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/CipherSuiteNotSupportedException;
        }
    .end annotation

    .line 146
    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    invoke-interface {v0, p1, p2}, Landroid/security/identity/ICredentialStore;->getCredentialByName(Ljava/lang/String;I)Landroid/security/identity/ICredential;

    move-result-object v0

    move-object v5, v0

    .line 147
    .local v5, "credstoreCredential":Landroid/security/identity/ICredential;
    new-instance v1, Landroid/security/identity/CredstoreIdentityCredential;

    iget-object v2, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    iget v7, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mFeatureVersion:I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_4f
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_d} :catch_1a

    const/4 v6, 0x0

    move-object v3, p1

    move v4, p2

    .end local p1    # "credentialName":Ljava/lang/String;
    .end local p2    # "cipherSuite":I
    .local v3, "credentialName":Ljava/lang/String;
    .local v4, "cipherSuite":I
    :try_start_10
    invoke-direct/range {v1 .. v7}, Landroid/security/identity/CredstoreIdentityCredential;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/security/identity/ICredential;Landroid/security/identity/CredstorePresentationSession;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_17
    .catch Landroid/os/ServiceSpecificException; {:try_start_10 .. :try_end_13} :catch_14

    return-object v1

    .line 151
    .end local v5    # "credstoreCredential":Landroid/security/identity/ICredential;
    :catch_14
    move-exception v0

    move-object p1, v0

    goto :goto_1e

    .line 149
    :catch_17
    move-exception v0

    move-object p1, v0

    goto :goto_53

    .line 151
    .end local v3    # "credentialName":Ljava/lang/String;
    .end local v4    # "cipherSuite":I
    .restart local p1    # "credentialName":Ljava/lang/String;
    .restart local p2    # "cipherSuite":I
    :catch_1a
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-object p1, v0

    .line 152
    .end local p2    # "cipherSuite":I
    .restart local v3    # "credentialName":Ljava/lang/String;
    .restart local v4    # "cipherSuite":I
    .local p1, "e":Landroid/os/ServiceSpecificException;
    :goto_1e
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_25

    .line 153
    const/4 p2, 0x0

    return-object p2

    .line 154
    :cond_25
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_34

    .line 155
    new-instance p2, Landroid/security/identity/CipherSuiteNotSupportedException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/security/identity/CipherSuiteNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 157
    :cond_34
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 149
    .end local v3    # "credentialName":Ljava/lang/String;
    .end local v4    # "cipherSuite":I
    .local p1, "credentialName":Ljava/lang/String;
    .restart local p2    # "cipherSuite":I
    :catch_4f
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-object p1, v0

    .line 150
    .end local p2    # "cipherSuite":I
    .restart local v3    # "credentialName":Ljava/lang/String;
    .restart local v4    # "cipherSuite":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_53
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected RemoteException "

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist getSupportedDocTypes()[Ljava/lang/String;
    .registers 5

    .line 110
    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    invoke-interface {v0}, Landroid/security/identity/ICredentialStore;->getSecurityHardwareInfo()Landroid/security/identity/SecurityHardwareInfoParcel;

    move-result-object v0

    .line 111
    .local v0, "info":Landroid/security/identity/SecurityHardwareInfoParcel;
    iget-object v1, v0, Landroid/security/identity/SecurityHardwareInfoParcel;->supportedDocTypes:[Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_25
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v1

    .line 114
    .end local v0    # "info":Landroid/security/identity/SecurityHardwareInfoParcel;
    :catch_9
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 112
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_25
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
