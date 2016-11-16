.class public final Landroid/provider/SyncStateContract$Helpers;
.super Ljava/lang/Object;
.source "SyncStateContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SyncStateContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Helpers"
.end annotation


# static fields
.field private static final DATA_PROJECTION:[Ljava/lang/String;

.field private static final SELECT_BY_ACCOUNT:Ljava/lang/String; = "account_name=? AND account_type=?"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 59
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "data"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    const-string/jumbo v1, "_id"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    sput-object v0, Landroid/provider/SyncStateContract$Helpers;->DATA_PROJECTION:[Ljava/lang/String;

    #@11
    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static get(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B
    .locals 7
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 75
    sget-object v2, Landroid/provider/SyncStateContract$Helpers;->DATA_PROJECTION:[Ljava/lang/String;

    #@3
    const-string/jumbo v3, "account_name=? AND account_type=?"

    #@6
    .line 76
    const/4 v0, 0x2

    #@7
    new-array v4, v0, [Ljava/lang/String;

    #@9
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@b
    const/4 v1, 0x0

    #@c
    aput-object v0, v4, v1

    #@e
    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@10
    const/4 v1, 0x1

    #@11
    aput-object v0, v4, v1

    #@13
    move-object v0, p0

    #@14
    move-object v1, p1

    #@15
    .line 75
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@18
    move-result-object v6

    #@19
    .line 79
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    #@1b
    .line 80
    new-instance v0, Landroid/os/RemoteException;

    #@1d
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@20
    throw v0

    #@21
    .line 84
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_1

    #@27
    .line 85
    const-string/jumbo v0, "data"

    #@2a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@2d
    move-result v0

    #@2e
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    move-result-object v0

    #@32
    .line 88
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@35
    .line 85
    return-object v0

    #@36
    .line 88
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@39
    .line 90
    return-object v5

    #@3a
    .line 87
    :catchall_0
    move-exception v0

    #@3b
    .line 88
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@3e
    .line 87
    throw v0
.end method

.method public static getWithUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)Landroid/util/Pair;
    .locals 11
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Landroid/net/Uri;",
            "Landroid/accounts/Account;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 130
    sget-object v2, Landroid/provider/SyncStateContract$Helpers;->DATA_PROJECTION:[Ljava/lang/String;

    #@4
    const-string/jumbo v3, "account_name=? AND account_type=?"

    #@7
    .line 131
    const/4 v0, 0x2

    #@8
    new-array v4, v0, [Ljava/lang/String;

    #@a
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@c
    const/4 v1, 0x0

    #@d
    aput-object v0, v4, v1

    #@f
    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@11
    aput-object v0, v4, v10

    #@13
    move-object v0, p0

    #@14
    move-object v1, p1

    #@15
    .line 130
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@18
    move-result-object v7

    #@19
    .line 133
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_0

    #@1b
    .line 134
    new-instance v0, Landroid/os/RemoteException;

    #@1d
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@20
    throw v0

    #@21
    .line 138
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_1

    #@27
    .line 139
    const/4 v0, 0x1

    #@28
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    #@2b
    move-result-wide v8

    #@2c
    .line 140
    .local v8, "rowId":J
    const-string/jumbo v0, "data"

    #@2f
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@32
    move-result v0

    #@33
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    #@36
    move-result-object v6

    #@37
    .line 141
    .local v6, "blob":[B
    invoke-static {p1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@3a
    move-result-object v0

    #@3b
    invoke-static {v0, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    move-result-object v0

    #@3f
    .line 144
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@42
    .line 141
    return-object v0

    #@43
    .line 144
    .end local v6    # "blob":[B
    .end local v8    # "rowId":J
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@46
    .line 146
    return-object v5

    #@47
    .line 143
    :catchall_0
    move-exception v0

    #@48
    .line 144
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@4b
    .line 143
    throw v0
.end method

.method public static insert(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)Landroid/net/Uri;
    .locals 3
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    new-instance v0, Landroid/content/ContentValues;

    #@2
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@5
    .line 115
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "data"

    #@8
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    #@b
    .line 116
    const-string/jumbo v1, "account_name"

    #@e
    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    .line 117
    const-string/jumbo v1, "account_type"

    #@16
    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 118
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@1e
    move-result-object v1

    #@1f
    return-object v1
.end method

.method public static newSetOperation(Landroid/net/Uri;Landroid/accounts/Account;[B)Landroid/content/ContentProviderOperation;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "data"    # [B

    #@0
    .prologue
    .line 160
    new-instance v0, Landroid/content/ContentValues;

    #@2
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@5
    .line 161
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "data"

    #@8
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    #@b
    .line 162
    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    #@e
    move-result-object v1

    #@f
    .line 164
    const-string/jumbo v2, "account_name"

    #@12
    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@14
    .line 162
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    #@17
    move-result-object v1

    #@18
    .line 165
    const-string/jumbo v2, "account_type"

    #@1b
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@1d
    .line 162
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    #@28
    move-result-object v1

    #@29
    return-object v1
.end method

.method public static newUpdateOperation(Landroid/net/Uri;[B)Landroid/content/ContentProviderOperation;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "data"    # [B

    #@0
    .prologue
    .line 179
    new-instance v0, Landroid/content/ContentValues;

    #@2
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@5
    .line 180
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "data"

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    #@b
    .line 181
    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public static set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V
    .locals 3
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    new-instance v0, Landroid/content/ContentValues;

    #@2
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@5
    .line 106
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "data"

    #@8
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    #@b
    .line 107
    const-string/jumbo v1, "account_name"

    #@e
    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    .line 108
    const-string/jumbo v1, "account_type"

    #@16
    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 109
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@1e
    .line 104
    return-void
.end method

.method public static update(Landroid/content/ContentProviderClient;Landroid/net/Uri;[B)V
    .locals 3
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 123
    new-instance v0, Landroid/content/ContentValues;

    #@3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@6
    .line 124
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "data"

    #@9
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    #@c
    .line 125
    invoke-virtual {p0, p1, v0, v2, v2}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@f
    .line 122
    return-void
.end method
