.class Landroid/support/v4/provider/DocumentsContractApi21;
.super Ljava/lang/Object;
.source "DocumentsContractApi21.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DocumentFile"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static closeQuietly(Ljava/lang/AutoCloseable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/lang/AutoCloseable;

    #@0
    .prologue
    .line 76
    if-eqz p0, :cond_0

    #@2
    .line 78
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 75
    :cond_0
    :goto_0
    return-void

    #@6
    .line 81
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0

    #@8
    .line 79
    .end local v0    # "ignored":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@9
    .line 80
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    throw v1
.end method

.method public static createDirectory(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;
    .param p2, "displayName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    const-string/jumbo v0, "vnd.android.document/directory"

    #@3
    invoke-static {p0, p1, v0, p2}, Landroid/support/v4/provider/DocumentsContractApi21;->createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p2, p3}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static listFiles(Landroid/content/Context;Landroid/net/Uri;)[Landroid/net/Uri;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    .line 49
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 48
    invoke-static {p1, v2}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@b
    move-result-object v1

    #@c
    .line 50
    .local v1, "childrenUri":Landroid/net/Uri;
    new-instance v10, Ljava/util/ArrayList;

    #@e
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@11
    .line 52
    .local v10, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v6, 0x0

    #@12
    .line 54
    .local v6, "c":Landroid/database/Cursor;
    const/4 v2, 0x1

    #@13
    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    #@15
    .line 55
    const-string/jumbo v3, "document_id"

    #@18
    const/4 v4, 0x0

    #@19
    aput-object v3, v2, v4

    #@1b
    const/4 v3, 0x0

    #@1c
    const/4 v4, 0x0

    #@1d
    const/4 v5, 0x0

    #@1e
    .line 54
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@21
    move-result-object v6

    #@22
    .line 56
    .local v6, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_0

    #@28
    .line 57
    const/4 v2, 0x0

    #@29
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@2c
    move-result-object v7

    #@2d
    .line 58
    .local v7, "documentId":Ljava/lang/String;
    invoke-static {p1, v7}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@30
    move-result-object v8

    #@31
    .line 60
    .local v8, "documentUri":Landroid/net/Uri;
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 62
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "documentId":Ljava/lang/String;
    .end local v8    # "documentUri":Landroid/net/Uri;
    :catch_0
    move-exception v9

    #@36
    .line 63
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "DocumentFile"

    #@39
    new-instance v3, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v4, "Failed query: "

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    .line 65
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi21;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@53
    .line 68
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@56
    move-result v2

    #@57
    new-array v2, v2, [Landroid/net/Uri;

    #@59
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@5c
    move-result-object v2

    #@5d
    check-cast v2, [Landroid/net/Uri;

    #@5f
    return-object v2

    #@60
    .line 65
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_0
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi21;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@63
    goto :goto_1

    #@64
    .line 64
    .end local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    #@65
    .line 65
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi21;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@68
    .line 64
    throw v2
.end method

.method public static prepareTreeUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "treeUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 43
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 42
    invoke-static {p0, v0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static renameTo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;
    .param p2, "displayName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p2}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
