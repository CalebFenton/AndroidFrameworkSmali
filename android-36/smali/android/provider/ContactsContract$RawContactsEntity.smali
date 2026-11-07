.class public final Landroid/provider/ContactsContract$RawContactsEntity;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$DataColumns;
.implements Landroid/provider/ContactsContract$RawContactsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RawContactsEntity"
.end annotation


# static fields
.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/raw_contact_entity"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final greylist-max-o CORP_CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist DATA_ID:Ljava/lang/String; = "data_id"

.field public static final greylist-max-o FOR_EXPORT_ONLY:Ljava/lang/String; = "for_export_only"

.field public static final whitelist PROFILE_CONTENT_URI:Landroid/net/Uri;

.field private static final blacklist TAG:Ljava/lang/String; = "ContactsContract.RawContactsEntity"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 5735
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 5736
    const-string/jumbo v1, "raw_contact_entities"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 5744
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 5745
    const-string/jumbo v2, "raw_contact_entities_corp"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->CORP_CONTENT_URI:Landroid/net/Uri;

    .line 5750
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 5751
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    .line 5750
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 5730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist queryRawContactEntity(Landroid/content/ContentResolver;J)Ljava/util/Map;
    .registers 17
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation

    .line 5794
    sget-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 5795
    .local v0, "uri":Landroid/net/Uri;
    move-wide v1, p1

    .line 5797
    .local v1, "realContactId":J
    invoke-static/range {p1 .. p2}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 5798
    sget-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->CORP_CONTENT_URI:Landroid/net/Uri;

    .line 5799
    sget-wide v3, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    sub-long v1, p1, v3

    move-object v4, v0

    goto :goto_12

    .line 5797
    :cond_11
    move-object v4, v0

    .line 5801
    .end local v0    # "uri":Landroid/net/Uri;
    .local v4, "uri":Landroid/net/Uri;
    :goto_12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    .line 5806
    .local v9, "contentValuesListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/4 v10, 0x0

    .line 5808
    .local v10, "entityIterator":Landroid/content/EntityIterator;
    :try_start_19
    const-string v0, "contact_id=?"

    .line 5809
    .local v0, "selection":Ljava/lang/String;
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    .line 5811
    .local v7, "selectionArgs":[Ljava/lang/String;
    const-string v6, "contact_id=?"

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v3
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_ab

    move-object v10, v3

    .line 5814
    const-string v3, "ContactsContract.RawContactsEntity"

    if-nez v10, :cond_41

    .line 5815
    :try_start_35
    const-string v5, "EntityIterator is null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_ab

    .line 5816
    nop

    .line 5840
    if-eqz v10, :cond_40

    .line 5841
    invoke-interface {v10}, Landroid/content/EntityIterator;->close()V

    .line 5816
    :cond_40
    return-object v9

    .line 5819
    :cond_41
    :try_start_41
    invoke-interface {v10}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_64

    .line 5820
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data does not exist. contactId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_41 .. :try_end_5d} :catchall_ab

    .line 5821
    nop

    .line 5840
    if-eqz v10, :cond_63

    .line 5841
    invoke-interface {v10}, Landroid/content/EntityIterator;->close()V

    .line 5821
    :cond_63
    return-object v9

    .line 5824
    :cond_64
    :goto_64
    :try_start_64
    invoke-interface {v10}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 5825
    invoke-interface {v10}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity;

    .line 5826
    .local v3, "entity":Landroid/content/Entity;
    invoke-virtual {v3}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_78
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Entity$NamedContentValues;

    .line 5827
    .local v6, "namedContentValues":Landroid/content/Entity$NamedContentValues;
    iget-object v8, v6, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 5828
    .local v8, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v11, "mimetype"

    invoke-virtual {v8, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5829
    .local v11, "key":Ljava/lang/String;
    if-eqz v11, :cond_a3

    .line 5830
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 5831
    .local v12, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v12, :cond_a0

    .line 5832
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v13

    .line 5833
    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5835
    :cond_a0
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a3
    .catchall {:try_start_64 .. :try_end_a3} :catchall_ab

    .line 5837
    .end local v6    # "namedContentValues":Landroid/content/Entity$NamedContentValues;
    .end local v8    # "contentValues":Landroid/content/ContentValues;
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_a3
    goto :goto_78

    .line 5838
    .end local v3    # "entity":Landroid/content/Entity;
    :cond_a4
    goto :goto_64

    .line 5840
    .end local v0    # "selection":Ljava/lang/String;
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    :cond_a5
    if-eqz v10, :cond_aa

    .line 5841
    invoke-interface {v10}, Landroid/content/EntityIterator;->close()V

    .line 5844
    :cond_aa
    return-object v9

    .line 5840
    :catchall_ab
    move-exception v0

    if-eqz v10, :cond_b1

    .line 5841
    invoke-interface {v10}, Landroid/content/EntityIterator;->close()V

    .line 5843
    :cond_b1
    throw v0
.end method
