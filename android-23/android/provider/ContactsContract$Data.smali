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
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/data"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field static final ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

.field public static final VISIBLE_CONTACTS_ONLY:Ljava/lang/String; = "visible_contacts_only"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 4650
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    #@2
    const-string/jumbo v1, "data"

    #@5
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    #@b
    .line 4658
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    #@d
    .line 4659
    const-string/jumbo v1, "data_enterprise"

    #@10
    .line 4658
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Landroid/provider/ContactsContract$Data;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    #@16
    .line 4640
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 4644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "dataUri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 4687
    const/4 v0, 0x2

    #@4
    new-array v2, v0, [Ljava/lang/String;

    #@6
    .line 4688
    const-string/jumbo v0, "contact_id"

    #@9
    aput-object v0, v2, v1

    #@b
    const-string/jumbo v0, "lookup"

    #@e
    aput-object v0, v2, v4

    #@10
    move-object v0, p0

    #@11
    move-object v1, p1

    #@12
    move-object v4, v3

    #@13
    move-object v5, v3

    #@14
    .line 4687
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@17
    move-result-object v8

    #@18
    .line 4691
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    #@19
    .line 4693
    .local v10, "lookupUri":Landroid/net/Uri;
    if-eqz v8, :cond_1

    #@1b
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 4694
    const/4 v0, 0x0

    #@22
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    #@25
    move-result-wide v6

    #@26
    .line 4695
    .local v6, "contactId":J
    const/4 v0, 0x1

    #@27
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@2a
    move-result-object v9

    #@2b
    .line 4696
    .local v9, "lookupKey":Ljava/lang/String;
    invoke-static {v6, v7, v9}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    move-result-object v0

    #@2f
    .line 4699
    if-eqz v8, :cond_0

    #@31
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@34
    .line 4696
    :cond_0
    return-object v0

    #@35
    .line 4699
    .end local v6    # "contactId":J
    .end local v9    # "lookupKey":Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_2

    #@37
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3a
    .line 4701
    :cond_2
    return-object v10

    #@3b
    .line 4698
    :catchall_0
    move-exception v0

    #@3c
    .line 4699
    if-eqz v8, :cond_3

    #@3e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@41
    .line 4698
    :cond_3
    throw v0
.end method
