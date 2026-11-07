.class public final Landroid/security/FileIntegrityManager;
.super Ljava/lang/Object;
.source "FileIntegrityManager.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/security/IFileIntegrityService;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/security/IFileIntegrityService;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/security/IFileIntegrityService;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/security/FileIntegrityManager;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Landroid/security/FileIntegrityManager;->mService:Landroid/security/IFileIntegrityService;

    .line 51
    return-void
.end method


# virtual methods
.method public whitelist getFsVerityDigest(Ljava/io/File;)[B
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/security/VerityUtils;->getFsverityDigest(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist isApkVeritySupported()Z
    .registers 2

    .line 68
    invoke-static {}, Lcom/android/internal/security/VerityUtils;->isFsVeritySupported()Z

    move-result v0

    return v0
.end method

.method public whitelist isAppSourceCertificateTrusted(Ljava/security/cert/X509Certificate;)Z
    .registers 3
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setupFsVerity(Ljava/io/File;)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p1}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 115
    const/high16 v0, 0x30000000

    :try_start_8
    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_49

    .line 116
    .local v0, "authFd":Landroid/os/ParcelFileDescriptor;
    :try_start_c
    iget-object v1, p0, Landroid/security/FileIntegrityManager;->mService:Landroid/security/IFileIntegrityService;

    invoke-interface {v1, v0}, Landroid/security/IFileIntegrityService;->createAuthToken(Landroid/os/ParcelFileDescriptor;)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_3d

    .line 117
    .local v1, "authToken":Landroid/os/IInstalld$IFsveritySetupAuthToken;
    if-eqz v0, :cond_17

    :try_start_14
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_49

    .line 119
    .end local v0    # "authFd":Landroid/os/ParcelFileDescriptor;
    :cond_17
    nop

    .line 122
    :try_start_18
    iget-object v0, p0, Landroid/security/FileIntegrityManager;->mService:Landroid/security/IFileIntegrityService;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/security/FileIntegrityManager;->mContext:Landroid/content/Context;

    .line 123
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-interface {v0, v1, v2, v3}, Landroid/security/IFileIntegrityService;->setupFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 124
    .local v0, "errno":I
    if-eqz v0, :cond_35

    .line 125
    new-instance v2, Landroid/system/ErrnoException;

    const-string/jumbo v3, "setupFsVerity"

    invoke-direct {v2, v3, v0}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_35} :catch_37

    .line 129
    .end local v0    # "errno":I
    :cond_35
    nop

    .line 130
    return-void

    .line 127
    :catch_37
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 115
    .end local v1    # "authToken":Landroid/os/IInstalld$IFsveritySetupAuthToken;
    .local v0, "authFd":Landroid/os/ParcelFileDescriptor;
    :catchall_3d
    move-exception v1

    if-eqz v0, :cond_48

    :try_start_40
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v2

    :try_start_45
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/security/FileIntegrityManager;
    .end local p1    # "file":Ljava/io/File;
    :cond_48
    :goto_48
    throw v1
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_49} :catch_49

    .line 117
    .end local v0    # "authFd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/security/FileIntegrityManager;
    .restart local p1    # "file":Ljava/io/File;
    :catch_49
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 110
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expect an absolute path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
