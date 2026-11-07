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
.field public static final greylist CONTENT_URI:Landroid/net/Uri;

.field public static final greylist-max-o FOLDER:Ljava/lang/String; = "folder"

.field public static final greylist-max-o ID:Ljava/lang/String; = "_id"

.field public static final greylist-max-o INTENT:Ljava/lang/String; = "intent"

.field public static final greylist-max-o ORDERING:Ljava/lang/String; = "ordering"

.field public static final greylist-max-o SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Bookmarks"

.field public static final greylist-max-o TITLE:Ljava/lang/String; = "title"

.field private static final greylist-max-o sIntentProjection:[Ljava/lang/String;

.field private static final greylist-max-o sShortcutProjection:[Ljava/lang/String;

.field private static final greylist-max-o sShortcutSelection:Ljava/lang/String; = "shortcut=?"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 21461
    nop

    .line 21462
    const-string v0, "content://settings/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    .line 21514
    const-string/jumbo v0, "intent"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Bookmarks;->sIntentProjection:[Ljava/lang/String;

    .line 21515
    const-string v0, "_id"

    const-string/jumbo v1, "shortcut"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Bookmarks;->sShortcutProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 21453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist add(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;CI)Landroid/net/Uri;
    .registers 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "folder"    # Ljava/lang/String;
    .param p4, "shortcut"    # C
    .param p5, "ordering"    # I

    .line 21579
    if-eqz p4, :cond_12

    .line 21580
    sget-object v0, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    .line 21581
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 21580
    const-string/jumbo v2, "shortcut=?"

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 21584
    :cond_12
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 21585
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz p2, :cond_1f

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21586
    :cond_1f
    if-eqz p3, :cond_26

    const-string v1, "folder"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21587
    :cond_26
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21588
    if-eqz p4, :cond_3d

    const-string/jumbo v1, "shortcut"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 21589
    :cond_3d
    const-string/jumbo v1, "ordering"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 21590
    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getIntentForShortcut(Landroid/content/ContentResolver;C)Landroid/content/Intent;
    .registers 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "shortcut"    # C

    .line 21530
    const/4 v0, 0x0

    .line 21532
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/Settings$Bookmarks;->sIntentProjection:[Ljava/lang/String;

    .line 21534
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    .line 21532
    const-string/jumbo v4, "shortcut=?"

    const-string/jumbo v6, "ordering"

    move-object v1, p0

    .end local p0    # "cr":Landroid/content/ContentResolver;
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    move-object v2, v0

    .line 21537
    .end local v0    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    .local p0, "c":Landroid/database/Cursor;
    :goto_19
    if-nez v2, :cond_46

    :try_start_1b
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_3f

    if-eqz v0, :cond_46

    .line 21539
    :try_start_21
    const-string/jumbo v0, "intent"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 21540
    .local v0, "intentURI":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3
    :try_end_31
    .catch Ljava/net/URISyntaxException; {:try_start_21 .. :try_end_31} :catch_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_31} :catch_33
    .catchall {:try_start_21 .. :try_end_31} :catchall_3f

    move-object v2, v3

    .line 21546
    .end local v0    # "intentURI":Ljava/lang/String;
    :goto_32
    goto :goto_19

    .line 21543
    :catch_33
    move-exception v0

    .line 21545
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_34
    const-string v3, "Bookmarks"

    const-string v4, "Intent column not found"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_3f

    .line 21546
    nop

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_19

    .line 21541
    :catch_3d
    move-exception v0

    goto :goto_32

    .line 21549
    :catchall_3f
    move-exception v0

    if-eqz p0, :cond_45

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 21550
    :cond_45
    throw v0

    .line 21549
    :cond_46
    if-eqz p0, :cond_4b

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 21552
    :cond_4b
    return-object v2
.end method

.method public static greylist-max-o getLabelForFolder(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "folder"    # Ljava/lang/String;

    .line 21605
    return-object p1
.end method

.method public static greylist-max-o getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 21620
    const-string/jumbo v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 21621
    .local v0, "titleColumn":I
    const-string/jumbo v1, "intent"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 21622
    .local v1, "intentColumn":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_42

    if-eq v1, v2, :cond_42

    .line 21627
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 21628
    .local v2, "title":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 21629
    return-object v2

    .line 21632
    :cond_1e
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 21633
    .local v3, "intentUri":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_2b

    .line 21634
    return-object v5

    .line 21639
    :cond_2b
    const/4 v4, 0x0

    :try_start_2c
    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6
    :try_end_30
    .catch Ljava/net/URISyntaxException; {:try_start_2c .. :try_end_30} :catch_40

    .line 21642
    .local v6, "intent":Landroid/content/Intent;
    nop

    .line 21644
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 21645
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v7, v6, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 21646
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_3f

    invoke-virtual {v4, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    :cond_3f
    return-object v5

    .line 21640
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_40
    move-exception v4

    .line 21641
    .local v4, "e":Ljava/net/URISyntaxException;
    return-object v5

    .line 21623
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "intentUri":Ljava/lang/String;
    .end local v4    # "e":Ljava/net/URISyntaxException;
    :cond_42
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The cursor must contain the TITLE and INTENT columns."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
