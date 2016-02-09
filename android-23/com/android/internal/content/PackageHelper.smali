.class public Lcom/android/internal/content/PackageHelper;
.super Ljava/lang/Object;
.source "PackageHelper.java"


# static fields
.field public static final APP_INSTALL_AUTO:I = 0x0

.field public static final APP_INSTALL_EXTERNAL:I = 0x2

.field public static final APP_INSTALL_INTERNAL:I = 0x1

.field public static final RECOMMEND_FAILED_ALREADY_EXISTS:I = -0x4

.field public static final RECOMMEND_FAILED_INSUFFICIENT_STORAGE:I = -0x1

.field public static final RECOMMEND_FAILED_INVALID_APK:I = -0x2

.field public static final RECOMMEND_FAILED_INVALID_LOCATION:I = -0x3

.field public static final RECOMMEND_FAILED_INVALID_URI:I = -0x6

.field public static final RECOMMEND_FAILED_VERSION_DOWNGRADE:I = -0x7

.field public static final RECOMMEND_INSTALL_EXTERNAL:I = 0x2

.field public static final RECOMMEND_INSTALL_INTERNAL:I = 0x1

.field public static final RECOMMEND_MEDIA_UNAVAILABLE:I = -0x5

.field private static final TAG:Ljava/lang/String; = "PackageHelper"

.field private static final localLOGV:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;ZLjava/lang/String;)J
    .locals 8
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;
    .param p1, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p2, "isForwardLocked"    # Z
    .param p3, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 514
    const-wide/16 v4, 0x0

    #@2
    .line 517
    .local v4, "sizeBytes":J
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;

    #@5
    move-result-object v3

    #@6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    .local v2, "codePath$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/lang/String;

    #@16
    .line 518
    .local v1, "codePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    #@18
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1b
    .line 519
    .local v0, "codeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    #@1e
    move-result-wide v6

    #@1f
    add-long/2addr v4, v6

    #@20
    .line 521
    if-eqz p2, :cond_0

    #@22
    .line 522
    const/4 v3, 0x0

    #@23
    invoke-static {v0, v3}, Lcom/android/internal/content/PackageHelper;->extractPublicFiles(Ljava/io/File;Ljava/io/File;)J

    #@26
    move-result-wide v6

    #@27
    add-long/2addr v4, v6

    #@28
    goto :goto_0

    #@29
    .line 527
    .end local v0    # "codeFile":Ljava/io/File;
    .end local v1    # "codePath":Ljava/lang/String;
    :cond_1
    invoke-static {p1, p3}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    #@2c
    move-result-wide v6

    #@2d
    add-long/2addr v4, v6

    #@2e
    .line 529
    return-wide v4
.end method

.method public static calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;ZLjava/lang/String;)J
    .locals 4
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;
    .param p1, "isForwardLocked"    # Z
    .param p2, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 503
    const/4 v0, 0x0

    #@1
    .line 505
    .local v0, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/PackageParser$PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    #@4
    move-result-object v0

    #@5
    .line 506
    .local v0, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;ZLjava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-wide v2

    #@9
    .line 508
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@c
    .line 506
    return-wide v2

    #@d
    .line 507
    .end local v0    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :catchall_0
    move-exception v1

    #@e
    .line 508
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@11
    .line 507
    throw v1
.end method

.method private static copyZipEntry(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    .locals 5
    .param p0, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .param p1, "inZipFile"    # Ljava/util/zip/ZipFile;
    .param p2, "outZipStream"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 299
    const/16 v4, 0x1000

    #@2
    new-array v0, v4, [B

    #@4
    .line 303
    .local v0, "buffer":[B
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getMethod()I

    #@7
    move-result v4

    #@8
    if-nez v4, :cond_0

    #@a
    .line 305
    new-instance v2, Ljava/util/zip/ZipEntry;

    #@c
    invoke-direct {v2, p0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    #@f
    .line 310
    .local v2, "newEntry":Ljava/util/zip/ZipEntry;
    :goto_0
    invoke-virtual {p2, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    #@12
    .line 312
    invoke-virtual {p1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@15
    move-result-object v1

    #@16
    .line 314
    .local v1, "data":Ljava/io/InputStream;
    :goto_1
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    #@19
    move-result v3

    #@1a
    .local v3, "num":I
    if-lez v3, :cond_1

    #@1c
    .line 315
    const/4 v4, 0x0

    #@1d
    invoke-virtual {p2, v0, v4, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    goto :goto_1

    #@21
    .line 318
    .end local v3    # "num":I
    :catchall_0
    move-exception v4

    #@22
    .line 319
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@25
    .line 318
    throw v4

    #@26
    .line 308
    .end local v1    # "data":Ljava/io/InputStream;
    .end local v2    # "newEntry":Ljava/util/zip/ZipEntry;
    :cond_0
    new-instance v2, Ljava/util/zip/ZipEntry;

    #@28
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-direct {v2, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    #@2f
    .restart local v2    # "newEntry":Ljava/util/zip/ZipEntry;
    goto :goto_0

    #@30
    .line 317
    .restart local v1    # "data":Ljava/io/InputStream;
    .restart local v3    # "num":I
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    .line 319
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@36
    .line 298
    return-void
.end method

.method public static createSdDir(JLjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 12
    .param p0, "sizeBytes"    # J
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "sdEncKey"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "isExternal"    # Z

    #@0
    .prologue
    .line 87
    const-wide/32 v4, 0x100000

    #@3
    add-long/2addr v4, p0

    #@4
    const-wide/32 v10, 0x100000

    #@7
    div-long/2addr v4, v10

    #@8
    long-to-int v1, v4

    #@9
    add-int/lit8 v2, v1, 0x1

    #@b
    .line 89
    .local v2, "sizeMb":I
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    #@e
    move-result-object v0

    #@f
    .line 94
    .local v0, "mountService":Landroid/os/storage/IMountService;
    const-string/jumbo v3, "ext4"

    #@12
    move-object v1, p2

    #@13
    move-object v4, p3

    #@14
    move/from16 v5, p4

    #@16
    move/from16 v6, p5

    #@18
    invoke-interface/range {v0 .. v6}, Landroid/os/storage/IMountService;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    #@1b
    move-result v9

    #@1c
    .line 96
    .local v9, "rc":I
    if-eqz v9, :cond_0

    #@1e
    .line 97
    const-string/jumbo v1, "PackageHelper"

    #@21
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v4, "Failed to create secure container "

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 98
    const/4 v1, 0x0

    #@39
    return-object v1

    #@3a
    .line 100
    :cond_0
    invoke-interface {v0, p2}, Landroid/os/storage/IMountService;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    move-result-object v7

    #@3e
    .line 103
    .local v7, "cachePath":Ljava/lang/String;
    return-object v7

    #@3f
    .line 104
    .end local v0    # "mountService":Landroid/os/storage/IMountService;
    .end local v7    # "cachePath":Ljava/lang/String;
    .end local v9    # "rc":I
    :catch_0
    move-exception v8

    #@40
    .line 105
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PackageHelper"

    #@43
    const-string/jumbo v3, "MountService running?"

    #@46
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 107
    const/4 v1, 0x0

    #@4a
    return-object v1
.end method

.method public static destroySdDir(Ljava/lang/String;)Z
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 212
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    #@5
    move-result-object v2

    #@6
    const/4 v3, 0x1

    #@7
    invoke-interface {v2, p0, v3}, Landroid/os/storage/IMountService;->destroySecureContainer(Ljava/lang/String;Z)I

    #@a
    move-result v1

    #@b
    .line 213
    .local v1, "rc":I
    if-eqz v1, :cond_0

    #@d
    .line 214
    const-string/jumbo v2, "PackageHelper"

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Failed to destroy container "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 215
    return v5

    #@28
    .line 217
    :cond_0
    return v4

    #@29
    .line 218
    .end local v1    # "rc":I
    :catch_0
    move-exception v0

    #@2a
    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageHelper"

    #@2d
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v4, "Failed to destroy container "

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    .line 220
    const-string/jumbo v4, " with exception "

    #@40
    .line 219
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 222
    return v5
.end method

.method public static extractPublicFiles(Ljava/io/File;Ljava/io/File;)J
    .locals 13
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "publicZipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 252
    if-nez p1, :cond_2

    #@2
    .line 253
    const/4 v1, 0x0

    #@3
    .line 254
    .local v1, "fstr":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    #@4
    .line 261
    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    :goto_0
    const-wide/16 v4, 0x0

    #@6
    .line 264
    .local v4, "size":J
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    #@8
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@b
    move-result-object v9

    #@c
    invoke-direct {v2, v9}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@f
    .line 267
    .local v2, "privateZip":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    #@12
    move-result-object v9

    #@13
    invoke-static {v9}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    #@16
    move-result-object v9

    #@17
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v7

    #@1b
    .local v7, "zipEntry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v9

    #@1f
    if-eqz v9, :cond_3

    #@21
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v6

    #@25
    check-cast v6, Ljava/util/zip/ZipEntry;

    #@27
    .line 268
    .local v6, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@2a
    move-result-object v8

    #@2b
    .line 269
    .local v8, "zipEntryName":Ljava/lang/String;
    const-string/jumbo v9, "AndroidManifest.xml"

    #@2e
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v9

    #@32
    if-nez v9, :cond_1

    #@34
    .line 270
    const-string/jumbo v9, "resources.arsc"

    #@37
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v9

    #@3b
    .line 269
    if-nez v9, :cond_1

    #@3d
    .line 271
    const-string/jumbo v9, "res/"

    #@40
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@43
    move-result v9

    #@44
    .line 269
    if-eqz v9, :cond_0

    #@46
    .line 272
    :cond_1
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    #@49
    move-result-wide v10

    #@4a
    add-long/2addr v4, v10

    #@4b
    .line 273
    if-eqz p1, :cond_0

    #@4d
    .line 274
    invoke-static {v6, v2, v3}, Lcom/android/internal/content/PackageHelper;->copyZipEntry(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    goto :goto_1

    #@51
    .line 278
    .end local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v7    # "zipEntry$iterator":Ljava/util/Iterator;
    .end local v8    # "zipEntryName":Ljava/lang/String;
    :catchall_0
    move-exception v9

    #@52
    .line 279
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@55
    .line 278
    :goto_2
    :try_start_3
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@56
    .line 290
    .end local v2    # "privateZip":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v9

    #@57
    .line 291
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@5a
    .line 290
    throw v9

    #@5b
    .line 256
    .end local v4    # "size":J
    :cond_2
    new-instance v1, Ljava/io/FileOutputStream;

    #@5d
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@60
    .line 257
    .local v1, "fstr":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    #@62
    invoke-direct {v3, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@65
    .line 258
    .local v3, "publicZipOutStream":Ljava/util/zip/ZipOutputStream;
    const-string/jumbo v9, "PackageHelper"

    #@68
    new-instance v10, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v11, "Extracting "

    #@70
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v10

    #@74
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v10

    #@78
    const-string/jumbo v11, " to "

    #@7b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v10

    #@7f
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v10

    #@83
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v10

    #@87
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    goto/16 :goto_0

    #@8c
    .line 279
    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    .end local v3    # "publicZipOutStream":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v4    # "size":J
    .restart local v7    # "zipEntry$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@8f
    .line 282
    :goto_3
    if-eqz p1, :cond_4

    #@91
    .line 283
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->finish()V

    #@94
    .line 284
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->flush()V

    #@97
    .line 285
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@9a
    .line 286
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    #@9d
    .line 287
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@a0
    move-result-object v9

    #@a1
    const/16 v10, 0x1a4

    #@a3
    .line 288
    const/4 v11, -0x1

    #@a4
    const/4 v12, -0x1

    #@a5
    .line 287
    invoke-static {v9, v10, v11, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@a8
    .line 291
    :cond_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ab
    .line 294
    return-wide v4

    #@ac
    .line 279
    :catch_0
    move-exception v0

    #@ad
    .local v0, "e":Ljava/io/IOException;
    goto :goto_3

    #@ae
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "zipEntry$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    #@af
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method public static finalizeSdDir(Ljava/lang/String;)Z
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 196
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2, p0}, Landroid/os/storage/IMountService;->finalizeSecureContainer(Ljava/lang/String;)I

    #@8
    move-result v1

    #@9
    .line 197
    .local v1, "rc":I
    if-eqz v1, :cond_0

    #@b
    .line 198
    const-string/jumbo v2, "PackageHelper"

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Failed to finalize container "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 199
    return v5

    #@26
    .line 201
    :cond_0
    const/4 v2, 0x1

    #@27
    return v2

    #@28
    .line 202
    .end local v1    # "rc":I
    :catch_0
    move-exception v0

    #@29
    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageHelper"

    #@2c
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v4, "Failed to finalize container "

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    .line 204
    const-string/jumbo v4, " with exception "

    #@3f
    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 206
    return v5
.end method

.method public static fitsOnExternal(Landroid/content/Context;J)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeBytes"    # J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 418
    const-class v3, Landroid/os/storage/StorageManager;

    #@3
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/os/storage/StorageManager;

    #@9
    .line 419
    .local v1, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    #@c
    move-result-object v0

    #@d
    .line 420
    .local v0, "primary":Landroid/os/storage/StorageVolume;
    const-wide/16 v4, 0x0

    #@f
    cmp-long v3, p1, v4

    #@11
    if-lez v3, :cond_0

    #@13
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1

    #@19
    :cond_0
    :goto_0
    return v2

    #@1a
    .line 421
    :cond_1
    const-string/jumbo v3, "mounted"

    #@1d
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v3

    #@25
    .line 420
    if-eqz v3, :cond_0

    #@27
    .line 422
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v1, v3}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    #@2e
    move-result-wide v4

    #@2f
    cmp-long v3, p1, v4

    #@31
    if-gtz v3, :cond_0

    #@33
    const/4 v2, 0x1

    #@34
    goto :goto_0
.end method

.method public static fitsOnInternal(Landroid/content/Context;J)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeBytes"    # J

    #@0
    .prologue
    .line 412
    const-class v2, Landroid/os/storage/StorageManager;

    #@2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/storage/StorageManager;

    #@8
    .line 413
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@b
    move-result-object v1

    #@c
    .line 414
    .local v1, "target":Ljava/io/File;
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    #@f
    move-result-wide v2

    #@10
    cmp-long v2, p1, v2

    #@12
    if-gtz v2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :goto_0
    return v2

    #@16
    :cond_0
    const/4 v2, 0x0

    #@17
    goto :goto_0
.end method

.method public static fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "gid"    # I
    .param p2, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 325
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2, p0, p1, p2}, Landroid/os/storage/IMountService;->fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    #@8
    move-result v1

    #@9
    .line 326
    .local v1, "rc":I
    if-eqz v1, :cond_0

    #@b
    .line 327
    const-string/jumbo v2, "PackageHelper"

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Failed to fixperms container "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 328
    return v5

    #@26
    .line 330
    :cond_0
    const/4 v2, 0x1

    #@27
    return v2

    #@28
    .line 331
    .end local v1    # "rc":I
    :catch_0
    move-exception v0

    #@29
    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageHelper"

    #@2c
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v4, "Failed to fixperms container "

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    const-string/jumbo v4, " with exception "

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 334
    return v5
.end method

.method public static getMountService()Landroid/os/storage/IMountService;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    const-string/jumbo v1, "mount"

    #@3
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 76
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@9
    .line 77
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 79
    :cond_0
    const-string/jumbo v1, "PackageHelper"

    #@11
    const-string/jumbo v2, "Can\'t get mount service"

    #@14
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 80
    new-instance v1, Landroid/os/RemoteException;

    #@19
    const-string/jumbo v2, "Could not contact mount service"

    #@1c
    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1
.end method

.method public static getSdDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "cid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 176
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0}, Landroid/os/storage/IMountService;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 177
    :catch_0
    move-exception v0

    #@a
    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PackageHelper"

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Failed to get container path for "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    .line 179
    const-string/jumbo v3, " with exception "

    #@20
    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 181
    const/4 v1, 0x0

    #@30
    return-object v1
.end method

.method public static getSdFilesystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "cid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 186
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0}, Landroid/os/storage/IMountService;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 187
    :catch_0
    move-exception v0

    #@a
    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PackageHelper"

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Failed to get container path for "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    .line 189
    const-string/jumbo v3, " with exception "

    #@20
    .line 188
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 191
    const/4 v1, 0x0

    #@30
    return-object v1
.end method

.method public static getSecureContainerList()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 227
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getSecureContainerList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 228
    :catch_0
    move-exception v0

    #@a
    .line 229
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PackageHelper"

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Failed to get secure container list with exception"

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 232
    const/4 v1, 0x0

    #@25
    return-object v1
.end method

.method public static isContainerMounted(Ljava/lang/String;)Z
    .locals 4
    .param p0, "cid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 237
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0}, Landroid/os/storage/IMountService;->isSecureContainerMounted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 238
    :catch_0
    move-exception v0

    #@a
    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PackageHelper"

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Failed to find out if container "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, " mounted"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 241
    const/4 v1, 0x0

    #@2c
    return v1
.end method

.method public static mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I

    #@0
    .prologue
    .line 127
    const/4 v0, 0x1

    #@1
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static mountSdDir(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "readOnly"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 132
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2, p0, p1, p2, p3}, Landroid/os/storage/IMountService;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I

    #@8
    move-result v1

    #@9
    .line 133
    .local v1, "rc":I
    if-eqz v1, :cond_0

    #@b
    .line 134
    const-string/jumbo v2, "PackageHelper"

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Failed to mount container "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    const-string/jumbo v4, " rc : "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 135
    return-object v5

    #@31
    .line 137
    :cond_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    #@34
    move-result-object v2

    #@35
    invoke-interface {v2, p0}, Landroid/os/storage/IMountService;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    move-result-object v2

    #@39
    return-object v2

    #@3a
    .line 138
    .end local v1    # "rc":I
    :catch_0
    move-exception v0

    #@3b
    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageHelper"

    #@3e
    const-string/jumbo v3, "MountService running?"

    #@41
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 141
    return-object v5
.end method

.method public static renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "oldId"    # Ljava/lang/String;
    .param p1, "newId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 160
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2, p0, p1}, Landroid/os/storage/IMountService;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    #@8
    move-result v1

    #@9
    .line 161
    .local v1, "rc":I
    if-eqz v1, :cond_0

    #@b
    .line 162
    const-string/jumbo v2, "PackageHelper"

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Failed to rename "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    const-string/jumbo v4, " to "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    .line 163
    const-string/jumbo v4, "with rc "

    #@2c
    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 164
    return v5

    #@3c
    .line 166
    :cond_0
    const/4 v2, 0x1

    #@3d
    return v2

    #@3e
    .line 167
    .end local v1    # "rc":I
    :catch_0
    move-exception v0

    #@3f
    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageHelper"

    #@42
    new-instance v3, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v4, "Failed ot rename  "

    #@4a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    const-string/jumbo v4, " to "

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    .line 169
    const-string/jumbo v4, " with exception : "

    #@60
    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v3

    #@6c
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6f
    .line 171
    return v5
.end method

.method public static replaceEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "before"    # Ljava/lang/String;
    .param p2, "after"    # Ljava/lang/String;

    #@0
    .prologue
    .line 533
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 534
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Expected "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " to end with "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 534
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 537
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@33
    move-result v1

    #@34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@37
    move-result v2

    #@38
    sub-int/2addr v1, v2

    #@39
    const/4 v2, 0x0

    #@3a
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    return-object v0
.end method

.method public static resizeSdDir(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "sizeBytes"    # J
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "sdEncKey"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/32 v8, 0x100000

    #@3
    const/4 v7, 0x0

    #@4
    .line 112
    add-long v4, p0, v8

    #@6
    div-long/2addr v4, v8

    #@7
    long-to-int v4, v4

    #@8
    add-int/lit8 v3, v4, 0x1

    #@a
    .line 114
    .local v3, "sizeMb":I
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    #@d
    move-result-object v1

    #@e
    .line 115
    .local v1, "mountService":Landroid/os/storage/IMountService;
    invoke-interface {v1, p2, v3, p3}, Landroid/os/storage/IMountService;->resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v2

    #@12
    .line 116
    .local v2, "rc":I
    if-nez v2, :cond_0

    #@14
    .line 117
    const/4 v4, 0x1

    #@15
    return v4

    #@16
    .line 119
    .end local v1    # "mountService":Landroid/os/storage/IMountService;
    .end local v2    # "rc":I
    :catch_0
    move-exception v0

    #@17
    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "PackageHelper"

    #@1a
    const-string/jumbo v5, "MountService running?"

    #@1d
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 122
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v4, "PackageHelper"

    #@23
    new-instance v5, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v6, "Failed to create secure container "

    #@2b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 123
    return v7
.end method

.method public static resolveInstallLocation(Landroid/content/Context;Ljava/lang/String;IJI)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installLocation"    # I
    .param p3, "sizeBytes"    # J
    .param p5, "installFlags"    # I

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/4 v8, 0x1

    #@2
    .line 431
    const/4 v1, 0x0

    #@3
    .line 433
    .local v1, "existingInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v6

    #@7
    .line 434
    const/16 v7, 0x2000

    #@9
    .line 433
    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    .line 440
    .end local v1    # "existingInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    and-int/lit8 v6, p5, 0x10

    #@f
    if-eqz v6, :cond_4

    #@11
    .line 441
    const/4 v5, 0x1

    #@12
    .line 442
    .local v5, "prefer":I
    const/4 v0, 0x0

    #@13
    .line 470
    .local v0, "checkBoth":Z
    :goto_1
    const/4 v3, 0x0

    #@14
    .line 471
    .local v3, "fitsOnInternal":Z
    if-nez v0, :cond_0

    #@16
    if-ne v5, v8, :cond_1

    #@18
    .line 472
    :cond_0
    invoke-static {p0, p3, p4}, Lcom/android/internal/content/PackageHelper;->fitsOnInternal(Landroid/content/Context;J)Z

    #@1b
    move-result v3

    #@1c
    .line 475
    .end local v3    # "fitsOnInternal":Z
    :cond_1
    const/4 v2, 0x0

    #@1d
    .line 476
    .local v2, "fitsOnExternal":Z
    if-nez v0, :cond_2

    #@1f
    if-ne v5, v9, :cond_3

    #@21
    .line 477
    :cond_2
    invoke-static {p0, p3, p4}, Lcom/android/internal/content/PackageHelper;->fitsOnExternal(Landroid/content/Context;J)Z

    #@24
    move-result v2

    #@25
    .line 480
    .end local v2    # "fitsOnExternal":Z
    :cond_3
    if-ne v5, v8, :cond_b

    #@27
    .line 481
    if-eqz v3, :cond_c

    #@29
    .line 482
    return v8

    #@2a
    .line 443
    .end local v0    # "checkBoth":Z
    .end local v5    # "prefer":I
    :cond_4
    and-int/lit8 v6, p5, 0x8

    #@2c
    if-eqz v6, :cond_5

    #@2e
    .line 444
    const/4 v5, 0x2

    #@2f
    .line 445
    .restart local v5    # "prefer":I
    const/4 v0, 0x0

    #@30
    .restart local v0    # "checkBoth":Z
    goto :goto_1

    #@31
    .line 446
    .end local v0    # "checkBoth":Z
    .end local v5    # "prefer":I
    :cond_5
    if-ne p2, v8, :cond_6

    #@33
    .line 447
    const/4 v5, 0x1

    #@34
    .line 448
    .restart local v5    # "prefer":I
    const/4 v0, 0x0

    #@35
    .restart local v0    # "checkBoth":Z
    goto :goto_1

    #@36
    .line 449
    .end local v0    # "checkBoth":Z
    .end local v5    # "prefer":I
    :cond_6
    if-ne p2, v9, :cond_7

    #@38
    .line 450
    const/4 v5, 0x2

    #@39
    .line 451
    .restart local v5    # "prefer":I
    const/4 v0, 0x1

    #@3a
    .restart local v0    # "checkBoth":Z
    goto :goto_1

    #@3b
    .line 452
    .end local v0    # "checkBoth":Z
    .end local v5    # "prefer":I
    :cond_7
    if-nez p2, :cond_a

    #@3d
    .line 454
    if-eqz v1, :cond_9

    #@3f
    .line 456
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@41
    const/high16 v7, 0x40000

    #@43
    and-int/2addr v6, v7

    #@44
    if-eqz v6, :cond_8

    #@46
    .line 457
    const/4 v5, 0x2

    #@47
    .line 464
    .restart local v5    # "prefer":I
    :goto_2
    const/4 v0, 0x1

    #@48
    .restart local v0    # "checkBoth":Z
    goto :goto_1

    #@49
    .line 459
    .end local v0    # "checkBoth":Z
    .end local v5    # "prefer":I
    :cond_8
    const/4 v5, 0x1

    #@4a
    .restart local v5    # "prefer":I
    goto :goto_2

    #@4b
    .line 462
    .end local v5    # "prefer":I
    :cond_9
    const/4 v5, 0x1

    #@4c
    .restart local v5    # "prefer":I
    goto :goto_2

    #@4d
    .line 466
    .end local v5    # "prefer":I
    :cond_a
    const/4 v5, 0x1

    #@4e
    .line 467
    .restart local v5    # "prefer":I
    const/4 v0, 0x0

    #@4f
    .restart local v0    # "checkBoth":Z
    goto :goto_1

    #@50
    .line 484
    :cond_b
    if-ne v5, v9, :cond_c

    #@52
    .line 485
    if-eqz v2, :cond_c

    #@54
    .line 486
    return v9

    #@55
    .line 490
    :cond_c
    if-eqz v0, :cond_e

    #@57
    .line 491
    if-eqz v3, :cond_d

    #@59
    .line 492
    return v8

    #@5a
    .line 493
    :cond_d
    if-eqz v2, :cond_e

    #@5c
    .line 494
    return v9

    #@5d
    .line 498
    :cond_e
    const/4 v6, -0x1

    #@5e
    return v6

    #@5f
    .line 435
    .end local v0    # "checkBoth":Z
    .end local v5    # "prefer":I
    .restart local v1    # "existingInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v4

    #@60
    .local v4, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static resolveInstallVolume(Landroid/content/Context;Ljava/lang/String;IJ)Ljava/lang/String;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installLocation"    # I
    .param p3, "sizeBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 350
    const/4 v10, 0x0

    #@1
    .line 352
    .local v10, "existingInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4
    move-result-object v16

    #@5
    .line 353
    const/16 v17, 0x2000

    #@7
    .line 352
    move-object/from16 v0, v16

    #@9
    move-object/from16 v1, p1

    #@b
    move/from16 v2, v17

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v10

    #@11
    .line 357
    .end local v10    # "existingInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    const-class v16, Landroid/os/storage/StorageManager;

    #@13
    move-object/from16 v0, p0

    #@15
    move-object/from16 v1, v16

    #@17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@1a
    move-result-object v13

    #@1b
    check-cast v13, Landroid/os/storage/StorageManager;

    #@1d
    .line 358
    .local v13, "storageManager":Landroid/os/storage/StorageManager;
    move-object/from16 v0, p0

    #@1f
    move-wide/from16 v1, p3

    #@21
    invoke-static {v0, v1, v2}, Lcom/android/internal/content/PackageHelper;->fitsOnInternal(Landroid/content/Context;J)Z

    #@24
    move-result v11

    #@25
    .line 360
    .local v11, "fitsOnInternal":Z
    new-instance v4, Landroid/util/ArraySet;

    #@27
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    #@2a
    .line 361
    .local v4, "allCandidates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@2b
    .line 362
    .local v5, "bestCandidate":Landroid/os/storage/VolumeInfo;
    const-wide/high16 v8, -0x8000000000000000L

    #@2d
    .line 363
    .local v8, "bestCandidateAvailBytes":J
    invoke-virtual {v13}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    #@30
    move-result-object v16

    #@31
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v15

    #@35
    .end local v5    # "bestCandidate":Landroid/os/storage/VolumeInfo;
    .local v15, "vol$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v16

    #@39
    if-eqz v16, :cond_2

    #@3b
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v14

    #@3f
    check-cast v14, Landroid/os/storage/VolumeInfo;

    #@41
    .line 364
    .local v14, "vol":Landroid/os/storage/VolumeInfo;
    iget v0, v14, Landroid/os/storage/VolumeInfo;->type:I

    #@43
    move/from16 v16, v0

    #@45
    const/16 v17, 0x1

    #@47
    move/from16 v0, v16

    #@49
    move/from16 v1, v17

    #@4b
    if-ne v0, v1, :cond_0

    #@4d
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    #@50
    move-result v16

    #@51
    if-eqz v16, :cond_0

    #@53
    .line 365
    new-instance v16, Ljava/io/File;

    #@55
    iget-object v0, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    #@57
    move-object/from16 v17, v0

    #@59
    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5c
    move-object/from16 v0, v16

    #@5e
    invoke-virtual {v13, v0}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    #@61
    move-result-wide v6

    #@62
    .line 366
    .local v6, "availBytes":J
    cmp-long v16, v6, p3

    #@64
    if-ltz v16, :cond_1

    #@66
    .line 367
    iget-object v0, v14, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@68
    move-object/from16 v16, v0

    #@6a
    move-object/from16 v0, v16

    #@6c
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@6f
    .line 369
    :cond_1
    cmp-long v16, v6, v8

    #@71
    if-ltz v16, :cond_0

    #@73
    .line 370
    move-object v5, v14

    #@74
    .line 371
    .local v5, "bestCandidate":Landroid/os/storage/VolumeInfo;
    move-wide v8, v6

    #@75
    goto :goto_1

    #@76
    .line 377
    .end local v5    # "bestCandidate":Landroid/os/storage/VolumeInfo;
    .end local v6    # "availBytes":J
    .end local v14    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_2
    if-eqz v10, :cond_3

    #@78
    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@7b
    move-result v16

    #@7c
    if-eqz v16, :cond_3

    #@7e
    .line 378
    const/16 p2, 0x1

    #@80
    .line 382
    :cond_3
    const/16 v16, 0x1

    #@82
    move/from16 v0, p2

    #@84
    move/from16 v1, v16

    #@86
    if-ne v0, v1, :cond_5

    #@88
    .line 383
    if-eqz v11, :cond_4

    #@8a
    .line 384
    const/16 v16, 0x0

    #@8c
    return-object v16

    #@8d
    .line 386
    :cond_4
    new-instance v16, Ljava/io/IOException;

    #@8f
    const-string/jumbo v17, "Requested internal only, but not enough space"

    #@92
    invoke-direct/range {v16 .. v17}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@95
    throw v16

    #@96
    .line 391
    :cond_5
    if-eqz v10, :cond_7

    #@98
    .line 392
    iget-object v0, v10, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@9a
    move-object/from16 v16, v0

    #@9c
    if-nez v16, :cond_6

    #@9e
    if-eqz v11, :cond_6

    #@a0
    .line 393
    const/16 v16, 0x0

    #@a2
    return-object v16

    #@a3
    .line 395
    :cond_6
    iget-object v0, v10, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@a5
    move-object/from16 v16, v0

    #@a7
    move-object/from16 v0, v16

    #@a9
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@ac
    move-result v16

    #@ad
    if-eqz v16, :cond_7

    #@af
    .line 396
    iget-object v0, v10, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@b1
    move-object/from16 v16, v0

    #@b3
    return-object v16

    #@b4
    .line 402
    :cond_7
    if-eqz v5, :cond_8

    #@b6
    .line 403
    iget-object v0, v5, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@b8
    move-object/from16 v16, v0

    #@ba
    return-object v16

    #@bb
    .line 404
    :cond_8
    if-eqz v11, :cond_9

    #@bd
    .line 405
    const/16 v16, 0x0

    #@bf
    return-object v16

    #@c0
    .line 407
    :cond_9
    new-instance v16, Ljava/io/IOException;

    #@c2
    const-string/jumbo v17, "No special requests, but no room anywhere"

    #@c5
    invoke-direct/range {v16 .. v17}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c8
    throw v16

    #@c9
    .line 354
    .end local v4    # "allCandidates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "bestCandidateAvailBytes":J
    .end local v11    # "fitsOnInternal":Z
    .end local v13    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v15    # "vol$iterator":Ljava/util/Iterator;
    .restart local v10    # "existingInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v12

    #@ca
    .local v12, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0
.end method

.method public static unMountSdDir(Ljava/lang/String;)Z
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 146
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    #@5
    move-result-object v2

    #@6
    const/4 v3, 0x1

    #@7
    invoke-interface {v2, p0, v3}, Landroid/os/storage/IMountService;->unmountSecureContainer(Ljava/lang/String;Z)I

    #@a
    move-result v1

    #@b
    .line 147
    .local v1, "rc":I
    if-eqz v1, :cond_0

    #@d
    .line 148
    const-string/jumbo v2, "PackageHelper"

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Failed to unmount "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, " with rc "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 149
    return v5

    #@33
    .line 151
    :cond_0
    return v4

    #@34
    .line 152
    .end local v1    # "rc":I
    :catch_0
    move-exception v0

    #@35
    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageHelper"

    #@38
    const-string/jumbo v3, "MountService running?"

    #@3b
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 155
    return v5
.end method
