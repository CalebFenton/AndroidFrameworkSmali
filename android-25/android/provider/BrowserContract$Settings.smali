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
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final KEY_SYNC_ENABLED:Ljava/lang/String; = "sync_enabled"

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 699
    sget-object v0, Landroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    #@2
    const-string/jumbo v1, "settings"

    #@5
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Landroid/provider/BrowserContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    #@b
    .line 690
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static isSyncEnabled(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 720
    const/4 v6, 0x0

    #@3
    .line 722
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v0

    #@7
    sget-object v1, Landroid/provider/BrowserContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    #@9
    const/4 v2, 0x1

    #@a
    new-array v2, v2, [Ljava/lang/String;

    #@c
    const-string/jumbo v3, "value"

    #@f
    const/4 v4, 0x0

    #@10
    aput-object v3, v2, v4

    #@12
    .line 723
    const-string/jumbo v3, "key=?"

    #@15
    const/4 v4, 0x1

    #@16
    new-array v4, v4, [Ljava/lang/String;

    #@18
    const-string/jumbo v5, "sync_enabled"

    #@1b
    const/4 v9, 0x0

    #@1c
    aput-object v5, v4, v9

    #@1e
    const/4 v5, 0x0

    #@1f
    .line 722
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@22
    move-result-object v6

    #@23
    .line 724
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    #@25
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_1

    #@2b
    .line 727
    const/4 v0, 0x0

    #@2c
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_3

    #@32
    move v0, v7

    #@33
    .line 729
    :goto_0
    if-eqz v6, :cond_0

    #@35
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@38
    .line 727
    :cond_0
    return v0

    #@39
    .line 729
    :cond_1
    if-eqz v6, :cond_2

    #@3b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@3e
    .line 725
    :cond_2
    return v8

    #@3f
    :cond_3
    move v0, v8

    #@40
    .line 727
    goto :goto_0

    #@41
    .line 728
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    #@42
    .line 729
    if-eqz v6, :cond_4

    #@44
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@47
    .line 728
    :cond_4
    throw v0
.end method

.method public static setSyncEnabled(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 737
    new-instance v0, Landroid/content/ContentValues;

    #@2
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@5
    .line 738
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "key"

    #@8
    const-string/jumbo v2, "sync_enabled"

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 739
    const-string/jumbo v2, "value"

    #@11
    if-eqz p1, :cond_0

    #@13
    const/4 v1, 0x1

    #@14
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@1b
    .line 740
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1e
    move-result-object v1

    #@1f
    sget-object v2, Landroid/provider/BrowserContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    #@21
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@24
    .line 736
    return-void

    #@25
    .line 739
    :cond_0
    const/4 v1, 0x0

    #@26
    goto :goto_0
.end method
