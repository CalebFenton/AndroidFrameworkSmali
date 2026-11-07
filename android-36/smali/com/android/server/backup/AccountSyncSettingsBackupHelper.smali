.class public Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
.super Landroid/app/backup/BackupHelperWithLogger;
.source "AccountSyncSettingsBackupHelper.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist JSON_FORMAT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final blacklist JSON_FORMAT_HEADER_KEY:Ljava/lang/String; = "account_data"

.field private static final blacklist JSON_FORMAT_VERSION:I = 0x1

.field private static final blacklist KEY_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final blacklist KEY_ACCOUNT_AUTHORITIES:Ljava/lang/String; = "authorities"

.field private static final blacklist KEY_ACCOUNT_NAME:Ljava/lang/String; = "name"

.field private static final blacklist KEY_ACCOUNT_TYPE:Ljava/lang/String; = "type"

.field private static final blacklist KEY_AUTHORITY_NAME:Ljava/lang/String; = "name"

.field private static final blacklist KEY_AUTHORITY_SYNC_ENABLED:Ljava/lang/String; = "syncEnabled"

.field private static final blacklist KEY_AUTHORITY_SYNC_STATE:Ljava/lang/String; = "syncState"

.field private static final blacklist KEY_MASTER_SYNC_ENABLED:Ljava/lang/String; = "masterSyncEnabled"

.field private static final blacklist KEY_VERSION:Ljava/lang/String; = "version"

.field private static final blacklist MD5_BYTE_SIZE:I = 0x10

.field private static final blacklist STASH_FILE:Ljava/lang/String; = "/backup/unadded_account_syncsettings.json"

.field private static final blacklist STATE_VERSION:I = 0x1

.field private static final blacklist SYNC_REQUEST_LATCH_TIMEOUT_SECONDS:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "AccountSyncSettingsBackupHelper"


# instance fields
.field private blacklist mAccountManager:Landroid/accounts/AccountManager;

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 88
    invoke-direct {p0}, Landroid/app/backup/BackupHelperWithLogger;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    .line 90
    iget-object v0, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    .line 92
    iput p2, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mUserId:I

    .line 93
    return-void
.end method

.method public static blacklist accountAdded(Landroid/content/Context;I)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 356
    new-instance v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;I)V

    .line 358
    .local v0, "helper":Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
    invoke-direct {v0, p1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->accountAddedInternal(I)V

    .line 359
    return-void
.end method

.method private blacklist accountAddedInternal(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 331
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {p1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->getStashFile(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_9} :catch_35
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_33

    .line 332
    .local v0, "fIn":Ljava/io/FileInputStream;
    :try_start_9
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 333
    .local v1, "in":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_29

    .line 334
    .end local v1    # "in":Ljava/io/DataInputStream;
    .local v2, "jsonString":Ljava/lang/String;
    :try_start_12
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_15} :catch_35
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_33

    .line 341
    .end local v0    # "fIn":Ljava/io/FileInputStream;
    nop

    .line 344
    :try_start_16
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, "unaddedAccountsJSONArray":Lorg/json/JSONArray;
    invoke-direct {p0, v0, p1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreFromJsonArray(Lorg/json/JSONArray;I)V
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_1e} :catch_1f

    .line 349
    .end local v0    # "unaddedAccountsJSONArray":Lorg/json/JSONArray;
    goto :goto_28

    .line 346
    :catch_1f
    move-exception v0

    .line 348
    .local v0, "jse":Lorg/json/JSONException;
    const-string v1, "AccountSyncSettingsBackupHelper"

    const-string/jumbo v3, "there was an error with the stashed sync settings"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    .end local v0    # "jse":Lorg/json/JSONException;
    :goto_28
    return-void

    .line 331
    .end local v2    # "jsonString":Ljava/lang/String;
    .local v0, "fIn":Ljava/io/FileInputStream;
    :catchall_29
    move-exception v1

    :try_start_2a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v2

    :try_start_2f
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
    .end local p1    # "userId":I
    :goto_32
    throw v1
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_33} :catch_35
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_33} :catch_33

    .line 338
    .end local v0    # "fIn":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
    .restart local p1    # "userId":I
    :catch_33
    move-exception v0

    .line 340
    .local v0, "ioe":Ljava/io/IOException;
    return-void

    .line 334
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_35
    move-exception v0

    .line 337
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    return-void
.end method

.method private blacklist generateMd5Checksum([B)[B
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 239
    if-nez p1, :cond_4

    .line 240
    const/4 v0, 0x0

    return-object v0

    .line 243
    :cond_4
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 244
    .local v0, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1
.end method

.method private blacklist getAccounts(I)Ljava/util/Set;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    .line 368
    .local v0, "accounts":[Landroid/accounts/Account;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 369
    .local v1, "accountHashSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_17

    aget-object v4, v0, v3

    .line 370
    .local v4, "account":Landroid/accounts/Account;
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 369
    .end local v4    # "account":Landroid/accounts/Account;
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 372
    :cond_17
    return-object v1
.end method

.method private static blacklist getStashFile(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .line 438
    if-nez p0, :cond_7

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_b

    .line 439
    :cond_7
    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v0

    :goto_b
    nop

    .line 440
    .local v0, "baseDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/backup/unadded_account_syncsettings.json"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private blacklist readOldMd5Checksum(Landroid/os/ParcelFileDescriptor;)[B
    .registers 9
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    .line 199
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 201
    .local v0, "dataInput":Ljava/io/DataInputStream;
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 203
    .local v2, "oldMd5Checksum":[B
    :try_start_12
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 204
    .local v3, "stateVersion":I
    const/4 v4, 0x1

    if-gt v3, v4, :cond_26

    .line 208
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    if-ge v4, v1, :cond_25

    .line 209
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    aput-byte v5, v2, v4

    .line 208
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .end local v4    # "i":I
    :cond_25
    goto :goto_4e

    .line 212
    :cond_26
    const-string v1, "AccountSyncSettingsBackupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Backup state version is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (support only up to version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_4e} :catch_4f

    .line 217
    .end local v3    # "stateVersion":I
    :goto_4e
    goto :goto_50

    .line 215
    :catch_4f
    move-exception v1

    .line 219
    :goto_50
    return-object v2
.end method

.method private blacklist restoreExistingAccountSyncSettingsFromJSON(Lorg/json/JSONObject;I)V
    .registers 14
    .param p1, "accountJSON"    # Lorg/json/JSONObject;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 407
    const-string v0, "authorities"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 408
    .local v0, "authorities":Lorg/json/JSONArray;
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "accountName":Ljava/lang/String;
    const-string/jumbo v3, "type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, "accountType":Ljava/lang/String;
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .local v4, "account":Landroid/accounts/Account;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_19
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_48

    .line 413
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 414
    .local v6, "authority":Lorg/json/JSONObject;
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 415
    .local v7, "authorityName":Ljava/lang/String;
    const-string/jumbo v8, "syncEnabled"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 416
    .local v8, "wasSyncEnabled":Z
    const-string/jumbo v9, "syncState"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 418
    .local v9, "wasSyncable":I
    invoke-static {v4, v7, v8, p2}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 421
    if-nez v8, :cond_45

    .line 422
    nop

    .line 425
    if-nez v9, :cond_41

    .line 426
    const/4 v10, 0x0

    goto :goto_42

    :cond_41
    const/4 v10, 0x2

    .line 422
    :goto_42
    invoke-static {v4, v7, v10, p2}, Landroid/content/ContentResolver;->setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 412
    .end local v6    # "authority":Lorg/json/JSONObject;
    .end local v7    # "authorityName":Ljava/lang/String;
    .end local v8    # "wasSyncEnabled":Z
    .end local v9    # "wasSyncable":I
    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 430
    .end local v5    # "i":I
    :cond_48
    return-void
.end method

.method private blacklist restoreFromJsonArray(Lorg/json/JSONArray;I)V
    .registers 11
    .param p1, "accountJSONArray"    # Lorg/json/JSONArray;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 284
    invoke-direct {p0, p2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->getAccounts(I)Ljava/util/Set;

    move-result-object v0

    .line 285
    .local v0, "currentAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 286
    .local v1, "unaddedAccountsJSONArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3d

    .line 287
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 288
    .local v3, "accountJSON":Lorg/json/JSONObject;
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "accountName":Ljava/lang/String;
    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 291
    .local v5, "accountType":Ljava/lang/String;
    const/4 v6, 0x0

    .line 293
    .local v6, "account":Landroid/accounts/Account;
    :try_start_24
    new-instance v7, Landroid/accounts/Account;

    invoke-direct {v7, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_29} :catch_38

    .line 296
    .end local v6    # "account":Landroid/accounts/Account;
    .local v7, "account":Landroid/accounts/Account;
    nop

    .line 300
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 302
    invoke-direct {p0, v3, p2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreExistingAccountSyncSettingsFromJSON(Lorg/json/JSONObject;I)V

    goto :goto_3a

    .line 304
    :cond_34
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3a

    .line 294
    .end local v7    # "account":Landroid/accounts/Account;
    .restart local v6    # "account":Landroid/accounts/Account;
    :catch_38
    move-exception v7

    .line 295
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    nop

    .line 286
    .end local v3    # "accountJSON":Lorg/json/JSONObject;
    .end local v4    # "accountName":Ljava/lang/String;
    .end local v5    # "accountType":Ljava/lang/String;
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 308
    .end local v2    # "i":I
    :cond_3d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_70

    .line 309
    :try_start_43
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-static {p2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->getStashFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4c} :catch_66

    .line 310
    .local v2, "fOutput":Ljava/io/FileOutputStream;
    :try_start_4c
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "jsonString":Ljava/lang/String;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 312
    .local v4, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_5c

    .line 313
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v4    # "out":Ljava/io/DataOutputStream;
    :try_start_58
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_66

    goto :goto_6f

    .line 309
    :catchall_5c
    move-exception v3

    :try_start_5d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_65

    :catchall_61
    move-exception v4

    :try_start_62
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "currentAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    .end local v1    # "unaddedAccountsJSONArray":Lorg/json/JSONArray;
    .end local p0    # "this":Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
    .end local p1    # "accountJSONArray":Lorg/json/JSONArray;
    .end local p2    # "userId":I
    :goto_65
    throw v3
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_66} :catch_66

    .line 313
    .end local v2    # "fOutput":Ljava/io/FileOutputStream;
    .restart local v0    # "currentAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    .restart local v1    # "unaddedAccountsJSONArray":Lorg/json/JSONArray;
    .restart local p0    # "this":Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
    .restart local p1    # "accountJSONArray":Lorg/json/JSONArray;
    .restart local p2    # "userId":I
    :catch_66
    move-exception v2

    .line 315
    .local v2, "ioe":Ljava/io/IOException;
    const-string v3, "AccountSyncSettingsBackupHelper"

    const-string/jumbo v4, "unable to write the sync settings to the stash file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_6f
    goto :goto_7d

    .line 318
    :cond_70
    invoke-static {p2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->getStashFile(I)Ljava/io/File;

    move-result-object v2

    .line 319
    .local v2, "stashFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 320
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 323
    .end local v2    # "stashFile":Ljava/io/File;
    :cond_7d
    :goto_7d
    return-void
.end method

.method private blacklist serializeAccountSyncSettingsToJSON(I)Lorg/json/JSONObject;
    .registers 21
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 132
    move/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v2, v0}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v2

    .line 133
    .local v2, "accounts":[Landroid/accounts/Account;
    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v3

    .line 137
    .local v3, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v4, "accountTypeToAuthorities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_16
    if-ge v7, v5, :cond_43

    aget-object v8, v3, v7

    .line 141
    .local v8, "syncAdapter":Landroid/content/SyncAdapterType;
    invoke-virtual {v8}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v9

    if-nez v9, :cond_21

    .line 142
    goto :goto_40

    .line 144
    :cond_21
    iget-object v9, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_33

    .line 145
    iget-object v9, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_33
    iget-object v9, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    iget-object v10, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v8    # "syncAdapter":Landroid/content/SyncAdapterType;
    :goto_40
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 151
    :cond_43
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 152
    .local v5, "backupJSON":Lorg/json/JSONObject;
    const-string/jumbo v7, "version"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 153
    const-string v7, "masterSyncEnabled"

    invoke-static {v0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 156
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 157
    .local v7, "accountJSONArray":Lorg/json/JSONArray;
    array-length v8, v2

    :goto_5e
    if-ge v6, v8, :cond_ed

    aget-object v9, v2, v6

    .line 158
    .local v9, "account":Landroid/accounts/Account;
    iget-object v10, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 162
    .local v10, "authorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_dd

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_77

    .line 163
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_e1

    .line 166
    :cond_77
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 167
    .local v11, "accountJSON":Lorg/json/JSONObject;
    iget-object v12, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v13, "name"

    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string/jumbo v12, "type"

    iget-object v14, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 172
    .local v12, "authoritiesJSONArray":Lorg/json/JSONArray;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_94
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 173
    .local v15, "authority":Ljava/lang/String;
    invoke-static {v9, v15, v0}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v1

    .line 174
    .local v1, "syncState":I
    move-object/from16 v16, v2

    .end local v2    # "accounts":[Landroid/accounts/Account;
    .local v16, "accounts":[Landroid/accounts/Account;
    invoke-static {v9, v15, v0}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v2

    .line 177
    .local v2, "syncEnabled":Z
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v18, v17

    .line 178
    .local v18, "authorityJSON":Lorg/json/JSONObject;
    move-object/from16 v0, v18

    .end local v18    # "authorityJSON":Lorg/json/JSONObject;
    .local v0, "authorityJSON":Lorg/json/JSONObject;
    invoke-virtual {v0, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    move-object/from16 v17, v3

    .end local v3    # "syncAdapters":[Landroid/content/SyncAdapterType;
    .local v17, "syncAdapters":[Landroid/content/SyncAdapterType;
    const-string/jumbo v3, "syncState"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    const-string/jumbo v3, "syncEnabled"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 181
    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 182
    .end local v0    # "authorityJSON":Lorg/json/JSONObject;
    .end local v1    # "syncState":I
    .end local v2    # "syncEnabled":Z
    .end local v15    # "authority":Ljava/lang/String;
    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto :goto_94

    .line 183
    .end local v16    # "accounts":[Landroid/accounts/Account;
    .end local v17    # "syncAdapters":[Landroid/content/SyncAdapterType;
    .local v2, "accounts":[Landroid/accounts/Account;
    .restart local v3    # "syncAdapters":[Landroid/content/SyncAdapterType;
    :cond_d0
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "accounts":[Landroid/accounts/Account;
    .end local v3    # "syncAdapters":[Landroid/content/SyncAdapterType;
    .restart local v16    # "accounts":[Landroid/accounts/Account;
    .restart local v17    # "syncAdapters":[Landroid/content/SyncAdapterType;
    const-string v0, "authorities"

    invoke-virtual {v11, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_e1

    .line 162
    .end local v11    # "accountJSON":Lorg/json/JSONObject;
    .end local v12    # "authoritiesJSONArray":Lorg/json/JSONArray;
    .end local v16    # "accounts":[Landroid/accounts/Account;
    .end local v17    # "syncAdapters":[Landroid/content/SyncAdapterType;
    .restart local v2    # "accounts":[Landroid/accounts/Account;
    .restart local v3    # "syncAdapters":[Landroid/content/SyncAdapterType;
    :cond_dd
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 157
    .end local v2    # "accounts":[Landroid/accounts/Account;
    .end local v3    # "syncAdapters":[Landroid/content/SyncAdapterType;
    .end local v9    # "account":Landroid/accounts/Account;
    .end local v10    # "authorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "accounts":[Landroid/accounts/Account;
    .restart local v17    # "syncAdapters":[Landroid/content/SyncAdapterType;
    :goto_e1
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_5e

    .line 187
    .end local v16    # "accounts":[Landroid/accounts/Account;
    .end local v17    # "syncAdapters":[Landroid/content/SyncAdapterType;
    .restart local v2    # "accounts":[Landroid/accounts/Account;
    .restart local v3    # "syncAdapters":[Landroid/content/SyncAdapterType;
    :cond_ed
    const-string v0, "accounts"

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    return-object v5
.end method

.method private blacklist writeNewMd5Checksum(Landroid/os/ParcelFileDescriptor;[B)V
    .registers 7
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "md5Checksum"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    .line 228
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 230
    .local v0, "dataOutput":Ljava/io/DataOutputStream;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 231
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 236
    return-void
.end method


# virtual methods
.method public whitelist performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 11
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "output"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .line 102
    const-string v0, "AccountSyncSettingsBackupHelper"

    :try_start_2
    iget v1, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->serializeAccountSyncSettingsToJSON(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 109
    .local v1, "dataJSON":Lorg/json/JSONObject;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 110
    .local v2, "dataBytes":[B
    invoke-direct {p0, p1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->readOldMd5Checksum(Landroid/os/ParcelFileDescriptor;)[B

    move-result-object v3

    .line 111
    .local v3, "oldMd5Checksum":[B
    invoke-direct {p0, v2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->generateMd5Checksum([B)[B

    move-result-object v4

    .line 112
    .local v4, "newMd5Checksum":[B
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_30

    .line 113
    array-length v5, v2

    .line 114
    .local v5, "dataSize":I
    const-string v6, "account_data"

    invoke-virtual {p2, v6, v5}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 115
    invoke-virtual {p2, v2, v5}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 117
    const-string v6, "Backup successful."

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    nop

    .end local v5    # "dataSize":I
    goto :goto_35

    .line 119
    :cond_30
    const-string v5, "Old and new MD5 checksums match. Skipping backup."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_35
    invoke-direct {p0, p3, v4}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->writeNewMd5Checksum(Landroid/os/ParcelFileDescriptor;[B)V
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_38} :catch_39
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_38} :catch_39
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_38} :catch_39

    .line 125
    .end local v1    # "dataJSON":Lorg/json/JSONObject;
    .end local v2    # "dataBytes":[B
    .end local v3    # "oldMd5Checksum":[B
    .end local v4    # "newMd5Checksum":[B
    goto :goto_50

    .line 123
    :catch_39
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t backup account sync settings\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_50
    return-void
.end method

.method public whitelist restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .registers 11
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .line 252
    const-string v0, "AccountSyncSettingsBackupHelper"

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 255
    .local v1, "dataBytes":[B
    :try_start_8
    invoke-virtual {p1, v1}, Landroid/app/backup/BackupDataInputStream;->read([B)I

    .line 256
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 259
    .local v2, "dataString":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 260
    .local v3, "dataJSON":Lorg/json/JSONObject;
    const-string v4, "masterSyncEnabled"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 261
    .local v4, "masterSyncEnabled":Z
    const-string v5, "accounts"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 263
    .local v5, "accountJSONArray":Lorg/json/JSONArray;
    iget v6, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mUserId:I

    invoke-static {v6}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v6

    .line 265
    .local v6, "currentMasterSyncEnabled":Z
    if-eqz v6, :cond_31

    .line 267
    iget v7, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mUserId:I

    const/4 v8, 0x0

    invoke-static {v8, v7}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_31} :catch_4b
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_31} :catch_4b

    .line 271
    :cond_31
    :try_start_31
    iget v7, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mUserId:I

    invoke-direct {p0, v5, v7}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreFromJsonArray(Lorg/json/JSONArray;I)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_43

    .line 274
    :try_start_36
    iget v7, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mUserId:I

    invoke-static {v4, v7}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 275
    nop

    .line 276
    const-string v7, "Restore successful."

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    nop

    .end local v2    # "dataString":Ljava/lang/String;
    .end local v3    # "dataJSON":Lorg/json/JSONObject;
    .end local v4    # "masterSyncEnabled":Z
    .end local v5    # "accountJSONArray":Lorg/json/JSONArray;
    .end local v6    # "currentMasterSyncEnabled":Z
    goto :goto_62

    .line 274
    .restart local v2    # "dataString":Ljava/lang/String;
    .restart local v3    # "dataJSON":Lorg/json/JSONObject;
    .restart local v4    # "masterSyncEnabled":Z
    .restart local v5    # "accountJSONArray":Lorg/json/JSONArray;
    .restart local v6    # "currentMasterSyncEnabled":Z
    :catchall_43
    move-exception v7

    iget v8, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mUserId:I

    invoke-static {v4, v8}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 275
    nop

    .end local v1    # "dataBytes":[B
    .end local p0    # "this":Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
    .end local p1    # "data":Landroid/app/backup/BackupDataInputStream;
    throw v7
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_4b} :catch_4b
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_4b} :catch_4b

    .line 277
    .end local v2    # "dataString":Ljava/lang/String;
    .end local v3    # "dataJSON":Lorg/json/JSONObject;
    .end local v4    # "masterSyncEnabled":Z
    .end local v5    # "accountJSONArray":Lorg/json/JSONArray;
    .end local v6    # "currentMasterSyncEnabled":Z
    .restart local v1    # "dataBytes":[B
    .restart local p0    # "this":Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
    .restart local p1    # "data":Landroid/app/backup/BackupDataInputStream;
    :catch_4b
    move-exception v2

    .line 278
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t restore account sync settings\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_62
    return-void
.end method

.method public whitelist writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;

    .line 435
    return-void
.end method
