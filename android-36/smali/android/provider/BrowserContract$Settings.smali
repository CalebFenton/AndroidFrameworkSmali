.class public final Landroid/provider/BrowserContract$Settings;
.super Ljava/lang/Object;
.source "BrowserContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BrowserContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# static fields
.field public static final greylist-max-o CONTENT_URI:Landroid/net/Uri;

.field public static final greylist-max-o KEY:Ljava/lang/String; = "key"

.field public static final greylist-max-o KEY_SYNC_ENABLED:Ljava/lang/String; = "sync_enabled"

.field public static final greylist-max-o VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 709
    sget-object v0, Landroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BrowserContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o isSyncEnabled(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 730
    const/4 v1, 0x0

    .line 732
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/BrowserContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "key=?"

    const-string/jumbo v0, "sync_enabled"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    .line 734
    const/4 v0, 0x0

    if-eqz v1, :cond_35

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_35

    .line 737
    :cond_28
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_3c

    if-eqz v2, :cond_2f

    const/4 v0, 0x1

    .line 739
    :cond_2f
    if-eqz v1, :cond_34

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 737
    :cond_34
    return v0

    .line 735
    :cond_35
    :goto_35
    nop

    .line 739
    if-eqz v1, :cond_3b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 735
    :cond_3b
    return v0

    .line 739
    :catchall_3c
    move-exception v0

    if-eqz v1, :cond_42

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_42
    throw v0
.end method

.method public static greylist-max-o setSyncEnabled(Landroid/content/Context;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 747
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 748
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "key"

    const-string/jumbo v2, "sync_enabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 750
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/BrowserContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 751
    return-void
.end method
