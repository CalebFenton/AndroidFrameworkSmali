.class public Landroid/content/pm/PackageInstaller$Session;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Session"
.end annotation


# instance fields
.field protected final greylist-max-o mSession:Landroid/content/pm/IPackageInstallerSession;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/pm/IPackageInstallerSession;)V
    .registers 2
    .param p1, "session"    # Landroid/content/pm/IPackageInstallerSession;

    .line 1540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1541
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    .line 1542
    return-void
.end method

.method private static blacklist encodeCertificates(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 1876
    .local p0, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-nez p0, :cond_4

    .line 1877
    const/4 v0, 0x0

    return-object v0

    .line 1879
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1880
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 1881
    .local v2, "cert":Ljava/security/cert/Certificate;
    instance-of v3, v2, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_29

    .line 1884
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1885
    .end local v2    # "cert":Ljava/security/cert/Certificate;
    goto :goto_11

    .line 1882
    .restart local v2    # "cert":Ljava/security/cert/Certificate;
    :cond_29
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    const-string v3, "Only X509 certificates supported."

    invoke-direct {v1, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1886
    .end local v2    # "cert":Ljava/security/cert/Certificate;
    :cond_31
    return-object v0
.end method

.method private blacklist openWriteAppMetadata()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2207
    :try_start_0
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_10

    .line 2208
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    .line 2209
    invoke-interface {v1}, Landroid/content/pm/IPackageInstallerSession;->openWriteAppMetadata()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 2208
    return-object v0

    .line 2211
    :cond_10
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->openWriteAppMetadata()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 2212
    .local v0, "clientSocket":Landroid/os/ParcelFileDescriptor;
    new-instance v1, Landroid/os/FileBridge$FileBridgeOutputStream;

    invoke-direct {v1, v0}, Landroid/os/FileBridge$FileBridgeOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_1b} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object v1

    .line 2217
    .end local v0    # "clientSocket":Landroid/os/ParcelFileDescriptor;
    :catch_1c
    move-exception v0

    .line 2218
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2214
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 2215
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 2216
    throw v0
.end method


# virtual methods
.method public whitelist abandon()V
    .registers 3

    .line 2083
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->abandon()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2086
    nop

    .line 2087
    return-void

    .line 2084
    :catch_7
    move-exception v0

    .line 2085
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist addChildSessionId(I)V
    .registers 3
    .param p1, "sessionId"    # I

    .line 2161
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->addChildSessionId(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2164
    goto :goto_a

    .line 2162
    :catch_6
    move-exception v0

    .line 2163
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2165
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist addFile(ILjava/lang/String;J[B[B)V
    .registers 14
    .param p1, "location"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "lengthBytes"    # J
    .param p5, "metadata"    # [B
    .param p6, "signature"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1802
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_f

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "location":I
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "lengthBytes":J
    .end local p5    # "metadata":[B
    .end local p6    # "signature":[B
    .local v1, "location":I
    .local v2, "name":Ljava/lang/String;
    .local v3, "lengthBytes":J
    .local v5, "metadata":[B
    .local v6, "signature":[B
    :try_start_7
    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageInstallerSession;->addFile(ILjava/lang/String;J[B[B)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 1805
    nop

    .line 1806
    return-void

    .line 1803
    :catch_c
    move-exception v0

    move-object p1, v0

    goto :goto_16

    .end local v1    # "location":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "lengthBytes":J
    .end local v5    # "metadata":[B
    .end local v6    # "signature":[B
    .restart local p1    # "location":I
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "lengthBytes":J
    .restart local p5    # "metadata":[B
    .restart local p6    # "signature":[B
    :catch_f
    move-exception v0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object p1, v0

    .line 1804
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "lengthBytes":J
    .end local p5    # "metadata":[B
    .end local p6    # "signature":[B
    .restart local v1    # "location":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "lengthBytes":J
    .restart local v5    # "metadata":[B
    .restart local v6    # "signature":[B
    .local p1, "e":Landroid/os/RemoteException;
    :goto_16
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public greylist addProgress(F)V
    .registers 4
    .param p1, "progress"    # F

    .line 1571
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->addClientProgress(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1574
    nop

    .line 1575
    return-void

    .line 1572
    :catch_7
    move-exception v0

    .line 1573
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 2067
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->close()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2070
    nop

    .line 2071
    return-void

    .line 2068
    :catch_7
    move-exception v0

    .line 2069
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist commit(Landroid/content/IntentSender;)V
    .registers 4
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;

    .line 1988
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 1991
    nop

    .line 1992
    return-void

    .line 1989
    :catch_8
    move-exception v0

    .line 1990
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist commitTransferred(Landroid/content/IntentSender;)V
    .registers 4
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2020
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 2023
    nop

    .line 2024
    return-void

    .line 2021
    :catch_8
    move-exception v0

    .line 2022
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist fsync(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1670
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    const-string v1, "Unrecognized stream"

    if-eqz v0, :cond_21

    .line 1671
    instance-of v0, p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    if-eqz v0, :cond_1b

    .line 1673
    :try_start_a
    move-object v0, p1

    check-cast v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V
    :try_end_14
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_14} :catch_15

    .line 1676
    goto :goto_2b

    .line 1674
    :catch_15
    move-exception v0

    .line 1675
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 1678
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1681
    :cond_21
    instance-of v0, p1, Landroid/os/FileBridge$FileBridgeOutputStream;

    if-eqz v0, :cond_2c

    .line 1682
    move-object v0, p1

    check-cast v0, Landroid/os/FileBridge$FileBridgeOutputStream;

    invoke-virtual {v0}, Landroid/os/FileBridge$FileBridgeOutputStream;->fsync()V

    .line 1687
    :goto_2b
    return-void

    .line 1684
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAppMetadata()Landroid/os/PersistableBundle;
    .registers 6

    .line 2188
    const/4 v0, 0x0

    .line 2190
    .local v0, "data":Landroid/os/PersistableBundle;
    :try_start_1
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v1}, Landroid/content/pm/IPackageInstallerSession;->getAppMetadataFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 2191
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_2c

    .line 2192
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_21

    .line 2194
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_e
    invoke-static {v2}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v3
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_17

    move-object v0, v3

    .line 2195
    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_28
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_21

    goto :goto_2c

    .line 2192
    :catchall_17
    move-exception v3

    :try_start_18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v4

    :try_start_1d
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "data":Landroid/os/PersistableBundle;
    .end local p0    # "this":Landroid/content/pm/PackageInstaller$Session;
    :goto_20
    throw v3
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_21} :catch_28
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_21

    .line 2199
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "data":Landroid/os/PersistableBundle;
    .restart local p0    # "this":Landroid/content/pm/PackageInstaller$Session;
    :catch_21
    move-exception v1

    .line 2200
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2197
    .end local v1    # "e":Ljava/io/IOException;
    :catch_28
    move-exception v1

    .line 2198
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2201
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2c
    :goto_2c
    nop

    .line 2202
    if-eqz v0, :cond_31

    move-object v1, v0

    goto :goto_36

    :cond_31
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    :goto_36
    return-object v1
.end method

.method public whitelist getChildSessionIds()[I
    .registers 3

    .line 2143
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getChildSessionIds()[I

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2144
    :catch_7
    move-exception v0

    .line 2145
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDataLoaderParams()Landroid/content/pm/DataLoaderParams;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1760
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getDataLoaderParams()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v0

    .line 1761
    .local v0, "data":Landroid/content/pm/DataLoaderParamsParcel;
    if-nez v0, :cond_a

    .line 1762
    const/4 v1, 0x0

    return-object v1

    .line 1764
    :cond_a
    new-instance v1, Landroid/content/pm/DataLoaderParams;

    invoke-direct {v1, v0}, Landroid/content/pm/DataLoaderParams;-><init>(Landroid/content/pm/DataLoaderParamsParcel;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    .line 1765
    .end local v0    # "data":Landroid/content/pm/DataLoaderParamsParcel;
    :catch_10
    move-exception v0

    .line 1766
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getInstallFlags()I
    .registers 3

    .line 2118
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getInstallFlags()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2119
    :catch_7
    move-exception v0

    .line 2120
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNames()[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1699
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getNames()[Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1703
    :catch_7
    move-exception v0

    .line 1704
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1700
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 1701
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1702
    throw v0
.end method

.method public whitelist getParentSessionId()I
    .registers 3

    .line 2130
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getParentSessionId()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2131
    :catch_7
    move-exception v0

    .line 2132
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPreVerifiedDomains()Ljava/util/Set;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2369
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getPreVerifiedDomains()Landroid/content/pm/verify/domain/DomainSet;

    move-result-object v0

    .line 2370
    .local v0, "domainSet":Landroid/content/pm/verify/domain/DomainSet;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/content/pm/verify/domain/DomainSet;->getDomains()Ljava/util/Set;

    move-result-object v1

    goto :goto_11

    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-object v1

    .line 2371
    .end local v0    # "domainSet":Landroid/content/pm/verify/domain/DomainSet;
    :catch_12
    move-exception v0

    .line 2372
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isApplicationEnabledSettingPersistent()Z
    .registers 3

    .line 2296
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->isApplicationEnabledSettingPersistent()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2297
    :catch_7
    move-exception v0

    .line 2298
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isMultiPackage()Z
    .registers 3

    .line 2095
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->isMultiPackage()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2096
    :catch_7
    move-exception v0

    .line 2097
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isRequestUpdateOwnership()Z
    .registers 3

    .line 2310
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->isRequestUpdateOwnership()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2311
    :catch_7
    move-exception v0

    .line 2312
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isStaged()Z
    .registers 3

    .line 2106
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->isStaged()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2107
    :catch_7
    move-exception v0

    .line 2108
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist openRead(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1721
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1722
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_b} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    .line 1726
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_c
    move-exception v0

    .line 1727
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1723
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_12
    move-exception v0

    .line 1724
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1725
    throw v0
.end method

.method public whitelist openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1610
    :try_start_0
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_13

    .line 1611
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_32
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_28

    .line 1612
    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "offsetBytes":J
    .end local p4    # "lengthBytes":J
    .local v2, "name":Ljava/lang/String;
    .local v3, "offsetBytes":J
    .local v5, "lengthBytes":J
    :try_start_b
    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageInstallerSession;->openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 1611
    return-object v0

    .line 1614
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "offsetBytes":J
    .end local v5    # "lengthBytes":J
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "offsetBytes":J
    .restart local p4    # "lengthBytes":J
    :cond_13
    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "offsetBytes":J
    .end local p4    # "lengthBytes":J
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "offsetBytes":J
    .restart local v5    # "lengthBytes":J
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageInstallerSession;->openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 1616
    .local p1, "clientSocket":Landroid/os/ParcelFileDescriptor;
    new-instance p2, Landroid/os/FileBridge$FileBridgeOutputStream;

    invoke-direct {p2, p1}, Landroid/os/FileBridge$FileBridgeOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_21} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_21} :catch_22

    return-object p2

    .line 1621
    .end local p1    # "clientSocket":Landroid/os/ParcelFileDescriptor;
    :catch_22
    move-exception v0

    move-object p1, v0

    goto :goto_2d

    .line 1618
    :catch_25
    move-exception v0

    move-object p1, v0

    goto :goto_37

    .line 1621
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "offsetBytes":J
    .end local v5    # "lengthBytes":J
    .local p1, "name":Ljava/lang/String;
    .restart local p2    # "offsetBytes":J
    .restart local p4    # "lengthBytes":J
    :catch_28
    move-exception v0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object p1, v0

    .line 1622
    .end local p2    # "offsetBytes":J
    .end local p4    # "lengthBytes":J
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "offsetBytes":J
    .restart local v5    # "lengthBytes":J
    .local p1, "e":Landroid/os/RemoteException;
    :goto_2d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 1618
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "offsetBytes":J
    .end local v5    # "lengthBytes":J
    .local p1, "name":Ljava/lang/String;
    .restart local p2    # "offsetBytes":J
    .restart local p4    # "lengthBytes":J
    :catch_32
    move-exception v0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object p1, v0

    .line 1619
    .end local p2    # "offsetBytes":J
    .end local p4    # "lengthBytes":J
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "offsetBytes":J
    .restart local v5    # "lengthBytes":J
    .local p1, "e":Ljava/lang/RuntimeException;
    :goto_37
    invoke-static {p1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1620
    throw p1
.end method

.method public whitelist removeChildSessionId(I)V
    .registers 3
    .param p1, "sessionId"    # I

    .line 2175
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->removeChildSessionId(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2178
    goto :goto_a

    .line 2176
    :catch_6
    move-exception v0

    .line 2177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2179
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist removeFile(ILjava/lang/String;)V
    .registers 5
    .param p1, "location"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1825
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageInstallerSession;->removeFile(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1828
    nop

    .line 1829
    return-void

    .line 1826
    :catch_7
    move-exception v0

    .line 1827
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeSplit(Ljava/lang/String;)V
    .registers 4
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1743
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->removeSplit(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1749
    nop

    .line 1750
    return-void

    .line 1747
    :catch_7
    move-exception v0

    .line 1748
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1744
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 1745
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1746
    throw v0
.end method

.method public whitelist requestChecksums(Ljava/lang/String;ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "onChecksumsReadyListener"    # Landroid/content/pm/PackageManager$OnChecksumsReadyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/pm/PackageManager$OnChecksumsReadyListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1928
    .local p3, "trustedInstallers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1930
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1932
    sget-object v0, Landroid/content/pm/PackageManager;->TRUST_ALL:Ljava/util/List;

    if-ne p3, v0, :cond_12

    .line 1933
    const/4 p3, 0x0

    goto :goto_21

    .line 1934
    :cond_12
    sget-object v0, Landroid/content/pm/PackageManager;->TRUST_NONE:Ljava/util/List;

    if-ne p3, v0, :cond_1b

    .line 1935
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    goto :goto_21

    .line 1936
    :cond_1b
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    .line 1942
    :goto_21
    :try_start_21
    new-instance v0, Landroid/content/pm/PackageInstaller$Session$1;

    invoke-direct {v0, p0, p4, p5}, Landroid/content/pm/PackageInstaller$Session$1;-><init>(Landroid/content/pm/PackageInstaller$Session;Ljava/util/concurrent/Executor;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V

    move-object v6, v0

    .line 1951
    .local v6, "onChecksumsReadyListenerDelegate":Landroid/content/pm/IOnChecksumsReadyListener;
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    .line 1952
    invoke-static {p3}, Landroid/content/pm/PackageInstaller$Session;->encodeCertificates(Ljava/util/List;)Ljava/util/List;

    move-result-object v5
    :try_end_2d
    .catch Landroid/os/ParcelableException; {:try_start_21 .. :try_end_2d} :catch_45
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2d} :catch_3c

    .line 1951
    const/16 v3, 0x7f

    move-object v2, p1

    move v4, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "required":I
    .local v2, "name":Ljava/lang/String;
    .local v4, "required":I
    :try_start_31
    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageInstallerSession;->requestChecksums(Ljava/lang/String;IILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;)V
    :try_end_34
    .catch Landroid/os/ParcelableException; {:try_start_31 .. :try_end_34} :catch_39
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_36

    .line 1958
    .end local v6    # "onChecksumsReadyListenerDelegate":Landroid/content/pm/IOnChecksumsReadyListener;
    nop

    .line 1959
    return-void

    .line 1956
    :catch_36
    move-exception v0

    move-object p1, v0

    goto :goto_40

    .line 1953
    :catch_39
    move-exception v0

    move-object p1, v0

    goto :goto_49

    .line 1956
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "required":I
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "required":I
    :catch_3c
    move-exception v0

    move-object v2, p1

    move v4, p2

    move-object p1, v0

    .line 1957
    .end local p2    # "required":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "required":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_40
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 1953
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "required":I
    .local p1, "name":Ljava/lang/String;
    .restart local p2    # "required":I
    :catch_45
    move-exception v0

    move-object v2, p1

    move v4, p2

    move-object p1, v0

    .line 1954
    .end local p2    # "required":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "required":I
    .local p1, "e":Landroid/os/ParcelableException;
    :goto_49
    const-class p2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 1955
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1937
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "required":I
    .local p1, "name":Ljava/lang/String;
    .restart local p2    # "required":I
    :cond_54
    move-object v2, p1

    move v4, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "required":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "required":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "trustedInstallers has to be one of TRUST_ALL/TRUST_NONE or a non-empty list of certificates."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist requestUserPreapproval(Landroid/content/pm/PackageInstaller$PreapprovalDetails;Landroid/content/IntentSender;)V
    .registers 7
    .param p1, "details"    # Landroid/content/pm/PackageInstaller$PreapprovalDetails;
    .param p2, "statusReceiver"    # Landroid/content/IntentSender;

    .line 2281
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string/jumbo v3, "preapprovalDetails cannot be null."

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2282
    if-eqz p2, :cond_10

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    const-string/jumbo v1, "statusReceiver cannot be null."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2284
    :try_start_17
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageInstallerSession;->requestUserPreapproval(Landroid/content/pm/PackageInstaller$PreapprovalDetails;Landroid/content/IntentSender;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 2287
    goto :goto_21

    .line 2285
    :catch_1d
    move-exception v0

    .line 2286
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2288
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method

.method public whitelist setAppMetadata(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "data"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2232
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_25

    .line 2240
    :cond_9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2241
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$Session;->openWriteAppMetadata()Ljava/io/OutputStream;

    move-result-object v0

    .line 2242
    .local v0, "outputStream":Ljava/io/OutputStream;
    :try_start_10
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_19

    .line 2243
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 2244
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    :cond_18
    return-void

    .line 2241
    .restart local v0    # "outputStream":Ljava/io/OutputStream;
    :catchall_19
    move-exception v1

    if-eqz v0, :cond_24

    :try_start_1c
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    throw v1

    .line 2234
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    :cond_25
    :goto_25
    :try_start_25
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->removeAppMetadata()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2c

    .line 2237
    nop

    .line 2238
    return-void

    .line 2235
    :catch_2c
    move-exception v0

    .line 2236
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setChecksums(Ljava/lang/String;Ljava/util/List;[B)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "signature"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/Checksum;",
            ">;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1860
    .local p2, "checksums":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/Checksum;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    :try_start_6
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/pm/Checksum;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Checksum;

    invoke-interface {v0, p1, v1, p3}, Landroid/content/pm/IPackageInstallerSession;->setChecksums(Ljava/lang/String;[Landroid/content/pm/Checksum;[B)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_17} :catch_1f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_19

    .line 1871
    nop

    .line 1872
    return-void

    .line 1869
    :catch_19
    move-exception v0

    .line 1870
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1866
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1f
    move-exception v0

    .line 1867
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1868
    throw v0
.end method

.method public whitelist setPreVerifiedDomains(Ljava/util/Set;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2345
    .local p1, "preVerifiedDomains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string v1, "Provided pre-verified domains cannot be null or empty."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2348
    :try_start_10
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    new-instance v1, Landroid/content/pm/verify/domain/DomainSet;

    invoke-direct {v1, p1}, Landroid/content/pm/verify/domain/DomainSet;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageInstallerSession;->setPreVerifiedDomains(Landroid/content/pm/verify/domain/DomainSet;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1c

    .line 2351
    nop

    .line 2352
    return-void

    .line 2349
    :catch_1c
    move-exception v0

    .line 2350
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setProgress(F)V
    .registers 2
    .param p1, "progress"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1547
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller$Session;->setStagingProgress(F)V

    .line 1548
    return-void
.end method

.method public whitelist setStagingProgress(F)V
    .registers 4
    .param p1, "progress"    # F

    .line 1561
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->setClientProgress(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1564
    nop

    .line 1565
    return-void

    .line 1562
    :catch_7
    move-exception v0

    .line 1563
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist stageViaHardLink(Ljava/lang/String;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1655
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->stageViaHardLink(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1661
    nop

    .line 1662
    return-void

    .line 1659
    :catch_7
    move-exception v0

    .line 1660
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1656
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 1657
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1658
    throw v0
.end method

.method public whitelist transfer(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2048
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2051
    :try_start_9
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->transfer(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/ParcelableException; {:try_start_9 .. :try_end_e} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    .line 2057
    nop

    .line 2058
    return-void

    .line 2055
    :catch_10
    move-exception v0

    .line 2056
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2052
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_16
    move-exception v0

    .line 2053
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2054
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-o write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .param p6, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1630
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_2} :catch_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_11

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "offsetBytes":J
    .end local p4    # "lengthBytes":J
    .end local p6    # "fd":Landroid/os/ParcelFileDescriptor;
    .local v1, "name":Ljava/lang/String;
    .local v2, "offsetBytes":J
    .local v4, "lengthBytes":J
    .local v6, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_6
    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageInstallerSession;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_9} :catch_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    .line 1636
    nop

    .line 1637
    return-void

    .line 1634
    :catch_b
    move-exception v0

    move-object p1, v0

    goto :goto_17

    .line 1631
    :catch_e
    move-exception v0

    move-object p1, v0

    goto :goto_22

    .line 1634
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "offsetBytes":J
    .end local v4    # "lengthBytes":J
    .end local v6    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "offsetBytes":J
    .restart local p4    # "lengthBytes":J
    .restart local p6    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_11
    move-exception v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move-object p1, v0

    .line 1635
    .end local p2    # "offsetBytes":J
    .end local p4    # "lengthBytes":J
    .end local p6    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "offsetBytes":J
    .restart local v4    # "lengthBytes":J
    .restart local v6    # "fd":Landroid/os/ParcelFileDescriptor;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_17
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 1631
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "offsetBytes":J
    .end local v4    # "lengthBytes":J
    .end local v6    # "fd":Landroid/os/ParcelFileDescriptor;
    .local p1, "name":Ljava/lang/String;
    .restart local p2    # "offsetBytes":J
    .restart local p4    # "lengthBytes":J
    .restart local p6    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_1c
    move-exception v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move-object p1, v0

    .line 1632
    .end local p2    # "offsetBytes":J
    .end local p4    # "lengthBytes":J
    .end local p6    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "offsetBytes":J
    .restart local v4    # "lengthBytes":J
    .restart local v6    # "fd":Landroid/os/ParcelFileDescriptor;
    .local p1, "e":Ljava/lang/RuntimeException;
    :goto_22
    invoke-static {p1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1633
    throw p1
.end method
