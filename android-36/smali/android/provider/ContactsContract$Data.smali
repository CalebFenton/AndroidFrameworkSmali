.class public final Landroid/provider/ContactsContract$Data;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation


# static fields
.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/data"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field static final greylist-max-o ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist VISIBLE_CONTACTS_ONLY:Ljava/lang/String; = "visible_contacts_only"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 5531
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 5539
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "data_enterprise"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Data;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 5525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "dataUri"    # Landroid/net/Uri;

    .line 5568
    const-string v0, "contact_id"

    const-string/jumbo v1, "lookup"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "dataUri":Landroid/net/Uri;
    .local v2, "resolver":Landroid/content/ContentResolver;
    .local v3, "dataUri":Landroid/net/Uri;
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 5572
    .local p0, "cursor":Landroid/database/Cursor;
    const/4 p1, 0x0

    .line 5574
    .local p1, "lookupUri":Landroid/net/Uri;
    if-eqz p0, :cond_36

    :try_start_15
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 5575
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 5576
    .local v0, "contactId":J
    const/4 v4, 0x1

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 5577
    .local v4, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_2f

    .line 5580
    if-eqz p0, :cond_2e

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 5577
    :cond_2e
    return-object v5

    .line 5580
    .end local v0    # "contactId":J
    .end local v4    # "lookupKey":Ljava/lang/String;
    :catchall_2f
    move-exception v0

    if-eqz p0, :cond_35

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 5581
    :cond_35
    throw v0

    .line 5580
    :cond_36
    if-eqz p0, :cond_3b

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 5582
    :cond_3b
    return-object p1
.end method
