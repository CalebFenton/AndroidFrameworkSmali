.class public final Lcom/android/server/accounts/AccountManagerBackupHelper;
.super Ljava/lang/Object;
.source "AccountManagerBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;,
        Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;,
        Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
    }
.end annotation


# static fields
.field private static final ACCOUNT_ACCESS_GRANTS:Ljava/lang/String; = "SELECT name, uid FROM accounts, grants WHERE accounts_id=_id"

.field private static final ATTR_ACCOUNT_SHA_256:Ljava/lang/String; = "account-sha-256"

.field private static final ATTR_DIGEST:Ljava/lang/String; = "digest"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final PENDING_RESTORE_TIMEOUT_MILLIS:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "AccountManagerBackupHelper"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"

.field private static final TAG_PERMISSIONS:Ljava/lang/String; = "permissions"


# instance fields
.field private final mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

.field private final mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

.field private final mLock:Ljava/lang/Object;

.field private mRestoreCancelCommand:Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRestorePendingAppPermissions:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/accounts/AccountManagerBackupHelper;)Landroid/accounts/AccountManagerInternal;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestoreCancelCommand:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestoreCancelCommand:Ljava/lang/Runnable;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;)Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/util/List;)Ljava/util/List;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    #@2
    return-object p1
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/AccountManagerInternal;)V
    .locals 1
    .param p1, "accountManagerService"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "accountManagerInternal"    # Landroid/accounts/AccountManagerInternal;

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mLock:Ljava/lang/Object;

    #@a
    .line 86
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    #@c
    .line 87
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    #@e
    .line 85
    return-void
.end method


# virtual methods
.method public backupAccountAccessPermissions(I)[B
    .locals 25
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 147
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    #@4
    move-object/from16 v17, v0

    #@6
    move-object/from16 v0, v17

    #@8
    move/from16 v1, p1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@d
    move-result-object v4

    #@e
    .line 149
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v0, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@10
    move-object/from16 v20, v0

    #@12
    monitor-enter v20

    #@13
    .line 150
    :try_start_0
    iget-object v0, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@15
    move-object/from16 v17, v0

    #@17
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-object v7

    #@1b
    .line 151
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v18, 0x0

    #@1d
    const/4 v5, 0x0

    #@1e
    .line 152
    .local v5, "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string/jumbo v17, "SELECT name, uid FROM accounts, grants WHERE accounts_id=_id"

    #@21
    const/16 v19, 0x0

    #@23
    move-object/from16 v0, v17

    #@25
    move-object/from16 v1, v19

    #@27
    invoke-virtual {v7, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@2a
    move-result-object v5

    #@2b
    .line 154
    .local v5, "cursor":Landroid/database/Cursor;
    if-eqz v5, :cond_3

    #@2d
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    #@30
    move-result v17

    #@31
    if-eqz v17, :cond_3

    #@33
    .line 159
    const-string/jumbo v17, "name"

    #@36
    .line 158
    move-object/from16 v0, v17

    #@38
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3b
    move-result v10

    #@3c
    .line 161
    .local v10, "nameColumnIdx":I
    const-string/jumbo v17, "uid"

    #@3f
    .line 160
    move-object/from16 v0, v17

    #@41
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@44
    move-result v16

    #@45
    .line 163
    .local v16, "uidColumnIdx":I
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    #@47
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@4a
    .line 165
    .local v6, "dataStream":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v14, Lcom/android/internal/util/FastXmlSerializer;

    #@4c
    invoke-direct {v14}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@4f
    .line 166
    .local v14, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v17, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@51
    invoke-virtual/range {v17 .. v17}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@54
    move-result-object v17

    #@55
    move-object/from16 v0, v17

    #@57
    invoke-interface {v14, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@5a
    .line 167
    const/16 v17, 0x1

    #@5c
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5f
    move-result-object v17

    #@60
    const/16 v19, 0x0

    #@62
    move-object/from16 v0, v19

    #@64
    move-object/from16 v1, v17

    #@66
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@69
    .line 168
    const-string/jumbo v17, "permissions"

    #@6c
    const/16 v19, 0x0

    #@6e
    move-object/from16 v0, v19

    #@70
    move-object/from16 v1, v17

    #@72
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@75
    .line 170
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    #@79
    move-object/from16 v17, v0

    #@7b
    move-object/from16 v0, v17

    #@7d
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@7f
    move-object/from16 v17, v0

    #@81
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@84
    move-result-object v11

    #@85
    .line 174
    .local v11, "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@88
    move-result-object v3

    #@89
    .line 175
    .local v3, "accountName":Ljava/lang/String;
    move/from16 v0, v16

    #@8b
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    #@8e
    move-result v15

    #@8f
    .line 177
    .local v15, "uid":I
    invoke-virtual {v11, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@92
    move-result-object v13

    #@93
    .line 178
    .local v13, "packageNames":[Ljava/lang/String;
    if-nez v13, :cond_6

    #@95
    .line 194
    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    #@98
    move-result v17

    #@99
    if-nez v17, :cond_0

    #@9b
    .line 196
    const-string/jumbo v17, "permissions"

    #@9e
    const/16 v19, 0x0

    #@a0
    move-object/from16 v0, v19

    #@a2
    move-object/from16 v1, v17

    #@a4
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a7
    .line 197
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@aa
    .line 198
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@ad
    .line 204
    :try_start_3
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@b0
    move-result-object v17

    #@b1
    .line 205
    if-eqz v5, :cond_2

    #@b3
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b6
    :cond_2
    :goto_0
    if-eqz v18, :cond_a

    #@b8
    :try_start_5
    throw v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@b9
    .line 149
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local v6    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "nameColumnIdx":I
    .end local v11    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v13    # "packageNames":[Ljava/lang/String;
    .end local v14    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v15    # "uid":I
    .end local v16    # "uidColumnIdx":I
    :catchall_0
    move-exception v17

    #@ba
    monitor-exit v20

    #@bb
    throw v17

    #@bc
    .line 205
    .restart local v5    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    if-eqz v5, :cond_4

    #@be
    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@c1
    :cond_4
    :goto_1
    if-eqz v18, :cond_5

    #@c3
    :try_start_7
    throw v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@c4
    :catch_0
    move-exception v18

    #@c5
    goto :goto_1

    #@c6
    .line 155
    :cond_5
    const/16 v17, 0x0

    #@c8
    monitor-exit v20

    #@c9
    return-object v17

    #@ca
    .line 182
    .restart local v3    # "accountName":Ljava/lang/String;
    .restart local v6    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "nameColumnIdx":I
    .restart local v11    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v13    # "packageNames":[Ljava/lang/String;
    .restart local v14    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v15    # "uid":I
    .restart local v16    # "uidColumnIdx":I
    :cond_6
    const/16 v17, 0x0

    #@cc
    :try_start_8
    array-length v0, v13

    #@cd
    move/from16 v19, v0

    #@cf
    :goto_2
    move/from16 v0, v17

    #@d1
    move/from16 v1, v19

    #@d3
    if-ge v0, v1, :cond_1

    #@d5
    aget-object v12, v13, v17

    #@d7
    .line 183
    .local v12, "packageName":Ljava/lang/String;
    move/from16 v0, p1

    #@d9
    invoke-static {v11, v12, v0}, Landroid/util/PackageUtils;->computePackageCertSha256Digest(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Ljava/lang/String;

    #@dc
    move-result-object v8

    #@dd
    .line 185
    .local v8, "digest":Ljava/lang/String;
    if-eqz v8, :cond_7

    #@df
    .line 186
    const-string/jumbo v21, "permission"

    #@e2
    const/16 v22, 0x0

    #@e4
    move-object/from16 v0, v22

    #@e6
    move-object/from16 v1, v21

    #@e8
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@eb
    .line 187
    const-string/jumbo v21, "account-sha-256"

    #@ee
    .line 188
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    #@f1
    move-result-object v22

    #@f2
    invoke-static/range {v22 .. v22}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    #@f5
    move-result-object v22

    #@f6
    .line 187
    const/16 v23, 0x0

    #@f8
    move-object/from16 v0, v23

    #@fa
    move-object/from16 v1, v21

    #@fc
    move-object/from16 v2, v22

    #@fe
    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@101
    .line 189
    const-string/jumbo v21, "package"

    #@104
    const/16 v22, 0x0

    #@106
    move-object/from16 v0, v22

    #@108
    move-object/from16 v1, v21

    #@10a
    invoke-interface {v14, v0, v1, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10d
    .line 190
    const-string/jumbo v21, "digest"

    #@110
    const/16 v22, 0x0

    #@112
    move-object/from16 v0, v22

    #@114
    move-object/from16 v1, v21

    #@116
    invoke-interface {v14, v0, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@119
    .line 191
    const-string/jumbo v21, "permission"

    #@11c
    const/16 v22, 0x0

    #@11e
    move-object/from16 v0, v22

    #@120
    move-object/from16 v1, v21

    #@122
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@125
    .line 182
    :cond_7
    add-int/lit8 v17, v17, 0x1

    #@127
    goto :goto_2

    #@128
    .line 199
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v8    # "digest":Ljava/lang/String;
    .end local v11    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "packageNames":[Ljava/lang/String;
    .end local v14    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v15    # "uid":I
    :catch_1
    move-exception v9

    #@129
    .line 200
    .local v9, "e":Ljava/io/IOException;
    :try_start_9
    const-string/jumbo v17, "AccountManagerBackupHelper"

    #@12c
    const-string/jumbo v19, "Error backing up account access grants"

    #@12f
    move-object/from16 v0, v17

    #@131
    move-object/from16 v1, v19

    #@133
    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@136
    .line 205
    if-eqz v5, :cond_8

    #@138
    :try_start_a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@13b
    :cond_8
    :goto_3
    if-eqz v18, :cond_9

    #@13d
    :try_start_b
    throw v18
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@13e
    :catch_2
    move-exception v18

    #@13f
    goto :goto_3

    #@140
    .line 201
    :cond_9
    const/16 v17, 0x0

    #@142
    monitor-exit v20

    #@143
    return-object v17

    #@144
    .line 205
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v3    # "accountName":Ljava/lang/String;
    .restart local v11    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v13    # "packageNames":[Ljava/lang/String;
    .restart local v14    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v15    # "uid":I
    :catch_3
    move-exception v18

    #@145
    goto/16 :goto_0

    #@147
    :cond_a
    monitor-exit v20

    #@148
    .line 204
    return-object v17

    #@149
    .line 205
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local v6    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "nameColumnIdx":I
    .end local v11    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v13    # "packageNames":[Ljava/lang/String;
    .end local v14    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v15    # "uid":I
    .end local v16    # "uidColumnIdx":I
    :catch_4
    move-exception v17

    #@14a
    :try_start_c
    throw v17
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@14b
    :catchall_1
    move-exception v18

    #@14c
    move-object/from16 v24, v18

    #@14e
    move-object/from16 v18, v17

    #@150
    move-object/from16 v17, v24

    #@152
    :goto_4
    if-eqz v5, :cond_b

    #@154
    :try_start_d
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@157
    :cond_b
    :goto_5
    if-eqz v18, :cond_d

    #@159
    :try_start_e
    throw v18

    #@15a
    :catch_5
    move-exception v19

    #@15b
    if-nez v18, :cond_c

    #@15d
    move-object/from16 v18, v19

    #@15f
    goto :goto_5

    #@160
    :cond_c
    move-object/from16 v0, v18

    #@162
    move-object/from16 v1, v19

    #@164
    if-eq v0, v1, :cond_b

    #@166
    invoke-virtual/range {v18 .. v19}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@169
    goto :goto_5

    #@16a
    :cond_d
    throw v17
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@16b
    :catchall_2
    move-exception v17

    #@16c
    goto :goto_4
.end method

.method public restoreAccountAccessPermissions([BI)V
    .locals 17
    .param p1, "data"    # [B
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 211
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayInputStream;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@7
    .line 212
    .local v8, "dataStream":Ljava/io/ByteArrayInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@a
    move-result-object v11

    #@b
    .line 213
    .local v11, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@d
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    invoke-interface {v11, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@14
    .line 214
    move-object/from16 v0, p0

    #@16
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    #@18
    iget-object v3, v3, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@1a
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1d
    move-result-object v10

    #@1e
    .line 216
    .local v10, "packageManager":Landroid/content/pm/PackageManager;
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@21
    move-result v13

    #@22
    .line 217
    .local v13, "permissionsOuterDepth":I
    :cond_0
    invoke-static {v11, v13}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_7

    #@28
    .line 218
    const-string/jumbo v3, "permissions"

    #@2b
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2e
    move-result-object v7

    #@2f
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_0

    #@35
    .line 221
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@38
    move-result v12

    #@39
    .line 222
    .local v12, "permissionOuterDepth":I
    :cond_1
    :goto_0
    invoke-static {v11, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_0

    #@3f
    .line 223
    const-string/jumbo v3, "permission"

    #@42
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v3

    #@4a
    if-eqz v3, :cond_1

    #@4c
    .line 226
    const-string/jumbo v3, "account-sha-256"

    #@4f
    const/4 v7, 0x0

    #@50
    invoke-interface {v11, v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    .line 227
    .local v4, "accountDigest":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@57
    move-result v3

    #@58
    if-eqz v3, :cond_2

    #@5a
    .line 228
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@5d
    .line 230
    :cond_2
    const-string/jumbo v3, "package"

    #@60
    const/4 v7, 0x0

    #@61
    invoke-interface {v11, v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@64
    move-result-object v5

    #@65
    .line 231
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@68
    move-result v3

    #@69
    if-eqz v3, :cond_3

    #@6b
    .line 232
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@6e
    .line 234
    :cond_3
    const-string/jumbo v3, "digest"

    #@71
    const/4 v7, 0x0

    #@72
    invoke-interface {v11, v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@75
    move-result-object v6

    #@76
    .line 235
    .local v6, "digest":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@79
    move-result v3

    #@7a
    if-eqz v3, :cond_4

    #@7c
    .line 236
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@7f
    .line 239
    :cond_4
    new-instance v2, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;

    #@81
    move-object/from16 v3, p0

    #@83
    move/from16 v7, p2

    #@85
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@88
    .line 242
    .local v2, "pendingAppPermission":Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
    invoke-virtual {v2, v10}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->apply(Landroid/content/pm/PackageManager;)Z

    #@8b
    move-result v3

    #@8c
    if-nez v3, :cond_1

    #@8e
    .line 243
    move-object/from16 v0, p0

    #@90
    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mLock:Ljava/lang/Object;

    #@92
    monitor-enter v7
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@93
    .line 245
    :try_start_1
    move-object/from16 v0, p0

    #@95
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    #@97
    if-nez v3, :cond_5

    #@99
    .line 246
    new-instance v3, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    #@9b
    const/4 v14, 0x0

    #@9c
    move-object/from16 v0, p0

    #@9e
    invoke-direct {v3, v0, v14}, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;)V

    #@a1
    move-object/from16 v0, p0

    #@a3
    iput-object v3, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    #@a5
    .line 247
    move-object/from16 v0, p0

    #@a7
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    #@a9
    move-object/from16 v0, p0

    #@ab
    iget-object v14, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    #@ad
    iget-object v14, v14, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@af
    .line 248
    move-object/from16 v0, p0

    #@b1
    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    #@b3
    iget-object v15, v15, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@b5
    invoke-virtual {v15}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->getLooper()Landroid/os/Looper;

    #@b8
    move-result-object v15

    #@b9
    const/16 v16, 0x1

    #@bb
    .line 247
    move/from16 v0, v16

    #@bd
    invoke-virtual {v3, v14, v15, v0}, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    #@c0
    .line 250
    :cond_5
    move-object/from16 v0, p0

    #@c2
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    #@c4
    if-nez v3, :cond_6

    #@c6
    .line 251
    new-instance v3, Ljava/util/ArrayList;

    #@c8
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@cb
    move-object/from16 v0, p0

    #@cd
    iput-object v3, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    #@cf
    .line 253
    :cond_6
    move-object/from16 v0, p0

    #@d1
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    #@d3
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d6
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@d7
    goto/16 :goto_0

    #@d9
    .line 265
    .end local v2    # "pendingAppPermission":Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
    .end local v4    # "accountDigest":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "digest":Ljava/lang/String;
    .end local v8    # "dataStream":Ljava/io/ByteArrayInputStream;
    .end local v10    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "permissionOuterDepth":I
    .end local v13    # "permissionsOuterDepth":I
    :catch_0
    move-exception v9

    #@da
    .line 266
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "AccountManagerBackupHelper"

    #@dd
    const-string/jumbo v7, "Error restoring app permissions"

    #@e0
    invoke-static {v3, v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e3
    .line 209
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    #@e4
    .line 243
    .restart local v2    # "pendingAppPermission":Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
    .restart local v4    # "accountDigest":Ljava/lang/String;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "digest":Ljava/lang/String;
    .restart local v8    # "dataStream":Ljava/io/ByteArrayInputStream;
    .restart local v10    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "permissionOuterDepth":I
    .restart local v13    # "permissionsOuterDepth":I
    :catchall_0
    move-exception v3

    #@e5
    :try_start_3
    monitor-exit v7

    #@e6
    throw v3

    #@e7
    .line 260
    .end local v2    # "pendingAppPermission":Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
    .end local v4    # "accountDigest":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "digest":Ljava/lang/String;
    .end local v12    # "permissionOuterDepth":I
    :cond_7
    move-object/from16 v0, p0

    #@e9
    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mLock:Ljava/lang/Object;

    #@eb
    monitor-enter v7
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@ec
    .line 261
    :try_start_4
    new-instance v3, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;

    #@ee
    const/4 v14, 0x0

    #@ef
    move-object/from16 v0, p0

    #@f1
    invoke-direct {v3, v0, v14}, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;)V

    #@f4
    move-object/from16 v0, p0

    #@f6
    iput-object v3, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestoreCancelCommand:Ljava/lang/Runnable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@f8
    :try_start_5
    monitor-exit v7

    #@f9
    .line 263
    move-object/from16 v0, p0

    #@fb
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    #@fd
    iget-object v3, v3, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@ff
    move-object/from16 v0, p0

    #@101
    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestoreCancelCommand:Ljava/lang/Runnable;

    #@103
    .line 264
    const-wide/32 v14, 0x36ee80

    #@106
    .line 263
    invoke-virtual {v3, v7, v14, v15}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@109
    goto :goto_1

    #@10a
    .line 260
    :catchall_1
    move-exception v3

    #@10b
    monitor-exit v7

    #@10c
    throw v3
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
.end method
