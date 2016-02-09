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

.field private static final STATE_VERSION:I = 0x1

.field private static final SYNC_REQUEST_LATCH_TIMEOUT_SECONDS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AccountSyncSettingsBackupHelper"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    iput-object p1, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    #@5
    .line 82
    iget-object v0, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    #@7
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    #@d
    .line 80
    return-void
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
    .line 226
    if-nez p1, :cond_0

    #@3
    .line 227
    return-object v1

    #@4
    .line 230
    :cond_0
    const-string/jumbo v1, "MD5"

    #@7
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@a
    move-result-object v0

    #@b
    .line 231
    .local v0, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method private getAccountsHashSet()Ljava/util/HashSet;
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
    .line 292
    iget-object v3, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    #@2
    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    #@5
    move-result-object v2

    #@6
    .line 293
    .local v2, "accounts":[Landroid/accounts/Account;
    new-instance v1, Ljava/util/HashSet;

    #@8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@b
    .line 294
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
    .line 295
    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@14
    .line 294
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 297
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
    .line 187
    new-instance v0, Ljava/io/DataInputStream;

    #@5
    .line 188
    new-instance v5, Ljava/io/FileInputStream;

    #@7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@a
    move-result-object v6

    #@b
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@e
    .line 187
    invoke-direct {v0, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@11
    .line 190
    .local v0, "dataInput":Ljava/io/DataInputStream;
    new-array v3, v8, [B

    #@13
    .line 192
    .local v3, "oldMd5Checksum":[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    #@16
    move-result v4

    #@17
    .line 193
    .local v4, "stateVersion":I
    if-gt v4, v7, :cond_0

    #@19
    .line 197
    const/4 v2, 0x0

    #@1a
    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_1

    #@1c
    .line 198
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    #@1f
    move-result v5

    #@20
    aput-byte v5, v3, v2

    #@22
    .line 197
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 201
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
    .line 202
    const-string/jumbo v7, " (support only up to version "

    #@3b
    .line 201
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    .line 202
    const/4 v7, 0x1

    #@40
    .line 201
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    .line 202
    const-string/jumbo v7, ")"

    #@47
    .line 201
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
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@52
    .line 207
    :cond_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    #@55
    .line 209
    .end local v4    # "stateVersion":I
    :goto_1
    return-object v3

    #@56
    .line 204
    :catch_0
    move-exception v1

    #@57
    .line 207
    .local v1, "eof":Ljava/io/EOFException;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    #@5a
    goto :goto_1

    #@5b
    .line 206
    .end local v1    # "eof":Ljava/io/EOFException;
    :catchall_0
    move-exception v5

    #@5c
    .line 207
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    #@5f
    .line 206
    throw v5
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
    .line 332
    const-string/jumbo v9, "authorities"

    #@4
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@7
    move-result-object v3

    #@8
    .line 333
    .local v3, "authorities":Lorg/json/JSONArray;
    const-string/jumbo v9, "name"

    #@b
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 334
    .local v1, "accountName":Ljava/lang/String;
    const-string/jumbo v9, "type"

    #@12
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 336
    .local v2, "accountType":Ljava/lang/String;
    new-instance v0, Landroid/accounts/Account;

    #@18
    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 337
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
    .line 338
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    check-cast v4, Lorg/json/JSONObject;

    #@28
    .line 339
    .local v4, "authority":Lorg/json/JSONObject;
    const-string/jumbo v9, "name"

    #@2b
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    .line 340
    .local v5, "authorityName":Ljava/lang/String;
    const-string/jumbo v9, "syncEnabled"

    #@32
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    #@35
    move-result v7

    #@36
    .line 341
    .local v7, "wasSyncEnabled":Z
    const-string/jumbo v9, "syncState"

    #@39
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    #@3c
    move-result v8

    #@3d
    .line 343
    .local v8, "wasSyncable":I
    invoke-static {v0, v5, v7, v10}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    #@40
    .line 346
    if-nez v7, :cond_0

    #@42
    .line 350
    if-nez v8, :cond_1

    #@44
    move v9, v10

    #@45
    .line 347
    :goto_1
    invoke-static {v0, v5, v9}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@48
    .line 337
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 351
    :cond_1
    const/4 v9, 0x2

    #@4c
    goto :goto_1

    #@4d
    .line 330
    .end local v4    # "authority":Lorg/json/JSONObject;
    .end local v5    # "authorityName":Ljava/lang/String;
    .end local v7    # "wasSyncEnabled":Z
    .end local v8    # "wasSyncable":I
    :cond_2
    return-void
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
    .line 122
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
    .line 124
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
    .line 123
    invoke-static/range {v17 .. v17}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    #@17
    move-result-object v14

    #@18
    .line 128
    .local v14, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v5, Ljava/util/HashMap;

    #@1a
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@1d
    .line 130
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
    .line 132
    .local v13, "syncAdapter":Landroid/content/SyncAdapterType;
    invoke-virtual {v13}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    #@2f
    move-result v17

    #@30
    if-nez v17, :cond_0

    #@32
    .line 130
    :goto_1
    add-int/lit8 v17, v18, 0x1

    #@34
    move/from16 v18, v17

    #@36
    goto :goto_0

    #@37
    .line 135
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
    .line 136
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
    .line 138
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
    .line 142
    .end local v13    # "syncAdapter":Landroid/content/SyncAdapterType;
    :cond_2
    new-instance v12, Lorg/json/JSONObject;

    #@6d
    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    #@70
    .line 143
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
    .line 144
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
    .line 146
    new-instance v4, Lorg/json/JSONArray;

    #@8c
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    #@8f
    .line 147
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
    .line 148
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
    .line 152
    .local v7, "authorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_3

    #@aa
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    #@ad
    move-result v19

    #@ae
    if-eqz v19, :cond_4

    #@b0
    .line 147
    :cond_3
    :goto_3
    add-int/lit8 v17, v17, 0x1

    #@b2
    goto :goto_2

    #@b3
    .line 156
    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    #@b5
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    #@b8
    .line 157
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
    .line 158
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
    .line 161
    new-instance v8, Lorg/json/JSONArray;

    #@d6
    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    #@d9
    .line 162
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
    .line 163
    .local v9, "authority":Ljava/lang/String;
    invoke-static {v2, v9}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    #@ec
    move-result v16

    #@ed
    .line 164
    .local v16, "syncState":I
    invoke-static {v2, v9}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    #@f0
    move-result v15

    #@f1
    .line 166
    .local v15, "syncEnabled":Z
    new-instance v11, Lorg/json/JSONObject;

    #@f3
    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    #@f6
    .line 167
    .local v11, "authorityJSON":Lorg/json/JSONObject;
    const-string/jumbo v19, "name"

    #@f9
    move-object/from16 v0, v19

    #@fb
    invoke-virtual {v11, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@fe
    .line 168
    const-string/jumbo v19, "syncState"

    #@101
    move-object/from16 v0, v19

    #@103
    move/from16 v1, v16

    #@105
    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@108
    .line 169
    const-string/jumbo v19, "syncEnabled"

    #@10b
    move-object/from16 v0, v19

    #@10d
    invoke-virtual {v11, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    #@110
    .line 170
    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@113
    goto :goto_4

    #@114
    .line 172
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
    .line 174
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@11f
    goto :goto_3

    #@120
    .line 176
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
    .line 178
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
    .line 217
    new-instance v0, Ljava/io/DataOutputStream;

    #@2
    .line 218
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
    .line 217
    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@13
    .line 220
    .local v0, "dataOutput":Ljava/io/DataOutputStream;
    const/4 v1, 0x1

    #@14
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@17
    .line 221
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write([B)V

    #@1a
    .line 222
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    #@1d
    .line 216
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
    .line 92
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->serializeAccountSyncSettingsToJSON()Lorg/json/JSONObject;

    #@3
    move-result-object v1

    #@4
    .line 99
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
    .line 100
    .local v0, "dataBytes":[B
    invoke-direct {p0, p1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->readOldMd5Checksum(Landroid/os/ParcelFileDescriptor;)[B

    #@12
    move-result-object v5

    #@13
    .line 101
    .local v5, "oldMd5Checksum":[B
    invoke-direct {p0, v0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->generateMd5Checksum([B)[B

    #@16
    move-result-object v4

    #@17
    .line 102
    .local v4, "newMd5Checksum":[B
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    #@1a
    move-result v6

    #@1b
    if-nez v6, :cond_0

    #@1d
    .line 103
    array-length v2, v0

    #@1e
    .line 104
    .local v2, "dataSize":I
    const-string/jumbo v6, "account_data"

    #@21
    invoke-virtual {p2, v6, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    #@24
    .line 105
    invoke-virtual {p2, v0, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    #@27
    .line 107
    const-string/jumbo v6, "AccountSyncSettingsBackupHelper"

    #@2a
    const-string/jumbo v7, "Backup successful."

    #@2d
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 112
    .end local v2    # "dataSize":I
    :goto_0
    invoke-direct {p0, p3, v4}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->writeNewMd5Checksum(Landroid/os/ParcelFileDescriptor;[B)V

    #@33
    .line 90
    .end local v0    # "dataBytes":[B
    .end local v1    # "dataJSON":Lorg/json/JSONObject;
    .end local v4    # "newMd5Checksum":[B
    .end local v5    # "oldMd5Checksum":[B
    :goto_1
    return-void

    #@34
    .line 109
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
    .line 113
    .end local v0    # "dataBytes":[B
    .end local v1    # "dataJSON":Lorg/json/JSONObject;
    .end local v4    # "newMd5Checksum":[B
    .end local v5    # "oldMd5Checksum":[B
    :catch_0
    move-exception v3

    #@3f
    .line 114
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
    .locals 17
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    #@0
    .prologue
    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    #@3
    move-result v14

    #@4
    new-array v8, v14, [B

    #@6
    .line 242
    .local v8, "dataBytes":[B
    :try_start_0
    move-object/from16 v0, p1

    #@8
    invoke-virtual {v0, v8}, Landroid/app/backup/BackupDataInputStream;->read([B)I

    #@b
    .line 243
    new-instance v10, Ljava/lang/String;

    #@d
    const-string/jumbo v14, "UTF-8"

    #@10
    invoke-direct {v10, v8, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@13
    .line 246
    .local v10, "dataString":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    #@15
    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@18
    .line 247
    .local v9, "dataJSON":Lorg/json/JSONObject;
    const-string/jumbo v14, "masterSyncEnabled"

    #@1b
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    #@1e
    move-result v13

    #@1f
    .line 248
    .local v13, "masterSyncEnabled":Z
    const-string/jumbo v14, "accounts"

    #@22
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@25
    move-result-object v3

    #@26
    .line 250
    .local v3, "accountJSONArray":Lorg/json/JSONArray;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    #@29
    move-result v7

    #@2a
    .line 251
    .local v7, "currentMasterSyncEnabled":Z
    if-eqz v7, :cond_0

    #@2c
    .line 253
    const/4 v14, 0x0

    #@2d
    invoke-static {v14}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 257
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->getAccountsHashSet()Ljava/util/HashSet;

    #@33
    move-result-object v6

    #@34
    .line 258
    .local v6, "currentAccounts":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/accounts/Account;>;"
    const/4 v12, 0x0

    #@35
    .local v12, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    #@38
    move-result v14

    #@39
    if-ge v12, v14, :cond_2

    #@3b
    .line 259
    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v2

    #@3f
    check-cast v2, Lorg/json/JSONObject;

    #@41
    .line 260
    .local v2, "accountJSON":Lorg/json/JSONObject;
    const-string/jumbo v14, "name"

    #@44
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    .line 261
    .local v4, "accountName":Ljava/lang/String;
    const-string/jumbo v14, "type"

    #@4b
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    .line 263
    .local v5, "accountType":Ljava/lang/String;
    new-instance v1, Landroid/accounts/Account;

    #@51
    invoke-direct {v1, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@54
    .line 267
    .local v1, "account":Landroid/accounts/Account;
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@57
    move-result v14

    #@58
    if-eqz v14, :cond_1

    #@5a
    .line 268
    move-object/from16 v0, p0

    #@5c
    invoke-direct {v0, v2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreExistingAccountSyncSettingsFromJSON(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5f
    .line 258
    :cond_1
    add-int/lit8 v12, v12, 0x1

    #@61
    goto :goto_0

    #@62
    .line 277
    .end local v1    # "account":Landroid/accounts/Account;
    .end local v2    # "accountJSON":Lorg/json/JSONObject;
    .end local v4    # "accountName":Ljava/lang/String;
    .end local v5    # "accountType":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-static {v13}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    #@65
    .line 280
    const-string/jumbo v14, "AccountSyncSettingsBackupHelper"

    #@68
    const-string/jumbo v15, "Restore successful."

    #@6b
    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 238
    .end local v3    # "accountJSONArray":Lorg/json/JSONArray;
    .end local v6    # "currentAccounts":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/accounts/Account;>;"
    .end local v7    # "currentMasterSyncEnabled":Z
    .end local v9    # "dataJSON":Lorg/json/JSONObject;
    .end local v10    # "dataString":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "masterSyncEnabled":Z
    :goto_1
    return-void

    #@6f
    .line 275
    .restart local v3    # "accountJSONArray":Lorg/json/JSONArray;
    .restart local v7    # "currentMasterSyncEnabled":Z
    .restart local v9    # "dataJSON":Lorg/json/JSONObject;
    .restart local v10    # "dataString":Ljava/lang/String;
    .restart local v13    # "masterSyncEnabled":Z
    :catchall_0
    move-exception v14

    #@70
    .line 277
    invoke-static {v13}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    #@73
    .line 275
    throw v14
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    #@74
    .line 281
    .end local v3    # "accountJSONArray":Lorg/json/JSONArray;
    .end local v7    # "currentMasterSyncEnabled":Z
    .end local v9    # "dataJSON":Lorg/json/JSONObject;
    .end local v10    # "dataString":Ljava/lang/String;
    .end local v13    # "masterSyncEnabled":Z
    :catch_0
    move-exception v11

    #@75
    .line 282
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "AccountSyncSettingsBackupHelper"

    #@78
    new-instance v15, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v16, "Couldn\'t restore account sync settings\n"

    #@80
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v15

    #@84
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v15

    #@88
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v15

    #@8c
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8f
    goto :goto_1
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 357
    return-void
.end method
