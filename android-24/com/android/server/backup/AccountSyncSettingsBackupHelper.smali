.class public Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
.super Ljava/lang/Object;
.source "AccountSyncSettingsBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final JSON_FORMAT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final JSON_FORMAT_HEADER_KEY:Ljava/lang/String; = "account_data"

.field private static final JSON_FORMAT_VERSION:I = 0x1

.field private static final KEY_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final KEY_ACCOUNT_AUTHORITIES:Ljava/lang/String; = "authorities"

.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "name"

.field private static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_AUTHORITY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_AUTHORITY_SYNC_ENABLED:Ljava/lang/String; = "syncEnabled"

.field private static final KEY_AUTHORITY_SYNC_STATE:Ljava/lang/String; = "syncState"

.field private static final KEY_MASTER_SYNC_ENABLED:Ljava/lang/String; = "masterSyncEnabled"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final MD5_BYTE_SIZE:I = 0x10

.field private static final STASH_FILE:Ljava/lang/String;

.field private static final STATE_VERSION:I = 0x1

.field private static final SYNC_REQUEST_LATCH_TIMEOUT_SECONDS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AccountSyncSettingsBackupHelper"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    .line 80
    const-string/jumbo v1, "/backup/unadded_account_syncsettings.json"

    #@10
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    sput-object v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->STASH_FILE:Ljava/lang/String;

    #@1a
    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 86
    iput-object p1, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    #@5
    .line 87
    iget-object v0, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    #@7
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    #@d
    .line 85
    return-void
.end method

.method public static accountAdded(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 347
    new-instance v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    #@2
    invoke-direct {v0, p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;)V

    #@5
    .line 348
    .local v0, "helper":Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
    invoke-direct {v0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->accountAddedInternal()V

    #@8
    .line 346
    return-void
.end method

.method private accountAddedInternal()V
    .locals 12

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 322
    const/4 v0, 0x0

    #@2
    .local v0, "fIn":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    #@4
    new-instance v8, Ljava/io/File;

    #@6
    sget-object v10, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->STASH_FILE:Ljava/lang/String;

    #@8
    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@b
    invoke-direct {v1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    .line 323
    .end local v0    # "fIn":Ljava/io/FileInputStream;
    .local v1, "fIn":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/DataInputStream;

    #@10
    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@13
    .line 324
    .local v3, "in":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@16
    move-result-object v6

    #@17
    .line 332
    .local v6, "jsonString":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@19
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    #@1c
    :cond_0
    :goto_0
    if-eqz v9, :cond_4

    #@1e
    :try_start_3
    throw v9
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    #@1f
    .line 325
    :catch_0
    move-exception v2

    #@20
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    move-object v0, v1

    #@21
    .line 328
    .end local v1    # "fIn":Ljava/io/FileInputStream;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v6    # "jsonString":Ljava/lang/String;
    :goto_1
    return-void

    #@22
    .line 332
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v1    # "fIn":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "jsonString":Ljava/lang/String;
    :catch_1
    move-exception v9

    #@23
    goto :goto_0

    #@24
    .end local v1    # "fIn":Ljava/io/FileInputStream;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v6    # "jsonString":Ljava/lang/String;
    .restart local v0    # "fIn":Ljava/io/FileInputStream;
    :catch_2
    move-exception v8

    #@25
    .end local v0    # "fIn":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@26
    :catchall_0
    move-exception v9

    #@27
    move-object v11, v9

    #@28
    move-object v9, v8

    #@29
    move-object v8, v11

    #@2a
    :goto_3
    if-eqz v0, :cond_1

    #@2c
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    #@2f
    :cond_1
    :goto_4
    if-eqz v9, :cond_3

    #@31
    :try_start_6
    throw v9

    #@32
    .line 325
    :catch_3
    move-exception v2

    #@33
    .restart local v2    # "fnfe":Ljava/io/FileNotFoundException;
    goto :goto_1

    #@34
    .line 332
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v10

    #@35
    if-nez v9, :cond_2

    #@37
    move-object v9, v10

    #@38
    goto :goto_4

    #@39
    :cond_2
    if-eq v9, v10, :cond_1

    #@3b
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@3e
    goto :goto_4

    #@3f
    .line 329
    :catch_5
    move-exception v4

    #@40
    .line 331
    .local v4, "ioe":Ljava/io/IOException;
    :goto_5
    return-void

    #@41
    .line 332
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_3
    throw v8
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    #@42
    .line 335
    .restart local v1    # "fIn":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "jsonString":Ljava/lang/String;
    :cond_4
    :try_start_7
    new-instance v7, Lorg/json/JSONArray;

    #@44
    invoke-direct {v7, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    #@47
    .line 336
    .local v7, "unaddedAccountsJSONArray":Lorg/json/JSONArray;
    invoke-direct {p0, v7}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreFromJsonArray(Lorg/json/JSONArray;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    #@4a
    .line 319
    .end local v7    # "unaddedAccountsJSONArray":Lorg/json/JSONArray;
    :goto_6
    return-void

    #@4b
    .line 337
    :catch_6
    move-exception v5

    #@4c
    .line 339
    .local v5, "jse":Lorg/json/JSONException;
    const-string/jumbo v8, "AccountSyncSettingsBackupHelper"

    #@4f
    const-string/jumbo v9, "there was an error with the stashed sync settings"

    #@52
    invoke-static {v8, v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@55
    goto :goto_6

    #@56
    .line 329
    .end local v5    # "jse":Lorg/json/JSONException;
    :catch_7
    move-exception v4

    #@57
    .restart local v4    # "ioe":Ljava/io/IOException;
    move-object v0, v1

    #@58
    .end local v1    # "fIn":Ljava/io/FileInputStream;
    .local v0, "fIn":Ljava/io/FileInputStream;
    goto :goto_5

    #@59
    .line 332
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v4    # "ioe":Ljava/io/IOException;
    .end local v6    # "jsonString":Ljava/lang/String;
    .local v0, "fIn":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    #@5a
    goto :goto_3

    #@5b
    .end local v0    # "fIn":Ljava/io/FileInputStream;
    .restart local v1    # "fIn":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    #@5c
    move-object v0, v1

    #@5d
    .end local v1    # "fIn":Ljava/io/FileInputStream;
    .local v0, "fIn":Ljava/io/FileInputStream;
    goto :goto_3

    #@5e
    .end local v0    # "fIn":Ljava/io/FileInputStream;
    .restart local v1    # "fIn":Ljava/io/FileInputStream;
    :catch_8
    move-exception v8

    #@5f
    move-object v0, v1

    #@60
    .end local v1    # "fIn":Ljava/io/FileInputStream;
    .restart local v0    # "fIn":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private generateMd5Checksum([B)[B
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 233
    if-nez p1, :cond_0

    #@3
    .line 234
    return-object v1

    #@4
    .line 237
    :cond_0
    const-string/jumbo v1, "MD5"

    #@7
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@a
    move-result-object v0

    #@b
    .line 238
    .local v0, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method private getAccounts()Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 357
    iget-object v3, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    #@2
    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    #@5
    move-result-object v2

    #@6
    .line 358
    .local v2, "accounts":[Landroid/accounts/Account;
    new-instance v1, Ljava/util/HashSet;

    #@8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@b
    .line 359
    .local v1, "accountHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/accounts/Account;>;"
    const/4 v3, 0x0

    #@c
    array-length v4, v2

    #@d
    :goto_0
    if-ge v3, v4, :cond_0

    #@f
    aget-object v0, v2, v3

    #@11
    .line 360
    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@14
    .line 359
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 362
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-object v1
.end method

.method private readOldMd5Checksum(Landroid/os/ParcelFileDescriptor;)[B
    .locals 9
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x10

    #@2
    const/4 v7, 0x1

    #@3
    .line 192
    new-instance v0, Ljava/io/DataInputStream;

    #@5
    .line 193
    new-instance v5, Ljava/io/FileInputStream;

    #@7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@a
    move-result-object v6

    #@b
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@e
    .line 192
    invoke-direct {v0, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@11
    .line 195
    .local v0, "dataInput":Ljava/io/DataInputStream;
    new-array v3, v8, [B

    #@13
    .line 197
    .local v3, "oldMd5Checksum":[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    #@16
    move-result v4

    #@17
    .line 198
    .local v4, "stateVersion":I
    if-gt v4, v7, :cond_0

    #@19
    .line 202
    const/4 v2, 0x0

    #@1a
    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_1

    #@1c
    .line 203
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    #@1f
    move-result v5

    #@20
    aput-byte v5, v3, v2

    #@22
    .line 202
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 206
    .end local v2    # "i":I
    :cond_0
    const-string/jumbo v5, "AccountSyncSettingsBackupHelper"

    #@28
    new-instance v6, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v7, "Backup state version is: "

    #@30
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    .line 207
    const-string/jumbo v7, " (support only up to version "

    #@3b
    .line 206
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    .line 207
    const/4 v7, 0x1

    #@40
    .line 206
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    .line 207
    const-string/jumbo v7, ")"

    #@47
    .line 206
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v6

    #@4b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v6

    #@4f
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    #@52
    .line 213
    .end local v4    # "stateVersion":I
    :cond_1
    :goto_1
    return-object v3

    #@53
    .line 209
    :catch_0
    move-exception v1

    #@54
    .local v1, "eof":Ljava/io/EOFException;
    goto :goto_1
.end method

.method private restoreExistingAccountSyncSettingsFromJSON(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "accountJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 397
    const-string/jumbo v9, "authorities"

    #@4
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@7
    move-result-object v3

    #@8
    .line 398
    .local v3, "authorities":Lorg/json/JSONArray;
    const-string/jumbo v9, "name"

    #@b
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 399
    .local v1, "accountName":Ljava/lang/String;
    const-string/jumbo v9, "type"

    #@12
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 401
    .local v2, "accountType":Ljava/lang/String;
    new-instance v0, Landroid/accounts/Account;

    #@18
    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 402
    .local v0, "account":Landroid/accounts/Account;
    const/4 v6, 0x0

    #@1c
    .local v6, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    #@1f
    move-result v9

    #@20
    if-ge v6, v9, :cond_2

    #@22
    .line 403
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    check-cast v4, Lorg/json/JSONObject;

    #@28
    .line 404
    .local v4, "authority":Lorg/json/JSONObject;
    const-string/jumbo v9, "name"

    #@2b
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    .line 405
    .local v5, "authorityName":Ljava/lang/String;
    const-string/jumbo v9, "syncEnabled"

    #@32
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    #@35
    move-result v7

    #@36
    .line 406
    .local v7, "wasSyncEnabled":Z
    const-string/jumbo v9, "syncState"

    #@39
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    #@3c
    move-result v8

    #@3d
    .line 408
    .local v8, "wasSyncable":I
    invoke-static {v0, v5, v7, v10}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    #@40
    .line 411
    if-nez v7, :cond_0

    #@42
    .line 415
    if-nez v8, :cond_1

    #@44
    move v9, v10

    #@45
    .line 412
    :goto_1
    invoke-static {v0, v5, v9}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@48
    .line 402
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 416
    :cond_1
    const/4 v9, 0x2

    #@4c
    goto :goto_1

    #@4d
    .line 395
    .end local v4    # "authority":Lorg/json/JSONObject;
    .end local v5    # "authorityName":Ljava/lang/String;
    .end local v7    # "wasSyncEnabled":Z
    .end local v8    # "wasSyncable":I
    :cond_2
    return-void
.end method

.method private restoreFromJsonArray(Lorg/json/JSONArray;)V
    .locals 21
    .param p1, "accountJSONArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->getAccounts()Ljava/util/HashSet;

    #@3
    move-result-object v7

    #@4
    .line 278
    .local v7, "currentAccounts":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/accounts/Account;>;"
    new-instance v16, Lorg/json/JSONArray;

    #@6
    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    #@9
    .line 279
    .local v16, "unaddedAccountsJSONArray":Lorg/json/JSONArray;
    const/4 v10, 0x0

    #@a
    .local v10, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    #@d
    move-result v17

    #@e
    move/from16 v0, v17

    #@10
    if-ge v10, v0, :cond_1

    #@12
    .line 280
    move-object/from16 v0, p1

    #@14
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    check-cast v4, Lorg/json/JSONObject;

    #@1a
    .line 281
    .local v4, "accountJSON":Lorg/json/JSONObject;
    const-string/jumbo v17, "name"

    #@1d
    move-object/from16 v0, v17

    #@1f
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    .line 282
    .local v5, "accountName":Ljava/lang/String;
    const-string/jumbo v17, "type"

    #@26
    move-object/from16 v0, v17

    #@28
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v6

    #@2c
    .line 284
    .local v6, "accountType":Ljava/lang/String;
    const/4 v2, 0x0

    #@2d
    .line 286
    .local v2, "account":Landroid/accounts/Account;
    :try_start_0
    new-instance v3, Landroid/accounts/Account;

    #@2f
    invoke-direct {v3, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6

    #@32
    .line 293
    .end local v2    # "account":Landroid/accounts/Account;
    .local v3, "account":Landroid/accounts/Account;
    invoke-virtual {v7, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@35
    move-result v17

    #@36
    if-eqz v17, :cond_0

    #@38
    .line 295
    move-object/from16 v0, p0

    #@3a
    invoke-direct {v0, v4}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreExistingAccountSyncSettingsFromJSON(Lorg/json/JSONObject;)V

    #@3d
    move-object v2, v3

    #@3e
    .line 279
    .end local v3    # "account":Landroid/accounts/Account;
    :goto_1
    add-int/lit8 v10, v10, 0x1

    #@40
    goto :goto_0

    #@41
    .line 297
    .restart local v3    # "account":Landroid/accounts/Account;
    :cond_0
    move-object/from16 v0, v16

    #@43
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@46
    move-object v2, v3

    #@47
    .end local v3    # "account":Landroid/accounts/Account;
    .local v2, "account":Landroid/accounts/Account;
    goto :goto_1

    #@48
    .line 301
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v4    # "accountJSON":Lorg/json/JSONObject;
    .end local v5    # "accountName":Ljava/lang/String;
    .end local v6    # "accountType":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    #@4b
    move-result v17

    #@4c
    if-lez v17, :cond_7

    #@4e
    .line 302
    const/16 v18, 0x0

    #@50
    const/4 v8, 0x0

    #@51
    .local v8, "fOutput":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    #@53
    sget-object v17, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->STASH_FILE:Ljava/lang/String;

    #@55
    move-object/from16 v0, v17

    #@57
    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@5a
    .line 303
    .end local v8    # "fOutput":Ljava/io/FileOutputStream;
    .local v9, "fOutput":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    #@5d
    move-result-object v13

    #@5e
    .line 304
    .local v13, "jsonString":Ljava/lang/String;
    new-instance v14, Ljava/io/DataOutputStream;

    #@60
    invoke-direct {v14, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@63
    .line 305
    .local v14, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v14, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@66
    .line 309
    if-eqz v9, :cond_2

    #@68
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@6b
    :cond_2
    :goto_2
    if-eqz v18, :cond_3

    #@6d
    :try_start_4
    throw v18
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@6e
    .line 306
    :catch_0
    move-exception v12

    #@6f
    .local v12, "ioe":Ljava/io/IOException;
    move-object v8, v9

    #@70
    .line 308
    .end local v9    # "fOutput":Ljava/io/FileOutputStream;
    .end local v13    # "jsonString":Ljava/lang/String;
    .end local v14    # "out":Ljava/io/DataOutputStream;
    :goto_3
    const-string/jumbo v17, "AccountSyncSettingsBackupHelper"

    #@73
    const-string/jumbo v18, "unable to write the sync settings to the stash file"

    #@76
    move-object/from16 v0, v17

    #@78
    move-object/from16 v1, v18

    #@7a
    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7d
    .line 276
    .end local v12    # "ioe":Ljava/io/IOException;
    :cond_3
    :goto_4
    return-void

    #@7e
    .line 309
    .restart local v9    # "fOutput":Ljava/io/FileOutputStream;
    .restart local v13    # "jsonString":Ljava/lang/String;
    .restart local v14    # "out":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v18

    #@7f
    goto :goto_2

    #@80
    .end local v9    # "fOutput":Ljava/io/FileOutputStream;
    .end local v13    # "jsonString":Ljava/lang/String;
    .end local v14    # "out":Ljava/io/DataOutputStream;
    .restart local v8    # "fOutput":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v17

    #@81
    .end local v8    # "fOutput":Ljava/io/FileOutputStream;
    :goto_5
    :try_start_5
    throw v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@82
    :catchall_0
    move-exception v18

    #@83
    move-object/from16 v20, v18

    #@85
    move-object/from16 v18, v17

    #@87
    move-object/from16 v17, v20

    #@89
    :goto_6
    if-eqz v8, :cond_4

    #@8b
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@8e
    :cond_4
    :goto_7
    if-eqz v18, :cond_6

    #@90
    :try_start_7
    throw v18

    #@91
    .line 306
    :catch_3
    move-exception v12

    #@92
    .restart local v12    # "ioe":Ljava/io/IOException;
    goto :goto_3

    #@93
    .line 309
    .end local v12    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v19

    #@94
    if-nez v18, :cond_5

    #@96
    move-object/from16 v18, v19

    #@98
    goto :goto_7

    #@99
    :cond_5
    move-object/from16 v0, v18

    #@9b
    move-object/from16 v1, v19

    #@9d
    if-eq v0, v1, :cond_4

    #@9f
    invoke-virtual/range {v18 .. v19}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@a2
    goto :goto_7

    #@a3
    :cond_6
    throw v17
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    #@a4
    .line 311
    :cond_7
    new-instance v15, Ljava/io/File;

    #@a6
    sget-object v17, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->STASH_FILE:Ljava/lang/String;

    #@a8
    move-object/from16 v0, v17

    #@aa
    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@ad
    .line 312
    .local v15, "stashFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    #@b0
    move-result v17

    #@b1
    if-eqz v17, :cond_3

    #@b3
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    #@b6
    goto :goto_4

    #@b7
    .line 309
    .end local v15    # "stashFile":Ljava/io/File;
    .restart local v8    # "fOutput":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v17

    #@b8
    goto :goto_6

    #@b9
    .end local v8    # "fOutput":Ljava/io/FileOutputStream;
    .restart local v9    # "fOutput":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v17

    #@ba
    move-object v8, v9

    #@bb
    .end local v9    # "fOutput":Ljava/io/FileOutputStream;
    .local v8, "fOutput":Ljava/io/FileOutputStream;
    goto :goto_6

    #@bc
    .end local v8    # "fOutput":Ljava/io/FileOutputStream;
    .restart local v9    # "fOutput":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v17

    #@bd
    move-object v8, v9

    #@be
    .end local v9    # "fOutput":Ljava/io/FileOutputStream;
    .restart local v8    # "fOutput":Ljava/io/FileOutputStream;
    goto :goto_5

    #@bf
    .line 287
    .end local v8    # "fOutput":Ljava/io/FileOutputStream;
    .local v2, "account":Landroid/accounts/Account;
    .restart local v4    # "accountJSON":Lorg/json/JSONObject;
    .restart local v5    # "accountName":Ljava/lang/String;
    .restart local v6    # "accountType":Ljava/lang/String;
    :catch_6
    move-exception v11

    #@c0
    .local v11, "iae":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_1
.end method

.method private serializeAccountSyncSettingsToJSON()Lorg/json/JSONObject;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    #@4
    move-object/from16 v17, v0

    #@6
    invoke-virtual/range {v17 .. v17}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    #@9
    move-result-object v6

    #@a
    .line 129
    .local v6, "accounts":[Landroid/accounts/Account;
    move-object/from16 v0, p0

    #@c
    iget-object v0, v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    #@e
    move-object/from16 v17, v0

    #@10
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getUserId()I

    #@13
    move-result v17

    #@14
    .line 128
    invoke-static/range {v17 .. v17}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    #@17
    move-result-object v14

    #@18
    .line 133
    .local v14, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v5, Ljava/util/HashMap;

    #@1a
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@1d
    .line 135
    .local v5, "accountTypeToAuthorities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/16 v17, 0x0

    #@1f
    array-length v0, v14

    #@20
    move/from16 v19, v0

    #@22
    move/from16 v18, v17

    #@24
    :goto_0
    move/from16 v0, v18

    #@26
    move/from16 v1, v19

    #@28
    if-ge v0, v1, :cond_2

    #@2a
    aget-object v13, v14, v18

    #@2c
    .line 137
    .local v13, "syncAdapter":Landroid/content/SyncAdapterType;
    invoke-virtual {v13}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    #@2f
    move-result v17

    #@30
    if-nez v17, :cond_0

    #@32
    .line 135
    :goto_1
    add-int/lit8 v17, v18, 0x1

    #@34
    move/from16 v18, v17

    #@36
    goto :goto_0

    #@37
    .line 140
    :cond_0
    iget-object v0, v13, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    #@39
    move-object/from16 v17, v0

    #@3b
    move-object/from16 v0, v17

    #@3d
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@40
    move-result v17

    #@41
    if-nez v17, :cond_1

    #@43
    .line 141
    iget-object v0, v13, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    #@45
    move-object/from16 v17, v0

    #@47
    new-instance v20, Ljava/util/ArrayList;

    #@49
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    #@4c
    move-object/from16 v0, v17

    #@4e
    move-object/from16 v1, v20

    #@50
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    .line 143
    :cond_1
    iget-object v0, v13, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    #@55
    move-object/from16 v17, v0

    #@57
    move-object/from16 v0, v17

    #@59
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    move-result-object v17

    #@5d
    check-cast v17, Ljava/util/List;

    #@5f
    iget-object v0, v13, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    #@61
    move-object/from16 v20, v0

    #@63
    move-object/from16 v0, v17

    #@65
    move-object/from16 v1, v20

    #@67
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6a
    goto :goto_1

    #@6b
    .line 147
    .end local v13    # "syncAdapter":Landroid/content/SyncAdapterType;
    :cond_2
    new-instance v12, Lorg/json/JSONObject;

    #@6d
    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    #@70
    .line 148
    .local v12, "backupJSON":Lorg/json/JSONObject;
    const-string/jumbo v17, "version"

    #@73
    const/16 v18, 0x1

    #@75
    move-object/from16 v0, v17

    #@77
    move/from16 v1, v18

    #@79
    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@7c
    .line 149
    const-string/jumbo v17, "masterSyncEnabled"

    #@7f
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    #@82
    move-result v18

    #@83
    move-object/from16 v0, v17

    #@85
    move/from16 v1, v18

    #@87
    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    #@8a
    .line 151
    new-instance v4, Lorg/json/JSONArray;

    #@8c
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    #@8f
    .line 152
    .local v4, "accountJSONArray":Lorg/json/JSONArray;
    const/16 v17, 0x0

    #@91
    array-length v0, v6

    #@92
    move/from16 v18, v0

    #@94
    :goto_2
    move/from16 v0, v17

    #@96
    move/from16 v1, v18

    #@98
    if-ge v0, v1, :cond_6

    #@9a
    aget-object v2, v6, v17

    #@9c
    .line 153
    .local v2, "account":Landroid/accounts/Account;
    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@9e
    move-object/from16 v19, v0

    #@a0
    move-object/from16 v0, v19

    #@a2
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a5
    move-result-object v7

    #@a6
    check-cast v7, Ljava/util/List;

    #@a8
    .line 157
    .local v7, "authorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_3

    #@aa
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    #@ad
    move-result v19

    #@ae
    if-eqz v19, :cond_4

    #@b0
    .line 152
    :cond_3
    :goto_3
    add-int/lit8 v17, v17, 0x1

    #@b2
    goto :goto_2

    #@b3
    .line 161
    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    #@b5
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    #@b8
    .line 162
    .local v3, "accountJSON":Lorg/json/JSONObject;
    const-string/jumbo v19, "name"

    #@bb
    iget-object v0, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@bd
    move-object/from16 v20, v0

    #@bf
    move-object/from16 v0, v19

    #@c1
    move-object/from16 v1, v20

    #@c3
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@c6
    .line 163
    const-string/jumbo v19, "type"

    #@c9
    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@cb
    move-object/from16 v20, v0

    #@cd
    move-object/from16 v0, v19

    #@cf
    move-object/from16 v1, v20

    #@d1
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@d4
    .line 166
    new-instance v8, Lorg/json/JSONArray;

    #@d6
    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    #@d9
    .line 167
    .local v8, "authoritiesJSONArray":Lorg/json/JSONArray;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@dc
    move-result-object v10

    #@dd
    .local v10, "authority$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@e0
    move-result v19

    #@e1
    if-eqz v19, :cond_5

    #@e3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e6
    move-result-object v9

    #@e7
    check-cast v9, Ljava/lang/String;

    #@e9
    .line 168
    .local v9, "authority":Ljava/lang/String;
    invoke-static {v2, v9}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    #@ec
    move-result v16

    #@ed
    .line 169
    .local v16, "syncState":I
    invoke-static {v2, v9}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    #@f0
    move-result v15

    #@f1
    .line 171
    .local v15, "syncEnabled":Z
    new-instance v11, Lorg/json/JSONObject;

    #@f3
    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    #@f6
    .line 172
    .local v11, "authorityJSON":Lorg/json/JSONObject;
    const-string/jumbo v19, "name"

    #@f9
    move-object/from16 v0, v19

    #@fb
    invoke-virtual {v11, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@fe
    .line 173
    const-string/jumbo v19, "syncState"

    #@101
    move-object/from16 v0, v19

    #@103
    move/from16 v1, v16

    #@105
    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@108
    .line 174
    const-string/jumbo v19, "syncEnabled"

    #@10b
    move-object/from16 v0, v19

    #@10d
    invoke-virtual {v11, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    #@110
    .line 175
    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@113
    goto :goto_4

    #@114
    .line 177
    .end local v9    # "authority":Ljava/lang/String;
    .end local v11    # "authorityJSON":Lorg/json/JSONObject;
    .end local v15    # "syncEnabled":Z
    .end local v16    # "syncState":I
    :cond_5
    const-string/jumbo v19, "authorities"

    #@117
    move-object/from16 v0, v19

    #@119
    invoke-virtual {v3, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@11c
    .line 179
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@11f
    goto :goto_3

    #@120
    .line 181
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v3    # "accountJSON":Lorg/json/JSONObject;
    .end local v7    # "authorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "authoritiesJSONArray":Lorg/json/JSONArray;
    .end local v10    # "authority$iterator":Ljava/util/Iterator;
    :cond_6
    const-string/jumbo v17, "accounts"

    #@123
    move-object/from16 v0, v17

    #@125
    invoke-virtual {v12, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@128
    .line 183
    return-object v12
.end method

.method private writeNewMd5Checksum(Landroid/os/ParcelFileDescriptor;[B)V
    .locals 4
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "md5Checksum"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 221
    new-instance v0, Ljava/io/DataOutputStream;

    #@2
    .line 222
    new-instance v1, Ljava/io/BufferedOutputStream;

    #@4
    new-instance v2, Ljava/io/FileOutputStream;

    #@6
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@9
    move-result-object v3

    #@a
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@d
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@10
    .line 221
    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@13
    .line 224
    .local v0, "dataOutput":Ljava/io/DataOutputStream;
    const/4 v1, 0x1

    #@14
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@17
    .line 225
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write([B)V

    #@1a
    .line 220
    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 9
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "output"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 97
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->serializeAccountSyncSettingsToJSON()Lorg/json/JSONObject;

    #@3
    move-result-object v1

    #@4
    .line 104
    .local v1, "dataJSON":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    const-string/jumbo v7, "UTF-8"

    #@b
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@e
    move-result-object v0

    #@f
    .line 105
    .local v0, "dataBytes":[B
    invoke-direct {p0, p1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->readOldMd5Checksum(Landroid/os/ParcelFileDescriptor;)[B

    #@12
    move-result-object v5

    #@13
    .line 106
    .local v5, "oldMd5Checksum":[B
    invoke-direct {p0, v0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->generateMd5Checksum([B)[B

    #@16
    move-result-object v4

    #@17
    .line 107
    .local v4, "newMd5Checksum":[B
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    #@1a
    move-result v6

    #@1b
    if-nez v6, :cond_0

    #@1d
    .line 108
    array-length v2, v0

    #@1e
    .line 109
    .local v2, "dataSize":I
    const-string/jumbo v6, "account_data"

    #@21
    invoke-virtual {p2, v6, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    #@24
    .line 110
    invoke-virtual {p2, v0, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    #@27
    .line 112
    const-string/jumbo v6, "AccountSyncSettingsBackupHelper"

    #@2a
    const-string/jumbo v7, "Backup successful."

    #@2d
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 117
    .end local v2    # "dataSize":I
    :goto_0
    invoke-direct {p0, p3, v4}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->writeNewMd5Checksum(Landroid/os/ParcelFileDescriptor;[B)V

    #@33
    .line 95
    .end local v0    # "dataBytes":[B
    .end local v1    # "dataJSON":Lorg/json/JSONObject;
    .end local v4    # "newMd5Checksum":[B
    .end local v5    # "oldMd5Checksum":[B
    :goto_1
    return-void

    #@34
    .line 114
    .restart local v0    # "dataBytes":[B
    .restart local v1    # "dataJSON":Lorg/json/JSONObject;
    .restart local v4    # "newMd5Checksum":[B
    .restart local v5    # "oldMd5Checksum":[B
    :cond_0
    const-string/jumbo v6, "AccountSyncSettingsBackupHelper"

    #@37
    const-string/jumbo v7, "Old and new MD5 checksums match. Skipping backup."

    #@3a
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    goto :goto_0

    #@3e
    .line 118
    .end local v0    # "dataBytes":[B
    .end local v1    # "dataJSON":Lorg/json/JSONObject;
    .end local v4    # "newMd5Checksum":[B
    .end local v5    # "oldMd5Checksum":[B
    :catch_0
    move-exception v3

    #@3f
    .line 119
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "AccountSyncSettingsBackupHelper"

    #@42
    new-instance v7, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v8, "Couldn\'t backup account sync settings\n"

    #@4a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v7

    #@56
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    goto :goto_1
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 10
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    #@0
    .prologue
    .line 246
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    #@3
    move-result v7

    #@4
    new-array v2, v7, [B

    #@6
    .line 249
    .local v2, "dataBytes":[B
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/app/backup/BackupDataInputStream;->read([B)I

    #@9
    .line 250
    new-instance v4, Ljava/lang/String;

    #@b
    const-string/jumbo v7, "UTF-8"

    #@e
    invoke-direct {v4, v2, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@11
    .line 253
    .local v4, "dataString":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    #@13
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@16
    .line 254
    .local v3, "dataJSON":Lorg/json/JSONObject;
    const-string/jumbo v7, "masterSyncEnabled"

    #@19
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    #@1c
    move-result v6

    #@1d
    .line 255
    .local v6, "masterSyncEnabled":Z
    const-string/jumbo v7, "accounts"

    #@20
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@23
    move-result-object v0

    #@24
    .line 257
    .local v0, "accountJSONArray":Lorg/json/JSONArray;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    #@27
    move-result v1

    #@28
    .line 258
    .local v1, "currentMasterSyncEnabled":Z
    if-eqz v1, :cond_0

    #@2a
    .line 260
    const/4 v7, 0x0

    #@2b
    invoke-static {v7}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 264
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreFromJsonArray(Lorg/json/JSONArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    .line 267
    :try_start_2
    invoke-static {v6}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    #@34
    .line 269
    const-string/jumbo v7, "AccountSyncSettingsBackupHelper"

    #@37
    const-string/jumbo v8, "Restore successful."

    #@3a
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 245
    .end local v0    # "accountJSONArray":Lorg/json/JSONArray;
    .end local v1    # "currentMasterSyncEnabled":Z
    .end local v3    # "dataJSON":Lorg/json/JSONObject;
    .end local v4    # "dataString":Ljava/lang/String;
    .end local v6    # "masterSyncEnabled":Z
    :goto_0
    return-void

    #@3e
    .line 265
    .restart local v0    # "accountJSONArray":Lorg/json/JSONArray;
    .restart local v1    # "currentMasterSyncEnabled":Z
    .restart local v3    # "dataJSON":Lorg/json/JSONObject;
    .restart local v4    # "dataString":Ljava/lang/String;
    .restart local v6    # "masterSyncEnabled":Z
    :catchall_0
    move-exception v7

    #@3f
    .line 267
    invoke-static {v6}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    #@42
    .line 265
    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    #@43
    .line 270
    .end local v0    # "accountJSONArray":Lorg/json/JSONArray;
    .end local v1    # "currentMasterSyncEnabled":Z
    .end local v3    # "dataJSON":Lorg/json/JSONObject;
    .end local v4    # "dataString":Ljava/lang/String;
    .end local v6    # "masterSyncEnabled":Z
    :catch_0
    move-exception v5

    #@44
    .line 271
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "AccountSyncSettingsBackupHelper"

    #@47
    new-instance v8, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v9, "Couldn\'t restore account sync settings\n"

    #@4f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v8

    #@53
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v8

    #@57
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v8

    #@5b
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    goto :goto_0
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 422
    return-void
.end method
