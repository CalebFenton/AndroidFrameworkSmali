.class public Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;
.super Landroid_maps_conflict_avoidance/com/google/common/io/BasePersistentStore;
.source "AndroidFixedPersistentStore.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;


# instance fields
.field private baseFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "basePath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/BasePersistentStore;-><init>()V

    #@3
    .line 45
    new-instance v0, Ljava/io/File;

    #@5
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->baseFile:Ljava/io/File;

    #@a
    .line 46
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->baseFile:Ljava/io/File;

    #@c
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 50
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->baseFile:Ljava/io/File;

    #@14
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 54
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->baseFile:Ljava/io/File;

    #@1c
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 58
    return-void

    #@23
    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@25
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v2, "Directory "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    const-string/jumbo v2, " must already exist"

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0

    #@44
    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@46
    new-instance v1, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v2, "Directory "

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    const-string/jumbo v2, " must be writeable"

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@64
    throw v0

    #@65
    .line 55
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    #@67
    new-instance v1, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v2, "Directory "

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    const-string/jumbo v2, " must be readable"

    #@7a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v1

    #@82
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@85
    throw v0
.end method

.method private makeFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9
    return-object v0
.end method

.method private makeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->getPrefix()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method private unMakeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    .line 77
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->getPrefix()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    .line 80
    return-object v0

    #@c
    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->getPrefix()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@13
    move-result v0

    #@14
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method


# virtual methods
.method public deleteAllBlocks(Ljava/lang/String;)V
    .locals 5
    .param p1, "namePrefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 113
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->baseFile:Ljava/io/File;

    #@2
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@9
    move-result-object v0

    #@a
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    #@b
    .line 114
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@c
    if-lt v1, v2, :cond_0

    #@e
    .line 121
    return-void

    #@f
    .line 115
    :cond_0
    aget-object v2, v0, v1

    #@11
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_2

    #@1f
    .line 114
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 116
    :cond_2
    aget-object v2, v0, v1

    #@24
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@27
    move-result v2

    #@28
    if-nez v2, :cond_1

    #@2a
    const-string/jumbo v2, "Fixed_Persistence_Store"

    #@2d
    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v4, "Couldn\'t delete file: "

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    aget-object v4, v0, v1

    #@3b
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    goto :goto_1
.end method

.method public deleteBlock(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 104
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->makeFile(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method protected getPrefix()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 242
    new-instance v0, Ljava/io/File;

    #@2
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->baseFile:Ljava/io/File;

    #@4
    const-string/jumbo v2, "FIXED_DATA_"

    #@7
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@a
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public listBlocks(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p1, "namePrefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 225
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->baseFile:Ljava/io/File;

    #@3
    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    #@6
    move-result-object v7

    #@7
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@a
    move-result-object v0

    #@b
    .line 226
    .local v0, "files":[Ljava/io/File;
    array-length v7, v0

    #@c
    new-array v6, v7, [Ljava/lang/String;

    #@e
    .local v6, "temp":[Ljava/lang/String;
    const/4 v2, 0x0

    #@f
    .local v2, "j":I
    const/4 v1, 0x0

    #@10
    .line 228
    .local v1, "i":I
    :goto_0
    array-length v7, v0

    #@11
    if-lt v1, v7, :cond_0

    #@13
    .line 236
    new-array v4, v2, [Ljava/lang/String;

    #@15
    .line 237
    .local v4, "names":[Ljava/lang/String;
    invoke-static {v6, v9, v4, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@18
    .line 238
    return-object v4

    #@19
    .line 229
    .end local v4    # "names":[Ljava/lang/String;
    :cond_0
    aget-object v7, v0, v1

    #@1b
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1e
    move-result-object v7

    #@1f
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v8

    #@23
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@26
    move-result v7

    #@27
    if-nez v7, :cond_2

    #@29
    .line 228
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 230
    :cond_2
    aget-object v7, v0, v1

    #@2e
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@31
    move-result-object v7

    #@32
    invoke-direct {p0, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->unMakeFilename(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    .line 231
    .local v5, "realName":Ljava/lang/String;
    if-eqz v5, :cond_1

    #@38
    .line 232
    add-int/lit8 v3, v2, 0x1

    #@3a
    .end local v2    # "j":I
    .local v3, "j":I
    aput-object v5, v6, v2

    #@3c
    move v2, v3

    #@3d
    .end local v3    # "j":I
    .restart local v2    # "j":I
    goto :goto_1
.end method

.method public readBlock(Ljava/lang/String;)[B
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 203
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    #@3
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->makeFile(Ljava/lang/String;)Ljava/io/File;

    #@6
    move-result-object v5

    #@7
    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@a
    .line 204
    .local v3, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    #@d
    move-result v4

    #@e
    .line 205
    .local v4, "length":I
    new-array v0, v4, [B

    #@10
    .local v0, "data":[B
    const/4 v5, 0x0

    #@11
    .line 206
    invoke-virtual {v3, v0, v5, v4}, Ljava/io/FileInputStream;->read([BII)I

    #@14
    move-result v5

    #@15
    if-lt v5, v4, :cond_0

    #@17
    .line 209
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    #@1a
    .line 210
    return-object v0

    #@1b
    :cond_0
    const-string/jumbo v5, "Fixed_Persistence_Store"

    #@1e
    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v7, "Didn\'t read full file:  "

    #@26
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v6

    #@2a
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v6

    #@2e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@35
    goto :goto_0

    #@36
    .line 210
    .end local v0    # "data":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "length":I
    :catch_0
    move-exception v1

    #@37
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v5, "Fixed_Persistence_Store"

    #@3a
    .line 212
    new-instance v6, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v7, "Couldn\'t find file:  "

    #@42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v6

    #@52
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 213
    return-object v8

    #@56
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    #@57
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v5, "Fixed_Persistence_Store"

    #@5a
    .line 215
    new-instance v6, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v7, "Couldn\'t read file:  "

    #@62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@69
    move-result-object v7

    #@6a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v6

    #@72
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 216
    return-object v8
.end method

.method public writeBlock([BLjava/lang/String;)I
    .locals 7
    .param p1, "data"    # [B
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 163
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    #@3
    invoke-direct {p0, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->makeFile(Ljava/lang/String;)Ljava/io/File;

    #@6
    move-result-object v3

    #@7
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@a
    .line 164
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    #@d
    .line 165
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    #@10
    .line 166
    array-length v3, p1

    #@11
    add-int/lit8 v3, v3, -0x1

    #@13
    div-int/lit16 v3, v3, 0x1000
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@15
    add-int/lit8 v3, v3, 0x1

    #@17
    mul-int/lit16 v3, v3, 0x1000

    #@19
    return v3

    #@1a
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    #@1b
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v3, "Fixed_Persistence_Store"

    #@1e
    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v5, "Couldn\'t write block:  "

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 169
    return v6

    #@3a
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    #@3b
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "Fixed_Persistence_Store"

    #@3e
    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v5, "Couldn\'t write block:  "

    #@46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    .line 172
    return v6
.end method

.method public writeBlockX([BLjava/lang/String;)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 135
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    #@3
    invoke-direct {p0, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->makeFile(Ljava/lang/String;)Ljava/io/File;

    #@6
    move-result-object v3

    #@7
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@a
    .line 136
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    #@d
    .line 137
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    #@10
    .line 139
    array-length v3, p1

    #@11
    add-int/lit8 v3, v3, -0x1

    #@13
    div-int/lit16 v3, v3, 0x1000
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@15
    add-int/lit8 v3, v3, 0x1

    #@17
    mul-int/lit16 v3, v3, 0x1000

    #@19
    return v3

    #@1a
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    #@1b
    .line 141
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;

    #@1d
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-direct {v3, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    #@24
    throw v3

    #@25
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    #@26
    .line 144
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;

    #@28
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-direct {v3, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    #@2f
    throw v3
.end method
