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
.field private static final greylist-max-o DATA_PROJECTION:[Ljava/lang/String;

.field private static final greylist-max-o SELECT_BY_ACCOUNT:Ljava/lang/String; = "account_name=? AND account_type=?"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 59
    const-string v0, "data"

    const-string v1, "_id"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/SyncStateContract$Helpers;->DATA_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist get(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B
    .registers 10
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    sget-object v3, Landroid/provider/SyncStateContract$Helpers;->DATA_PROJECTION:[Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v4, "account_name=? AND account_type=?"

    move-object v1, p0

    move-object v2, p1

    .end local p0    # "provider":Landroid/content/ContentProviderClient;
    .end local p1    # "uri":Landroid/net/Uri;
    .local v1, "provider":Landroid/content/ContentProviderClient;
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 79
    .local p0, "c":Landroid/database/Cursor;
    if-eqz p0, :cond_35

    .line 84
    :try_start_15
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 85
    const-string p1, "data"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_2f

    .line 88
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 85
    return-object p1

    .line 88
    :cond_29
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 89
    nop

    .line 90
    const/4 p1, 0x0

    return-object p1

    .line 88
    :catchall_2f
    move-exception v0

    move-object p1, v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 89
    throw p1

    .line 80
    :cond_35
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public static whitelist getWithUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)Landroid/util/Pair;
    .registers 10
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
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    sget-object v3, Landroid/provider/SyncStateContract$Helpers;->DATA_PROJECTION:[Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v4, "account_name=? AND account_type=?"

    move-object v1, p0

    move-object v2, p1

    .end local p0    # "provider":Landroid/content/ContentProviderClient;
    .end local p1    # "uri":Landroid/net/Uri;
    .local v1, "provider":Landroid/content/ContentProviderClient;
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 133
    .local p0, "c":Landroid/database/Cursor;
    if-eqz p0, :cond_42

    .line 138
    :try_start_15
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 139
    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 140
    .local v3, "rowId":J
    const-string p1, "data"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    .line 141
    .local p1, "blob":[B
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_3c

    .line 144
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 141
    return-object v0

    .line 144
    .end local v3    # "rowId":J
    .end local p1    # "blob":[B
    :cond_36
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 145
    nop

    .line 146
    const/4 p1, 0x0

    return-object p1

    .line 144
    :catchall_3c
    move-exception v0

    move-object p1, v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 145
    throw p1

    .line 134
    :cond_42
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public static whitelist insert(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)Landroid/net/Uri;
    .registers 7
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 115
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 116
    const-string v1, "account_name"

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "account_type"

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist newSetOperation(Landroid/net/Uri;Landroid/accounts/Account;[B)Landroid/content/ContentProviderOperation;
    .registers 7
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "data"    # [B

    .line 160
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 162
    nop

    .line 163
    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 164
    const-string v3, "account_name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 165
    const-string v3, "account_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 166
    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 162
    return-object v1
.end method

.method public static whitelist newUpdateOperation(Landroid/net/Uri;[B)Landroid/content/ContentProviderOperation;
    .registers 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "data"    # [B

    .line 179
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 180
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 181
    nop

    .line 182
    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 183
    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 181
    return-object v1
.end method

.method public static whitelist set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V
    .registers 7
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 106
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 107
    const-string v1, "account_name"

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "account_type"

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 110
    return-void
.end method

.method public static whitelist update(Landroid/content/ContentProviderClient;Landroid/net/Uri;[B)V
    .registers 5
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 124
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 125
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    return-void
.end method
