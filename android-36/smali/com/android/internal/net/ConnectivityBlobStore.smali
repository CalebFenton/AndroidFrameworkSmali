.class public Lcom/android/internal/net/ConnectivityBlobStore;
.super Ljava/lang/Object;
.source "ConnectivityBlobStore.java"


# static fields
.field private static final blacklist CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS blob_table (owner INTEGER,name BLOB,blob BLOB,UNIQUE(owner, name));"

.field private static final blacklist ROOT_DIR:Ljava/lang/String; = "/data/misc/connectivityblobdb/"

.field private static final blacklist TABLENAME:Ljava/lang/String; = "blob_table"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    const-class v0, Lcom/android/internal/net/ConnectivityBlobStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ConnectivityBlobStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;-><init>()V

    .line 64
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object v0

    .line 65
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object v0

    .line 67
    .local v0, "params":Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    invoke-static {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/net/ConnectivityBlobStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 68
    iget-object v1, p0, Lcom/android/internal/net/ConnectivityBlobStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "CREATE TABLE IF NOT EXISTS blob_table (owner INTEGER,name BLOB,blob BLOB,UNIQUE(owner, name));"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "dbName"    # Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/misc/connectivityblobdb/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/net/ConnectivityBlobStore;-><init>(Ljava/io/File;)V

    .line 59
    return-void
.end method


# virtual methods
.method public blacklist get(Ljava/lang/String;)[B
    .registers 12
    .param p1, "name"    # Ljava/lang/String;

    .line 104
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 105
    .local v1, "ownerUid":I
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/net/ConnectivityBlobStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "blob_table"

    const-string v0, "blob"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "owner=? AND name=?"

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object v6

    .line 105
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1f
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_1f} :catch_44

    move-object v2, v0

    .line 112
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_20
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 113
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_37

    .line 115
    if-eqz v2, :cond_30

    :try_start_2d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_30
    return-object v0

    .line 115
    :cond_31
    if-eqz v2, :cond_36

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_36
    .catch Landroid/database/SQLException; {:try_start_2d .. :try_end_36} :catch_44

    .line 117
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_36
    goto :goto_67

    .line 105
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :catchall_37
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_43

    :try_start_3b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v0

    :try_start_40
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "ownerUid":I
    .end local p0    # "this":Lcom/android/internal/net/ConnectivityBlobStore;
    .end local p1    # "name":Ljava/lang/String;
    :cond_43
    :goto_43
    throw v3
    :try_end_44
    .catch Landroid/database/SQLException; {:try_start_40 .. :try_end_44} :catch_44

    .line 115
    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "ownerUid":I
    .restart local p0    # "this":Lcom/android/internal/net/ConnectivityBlobStore;
    .restart local p1    # "name":Ljava/lang/String;
    :catch_44
    move-exception v0

    .line 116
    .local v0, "e":Landroid/database/SQLException;
    sget-object v2, Lcom/android/internal/net/ConnectivityBlobStore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in getting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v0    # "e":Landroid/database/SQLException;
    :goto_67
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist list(Ljava/lang/String;)[Ljava/lang/String;
    .registers 13
    .param p1, "prefix"    # Ljava/lang/String;

    .line 153
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 154
    .local v1, "ownerUid":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 155
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_a
    iget-object v3, p0, Lcom/android/internal/net/ConnectivityBlobStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "blob_table"

    const-string v0, "name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "owner=? AND name LIKE ? ESCAPE \'\\\'"

    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    invoke-static {p1}, Landroid/database/DatabaseUtils;->escapeForLike(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v10, "name ASC"

    .line 155
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3d
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_3d} :catch_6e

    move-object v3, v0

    .line 165
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_3e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 167
    :cond_44
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    nop

    .end local v0    # "name":Ljava/lang/String;
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_59
    .catchall {:try_start_3e .. :try_end_59} :catchall_61

    if-nez v0, :cond_44

    .line 171
    :cond_5b
    if-eqz v3, :cond_60

    :try_start_5d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_60
    .catch Landroid/database/SQLException; {:try_start_5d .. :try_end_60} :catch_6e

    .line 173
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_60
    goto :goto_91

    .line 155
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :catchall_61
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_6d

    :try_start_65
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_6d

    :catchall_69
    move-exception v0

    :try_start_6a
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "ownerUid":I
    .end local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/internal/net/ConnectivityBlobStore;
    .end local p1    # "prefix":Ljava/lang/String;
    :cond_6d
    :goto_6d
    throw v4
    :try_end_6e
    .catch Landroid/database/SQLException; {:try_start_6a .. :try_end_6e} :catch_6e

    .line 171
    .end local v3    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "ownerUid":I
    .restart local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/internal/net/ConnectivityBlobStore;
    .restart local p1    # "prefix":Ljava/lang/String;
    :catch_6e
    move-exception v0

    .line 172
    .local v0, "e":Landroid/database/SQLException;
    sget-object v3, Lcom/android/internal/net/ConnectivityBlobStore;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in listing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v0    # "e":Landroid/database/SQLException;
    :goto_91
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist put(Ljava/lang/String;[B)Z
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "blob"    # [B

    .line 81
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 82
    .local v0, "ownerUid":I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 83
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "owner"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "blob"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 90
    iget-object v2, p0, Lcom/android/internal/net/ConnectivityBlobStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "blob_table"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 91
    .local v2, "res":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    :goto_2e
    return v4
.end method

.method public blacklist remove(Ljava/lang/String;)Z
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .line 130
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 132
    .local v0, "ownerUid":I
    const/4 v1, 0x0

    :try_start_5
    iget-object v2, p0, Lcom/android/internal/net/ConnectivityBlobStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "blob_table"

    const-string v4, "owner=? AND name=?"

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5, p1}, [Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_17
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_17} :catch_1b

    .line 135
    .local v2, "res":I
    if-lez v2, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    .line 136
    .end local v2    # "res":I
    :catch_1b
    move-exception v2

    .line 137
    .local v2, "e":Landroid/database/SQLException;
    sget-object v3, Lcom/android/internal/net/ConnectivityBlobStore;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return v1
.end method
