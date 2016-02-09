.class public Landroid/app/backup/FullBackup;
.super Ljava/lang/Object;
.source "FullBackup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/FullBackup$BackupScheme;
    }
.end annotation


# static fields
.field public static final APK_TREE_TOKEN:Ljava/lang/String; = "a"

.field public static final APPS_PREFIX:Ljava/lang/String; = "apps/"

.field public static final CACHE_TREE_TOKEN:Ljava/lang/String; = "c"

.field public static final CONF_TOKEN_INTENT_EXTRA:Ljava/lang/String; = "conftoken"

.field public static final DATABASE_TREE_TOKEN:Ljava/lang/String; = "db"

.field public static final DATA_TREE_TOKEN:Ljava/lang/String; = "f"

.field public static final FULL_BACKUP_INTENT_ACTION:Ljava/lang/String; = "fullback"

.field public static final FULL_RESTORE_INTENT_ACTION:Ljava/lang/String; = "fullrest"

.field public static final MANAGED_EXTERNAL_TREE_TOKEN:Ljava/lang/String; = "ef"

.field public static final NO_BACKUP_TREE_TOKEN:Ljava/lang/String; = "nb"

.field public static final OBB_TREE_TOKEN:Ljava/lang/String; = "obb"

.field public static final ROOT_TREE_TOKEN:Ljava/lang/String; = "r"

.field public static final SHAREDPREFS_TREE_TOKEN:Ljava/lang/String; = "sp"

.field public static final SHARED_PREFIX:Ljava/lang/String; = "shared/"

.field public static final SHARED_STORAGE_TOKEN:Ljava/lang/String; = "shared"

.field static final TAG:Ljava/lang/String; = "FullBackup"

.field static final TAG_XML_PARSER:Ljava/lang/String; = "BackupXmlParserLogging"

.field private static final kPackageBackupSchemeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/backup/FullBackup$BackupScheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    #@2
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@5
    .line 80
    sput-object v0, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    #@7
    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static native backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
.end method

.method static declared-synchronized getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const-class v2, Landroid/app/backup/FullBackup;

    #@2
    monitor-enter v2

    #@3
    .line 85
    :try_start_0
    sget-object v1, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    #@5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/app/backup/FullBackup$BackupScheme;

    #@f
    .line 86
    .local v0, "backupSchemeForPackage":Landroid/app/backup/FullBackup$BackupScheme;
    if-nez v0, :cond_0

    #@11
    .line 87
    new-instance v0, Landroid/app/backup/FullBackup$BackupScheme;

    #@13
    .end local v0    # "backupSchemeForPackage":Landroid/app/backup/FullBackup$BackupScheme;
    invoke-direct {v0, p0}, Landroid/app/backup/FullBackup$BackupScheme;-><init>(Landroid/content/Context;)V

    #@16
    .line 88
    .restart local v0    # "backupSchemeForPackage":Landroid/app/backup/FullBackup$BackupScheme;
    sget-object v1, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    #@18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    :cond_0
    monitor-exit v2

    #@20
    .line 90
    return-object v0

    #@21
    .end local v0    # "backupSchemeForPackage":Landroid/app/backup/FullBackup$BackupScheme;
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1
.end method

.method public static getBackupSchemeForTest(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 94
    new-instance v0, Landroid/app/backup/FullBackup$BackupScheme;

    #@2
    invoke-direct {v0, p0}, Landroid/app/backup/FullBackup$BackupScheme;-><init>(Landroid/content/Context;)V

    #@5
    .line 95
    .local v0, "testing":Landroid/app/backup/FullBackup$BackupScheme;
    new-instance v1, Landroid/util/ArraySet;

    #@7
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@a
    iput-object v1, v0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    #@c
    .line 96
    new-instance v1, Landroid/util/ArrayMap;

    #@e
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@11
    iput-object v1, v0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    #@13
    .line 97
    return-object v0
.end method

.method public static restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V
    .locals 21
    .param p0, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "size"    # J
    .param p3, "type"    # I
    .param p4, "mode"    # J
    .param p6, "mtime"    # J
    .param p8, "outFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    const/4 v15, 0x2

    #@1
    move/from16 v0, p3

    #@3
    if-ne v0, v15, :cond_2

    #@5
    .line 136
    if-eqz p8, :cond_0

    #@7
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->mkdirs()Z

    #@a
    .line 186
    :cond_0
    :goto_0
    const-wide/16 v16, 0x0

    #@c
    cmp-long v15, p4, v16

    #@e
    if-ltz v15, :cond_1

    #@10
    if-eqz p8, :cond_1

    #@12
    .line 189
    const-wide/16 v16, 0x1c0

    #@14
    and-long p4, p4, v16

    #@16
    .line 190
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@19
    move-result-object v15

    #@1a
    move-wide/from16 v0, p4

    #@1c
    long-to-int v0, v0

    #@1d
    move/from16 v16, v0

    #@1f
    invoke-static/range {v15 .. v16}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2

    #@22
    .line 194
    :goto_1
    move-object/from16 v0, p8

    #@24
    move-wide/from16 v1, p6

    #@26
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    #@29
    .line 131
    :cond_1
    return-void

    #@2a
    .line 138
    :cond_2
    const/4 v9, 0x0

    #@2b
    .line 142
    .local v9, "out":Ljava/io/FileOutputStream;
    if-eqz p8, :cond_4

    #@2d
    .line 143
    :try_start_1
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@30
    move-result-object v13

    #@31
    .line 144
    .local v13, "parent":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    #@34
    move-result v15

    #@35
    if-nez v15, :cond_3

    #@37
    .line 149
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    #@3a
    .line 151
    :cond_3
    new-instance v12, Ljava/io/FileOutputStream;

    #@3c
    move-object/from16 v0, p8

    #@3e
    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@41
    .local v12, "out":Ljava/io/FileOutputStream;
    move-object v9, v12

    #@42
    .line 157
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .end local v13    # "parent":Ljava/io/File;
    :cond_4
    :goto_2
    const v15, 0x8000

    #@45
    new-array v4, v15, [B

    #@47
    .line 158
    .local v4, "buffer":[B
    move-wide/from16 v10, p1

    #@49
    .line 159
    .local v10, "origSize":J
    new-instance v8, Ljava/io/FileInputStream;

    #@4b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@4e
    move-result-object v15

    #@4f
    invoke-direct {v8, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@52
    .line 160
    .local v8, "in":Ljava/io/FileInputStream;
    :goto_3
    const-wide/16 v16, 0x0

    #@54
    cmp-long v15, p1, v16

    #@56
    if-lez v15, :cond_5

    #@58
    .line 161
    array-length v15, v4

    #@59
    int-to-long v0, v15

    #@5a
    move-wide/from16 v16, v0

    #@5c
    cmp-long v15, p1, v16

    #@5e
    if-lez v15, :cond_6

    #@60
    array-length v14, v4

    #@61
    .line 162
    .local v14, "toRead":I
    :goto_4
    const/4 v15, 0x0

    #@62
    invoke-virtual {v8, v4, v15, v14}, Ljava/io/FileInputStream;->read([BII)I

    #@65
    move-result v7

    #@66
    .line 163
    .local v7, "got":I
    if-gtz v7, :cond_7

    #@68
    .line 164
    const-string/jumbo v15, "FullBackup"

    #@6b
    new-instance v16, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v17, "Incomplete read: expected "

    #@73
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v16

    #@77
    move-object/from16 v0, v16

    #@79
    move-wide/from16 v1, p1

    #@7b
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v16

    #@7f
    const-string/jumbo v17, " but got "

    #@82
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v16

    #@86
    .line 165
    sub-long v18, v10, p1

    #@88
    .line 164
    move-object/from16 v0, v16

    #@8a
    move-wide/from16 v1, v18

    #@8c
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v16

    #@90
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v16

    #@94
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@97
    .line 182
    .end local v7    # "got":I
    .end local v14    # "toRead":I
    :cond_5
    if-eqz v9, :cond_0

    #@99
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    #@9c
    goto/16 :goto_0

    #@9e
    .line 153
    .end local v4    # "buffer":[B
    .end local v8    # "in":Ljava/io/FileInputStream;
    .end local v10    # "origSize":J
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    #@9f
    .line 154
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v15, "FullBackup"

    #@a2
    new-instance v16, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v17, "Unable to create/open file "

    #@aa
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v16

    #@ae
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@b1
    move-result-object v17

    #@b2
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v16

    #@b6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v16

    #@ba
    move-object/from16 v0, v16

    #@bc
    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@bf
    goto :goto_2

    #@c0
    .line 161
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v8    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "origSize":J
    :cond_6
    move-wide/from16 v0, p1

    #@c2
    long-to-int v14, v0

    #@c3
    .restart local v14    # "toRead":I
    goto :goto_4

    #@c4
    .line 168
    .restart local v7    # "got":I
    :cond_7
    if-eqz v9, :cond_8

    #@c6
    .line 170
    const/4 v15, 0x0

    #@c7
    :try_start_2
    invoke-virtual {v9, v4, v15, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@ca
    .line 180
    :cond_8
    :goto_5
    int-to-long v0, v7

    #@cb
    move-wide/from16 v16, v0

    #@cd
    sub-long p1, p1, v16

    #@cf
    goto :goto_3

    #@d0
    .line 171
    :catch_1
    move-exception v6

    #@d1
    .line 174
    .restart local v6    # "e":Ljava/io/IOException;
    const-string/jumbo v15, "FullBackup"

    #@d4
    new-instance v16, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v17, "Unable to write to file "

    #@dc
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v16

    #@e0
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@e3
    move-result-object v17

    #@e4
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v16

    #@e8
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v16

    #@ec
    move-object/from16 v0, v16

    #@ee
    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f1
    .line 175
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    #@f4
    .line 176
    const/4 v9, 0x0

    #@f5
    .line 177
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->delete()Z

    #@f8
    goto :goto_5

    #@f9
    .line 191
    .end local v4    # "buffer":[B
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "got":I
    .end local v8    # "in":Ljava/io/FileInputStream;
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .end local v10    # "origSize":J
    .end local v14    # "toRead":I
    :catch_2
    move-exception v5

    #@fa
    .line 192
    .local v5, "e":Landroid/system/ErrnoException;
    invoke-virtual {v5}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@fd
    goto/16 :goto_1
.end method
