.class Landroid/support/v4/provider/DocumentsContractApi19;
.super Ljava/lang/Object;
.source "DocumentsContractApi19.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DocumentFile"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static canRead(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 76
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 78
    return v1

    #@9
    .line 82
    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 83
    return v1

    #@14
    .line 86
    :cond_1
    return v2
.end method

.method public static canWrite(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 91
    const/4 v2, 0x2

    #@3
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 93
    return v3

    #@a
    .line 96
    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 97
    .local v1, "type":Ljava/lang/String;
    const-string/jumbo v2, "flags"

    #@11
    invoke-static {p0, p1, v2, v3}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForInt(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    #@14
    move-result v0

    #@15
    .line 100
    .local v0, "flags":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 101
    return v3

    #@1c
    .line 105
    :cond_1
    and-int/lit8 v2, v0, 0x4

    #@1e
    if-eqz v2, :cond_2

    #@20
    .line 106
    return v4

    #@21
    .line 109
    :cond_2
    const-string/jumbo v2, "vnd.android.document/directory"

    #@24
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_3

    #@2a
    .line 110
    and-int/lit8 v2, v0, 0x8

    #@2c
    if-eqz v2, :cond_3

    #@2e
    .line 112
    return v4

    #@2f
    .line 113
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_4

    #@35
    .line 114
    and-int/lit8 v2, v0, 0x2

    #@37
    if-eqz v2, :cond_4

    #@39
    .line 116
    return v4

    #@3a
    .line 119
    :cond_4
    return v3
.end method

.method private static closeQuietly(Ljava/lang/AutoCloseable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/lang/AutoCloseable;

    #@0
    .prologue
    .line 188
    if-eqz p0, :cond_0

    #@2
    .line 190
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 187
    :cond_0
    :goto_0
    return-void

    #@6
    .line 193
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0

    #@8
    .line 191
    .end local v0    # "ignored":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@9
    .line 192
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    throw v1
.end method

.method public static delete(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static exists(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 129
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    #@7
    .line 131
    .local v6, "c":Landroid/database/Cursor;
    const/4 v1, 0x1

    #@8
    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    #@a
    .line 132
    const-string/jumbo v1, "document_id"

    #@d
    const/4 v3, 0x0

    #@e
    aput-object v1, v2, v3

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x0

    #@12
    const/4 v5, 0x0

    #@13
    move-object v1, p1

    #@14
    .line 131
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@17
    move-result-object v6

    #@18
    .line 133
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v1

    #@1c
    if-lez v1, :cond_0

    #@1e
    move v1, v8

    #@1f
    .line 138
    :goto_0
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@22
    .line 133
    return v1

    #@23
    :cond_0
    move v1, v9

    #@24
    goto :goto_0

    #@25
    .line 134
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    #@26
    .line 135
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "DocumentFile"

    #@29
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v3, "Failed query: "

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .line 138
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@43
    .line 136
    return v9

    #@44
    .line 137
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@45
    .line 138
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@48
    .line 137
    throw v1
.end method

.method public static getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 37
    const-string/jumbo v0, "_display_name"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {p0, p1, v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 41
    const-string/jumbo v0, "mime_type"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {p0, p1, v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 45
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 46
    .local v0, "rawType":Ljava/lang/String;
    const-string/jumbo v1, "vnd.android.document/directory"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 47
    const/4 v1, 0x0

    #@e
    return-object v1

    #@f
    .line 49
    :cond_0
    return-object v0
.end method

.method public static isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 54
    const-string/jumbo v0, "vnd.android.document/directory"

    #@3
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public static isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 33
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isFile(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 58
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 59
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "vnd.android.document/directory"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 60
    :cond_0
    const/4 v1, 0x0

    #@14
    return v1

    #@15
    .line 62
    :cond_1
    const/4 v1, 0x1

    #@16
    return v1
.end method

.method public static lastModified(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 67
    const-string/jumbo v0, "last_modified"

    #@3
    const-wide/16 v2, 0x0

    #@5
    invoke-static {p0, p1, v0, v2, v3}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    #@8
    move-result-wide v0

    #@9
    return-wide v0
.end method

.method public static length(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 71
    const-string/jumbo v0, "_size"

    #@3
    const-wide/16 v2, 0x0

    #@5
    invoke-static {p0, p1, v0, v2, v3}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    #@8
    move-result-wide v0

    #@9
    return-wide v0
.end method

.method private static queryForInt(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    #@0
    .prologue
    .line 164
    int-to-long v0, p3

    #@1
    invoke-static {p0, p1, p2, v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    #@4
    move-result-wide v0

    #@5
    long-to-int v0, v0

    #@6
    return v0
.end method

.method private static queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    #@0
    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    .line 171
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    #@5
    .line 173
    .local v6, "c":Landroid/database/Cursor;
    const/4 v1, 0x1

    #@6
    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    #@8
    const/4 v1, 0x0

    #@9
    aput-object p2, v2, v1

    #@b
    const/4 v3, 0x0

    #@c
    const/4 v4, 0x0

    #@d
    const/4 v5, 0x0

    #@e
    move-object v1, p1

    #@f
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@12
    move-result-object v6

    #@13
    .line 174
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    const/4 v1, 0x0

    #@1a
    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 183
    :cond_0
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@23
    .line 177
    return-wide p3

    #@24
    .line 175
    :cond_1
    const/4 v1, 0x0

    #@25
    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    move-result-wide v2

    #@29
    .line 183
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2c
    .line 175
    return-wide v2

    #@2d
    .line 179
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    #@2e
    .line 180
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "DocumentFile"

    #@31
    new-instance v2, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v3, "Failed query: "

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    .line 183
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4b
    .line 181
    return-wide p3

    #@4c
    .line 182
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@4d
    .line 183
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@50
    .line 182
    throw v1
.end method

.method private static queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    .line 146
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    #@5
    .line 148
    .local v6, "c":Landroid/database/Cursor;
    const/4 v1, 0x1

    #@6
    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    #@8
    const/4 v1, 0x0

    #@9
    aput-object p2, v2, v1

    #@b
    const/4 v3, 0x0

    #@c
    const/4 v4, 0x0

    #@d
    const/4 v5, 0x0

    #@e
    move-object v1, p1

    #@f
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@12
    move-result-object v6

    #@13
    .line 149
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    const/4 v1, 0x0

    #@1a
    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 158
    :cond_0
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@23
    .line 152
    return-object p3

    #@24
    .line 150
    :cond_1
    const/4 v1, 0x0

    #@25
    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    move-result-object v1

    #@29
    .line 158
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2c
    .line 150
    return-object v1

    #@2d
    .line 154
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    #@2e
    .line 155
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "DocumentFile"

    #@31
    new-instance v2, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v3, "Failed query: "

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    .line 158
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4b
    .line 156
    return-object p3

    #@4c
    .line 157
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@4d
    .line 158
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@50
    .line 157
    throw v1
.end method
