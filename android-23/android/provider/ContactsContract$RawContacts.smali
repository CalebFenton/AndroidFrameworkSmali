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
        Landroid/provider/ContactsContract$RawContacts$Entity;,
        Landroid/provider/ContactsContract$RawContacts$StreamItems;,
        Landroid/provider/ContactsContract$RawContacts$DisplayPhoto;,
        Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;
    }
.end annotation


# static fields
.field public static final AGGREGATION_MODE_DEFAULT:I = 0x0

.field public static final AGGREGATION_MODE_DISABLED:I = 0x3

.field public static final AGGREGATION_MODE_IMMEDIATE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AGGREGATION_MODE_SUSPENDED:I = 0x2

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/raw_contact"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/raw_contact"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 2672
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    #@2
    const-string/jumbo v1, "raw_contacts"

    #@5
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    #@b
    .line 2660
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "rawContactUri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 2742
    const-string/jumbo v0, "data"

    #@6
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@9
    move-result-object v1

    #@a
    .line 2743
    .local v1, "dataUri":Landroid/net/Uri;
    const/4 v0, 0x2

    #@b
    new-array v2, v0, [Ljava/lang/String;

    #@d
    .line 2744
    const-string/jumbo v0, "contact_id"

    #@10
    aput-object v0, v2, v4

    #@12
    const-string/jumbo v0, "lookup"

    #@15
    aput-object v0, v2, v5

    #@17
    move-object v0, p0

    #@18
    move-object v4, v3

    #@19
    move-object v5, v3

    #@1a
    .line 2743
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@1d
    move-result-object v8

    #@1e
    .line 2747
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    #@1f
    .line 2749
    .local v10, "lookupUri":Landroid/net/Uri;
    if-eqz v8, :cond_1

    #@21
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_1

    #@27
    .line 2750
    const/4 v0, 0x0

    #@28
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    #@2b
    move-result-wide v6

    #@2c
    .line 2751
    .local v6, "contactId":J
    const/4 v0, 0x1

    #@2d
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@30
    move-result-object v9

    #@31
    .line 2752
    .local v9, "lookupKey":Ljava/lang/String;
    invoke-static {v6, v7, v9}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result-object v0

    #@35
    .line 2755
    if-eqz v8, :cond_0

    #@37
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3a
    .line 2752
    :cond_0
    return-object v0

    #@3b
    .line 2755
    .end local v6    # "contactId":J
    .end local v9    # "lookupKey":Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_2

    #@3d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@40
    .line 2757
    :cond_2
    return-object v10

    #@41
    .line 2754
    :catchall_0
    move-exception v0

    #@42
    .line 2755
    if-eqz v8, :cond_3

    #@44
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@47
    .line 2754
    :cond_3
    throw v0
.end method

.method public static newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 2919
    new-instance v0, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;

    #@2
    invoke-direct {v0, p0}, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;-><init>(Landroid/database/Cursor;)V

    #@5
    return-object v0
.end method
