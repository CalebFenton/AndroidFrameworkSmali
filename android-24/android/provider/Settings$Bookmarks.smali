.class public final Landroid/provider/Settings$Bookmarks;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bookmarks"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FOLDER:Ljava/lang/String; = "folder"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final INTENT:Ljava/lang/String; = "intent"

.field public static final ORDERING:Ljava/lang/String; = "ordering"

.field public static final SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG:Ljava/lang/String; = "Bookmarks"

.field public static final TITLE:Ljava/lang/String; = "title"

.field private static final sIntentProjection:[Ljava/lang/String;

.field private static final sShortcutProjection:[Ljava/lang/String;

.field private static final sShortcutSelection:Ljava/lang/String; = "shortcut=?"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 9024
    const-string/jumbo v0, "content://settings/bookmarks"

    #@5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v0

    #@9
    .line 9023
    sput-object v0, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    #@b
    .line 9076
    new-array v0, v3, [Ljava/lang/String;

    #@d
    const-string/jumbo v1, "intent"

    #@10
    aput-object v1, v0, v2

    #@12
    sput-object v0, Landroid/provider/Settings$Bookmarks;->sIntentProjection:[Ljava/lang/String;

    #@14
    .line 9077
    const/4 v0, 0x2

    #@15
    new-array v0, v0, [Ljava/lang/String;

    #@17
    const-string/jumbo v1, "_id"

    #@1a
    aput-object v1, v0, v2

    #@1c
    const-string/jumbo v1, "shortcut"

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Landroid/provider/Settings$Bookmarks;->sShortcutProjection:[Ljava/lang/String;

    #@23
    .line 9016
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 9016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static add(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;CI)Landroid/net/Uri;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "folder"    # Ljava/lang/String;
    .param p4, "shortcut"    # C
    .param p5, "ordering"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 9140
    if-eqz p4, :cond_0

    #@3
    .line 9141
    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    #@5
    const-string/jumbo v2, "shortcut=?"

    #@8
    .line 9142
    const/4 v3, 0x1

    #@9
    new-array v3, v3, [Ljava/lang/String;

    #@b
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    aput-object v4, v3, v5

    #@11
    .line 9141
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@14
    .line 9145
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    #@16
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@19
    .line 9146
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz p2, :cond_1

    #@1b
    const-string/jumbo v1, "title"

    #@1e
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 9147
    :cond_1
    if-eqz p3, :cond_2

    #@23
    const-string/jumbo v1, "folder"

    #@26
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@29
    .line 9148
    :cond_2
    const-string/jumbo v1, "intent"

    #@2c
    invoke-virtual {p1, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@33
    .line 9149
    if-eqz p4, :cond_3

    #@35
    const-string/jumbo v1, "shortcut"

    #@38
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@3f
    .line 9150
    :cond_3
    const-string/jumbo v1, "ordering"

    #@42
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@49
    .line 9151
    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    #@4b
    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@4e
    move-result-object v1

    #@4f
    return-object v1
.end method

.method public static getIntentForShortcut(Landroid/content/ContentResolver;C)Landroid/content/Intent;
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "shortcut"    # C

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 9092
    const/4 v9, 0x0

    #@2
    .line 9094
    .local v9, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    #@4
    .line 9095
    sget-object v2, Landroid/provider/Settings$Bookmarks;->sIntentProjection:[Ljava/lang/String;

    #@6
    const-string/jumbo v3, "shortcut=?"

    #@9
    .line 9096
    const/4 v0, 0x1

    #@a
    new-array v4, v0, [Ljava/lang/String;

    #@c
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    aput-object v0, v4, v5

    #@12
    const-string/jumbo v5, "ordering"

    #@15
    move-object v0, p0

    #@16
    .line 9094
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@19
    move-result-object v6

    #@1a
    .line 9099
    .end local v9    # "intent":Landroid/content/Intent;
    .local v6, "c":Landroid/database/Cursor;
    :goto_0
    if-nez v9, :cond_1

    #@1c
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 9101
    :try_start_1
    const-string/jumbo v0, "intent"

    #@25
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@28
    move-result v0

    #@29
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@2c
    move-result-object v10

    #@2d
    .line 9102
    .local v10, "intentURI":Ljava/lang/String;
    const/4 v0, 0x0

    #@2e
    invoke-static {v10, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    move-result-object v9

    #@32
    .local v9, "intent":Landroid/content/Intent;
    goto :goto_0

    #@33
    .line 9105
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "intentURI":Ljava/lang/String;
    :catch_0
    move-exception v7

    #@34
    .line 9107
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string/jumbo v0, "Bookmarks"

    #@37
    const-string/jumbo v1, "Intent column not found"

    #@3a
    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 9110
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    #@3f
    .line 9111
    if-eqz v6, :cond_0

    #@41
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@44
    .line 9110
    :cond_0
    throw v0

    #@45
    .line 9111
    :cond_1
    if-eqz v6, :cond_2

    #@47
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@4a
    .line 9114
    :cond_2
    return-object v9

    #@4b
    .line 9103
    :catch_1
    move-exception v8

    #@4c
    .local v8, "e":Ljava/net/URISyntaxException;
    goto :goto_0
.end method

.method public static getLabelForFolder(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "folder"    # Ljava/lang/String;

    #@0
    .prologue
    .line 9166
    return-object p1
.end method

.method public static getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, -0x1

    #@2
    .line 9181
    const-string/jumbo v8, "title"

    #@5
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@8
    move-result v7

    #@9
    .line 9182
    .local v7, "titleColumn":I
    const-string/jumbo v8, "intent"

    #@c
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@f
    move-result v3

    #@10
    .line 9183
    .local v3, "intentColumn":I
    if-eq v7, v9, :cond_0

    #@12
    if-ne v3, v9, :cond_1

    #@14
    .line 9184
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@16
    .line 9185
    const-string/jumbo v9, "The cursor must contain the TITLE and INTENT columns."

    #@19
    .line 9184
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v8

    #@1d
    .line 9188
    :cond_1
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    .line 9189
    .local v6, "title":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@24
    move-result v8

    #@25
    if-nez v8, :cond_2

    #@27
    .line 9190
    return-object v6

    #@28
    .line 9193
    :cond_2
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    .line 9194
    .local v4, "intentUri":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2f
    move-result v8

    #@30
    if-eqz v8, :cond_3

    #@32
    .line 9195
    const-string/jumbo v8, ""

    #@35
    return-object v8

    #@36
    .line 9200
    :cond_3
    const/4 v8, 0x0

    #@37
    :try_start_0
    invoke-static {v4, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    move-result-object v2

    #@3b
    .line 9205
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3e
    move-result-object v5

    #@3f
    .line 9206
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v2, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@42
    move-result-object v1

    #@43
    .line 9207
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_4

    #@45
    invoke-virtual {v1, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@48
    move-result-object v8

    #@49
    :goto_0
    return-object v8

    #@4a
    .line 9201
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    #@4b
    .line 9202
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string/jumbo v8, ""

    #@4e
    return-object v8

    #@4f
    .line 9207
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .restart local v1    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_4
    const-string/jumbo v8, ""

    #@52
    goto :goto_0
.end method
