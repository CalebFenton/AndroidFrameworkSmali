.class public final Llibcore/tzdata/update/ConfigBundle;
.super Ljava/lang/Object;
.source "ConfigBundle.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field public static final CHECKSUMS_FILE_NAME:Ljava/lang/String; = "checksums"

.field public static final ICU_DATA_FILE_NAME:Ljava/lang/String; = "icu/icu_tzdata.dat"

.field public static final TZ_DATA_VERSION_FILE_NAME:Ljava/lang/String; = "tzdata_version"

.field public static final ZONEINFO_FILE_NAME:Ljava/lang/String; = "tzdata"


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Llibcore/tzdata/update/ConfigBundle;->bytes:[B

    #@5
    .line 49
    return-void
.end method

.method static extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V
    .locals 15
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "targetDir"    # Ljava/io/File;
    .param p2, "makeWorldReadable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    invoke-static/range {p1 .. p2}, Llibcore/tzdata/update/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    #@3
    .line 68
    const/4 v12, 0x0

    #@4
    const/4 v8, 0x0

    #@5
    .local v8, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipInputStream;

    #@7
    invoke-direct {v9, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    #@a
    .line 69
    .end local v8    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v9, "zipInputStream":Ljava/util/zip/ZipInputStream;
    const/16 v10, 0x2000

    #@c
    :try_start_1
    new-array v1, v10, [B

    #@e
    .line 71
    .local v1, "buffer":[B
    :cond_0
    :goto_0
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    #@11
    move-result-object v3

    #@12
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_a

    #@14
    .line 74
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@17
    move-result-object v7

    #@18
    .line 77
    .local v7, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    #@1a
    invoke-static {v0, v7}, Llibcore/tzdata/update/FileUtils;->createSubFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    #@1d
    move-result-object v4

    #@1e
    .line 79
    .local v4, "entryFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    #@21
    move-result v10

    #@22
    if-eqz v10, :cond_2

    #@24
    .line 80
    move/from16 v0, p2

    #@26
    invoke-static {v4, v0}, Llibcore/tzdata/update/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@29
    goto :goto_0

    #@2a
    .line 102
    .end local v1    # "buffer":[B
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "entryFile":Ljava/io/File;
    .end local v7    # "name":Ljava/lang/String;
    :catch_0
    move-exception v10

    #@2b
    move-object v8, v9

    #@2c
    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :goto_1
    :try_start_2
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    :catchall_0
    move-exception v11

    #@2e
    move-object v14, v11

    #@2f
    move-object v11, v10

    #@30
    move-object v10, v14

    #@31
    :goto_2
    if-eqz v8, :cond_1

    #@33
    :try_start_3
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    #@36
    :cond_1
    :goto_3
    if-eqz v11, :cond_d

    #@38
    throw v11

    #@39
    .line 83
    .restart local v1    # "buffer":[B
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "entryFile":Ljava/io/File;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@3c
    move-result-object v10

    #@3d
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    #@40
    move-result v10

    #@41
    if-nez v10, :cond_3

    #@43
    .line 85
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@46
    move-result-object v10

    #@47
    .line 84
    move/from16 v0, p2

    #@49
    invoke-static {v10, v0}, Llibcore/tzdata/update/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@4c
    .line 88
    :cond_3
    const/4 v11, 0x0

    #@4d
    const/4 v5, 0x0

    #@4e
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v6, Ljava/io/FileOutputStream;

    #@50
    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@53
    .line 90
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_6
    invoke-virtual {v9, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    #@56
    move-result v2

    #@57
    .local v2, "count":I
    const/4 v10, -0x1

    #@58
    if-eq v2, v10, :cond_5

    #@5a
    .line 91
    const/4 v10, 0x0

    #@5b
    invoke-virtual {v6, v1, v10, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    #@5e
    goto :goto_4

    #@5f
    .line 95
    .end local v2    # "count":I
    :catch_1
    move-exception v10

    #@60
    move-object v5, v6

    #@61
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_5
    :try_start_7
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@62
    :catchall_1
    move-exception v11

    #@63
    move-object v14, v11

    #@64
    move-object v11, v10

    #@65
    move-object v10, v14

    #@66
    :goto_6
    if-eqz v5, :cond_4

    #@68
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@6b
    :cond_4
    :goto_7
    if-eqz v11, :cond_8

    #@6d
    :try_start_9
    throw v11
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@6e
    .line 102
    .end local v1    # "buffer":[B
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "entryFile":Ljava/io/File;
    .end local v7    # "name":Ljava/lang/String;
    :catchall_2
    move-exception v10

    #@6f
    move-object v11, v12

    #@70
    move-object v8, v9

    #@71
    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v8, "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto :goto_2

    #@72
    .line 94
    .end local v8    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "entryFile":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_5
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    #@75
    move-result-object v10

    #@76
    invoke-virtual {v10}, Ljava/io/FileDescriptor;->sync()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    #@79
    .line 95
    if-eqz v6, :cond_6

    #@7b
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@7e
    :cond_6
    :goto_8
    if-eqz v11, :cond_9

    #@80
    :try_start_c
    throw v11

    #@81
    :catch_2
    move-exception v11

    #@82
    goto :goto_8

    #@83
    .end local v2    # "count":I
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v13

    #@84
    if-nez v11, :cond_7

    #@86
    move-object v11, v13

    #@87
    goto :goto_7

    #@88
    :cond_7
    if-eq v11, v13, :cond_4

    #@8a
    invoke-virtual {v11, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@8d
    goto :goto_7

    #@8e
    :cond_8
    throw v10

    #@8f
    .line 97
    .restart local v2    # "count":I
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_9
    if-eqz p2, :cond_0

    #@91
    .line 98
    invoke-static {v4}, Llibcore/tzdata/update/FileUtils;->makeWorldReadable(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    #@94
    goto/16 :goto_0

    #@96
    .line 102
    .end local v2    # "count":I
    .end local v4    # "entryFile":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "name":Ljava/lang/String;
    :cond_a
    if-eqz v9, :cond_b

    #@98
    :try_start_d
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    #@9b
    :cond_b
    :goto_9
    if-eqz v12, :cond_e

    #@9d
    throw v12

    #@9e
    :catch_4
    move-exception v12

    #@9f
    goto :goto_9

    #@a0
    .end local v1    # "buffer":[B
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_5
    move-exception v12

    #@a1
    if-nez v11, :cond_c

    #@a3
    move-object v11, v12

    #@a4
    goto :goto_3

    #@a5
    :cond_c
    if-eq v11, v12, :cond_1

    #@a7
    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@aa
    goto :goto_3

    #@ab
    :cond_d
    throw v10

    #@ac
    .line 63
    .restart local v1    # "buffer":[B
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_e
    return-void

    #@ad
    .line 102
    .end local v1    # "buffer":[B
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v8, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_3
    move-exception v10

    #@ae
    move-object v11, v12

    #@af
    goto :goto_2

    #@b0
    :catch_6
    move-exception v10

    #@b1
    goto/16 :goto_1

    #@b3
    .line 95
    .end local v8    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "entryFile":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_4
    move-exception v10

    #@b4
    goto :goto_6

    #@b5
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v10

    #@b6
    move-object v5, v6

    #@b7
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    #@b8
    .local v5, "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v10

    #@b9
    goto :goto_5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 107
    if-ne p0, p1, :cond_0

    #@4
    .line 108
    return v4

    #@5
    .line 110
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Llibcore/tzdata/update/ConfigBundle;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v2

    #@f
    if-eq v1, v2, :cond_2

    #@11
    .line 111
    :cond_1
    return v3

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 114
    check-cast v0, Llibcore/tzdata/update/ConfigBundle;

    #@15
    .line 116
    .local v0, "that":Llibcore/tzdata/update/ConfigBundle;
    iget-object v1, p0, Llibcore/tzdata/update/ConfigBundle;->bytes:[B

    #@17
    iget-object v2, v0, Llibcore/tzdata/update/ConfigBundle;->bytes:[B

    #@19
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_3

    #@1f
    .line 117
    return v3

    #@20
    .line 120
    :cond_3
    return v4
.end method

.method public extractTo(Ljava/io/File;)V
    .locals 2
    .param p1, "targetDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@2
    iget-object v1, p0, Llibcore/tzdata/update/ConfigBundle;->bytes:[B

    #@4
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@7
    const/4 v1, 0x1

    #@8
    invoke-static {v0, p1, v1}, Llibcore/tzdata/update/ConfigBundle;->extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V

    #@b
    .line 57
    return-void
.end method

.method public getBundleBytes()[B
    .locals 1

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Llibcore/tzdata/update/ConfigBundle;->bytes:[B

    #@2
    return-object v0
.end method
