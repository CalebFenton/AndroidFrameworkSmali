.class public final Lcom/google/android/gsf/GoogleSettingsContract$Partner;
.super Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;
.source "GoogleSettingsContract.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 185
    const-string/jumbo v0, "content://com.google.settings/partner"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 184
    sput-object v0, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;-><init>()V

    #@3
    return-void
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 84
    const/4 v8, 0x0

    #@1
    .line 85
    .local v8, "value":Ljava/lang/String;
    const/4 v6, 0x0

    #@2
    .line 87
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    #@4
    const/4 v0, 0x1

    #@5
    new-array v2, v0, [Ljava/lang/String;

    #@7
    const-string/jumbo v0, "value"

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v0, v2, v3

    #@d
    .line 88
    const-string/jumbo v3, "name=?"

    #@10
    const/4 v0, 0x1

    #@11
    new-array v4, v0, [Ljava/lang/String;

    #@13
    const/4 v0, 0x0

    #@14
    aput-object p1, v4, v0

    #@16
    const/4 v5, 0x0

    #@17
    move-object v0, p0

    #@18
    .line 87
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@1b
    move-result-object v6

    #@1c
    .line 89
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    #@1e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_0

    #@24
    const/4 v0, 0x0

    #@25
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result-object v8

    #@29
    .line 94
    .end local v8    # "value":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    #@2b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@2e
    .line 96
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v8

    #@2f
    .line 90
    .restart local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v7

    #@30
    .line 92
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    const-string/jumbo v0, "GoogleSettings"

    #@33
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v2, "Can\'t get key "

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    const-string/jumbo v2, " from "

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    sget-object v2, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    .line 94
    if-eqz v6, :cond_1

    #@59
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@5c
    goto :goto_0

    #@5d
    .line 93
    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    #@5e
    .line 94
    if-eqz v6, :cond_2

    #@60
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@63
    .line 93
    :cond_2
    throw v0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 107
    invoke-static {p0, p1}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 108
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 109
    move-object v0, p2

    #@7
    .line 112
    :cond_0
    return-object v0
.end method
