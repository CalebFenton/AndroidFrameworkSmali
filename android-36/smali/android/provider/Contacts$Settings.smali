.class public final Landroid/provider/Contacts$Settings;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$SettingsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CONTENT_DIRECTORY:Ljava/lang/String; = "settings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "key ASC"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SYNC_EVERYTHING:Ljava/lang/String; = "syncEverything"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 154
    nop

    .line 155
    const-string v0, "content://contacts/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$Settings;->CONTENT_URI:Landroid/net/Uri;

    .line 154
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    const-string/jumbo v4, "key=?"

    .line 205
    .local v4, "selectString":Ljava/lang/String;
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "selectArgs":[Ljava/lang/String;
    sget-object v2, Landroid/provider/Contacts$Settings;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, p0

    .end local p0    # "cr":Landroid/content/ContentResolver;
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 210
    .local p0, "cursor":Landroid/database/Cursor;
    :try_start_16
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_2a

    if-nez v0, :cond_21

    .line 213
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 210
    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_21
    const/4 v0, 0x0

    :try_start_22
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_2a

    .line 213
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 211
    return-object v0

    .line 213
    :catchall_2a
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 214
    throw v0
.end method

.method public static whitelist setSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 230
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object v1, Landroid/provider/Contacts$Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 233
    return-void
.end method
