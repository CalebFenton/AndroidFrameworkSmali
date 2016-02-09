.class public Lcom/android/internal/backup/LocalTransport;
.super Landroid/app/backup/BackupTransport;
.source "LocalTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    }
.end annotation


# static fields
.field private static final CURRENT_SET_TOKEN:J = 0x1L

.field private static final DEBUG:Z = false

.field private static final FULL_DATA_DIR:Ljava/lang/String; = "_full"

.field private static final INCREMENTAL_DIR:Ljava/lang/String; = "_delta"

.field static final POSSIBLE_SETS:[J

.field private static final TAG:Ljava/lang/String; = "LocalTransport"

.field private static final TRANSPORT_DATA_MANAGEMENT_LABEL:Ljava/lang/String; = ""

.field private static final TRANSPORT_DESTINATION_STRING:Ljava/lang/String; = "Backing up to debug-only private cache"

.field private static final TRANSPORT_DIR_NAME:Ljava/lang/String; = "com.android.internal.backup.LocalTransport"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurFullRestoreStream:Ljava/io/FileInputStream;

.field private mCurrentSetDir:Ljava/io/File;

.field private mCurrentSetFullDir:Ljava/io/File;

.field private mCurrentSetIncrementalDir:Ljava/io/File;

.field private mDataDir:Ljava/io/File;

.field private mFullBackupBuffer:[B

.field private mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

.field private mFullRestoreBuffer:[B

.field private mFullRestoreSocketStream:Ljava/io/FileOutputStream;

.field private mFullTargetPackage:Ljava/lang/String;

.field private mRestorePackage:I

.field private mRestorePackages:[Landroid/content/pm/PackageInfo;

.field private mRestoreSetDir:Ljava/io/File;

.field private mRestoreSetFullDir:Ljava/io/File;

.field private mRestoreSetIncrementalDir:Ljava/io/File;

.field private mRestoreType:I

.field private mSocket:Landroid/os/ParcelFileDescriptor;

.field private mSocketInputStream:Ljava/io/FileInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 414
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [J

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    #@9
    .line 55
    return-void

    #@a
    .line 414
    :array_0
    .array-data 8
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Landroid/app/backup/BackupTransport;-><init>()V

    #@3
    .line 75
    new-instance v0, Ljava/io/File;

    #@5
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    #@8
    move-result-object v1

    #@9
    const-string/jumbo v2, "backup"

    #@c
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@f
    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    #@11
    .line 76
    new-instance v0, Ljava/io/File;

    #@13
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    #@15
    const-wide/16 v2, 0x1

    #@17
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1e
    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    #@20
    .line 77
    new-instance v0, Ljava/io/File;

    #@22
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    #@24
    const-string/jumbo v2, "_delta"

    #@27
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2a
    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    #@2c
    .line 78
    new-instance v0, Ljava/io/File;

    #@2e
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    #@30
    const-string/jumbo v2, "_full"

    #@33
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@36
    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    #@38
    .line 80
    const/4 v0, 0x0

    #@39
    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    #@3b
    .line 81
    const/4 v0, -0x1

    #@3c
    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    #@3e
    .line 108
    iput-object p1, p0, Lcom/android/internal/backup/LocalTransport;->mContext:Landroid/content/Context;

    #@40
    .line 109
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->makeDataDirs()V

    #@43
    .line 107
    return-void
.end method

.method private contentsByKey(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/backup/LocalTransport$DecodedFilename;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 572
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    .line 573
    .local v0, "allFiles":[Ljava/io/File;
    if-eqz v0, :cond_0

    #@8
    array-length v4, v0

    #@9
    if-nez v4, :cond_1

    #@b
    .line 574
    :cond_0
    return-object v5

    #@c
    .line 578
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    #@e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@11
    .line 579
    .local v1, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/backup/LocalTransport$DecodedFilename;>;"
    array-length v4, v0

    #@12
    :goto_0
    if-ge v3, v4, :cond_2

    #@14
    aget-object v2, v0, v3

    #@16
    .line 580
    .local v2, "f":Ljava/io/File;
    new-instance v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;

    #@18
    invoke-direct {v5, v2}, Lcom/android/internal/backup/LocalTransport$DecodedFilename;-><init>(Ljava/io/File;)V

    #@1b
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    .line 579
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_0

    #@21
    .line 582
    .end local v2    # "f":Ljava/io/File;
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@24
    .line 583
    return-object v1
.end method

.method private deleteContents(Ljava/io/File;)V
    .locals 5
    .param p1, "dirname"    # Ljava/io/File;

    #@0
    .prologue
    .line 236
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    .line 237
    .local v0, "contents":[Ljava/io/File;
    if-eqz v0, :cond_1

    #@6
    .line 238
    const/4 v2, 0x0

    #@7
    array-length v3, v0

    #@8
    :goto_0
    if-ge v2, v3, :cond_1

    #@a
    aget-object v1, v0, v2

    #@c
    .line 239
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    .line 242
    invoke-direct {p0, v1}, Lcom/android/internal/backup/LocalTransport;->deleteContents(Ljava/io/File;)V

    #@15
    .line 244
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@18
    .line 238
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 235
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private makeDataDirs()V
    .locals 3

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@5
    .line 100
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    #@7
    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 101
    const-string/jumbo v0, "LocalTransport"

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "SELinux restorecon failed for "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    #@2b
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    #@2e
    .line 104
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    #@30
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    #@33
    .line 98
    return-void
.end method

.method private resetFullRestoreState()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 599
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    #@3
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@6
    .line 600
    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    #@8
    .line 601
    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    #@a
    .line 602
    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    #@c
    .line 598
    return-void
.end method

.method private tarballFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 307
    new-instance v0, Ljava/io/File;

    #@2
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    #@4
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@7
    return-object v0
.end method

.method private tearDownFullBackup()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 284
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 287
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    #@b
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    #@e
    .line 288
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    #@10
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    #@13
    .line 290
    :cond_0
    const/4 v1, 0x0

    #@14
    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;

    #@16
    .line 291
    const/4 v1, 0x0

    #@17
    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    #@19
    .line 292
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    #@1b
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 299
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    #@20
    .line 300
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    #@22
    .line 303
    :cond_1
    const/4 v1, 0x0

    #@23
    return v1

    #@24
    .line 293
    :catch_0
    move-exception v0

    #@25
    .line 297
    .local v0, "e":Ljava/io/IOException;
    const/16 v1, -0x3e8

    #@27
    .line 299
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    #@29
    .line 300
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    #@2b
    .line 297
    return v1

    #@2c
    .line 298
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@2d
    .line 299
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    #@2f
    .line 300
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    #@31
    .line 298
    throw v1
.end method


# virtual methods
.method public abortFullRestore()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 694
    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    #@3
    const/4 v1, 0x2

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 695
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "abortFullRestore() but not currently restoring"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 697
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->resetFullRestoreState()V

    #@12
    .line 698
    iput v2, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    #@14
    .line 699
    return v2
.end method

.method public cancelFullBackup()V
    .locals 2

    #@0
    .prologue
    .line 405
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    #@2
    invoke-direct {p0, v1}, Lcom/android/internal/backup/LocalTransport;->tarballFile(Ljava/lang/String;)Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    .line 406
    .local v0, "archive":Ljava/io/File;
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->tearDownFullBackup()I

    #@9
    .line 407
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 408
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@12
    .line 401
    :cond_0
    return-void
.end method

.method public checkFullBackupSize(J)I
    .locals 5
    .param p1, "size"    # J

    #@0
    .prologue
    .line 318
    const-wide/16 v2, 0x0

    #@2
    cmp-long v1, p1, v2

    #@4
    if-lez v1, :cond_1

    #@6
    const/4 v0, 0x0

    #@7
    .line 319
    .local v0, "result":I
    :goto_0
    if-eqz v0, :cond_0

    #@9
    .line 324
    :cond_0
    return v0

    #@a
    .line 318
    .end local v0    # "result":I
    :cond_1
    const/16 v0, -0x3ea

    #@c
    .restart local v0    # "result":I
    goto :goto_0
.end method

.method public clearBackupData(Landroid/content/pm/PackageInfo;)I
    .locals 7
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 253
    new-instance v2, Ljava/io/File;

    #@3
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    #@5
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@7
    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@a
    .line 254
    .local v2, "packageDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@d
    move-result-object v1

    #@e
    .line 255
    .local v1, "fileset":[Ljava/io/File;
    if-eqz v1, :cond_1

    #@10
    .line 256
    array-length v6, v1

    #@11
    move v4, v5

    #@12
    :goto_0
    if-ge v4, v6, :cond_0

    #@14
    aget-object v0, v1, v4

    #@16
    .line 257
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@19
    .line 256
    add-int/lit8 v4, v4, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 259
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@1f
    .line 262
    :cond_1
    new-instance v2, Ljava/io/File;

    #@21
    .end local v2    # "packageDir":Ljava/io/File;
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    #@23
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@25
    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@28
    .line 263
    .restart local v2    # "packageDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@2b
    move-result-object v3

    #@2c
    .line 264
    .local v3, "tarballs":[Ljava/io/File;
    if-eqz v3, :cond_3

    #@2e
    .line 265
    array-length v6, v3

    #@2f
    move v4, v5

    #@30
    :goto_1
    if-ge v4, v6, :cond_2

    #@32
    aget-object v0, v3, v4

    #@34
    .line 266
    .restart local v0    # "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@37
    .line 265
    add-int/lit8 v4, v4, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 268
    .end local v0    # "f":Ljava/io/File;
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@3d
    .line 271
    :cond_3
    return v5
.end method

.method public configurationIntent()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 120
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public currentDestinationString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 125
    const-string/jumbo v0, "Backing up to debug-only private cache"

    #@3
    return-object v0
.end method

.method public dataManagementIntent()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 132
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public dataManagementLabel()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 136
    const-string/jumbo v0, ""

    #@3
    return-object v0
.end method

.method public finishBackup()I
    .locals 1

    #@0
    .prologue
    .line 277
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->tearDownFullBackup()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public finishRestore()V
    .locals 2

    #@0
    .prologue
    .line 589
    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 590
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->resetFullRestoreState()V

    #@8
    .line 592
    :cond_0
    const/4 v0, 0x0

    #@9
    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    #@b
    .line 587
    return-void
.end method

.method public getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .locals 13

    #@0
    .prologue
    .line 418
    sget-object v5, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    #@2
    array-length v5, v5

    #@3
    add-int/lit8 v5, v5, 0x1

    #@5
    new-array v1, v5, [J

    #@7
    .line 419
    .local v1, "existing":[J
    const/4 v3, 0x0

    #@8
    .line 422
    .local v3, "num":I
    sget-object v8, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    #@a
    const/4 v5, 0x0

    #@b
    array-length v9, v8

    #@c
    move v4, v3

    #@d
    .end local v3    # "num":I
    .local v4, "num":I
    :goto_0
    if-ge v5, v9, :cond_0

    #@f
    aget-wide v6, v8, v5

    #@11
    .line 423
    .local v6, "token":J
    new-instance v10, Ljava/io/File;

    #@13
    iget-object v11, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    #@15
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@18
    move-result-object v12

    #@19
    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1c
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    #@1f
    move-result v10

    #@20
    if-eqz v10, :cond_2

    #@22
    .line 424
    add-int/lit8 v3, v4, 0x1

    #@24
    .end local v4    # "num":I
    .restart local v3    # "num":I
    aput-wide v6, v1, v4

    #@26
    .line 422
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@28
    move v4, v3

    #@29
    .end local v3    # "num":I
    .restart local v4    # "num":I
    goto :goto_0

    #@2a
    .line 428
    .end local v6    # "token":J
    :cond_0
    add-int/lit8 v3, v4, 0x1

    #@2c
    .end local v4    # "num":I
    .restart local v3    # "num":I
    const-wide/16 v8, 0x1

    #@2e
    aput-wide v8, v1, v4

    #@30
    .line 430
    new-array v0, v3, [Landroid/app/backup/RestoreSet;

    #@32
    .line 431
    .local v0, "available":[Landroid/app/backup/RestoreSet;
    const/4 v2, 0x0

    #@33
    .local v2, "i":I
    :goto_2
    array-length v5, v0

    #@34
    if-ge v2, v5, :cond_1

    #@36
    .line 432
    new-instance v5, Landroid/app/backup/RestoreSet;

    #@38
    const-string/jumbo v8, "Local disk image"

    #@3b
    const-string/jumbo v9, "flash"

    #@3e
    aget-wide v10, v1, v2

    #@40
    invoke-direct {v5, v8, v9, v10, v11}, Landroid/app/backup/RestoreSet;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    #@43
    aput-object v5, v0, v2

    #@45
    .line 431
    add-int/lit8 v2, v2, 0x1

    #@47
    goto :goto_2

    #@48
    .line 434
    :cond_1
    return-object v0

    #@49
    .end local v0    # "available":[Landroid/app/backup/RestoreSet;
    .end local v2    # "i":I
    .end local v3    # "num":I
    .restart local v4    # "num":I
    .restart local v6    # "token":J
    :cond_2
    move v3, v4

    #@4a
    .end local v4    # "num":I
    .restart local v3    # "num":I
    goto :goto_1
.end method

.method public getCurrentRestoreSet()J
    .locals 2

    #@0
    .prologue
    .line 440
    const-wide/16 v0, 0x1

    #@2
    return-wide v0
.end method

.method public getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I
    .locals 7
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 629
    iget v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    #@2
    const/4 v5, 0x2

    #@3
    if-eq v4, v5, :cond_0

    #@5
    .line 630
    new-instance v4, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v5, "Asked for full restore data for non-stream package"

    #@a
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v4

    #@e
    .line 634
    :cond_0
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    #@10
    if-nez v4, :cond_1

    #@12
    .line 635
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    #@14
    iget v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    #@16
    aget-object v4, v4, v5

    #@18
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@1a
    .line 637
    .local v3, "name":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    #@1c
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    #@1e
    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@21
    .line 639
    .local v0, "dataset":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    #@23
    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@26
    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 646
    new-instance v4, Ljava/io/FileOutputStream;

    #@2a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@2d
    move-result-object v5

    #@2e
    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@31
    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    #@33
    .line 647
    const/16 v4, 0x800

    #@35
    new-array v4, v4, [B

    #@37
    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    #@39
    .line 652
    .end local v0    # "dataset":Ljava/io/File;
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    #@3b
    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    #@3d
    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    move-result v2

    #@41
    .line 653
    .local v2, "nRead":I
    if-gez v2, :cond_2

    #@43
    .line 655
    const/4 v2, -0x1

    #@44
    .line 676
    :goto_0
    return v2

    #@45
    .line 640
    .end local v2    # "nRead":I
    .restart local v0    # "dataset":Ljava/io/File;
    .restart local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@46
    .line 643
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "LocalTransport"

    #@49
    new-instance v5, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v6, "Unable to read archive for "

    #@51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 644
    const/16 v4, -0x3ea

    #@62
    return v4

    #@63
    .line 656
    .end local v0    # "dataset":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "name":Ljava/lang/String;
    .restart local v2    # "nRead":I
    :cond_2
    if-nez v2, :cond_3

    #@65
    .line 660
    :try_start_2
    const-string/jumbo v4, "LocalTransport"

    #@68
    const-string/jumbo v5, "read() of archive file returned 0; treating as EOF"

    #@6b
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 661
    const/4 v2, -0x1

    #@6f
    goto :goto_0

    #@70
    .line 666
    :cond_3
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    #@72
    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    #@74
    const/4 v6, 0x0

    #@75
    invoke-virtual {v4, v5, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@78
    goto :goto_0

    #@79
    .line 668
    .end local v2    # "nRead":I
    :catch_1
    move-exception v1

    #@7a
    .line 669
    .restart local v1    # "e":Ljava/io/IOException;
    const/16 v4, -0x3e8

    #@7c
    return v4

    #@7d
    .line 670
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@7e
    throw v4
.end method

.method public getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 13
    .param p1, "outFd"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 509
    iget-object v10, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    #@2
    if-nez v10, :cond_0

    #@4
    new-instance v10, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v11, "startRestore not called"

    #@9
    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v10

    #@d
    .line 510
    :cond_0
    iget v10, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    #@f
    if-gez v10, :cond_1

    #@11
    new-instance v10, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v11, "nextRestorePackage not called"

    #@16
    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v10

    #@1a
    .line 511
    :cond_1
    iget v10, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    #@1c
    const/4 v11, 0x1

    #@1d
    if-eq v10, v11, :cond_2

    #@1f
    .line 512
    new-instance v10, Ljava/lang/IllegalStateException;

    #@21
    const-string/jumbo v11, "getRestoreData(fd) for non-key/value dataset"

    #@24
    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@27
    throw v10

    #@28
    .line 514
    :cond_2
    new-instance v8, Ljava/io/File;

    #@2a
    iget-object v10, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    #@2c
    .line 515
    iget-object v11, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    #@2e
    iget v12, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    #@30
    aget-object v11, v11, v12

    #@32
    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@34
    .line 514
    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@37
    .line 522
    .local v8, "packageDir":Ljava/io/File;
    invoke-direct {p0, v8}, Lcom/android/internal/backup/LocalTransport;->contentsByKey(Ljava/io/File;)Ljava/util/ArrayList;

    #@3a
    move-result-object v0

    #@3b
    .line 523
    .local v0, "blobs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/backup/LocalTransport$DecodedFilename;>;"
    if-nez v0, :cond_3

    #@3d
    .line 524
    const-string/jumbo v10, "LocalTransport"

    #@40
    new-instance v11, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v12, "No keys for package: "

    #@48
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v11

    #@4c
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v11

    #@50
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v11

    #@54
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 525
    const/16 v10, -0x3e8

    #@59
    return v10

    #@5a
    .line 530
    :cond_3
    new-instance v7, Landroid/app/backup/BackupDataOutput;

    #@5c
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@5f
    move-result-object v10

    #@60
    invoke-direct {v7, v10}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    #@63
    .line 532
    .local v7, "out":Landroid/app/backup/BackupDataOutput;
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@66
    move-result-object v6

    #@67
    .local v6, "keyEntry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@6a
    move-result v10

    #@6b
    if-eqz v10, :cond_4

    #@6d
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@70
    move-result-object v5

    #@71
    check-cast v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;

    #@73
    .line 533
    .local v5, "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    iget-object v3, v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->file:Ljava/io/File;

    #@75
    .line 534
    .local v3, "f":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    #@77
    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7a
    .line 536
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    #@7d
    move-result-wide v10

    #@7e
    long-to-int v9, v10

    #@7f
    .line 537
    .local v9, "size":I
    new-array v1, v9, [B

    #@81
    .line 538
    .local v1, "buf":[B
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    #@84
    .line 540
    iget-object v10, v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->key:Ljava/lang/String;

    #@86
    invoke-virtual {v7, v10, v9}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    #@89
    .line 541
    invoke-virtual {v7, v1, v9}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8c
    .line 543
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@8f
    goto :goto_0

    #@90
    .line 547
    .end local v1    # "buf":[B
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    .end local v6    # "keyEntry$iterator":Ljava/util/Iterator;
    .end local v9    # "size":I
    :catch_0
    move-exception v2

    #@91
    .line 548
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v10, "LocalTransport"

    #@94
    const-string/jumbo v11, "Unable to read backup records"

    #@97
    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9a
    .line 549
    const/16 v10, -0x3e8

    #@9c
    return v10

    #@9d
    .line 542
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    .restart local v6    # "keyEntry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v10

    #@9e
    .line 543
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    #@a1
    .line 542
    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@a2
    .line 546
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    :cond_4
    const/4 v10, 0x0

    #@a3
    return v10
.end method

.method public initializeDevice()I
    .locals 1

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    #@2
    invoke-direct {p0, v0}, Lcom/android/internal/backup/LocalTransport;->deleteContents(Ljava/io/File;)V

    #@5
    .line 154
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->makeDataDirs()V

    #@8
    .line 155
    const/4 v0, 0x0

    #@9
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 114
    new-instance v0, Landroid/content/ComponentName;

    #@2
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {p0}, Lcom/android/internal/backup/LocalTransport;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v2

    #@8
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@b
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public nextRestorePackage()Landroid/app/backup/RestoreDescription;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 461
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    #@3
    if-nez v4, :cond_0

    #@5
    new-instance v4, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v5, "startRestore not called"

    #@a
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v4

    #@e
    .line 463
    :cond_0
    const/4 v1, 0x0

    #@f
    .line 464
    .local v1, "found":Z
    :cond_1
    iget v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    #@11
    add-int/lit8 v4, v4, 0x1

    #@13
    iput v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    #@15
    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    #@17
    array-length v5, v5

    #@18
    if-ge v4, v5, :cond_4

    #@1a
    .line 465
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    #@1c
    iget v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    #@1e
    aget-object v4, v4, v5

    #@20
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@22
    .line 469
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    #@24
    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    #@26
    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@29
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    .line 470
    .local v0, "contents":[Ljava/lang/String;
    if-eqz v0, :cond_2

    #@2f
    array-length v4, v0

    #@30
    if-lez v4, :cond_2

    #@32
    .line 475
    const/4 v4, 0x1

    #@33
    iput v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    #@35
    .line 476
    const/4 v1, 0x1

    #@36
    .line 479
    :cond_2
    if-nez v1, :cond_3

    #@38
    .line 481
    new-instance v2, Ljava/io/File;

    #@3a
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    #@3c
    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3f
    .line 482
    .local v2, "maybeFullData":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    #@42
    move-result-wide v4

    #@43
    const-wide/16 v6, 0x0

    #@45
    cmp-long v4, v4, v6

    #@47
    if-lez v4, :cond_3

    #@49
    .line 487
    const/4 v4, 0x2

    #@4a
    iput v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    #@4c
    .line 488
    iput-object v8, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    #@4e
    .line 489
    const/4 v1, 0x1

    #@4f
    .line 493
    .end local v2    # "maybeFullData":Ljava/io/File;
    :cond_3
    if-eqz v1, :cond_1

    #@51
    .line 494
    new-instance v4, Landroid/app/backup/RestoreDescription;

    #@53
    iget v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    #@55
    invoke-direct {v4, v3, v5}, Landroid/app/backup/RestoreDescription;-><init>(Ljava/lang/String;I)V

    #@58
    return-object v4

    #@59
    .line 504
    .end local v0    # "contents":[Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    sget-object v4, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    #@5b
    return-object v4
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 13
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 171
    new-instance v9, Ljava/io/File;

    #@2
    iget-object v10, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    #@4
    iget-object v11, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@6
    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@9
    .line 172
    .local v9, "packageDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    #@c
    .line 178
    new-instance v3, Landroid/app/backup/BackupDataInput;

    #@e
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@11
    move-result-object v10

    #@12
    invoke-direct {v3, v10}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    #@15
    .line 180
    .local v3, "changeSet":Landroid/app/backup/BackupDataInput;
    const/16 v2, 0x200

    #@17
    .line 181
    .local v2, "bufSize":I
    :try_start_0
    new-array v1, v2, [B

    #@19
    .line 182
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    #@1c
    move-result v10

    #@1d
    if-eqz v10, :cond_3

    #@1f
    .line 183
    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    #@22
    move-result-object v8

    #@23
    .line 184
    .local v8, "key":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    #@25
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    #@28
    move-result-object v10

    #@29
    invoke-static {v10}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    #@2c
    move-result-object v10

    #@2d
    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    #@30
    .line 185
    .local v0, "base64Key":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    #@32
    invoke-direct {v7, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@35
    .line 187
    .local v7, "entityFile":Ljava/io/File;
    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    #@38
    move-result v4

    #@39
    .line 192
    .local v4, "dataSize":I
    if-ltz v4, :cond_2

    #@3b
    .line 193
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    #@3e
    move-result v10

    #@3f
    if-eqz v10, :cond_0

    #@41
    .line 194
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    #@44
    .line 196
    :cond_0
    new-instance v6, Ljava/io/FileOutputStream;

    #@46
    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@49
    .line 198
    .local v6, "entity":Ljava/io/FileOutputStream;
    if-le v4, v2, :cond_1

    #@4b
    .line 199
    move v2, v4

    #@4c
    .line 200
    new-array v1, v2, [B

    #@4e
    .line 202
    :cond_1
    const/4 v10, 0x0

    #@4f
    invoke-virtual {v3, v1, v10, v4}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@52
    .line 215
    const/4 v10, 0x0

    #@53
    :try_start_1
    invoke-virtual {v6, v1, v10, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    .line 220
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@59
    goto :goto_0

    #@5a
    .line 227
    .end local v0    # "base64Key":Ljava/lang/String;
    .end local v1    # "buf":[B
    .end local v4    # "dataSize":I
    .end local v6    # "entity":Ljava/io/FileOutputStream;
    .end local v7    # "entityFile":Ljava/io/File;
    .end local v8    # "key":Ljava/lang/String;
    :catch_0
    move-exception v5

    #@5b
    .line 229
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v10, "LocalTransport"

    #@5e
    const-string/jumbo v11, "Exception reading backup input:"

    #@61
    invoke-static {v10, v11, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@64
    .line 230
    const/16 v10, -0x3e8

    #@66
    return v10

    #@67
    .line 216
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v0    # "base64Key":Ljava/lang/String;
    .restart local v1    # "buf":[B
    .restart local v4    # "dataSize":I
    .restart local v6    # "entity":Ljava/io/FileOutputStream;
    .restart local v7    # "entityFile":Ljava/io/File;
    .restart local v8    # "key":Ljava/lang/String;
    :catch_1
    move-exception v5

    #@68
    .line 217
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v10, "LocalTransport"

    #@6b
    new-instance v11, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v12, "Unable to update key file "

    #@73
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v11

    #@77
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@7a
    move-result-object v12

    #@7b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v11

    #@7f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v11

    #@83
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@86
    .line 218
    const/16 v10, -0x3e8

    #@88
    .line 220
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    #@8b
    .line 218
    return v10

    #@8c
    .line 219
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    #@8d
    .line 220
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    #@90
    .line 219
    throw v10

    #@91
    .line 223
    .end local v6    # "entity":Ljava/io/FileOutputStream;
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@94
    goto :goto_0

    #@95
    .line 226
    .end local v0    # "base64Key":Ljava/lang/String;
    .end local v4    # "dataSize":I
    .end local v7    # "entityFile":Ljava/io/File;
    .end local v8    # "key":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    #@96
    return v10
.end method

.method public performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 4
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "socket"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    const/16 v3, -0x3e8

    #@2
    .line 329
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 330
    const-string/jumbo v1, "LocalTransport"

    #@9
    const-string/jumbo v2, "Attempt to initiate full backup while one is in progress"

    #@c
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 331
    return v3

    #@10
    .line 342
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@13
    move-result-object v1

    #@14
    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    #@1a
    .line 343
    new-instance v1, Ljava/io/FileInputStream;

    #@1c
    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    #@1e
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@21
    move-result-object v2

    #@22
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@25
    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 349
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@29
    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    #@2b
    .line 350
    const/16 v1, 0x1000

    #@2d
    new-array v1, v1, [B

    #@2f
    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    #@31
    .line 352
    const/4 v1, 0x0

    #@32
    return v1

    #@33
    .line 344
    :catch_0
    move-exception v0

    #@34
    .line 345
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "LocalTransport"

    #@37
    const-string/jumbo v2, "Unable to process socket for full backup"

    #@3a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 346
    return v3
.end method

.method public requestBackupTime()J
    .locals 2

    #@0
    .prologue
    .line 147
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public requestFullBackupTime()J
    .locals 2

    #@0
    .prologue
    .line 312
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public sendBackupData(I)I
    .locals 11
    .param p1, "numBytes"    # I

    #@0
    .prologue
    const/16 v10, -0x3e8

    #@2
    const/4 v9, 0x0

    #@3
    .line 357
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    #@5
    if-nez v6, :cond_0

    #@7
    .line 358
    const-string/jumbo v6, "LocalTransport"

    #@a
    const-string/jumbo v7, "Attempted sendBackupData before performFullBackup"

    #@d
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 359
    return v10

    #@11
    .line 362
    :cond_0
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    #@13
    array-length v6, v6

    #@14
    if-le p1, v6, :cond_1

    #@16
    .line 363
    new-array v6, p1, [B

    #@18
    iput-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    #@1a
    .line 366
    :cond_1
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    #@1c
    if-nez v6, :cond_2

    #@1e
    .line 369
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    #@20
    invoke-direct {p0, v6}, Lcom/android/internal/backup/LocalTransport;->tarballFile(Ljava/lang/String;)Ljava/io/File;

    #@23
    move-result-object v4

    #@24
    .line 370
    .local v4, "tarball":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    #@26
    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 374
    .local v5, "tarstream":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/BufferedOutputStream;

    #@2b
    invoke-direct {v6, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@2e
    iput-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    #@30
    .line 377
    .end local v4    # "tarball":Ljava/io/File;
    .end local v5    # "tarstream":Ljava/io/FileOutputStream;
    :cond_2
    move v0, p1

    #@31
    .line 378
    .local v0, "bytesLeft":I
    :goto_0
    if-lez v0, :cond_4

    #@33
    .line 380
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;

    #@35
    iget-object v7, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    #@37
    const/4 v8, 0x0

    #@38
    invoke-virtual {v6, v7, v8, v0}, Ljava/io/FileInputStream;->read([BII)I

    #@3b
    move-result v3

    #@3c
    .line 381
    .local v3, "nRead":I
    if-gez v3, :cond_3

    #@3e
    .line 383
    const-string/jumbo v6, "LocalTransport"

    #@41
    const-string/jumbo v7, "Unexpected EOD; failing backup"

    #@44
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 384
    return v10

    #@48
    .line 371
    .end local v0    # "bytesLeft":I
    .end local v3    # "nRead":I
    :catch_0
    move-exception v1

    #@49
    .line 372
    .local v1, "e":Ljava/io/FileNotFoundException;
    return v10

    #@4a
    .line 386
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "bytesLeft":I
    .restart local v3    # "nRead":I
    :cond_3
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    #@4c
    iget-object v7, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    #@4e
    const/4 v8, 0x0

    #@4f
    invoke-virtual {v6, v7, v8, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@52
    .line 387
    sub-int/2addr v0, v3

    #@53
    goto :goto_0

    #@54
    .line 388
    .end local v3    # "nRead":I
    :catch_1
    move-exception v2

    #@55
    .line 389
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v6, "LocalTransport"

    #@58
    new-instance v7, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v8, "Error handling backup data for "

    #@60
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v7

    #@64
    iget-object v8, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    #@66
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v7

    #@6a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v7

    #@6e
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 390
    return v10

    #@72
    .line 396
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    return v9
.end method

.method public startRestore(J[Landroid/content/pm/PackageInfo;)I
    .locals 3
    .param p1, "token"    # J
    .param p3, "packages"    # [Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    .line 447
    iput-object p3, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    #@2
    .line 448
    const/4 v0, -0x1

    #@3
    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    #@5
    .line 449
    new-instance v0, Ljava/io/File;

    #@7
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    #@9
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@10
    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    #@12
    .line 450
    new-instance v0, Ljava/io/File;

    #@14
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    #@16
    const-string/jumbo v2, "_delta"

    #@19
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1c
    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    #@1e
    .line 451
    new-instance v0, Ljava/io/File;

    #@20
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    #@22
    const-string/jumbo v2, "_full"

    #@25
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@28
    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    #@2a
    .line 452
    const/4 v0, 0x0

    #@2b
    return v0
.end method

.method public transportDirName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 141
    const-string/jumbo v0, "com.android.internal.backup.LocalTransport"

    #@3
    return-object v0
.end method
