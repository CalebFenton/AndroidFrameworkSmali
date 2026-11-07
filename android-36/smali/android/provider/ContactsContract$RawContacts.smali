.class public final Landroid/provider/ContactsContract$RawContacts;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$RawContactsColumns;
.implements Landroid/provider/ContactsContract$ContactOptionsColumns;
.implements Landroid/provider/ContactsContract$ContactNameColumns;
.implements Landroid/provider/ContactsContract$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RawContacts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ContactsContract$RawContacts$Data;,
        Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;,
        Landroid/provider/ContactsContract$RawContacts$DisplayPhoto;,
        Landroid/provider/ContactsContract$RawContacts$StreamItems;,
        Landroid/provider/ContactsContract$RawContacts$Entity;,
        Landroid/provider/ContactsContract$RawContacts$DefaultAccount;
    }
.end annotation


# static fields
.field public static final whitelist AGGREGATION_MODE_DEFAULT:I = 0x0

.field public static final whitelist AGGREGATION_MODE_DISABLED:I = 0x3

.field public static final whitelist AGGREGATION_MODE_IMMEDIATE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist AGGREGATION_MODE_SUSPENDED:I = 0x2

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/raw_contact"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/raw_contact"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 2895
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "raw_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2889
    return-void
.end method

.method public static whitelist getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "rawContactUri"    # Landroid/net/Uri;

    .line 2965
    const-string v0, "data"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2966
    .local v2, "dataUri":Landroid/net/Uri;
    const-string v0, "contact_id"

    const-string/jumbo v1, "lookup"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 2970
    .local p0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 2972
    .local v3, "lookupUri":Landroid/net/Uri;
    if-eqz p0, :cond_3b

    :try_start_1a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2973
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2974
    .local v4, "contactId":J
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2975
    .local v0, "lookupKey":Ljava/lang/String;
    invoke-static {v4, v5, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_34

    .line 2978
    if-eqz p0, :cond_33

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2975
    :cond_33
    return-object v6

    .line 2978
    .end local v0    # "lookupKey":Ljava/lang/String;
    .end local v4    # "contactId":J
    :catchall_34
    move-exception v0

    if-eqz p0, :cond_3a

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2979
    :cond_3a
    throw v0

    .line 2978
    :cond_3b
    if-eqz p0, :cond_40

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2980
    :cond_40
    return-object v3
.end method

.method public static whitelist getLocalAccountName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 2998
    const v0, 0x10402bb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getLocalAccountType(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 3017
    const v0, 0x10402bc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;
    .registers 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 3711
    new-instance v0, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;

    invoke-direct {v0, p0}, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method
