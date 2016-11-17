.class public final Llibcore/tzdata/update/TzDataBundleInstaller;
.super Ljava/lang/Object;
.source "TzDataBundleInstaller.java"


# static fields
.field static final CURRENT_TZ_DATA_DIR_NAME:Ljava/lang/String; = "current"

.field static final OLD_TZ_DATA_DIR_NAME:Ljava/lang/String; = "old"

.field static final WORKING_DIR_NAME:Ljava/lang/String; = "working"


# instance fields
.field private final installDir:Ljava/io/File;

.field private final logTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "installDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput-object p1, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    #@5
    .line 38
    iput-object p2, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->installDir:Ljava/io/File;

    #@7
    .line 36
    return-void
.end method

.method private checkBundleFilesExist(Ljava/io/File;)Z
    .locals 3
    .param p1, "unpackedContentDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "Verifying bundle contents"

    #@5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8
    .line 105
    const/4 v0, 0x4

    #@9
    new-array v0, v0, [Ljava/lang/String;

    #@b
    .line 106
    const-string/jumbo v1, "tzdata_version"

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v1, v0, v2

    #@11
    .line 107
    const-string/jumbo v1, "checksums"

    #@14
    const/4 v2, 0x1

    #@15
    aput-object v1, v0, v2

    #@17
    .line 108
    const-string/jumbo v1, "tzdata"

    #@1a
    const/4 v2, 0x2

    #@1b
    aput-object v1, v0, v2

    #@1d
    .line 109
    const-string/jumbo v1, "icu/icu_tzdata.dat"

    #@20
    const/4 v2, 0x3

    #@21
    aput-object v1, v0, v2

    #@23
    .line 105
    invoke-static {p1, v0}, Llibcore/tzdata/update/FileUtils;->filesExist(Ljava/io/File;[Ljava/lang/String;)Z

    #@26
    move-result v0

    #@27
    return v0
.end method

.method private deleteBestEffort(Ljava/io/File;)V
    .locals 4
    .param p1, "dir"    # Ljava/io/File;

    #@0
    .prologue
    .line 86
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 88
    :try_start_0
    invoke-static {p1}, Llibcore/tzdata/update/FileUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 85
    :cond_0
    :goto_0
    return-void

    #@a
    .line 89
    :catch_0
    move-exception v0

    #@b
    .line 91
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Unable to delete "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    goto :goto_0
.end method

.method private unpackBundle([BLjava/io/File;)Ljava/io/File;
    .locals 4
    .param p1, "content"    # [B
    .param p2, "targetDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    iget-object v1, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "Unpacking update content to: "

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 98
    new-instance v0, Llibcore/tzdata/update/ConfigBundle;

    #@1b
    invoke-direct {v0, p1}, Llibcore/tzdata/update/ConfigBundle;-><init>([B)V

    #@1e
    .line 99
    .local v0, "bundle":Llibcore/tzdata/update/ConfigBundle;
    invoke-virtual {v0, p2}, Llibcore/tzdata/update/ConfigBundle;->extractTo(Ljava/io/File;)V

    #@21
    .line 100
    return-object p2
.end method

.method private verifySystemChecksums(Ljava/io/File;)Z
    .locals 14
    .param p1, "unpackedContentDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    iget-object v11, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    #@2
    const-string/jumbo v12, "Verifying system file checksums"

    #@5
    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8
    .line 114
    new-instance v2, Ljava/io/File;

    #@a
    const-string/jumbo v11, "checksums"

    #@d
    invoke-direct {v2, p1, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@10
    .line 115
    .local v2, "checksumsFile":Ljava/io/File;
    invoke-static {v2}, Llibcore/tzdata/update/FileUtils;->readLines(Ljava/io/File;)Ljava/util/List;

    #@13
    move-result-object v11

    #@14
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v10

    #@18
    .local v10, "line$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v11

    #@1c
    if-eqz v11, :cond_4

    #@1e
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v9

    #@22
    check-cast v9, Ljava/lang/String;

    #@24
    .line 116
    .local v9, "line":Ljava/lang/String;
    const/16 v11, 0x2c

    #@26
    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    #@29
    move-result v3

    #@2a
    .line 117
    .local v3, "delimiterPos":I
    if-lez v3, :cond_1

    #@2c
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@2f
    move-result v11

    #@30
    add-int/lit8 v11, v11, -0x1

    #@32
    if-ne v3, v11, :cond_2

    #@34
    .line 118
    :cond_1
    new-instance v11, Ljava/io/IOException;

    #@36
    new-instance v12, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v13, "Bad checksum entry: "

    #@3e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v12

    #@42
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v12

    #@46
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v12

    #@4a
    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v11

    #@4e
    .line 122
    :cond_2
    const/4 v11, 0x0

    #@4f
    :try_start_0
    invoke-virtual {v9, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@52
    move-result-object v11

    #@53
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@56
    move-result-wide v6

    #@57
    .line 126
    .local v6, "expectedChecksum":J
    add-int/lit8 v11, v3, 0x1

    #@59
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5c
    move-result-object v8

    #@5d
    .line 127
    .local v8, "filePath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    #@5f
    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@62
    .line 128
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    #@65
    move-result v11

    #@66
    if-nez v11, :cond_3

    #@68
    .line 129
    iget-object v11, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    #@6a
    new-instance v12, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v13, "Failed checksum test for file: "

    #@72
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v12

    #@76
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v12

    #@7a
    const-string/jumbo v13, ": file not found"

    #@7d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v12

    #@81
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v12

    #@85
    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@88
    .line 130
    const/4 v11, 0x0

    #@89
    return v11

    #@8a
    .line 123
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "expectedChecksum":J
    .end local v8    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@8b
    .line 124
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v11, Ljava/io/IOException;

    #@8d
    new-instance v12, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v13, "Invalid checksum value: "

    #@95
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v12

    #@99
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v12

    #@9d
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v12

    #@a1
    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@a4
    throw v11

    #@a5
    .line 132
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "expectedChecksum":J
    .restart local v8    # "filePath":Ljava/lang/String;
    :cond_3
    invoke-static {v5}, Llibcore/tzdata/update/FileUtils;->calculateChecksum(Ljava/io/File;)J

    #@a8
    move-result-wide v0

    #@a9
    .line 133
    .local v0, "actualChecksum":J
    cmp-long v11, v0, v6

    #@ab
    if-eqz v11, :cond_0

    #@ad
    .line 134
    iget-object v11, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    #@af
    new-instance v12, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v13, "Failed checksum test for file: "

    #@b7
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v12

    #@bb
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v12

    #@bf
    .line 135
    const-string/jumbo v13, ": required="

    #@c2
    .line 134
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v12

    #@c6
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v12

    #@ca
    .line 135
    const-string/jumbo v13, ", actual="

    #@cd
    .line 134
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v12

    #@d1
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v12

    #@d5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v12

    #@d9
    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@dc
    .line 136
    const/4 v11, 0x0

    #@dd
    return v11

    #@de
    .line 139
    .end local v0    # "actualChecksum":J
    .end local v3    # "delimiterPos":I
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "expectedChecksum":J
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v9    # "line":Ljava/lang/String;
    :cond_4
    const/4 v11, 0x1

    #@df
    return v11
.end method


# virtual methods
.method public install([B)Z
    .locals 7
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 49
    new-instance v1, Ljava/io/File;

    #@3
    iget-object v4, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->installDir:Ljava/io/File;

    #@5
    const-string/jumbo v5, "old"

    #@8
    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@b
    .line 50
    .local v1, "oldTzDataDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 51
    invoke-static {v1}, Llibcore/tzdata/update/FileUtils;->deleteRecursive(Ljava/io/File;)V

    #@14
    .line 54
    :cond_0
    new-instance v0, Ljava/io/File;

    #@16
    iget-object v4, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->installDir:Ljava/io/File;

    #@18
    const-string/jumbo v5, "current"

    #@1b
    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1e
    .line 55
    .local v0, "currentTzDataDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    #@20
    iget-object v4, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->installDir:Ljava/io/File;

    #@22
    const-string/jumbo v5, "working"

    #@25
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@28
    .line 57
    .local v3, "workingDir":Ljava/io/File;
    iget-object v4, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    #@2a
    const-string/jumbo v5, "Applying time zone update"

    #@2d
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 58
    invoke-direct {p0, p1, v3}, Llibcore/tzdata/update/TzDataBundleInstaller;->unpackBundle([BLjava/io/File;)Ljava/io/File;

    #@33
    move-result-object v2

    #@34
    .line 60
    .local v2, "unpackedContentDir":Ljava/io/File;
    :try_start_0
    invoke-direct {p0, v2}, Llibcore/tzdata/update/TzDataBundleInstaller;->checkBundleFilesExist(Ljava/io/File;)Z

    #@37
    move-result v4

    #@38
    if-nez v4, :cond_1

    #@3a
    .line 61
    iget-object v4, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    #@3c
    const-string/jumbo v5, "Update not applied: Bundle is missing files"

    #@3f
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    .line 80
    invoke-direct {p0, v1}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    #@45
    .line 81
    invoke-direct {p0, v2}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    #@48
    .line 62
    return v6

    #@49
    .line 65
    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Llibcore/tzdata/update/TzDataBundleInstaller;->verifySystemChecksums(Ljava/io/File;)Z

    #@4c
    move-result v4

    #@4d
    if-eqz v4, :cond_3

    #@4f
    .line 66
    invoke-static {v2}, Llibcore/tzdata/update/FileUtils;->makeDirectoryWorldAccessible(Ljava/io/File;)V

    #@52
    .line 68
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@55
    move-result v4

    #@56
    if-eqz v4, :cond_2

    #@58
    .line 69
    iget-object v4, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    #@5a
    new-instance v5, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v6, "Moving "

    #@62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v5

    #@6a
    const-string/jumbo v6, " to "

    #@6d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7c
    .line 70
    invoke-static {v0, v1}, Llibcore/tzdata/update/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    #@7f
    .line 72
    :cond_2
    iget-object v4, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    #@81
    new-instance v5, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v6, "Moving "

    #@89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v5

    #@8d
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v5

    #@91
    const-string/jumbo v6, " to "

    #@94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v5

    #@98
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v5

    #@9c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v5

    #@a0
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a3
    .line 73
    invoke-static {v2, v0}, Llibcore/tzdata/update/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    #@a6
    .line 74
    iget-object v4, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    #@a8
    new-instance v5, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v6, "Update applied: "

    #@b0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v5

    #@b4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v5

    #@b8
    const-string/jumbo v6, " successfully created"

    #@bb
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v5

    #@bf
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v5

    #@c3
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c6
    .line 75
    const/4 v4, 0x1

    #@c7
    .line 80
    invoke-direct {p0, v1}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    #@ca
    .line 81
    invoke-direct {p0, v2}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    #@cd
    .line 75
    return v4

    #@ce
    .line 77
    :cond_3
    :try_start_2
    iget-object v4, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    #@d0
    const-string/jumbo v5, "Update not applied: System checksum did not match"

    #@d3
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d6
    .line 80
    invoke-direct {p0, v1}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    #@d9
    .line 81
    invoke-direct {p0, v2}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    #@dc
    .line 78
    return v6

    #@dd
    .line 79
    :catchall_0
    move-exception v4

    #@de
    .line 80
    invoke-direct {p0, v1}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    #@e1
    .line 81
    invoke-direct {p0, v2}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    #@e4
    .line 79
    throw v4
.end method
