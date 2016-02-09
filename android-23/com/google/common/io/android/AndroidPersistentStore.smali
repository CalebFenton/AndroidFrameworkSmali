.class public Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;
.super Landroid_maps_conflict_avoidance/com/google/common/io/BasePersistentStore;
.source "AndroidPersistentStore.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;


# instance fields
.field private context:Landroid/content/Context;

.field private final fileLockNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/BasePersistentStore;-><init>()V

    #@3
    .line 49
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->fileLockNames:Ljava/util/Set;

    #@e
    .line 53
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    #@10
    .line 54
    return-void
.end method

.method private static makeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "DATA_"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method private static unMakeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    const-string/jumbo v0, "DATA_"

    #@3
    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    .line 71
    return-object v0

    #@b
    :cond_0
    const/4 v0, 0x5

    #@c
    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method


# virtual methods
.method public deleteAllBlocks(Ljava/lang/String;)V
    .locals 4
    .param p1, "namePrefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 105
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 109
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    #@6
    invoke-virtual {v2}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 110
    .local v1, "list":[Ljava/lang/String;
    if-eqz v1, :cond_1

    #@c
    const/4 v0, 0x0

    #@d
    .line 114
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@e
    if-lt v0, v2, :cond_2

    #@10
    .line 123
    return-void

    #@11
    .line 107
    .end local v0    # "i":I
    .end local v1    # "list":[Ljava/lang/String;
    :cond_0
    return-void

    #@12
    .line 112
    .restart local v1    # "list":[Ljava/lang/String;
    :cond_1
    return-void

    #@13
    .line 115
    .restart local v0    # "i":I
    :cond_2
    aget-object v2, v1, v0

    #@15
    if-eqz v2, :cond_3

    #@17
    .line 117
    aget-object v2, v1, v0

    #@19
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_4

    #@23
    .line 114
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 118
    :cond_4
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    #@28
    aget-object v3, v1, v0

    #@2a
    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_3

    #@30
    goto :goto_1
.end method

.method public deleteBlock(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    #@2
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public listBlocks(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "namePrefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 226
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    #@3
    invoke-virtual {v7}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    .line 227
    .local v3, "list":[Ljava/lang/String;
    array-length v7, v3

    #@8
    new-array v6, v7, [Ljava/lang/String;

    #@a
    .local v6, "temp":[Ljava/lang/String;
    const/4 v1, 0x0

    #@b
    .local v1, "j":I
    const/4 v0, 0x0

    #@c
    .line 229
    .local v0, "i":I
    :goto_0
    array-length v7, v3

    #@d
    if-lt v0, v7, :cond_0

    #@f
    .line 235
    new-array v4, v1, [Ljava/lang/String;

    #@11
    .line 236
    .local v4, "names":[Ljava/lang/String;
    invoke-static {v6, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@14
    .line 237
    return-object v4

    #@15
    .line 230
    .end local v4    # "names":[Ljava/lang/String;
    :cond_0
    aget-object v7, v3, v0

    #@17
    invoke-static {v7}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->unMakeFilename(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    .line 231
    .local v5, "realName":Ljava/lang/String;
    if-nez v5, :cond_2

    #@1d
    .line 229
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 231
    :cond_2
    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@23
    move-result v7

    #@24
    if-eqz v7, :cond_1

    #@26
    .line 232
    add-int/lit8 v2, v1, 0x1

    #@28
    .end local v1    # "j":I
    .local v2, "j":I
    aput-object v5, v6, v1

    #@2a
    move v1, v2

    #@2b
    .end local v2    # "j":I
    .restart local v1    # "j":I
    goto :goto_1
.end method

.method public readBlock(Ljava/lang/String;)[B
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 203
    :try_start_0
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    #@3
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v6

    #@7
    invoke-virtual {v5, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    #@a
    move-result-object v3

    #@b
    .line 205
    .local v3, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    #@e
    move-result v4

    #@f
    .line 206
    .local v4, "length":I
    new-array v0, v4, [B

    #@11
    .local v0, "data":[B
    const/4 v5, 0x0

    #@12
    .line 207
    invoke-virtual {v3, v0, v5, v4}, Ljava/io/FileInputStream;->read([BII)I

    #@15
    move-result v5

    #@16
    if-lt v5, v4, :cond_0

    #@18
    .line 210
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@1b
    .line 211
    return-object v0

    #@1c
    .end local v0    # "data":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "length":I
    :catch_0
    move-exception v1

    #@1d
    .line 214
    .local v1, "e":Ljava/io/FileNotFoundException;
    return-object v7

    #@1e
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    #@1f
    .line 217
    .local v2, "e":Ljava/io/IOException;
    return-object v7
.end method

.method public writeBlock([BLjava/lang/String;)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 169
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->writeBlockX([BLjava/lang/String;)I
    :try_end_0
    .catch Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    :catch_0
    move-exception v0

    #@6
    .line 171
    .local v0, "e":Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;->getType()I

    #@9
    move-result v1

    #@a
    return v1
.end method

.method public writeBlockX([BLjava/lang/String;)I
    .locals 7
    .param p1, "data"    # [B
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 137
    if-eqz p1, :cond_0

    #@3
    .line 140
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    #@5
    invoke-static {p2}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    const/4 v5, 0x0

    #@a
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    #@d
    move-result-object v2

    #@e
    .line 142
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    #@11
    .line 143
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    #@14
    .line 145
    array-length v3, p1

    #@15
    add-int/lit8 v3, v3, -0x1

    #@17
    div-int/lit16 v3, v3, 0x1000

    #@19
    add-int/lit8 v3, v3, 0x1

    #@1b
    mul-int/lit16 v3, v3, 0x1000

    #@1d
    return v3

    #@1e
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    const/4 v3, 0x0

    #@1f
    .line 138
    new-array p1, v3, [B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@21
    goto :goto_0

    #@22
    .line 145
    :catch_0
    move-exception v0

    #@23
    .line 147
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;

    #@25
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-direct {v3, v4, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    #@2c
    throw v3

    #@2d
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    #@2e
    .line 150
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;

    #@30
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-direct {v3, v4, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    #@37
    throw v3
.end method
