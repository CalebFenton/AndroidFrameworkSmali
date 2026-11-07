.class public Landroid/app/backup/FullBackup;
.super Ljava/lang/Object;
.source "FullBackup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/FullBackup$BackupSchemeId;,
        Landroid/app/backup/FullBackup$BackupScheme;,
        Landroid/app/backup/FullBackup$ConfigSection;
    }
.end annotation


# static fields
.field public static final greylist-max-o APK_TREE_TOKEN:Ljava/lang/String; = "a"

.field public static final greylist-max-o APPS_PREFIX:Ljava/lang/String; = "apps/"

.field public static final greylist-max-o CACHE_TREE_TOKEN:Ljava/lang/String; = "c"

.field public static final greylist-max-o CONF_TOKEN_INTENT_EXTRA:Ljava/lang/String; = "conftoken"

.field public static final greylist-max-o DATABASE_TREE_TOKEN:Ljava/lang/String; = "db"

.field public static final greylist-max-o DEVICE_CACHE_TREE_TOKEN:Ljava/lang/String; = "d_c"

.field public static final greylist-max-o DEVICE_DATABASE_TREE_TOKEN:Ljava/lang/String; = "d_db"

.field public static final greylist-max-o DEVICE_FILES_TREE_TOKEN:Ljava/lang/String; = "d_f"

.field public static final greylist-max-o DEVICE_NO_BACKUP_TREE_TOKEN:Ljava/lang/String; = "d_nb"

.field public static final greylist-max-o DEVICE_ROOT_TREE_TOKEN:Ljava/lang/String; = "d_r"

.field public static final greylist-max-o DEVICE_SHAREDPREFS_TREE_TOKEN:Ljava/lang/String; = "d_sp"

.field public static final greylist-max-o FILES_TREE_TOKEN:Ljava/lang/String; = "f"

.field private static final blacklist FLAG_DISABLE_IF_NO_ENCRYPTION_CAPABILITIES:Ljava/lang/String; = "disableIfNoEncryptionCapabilities"

.field public static final greylist-max-o FLAG_REQUIRED_CLIENT_SIDE_ENCRYPTION:Ljava/lang/String; = "clientSideEncryption"

.field public static final greylist-max-o FLAG_REQUIRED_DEVICE_TO_DEVICE_TRANSFER:Ljava/lang/String; = "deviceToDeviceTransfer"

.field public static final greylist-max-o FLAG_REQUIRED_FAKE_CLIENT_SIDE_ENCRYPTION:Ljava/lang/String; = "fakeClientSideEncryption"

.field public static final greylist-max-o FULL_BACKUP_INTENT_ACTION:Ljava/lang/String; = "fullback"

.field public static final greylist-max-o FULL_RESTORE_INTENT_ACTION:Ljava/lang/String; = "fullrest"

.field private static final blacklist IGNORE_FULL_BACKUP_CONTENT_IN_D2D:J = 0xac2922cL

.field public static final greylist-max-o KEY_VALUE_DATA_TOKEN:Ljava/lang/String; = "k"

.field public static final greylist-max-o MANAGED_EXTERNAL_TREE_TOKEN:Ljava/lang/String; = "ef"

.field public static final greylist-max-o NO_BACKUP_TREE_TOKEN:Ljava/lang/String; = "nb"

.field public static final greylist-max-o OBB_TREE_TOKEN:Ljava/lang/String; = "obb"

.field public static final greylist-max-o ROOT_TREE_TOKEN:Ljava/lang/String; = "r"

.field public static final greylist-max-o SHAREDPREFS_TREE_TOKEN:Ljava/lang/String; = "sp"

.field public static final greylist-max-o SHARED_PREFIX:Ljava/lang/String; = "shared/"

.field public static final greylist-max-o SHARED_STORAGE_TOKEN:Ljava/lang/String; = "shared"

.field static final greylist-max-o TAG:Ljava/lang/String; = "FullBackup"

.field static final greylist-max-o TAG_XML_PARSER:Ljava/lang/String; = "BackupXmlParserLogging"

.field private static final greylist-max-o kPackageBackupSchemeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/backup/FullBackup$BackupSchemeId;",
            "Landroid/app/backup/FullBackup$BackupScheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 162
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native greylist backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
.end method

.method static declared-synchronized blacklist getBackupScheme(Landroid/content/Context;I)Landroid/app/backup/FullBackup$BackupScheme;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backupDestination"    # I

    const-class v0, Landroid/app/backup/FullBackup;

    monitor-enter v0

    .line 167
    :try_start_3
    new-instance v1, Landroid/app/backup/FullBackup$BackupSchemeId;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/app/backup/FullBackup$BackupSchemeId;-><init>(Ljava/lang/String;I)V

    .line 169
    .local v1, "backupSchemeId":Landroid/app/backup/FullBackup$BackupSchemeId;
    sget-object v2, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    .line 170
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/backup/FullBackup$BackupScheme;

    .line 171
    .local v2, "backupSchemeForPackage":Landroid/app/backup/FullBackup$BackupScheme;
    if-nez v2, :cond_21

    .line 172
    new-instance v3, Landroid/app/backup/FullBackup$BackupScheme;

    invoke-direct {v3, p0, p1}, Landroid/app/backup/FullBackup$BackupScheme;-><init>(Landroid/content/Context;I)V

    move-object v2, v3

    .line 173
    sget-object v3, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    .line 175
    :cond_21
    monitor-exit v0

    return-object v2

    .line 166
    .end local v1    # "backupSchemeId":Landroid/app/backup/FullBackup$BackupSchemeId;
    .end local v2    # "backupSchemeForPackage":Landroid/app/backup/FullBackup$BackupScheme;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "backupDestination":I
    :catchall_23
    move-exception p0

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public static greylist-max-o getBackupSchemeForTest(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 179
    new-instance v0, Landroid/app/backup/FullBackup$BackupScheme;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/backup/FullBackup$BackupScheme;-><init>(Landroid/content/Context;I)V

    .line 180
    .local v0, "testing":Landroid/app/backup/FullBackup$BackupScheme;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    .line 181
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    .line 182
    return-object v0
.end method

.method public static greylist-max-o restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V
    .registers 26
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

    .line 217
    move-object/from16 v1, p8

    const/4 v0, 0x2

    const-wide/16 v2, 0x0

    move/from16 v4, p3

    if-ne v4, v0, :cond_13

    .line 221
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 271
    :cond_e
    move-wide/from16 v11, p1

    move-wide v15, v2

    goto/16 :goto_c8

    .line 223
    :cond_13
    const/4 v5, 0x0

    .line 227
    .local v5, "out":Ljava/io/FileOutputStream;
    const-string v6, "FullBackup"

    if-eqz v1, :cond_48

    .line 228
    :try_start_18
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 229
    .local v0, "parent":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_25

    .line 234
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 236
    :cond_25
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2a} :catch_2c

    move-object v5, v7

    goto :goto_48

    .line 238
    .end local v0    # "parent":Ljava/io/File;
    :catch_2c
    move-exception v0

    .line 239
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create/open file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49

    .line 240
    .end local v0    # "e":Ljava/io/IOException;
    :cond_48
    :goto_48
    nop

    .line 242
    :goto_49
    const/high16 v0, 0x10000

    new-array v7, v0, [B

    .line 243
    .local v7, "buffer":[B
    move-wide/from16 v8, p1

    .line 244
    .local v8, "origSize":J
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v10, v0

    move-wide/from16 v11, p1

    .line 245
    .end local p1    # "size":J
    .local v10, "in":Ljava/io/FileInputStream;
    .local v11, "size":J
    :goto_5b
    cmp-long v0, v11, v2

    if-lez v0, :cond_c2

    .line 246
    array-length v0, v7

    int-to-long v13, v0

    cmp-long v0, v11, v13

    if-lez v0, :cond_67

    array-length v0, v7

    goto :goto_68

    :cond_67
    long-to-int v0, v11

    :goto_68
    move v13, v0

    .line 247
    .local v13, "toRead":I
    const/4 v0, 0x0

    invoke-virtual {v10, v7, v0, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v14

    .line 248
    .local v14, "got":I
    if-gtz v14, :cond_94

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Incomplete read: expected "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " but got "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide v15, v2

    sub-long v2, v8, v11

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    goto :goto_c3

    .line 253
    :cond_94
    move-wide v15, v2

    if-eqz v5, :cond_be

    .line 255
    :try_start_97
    invoke-virtual {v5, v7, v0, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    .line 263
    goto :goto_be

    .line 256
    :catch_9b
    move-exception v0

    .line 259
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to write to file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 261
    const/4 v2, 0x0

    .line 262
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v2, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-object v5, v2

    .line 265
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :cond_be
    :goto_be
    int-to-long v2, v14

    sub-long/2addr v11, v2

    .line 266
    .end local v13    # "toRead":I
    .end local v14    # "got":I
    move-wide v2, v15

    goto :goto_5b

    .line 245
    :cond_c2
    move-wide v15, v2

    .line 267
    :goto_c3
    if-eqz v5, :cond_c8

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 271
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "buffer":[B
    .end local v8    # "origSize":J
    .end local v10    # "in":Ljava/io/FileInputStream;
    :cond_c8
    :goto_c8
    cmp-long v0, p4, v15

    if-ltz v0, :cond_e5

    if-eqz v1, :cond_e5

    .line 274
    const-wide/16 v2, 0x1c0

    and-long v2, p4, v2

    .line 275
    .end local p4    # "mode":J
    .local v2, "mode":J
    :try_start_d2
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    long-to-int v5, v2

    invoke-static {v0, v5}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_da
    .catch Landroid/system/ErrnoException; {:try_start_d2 .. :try_end_da} :catch_db

    .line 278
    goto :goto_df

    .line 276
    :catch_db
    move-exception v0

    .line 277
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 279
    .end local v0    # "e":Landroid/system/ErrnoException;
    :goto_df
    move-wide/from16 v5, p6

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    goto :goto_e9

    .line 271
    .end local v2    # "mode":J
    .restart local p4    # "mode":J
    :cond_e5
    move-wide/from16 v5, p6

    .line 281
    move-wide/from16 v2, p4

    .end local p4    # "mode":J
    .restart local v2    # "mode":J
    :goto_e9
    return-void
.end method
