.class public Landroid/provider/ContactsContract$Contacts;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$ContactsColumns;
.implements Landroid/provider/ContactsContract$ContactOptionsColumns;
.implements Landroid/provider/ContactsContract$ContactNameColumns;
.implements Landroid/provider/ContactsContract$ContactStatusColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contacts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ContactsContract$Contacts$AggregationSuggestions;,
        Landroid/provider/ContactsContract$Contacts$Data;,
        Landroid/provider/ContactsContract$Contacts$Entity;,
        Landroid/provider/ContactsContract$Contacts$Photo;,
        Landroid/provider/ContactsContract$Contacts$StreamItems;
    }
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_FREQUENT_URI:Landroid/net/Uri;

.field public static final CONTENT_GROUP_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact"

.field public static final CONTENT_LOOKUP_URI:Landroid/net/Uri;

.field public static final CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

.field public static final CONTENT_STREQUENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_STREQUENT_URI:Landroid/net/Uri;

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_VCARD_TYPE:Ljava/lang/String; = "text/x-vcard"

.field public static final CONTENT_VCARD_URI:Landroid/net/Uri;

.field public static final CORP_CONTENT_URI:Landroid/net/Uri;

.field public static ENTERPRISE_CONTACT_ID_BASE:J = 0x0L

.field public static ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String; = null

.field public static final ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final QUERY_PARAMETER_VCARD_NO_PHOTO:Ljava/lang/String; = "no_photo"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 1488
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    #@2
    const-string/jumbo v1, "contacts"

    #@5
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@b
    .line 1500
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    #@d
    .line 1501
    const-string/jumbo v1, "contacts_corp"

    #@10
    .line 1500
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CORP_CONTENT_URI:Landroid/net/Uri;

    #@16
    .line 1519
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@18
    .line 1520
    const-string/jumbo v1, "lookup"

    #@1b
    .line 1519
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@1e
    move-result-object v0

    #@1f
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    #@21
    .line 1530
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@23
    .line 1531
    const-string/jumbo v1, "as_vcard"

    #@26
    .line 1530
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@29
    move-result-object v0

    #@2a
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    #@2c
    .line 1584
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@2e
    .line 1585
    const-string/jumbo v1, "as_multi_vcard"

    #@31
    .line 1584
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@34
    move-result-object v0

    #@35
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    #@37
    .line 1683
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@39
    const-string/jumbo v1, "filter"

    #@3c
    .line 1682
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@3f
    move-result-object v0

    #@40
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    #@42
    .line 1691
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@44
    const-string/jumbo v1, "filter_enterprise"

    #@47
    .line 1690
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@4a
    move-result-object v0

    #@4b
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    #@4d
    .line 1699
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@4f
    const-string/jumbo v1, "strequent"

    #@52
    .line 1698
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@55
    move-result-object v0

    #@56
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    #@58
    .line 1705
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@5a
    const-string/jumbo v1, "frequent"

    #@5d
    .line 1704
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@60
    move-result-object v0

    #@61
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FREQUENT_URI:Landroid/net/Uri;

    #@63
    .line 1714
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    #@65
    const-string/jumbo v1, "filter"

    #@68
    .line 1713
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@6b
    move-result-object v0

    #@6c
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_FILTER_URI:Landroid/net/Uri;

    #@6e
    .line 1717
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@70
    const-string/jumbo v1, "group"

    #@73
    .line 1716
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@76
    move-result-object v0

    #@77
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_GROUP_URI:Landroid/net/Uri;

    #@79
    .line 1743
    const-wide/32 v0, 0x3b9aca00

    #@7c
    sput-wide v0, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    #@7e
    .line 1751
    const-string/jumbo v0, "c-"

    #@81
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String;

    #@83
    .line 1478
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "contactId"    # J
    .param p2, "lookupKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1622
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1623
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 1625
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    #@a
    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@d
    move-result-object v0

    #@e
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public static getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "contactUri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 1595
    const/4 v0, 0x2

    #@4
    new-array v2, v0, [Ljava/lang/String;

    #@6
    .line 1596
    const-string/jumbo v0, "lookup"

    #@9
    aput-object v0, v2, v1

    #@b
    const-string/jumbo v0, "_id"

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
    .line 1595
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@17
    move-result-object v6

    #@18
    .line 1598
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    #@1a
    .line 1599
    return-object v3

    #@1b
    .line 1603
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 1604
    const/4 v0, 0x0

    #@22
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@25
    move-result-object v7

    #@26
    .line 1605
    .local v7, "lookupKey":Ljava/lang/String;
    const/4 v0, 0x1

    #@27
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    #@2a
    move-result-wide v8

    #@2b
    .line 1606
    .local v8, "contactId":J
    invoke-static {v8, v9, v7}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    move-result-object v0

    #@2f
    .line 1609
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@32
    .line 1606
    return-object v0

    #@33
    .line 1609
    .end local v7    # "lookupKey":Ljava/lang/String;
    .end local v8    # "contactId":J
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@36
    .line 1611
    return-object v3

    #@37
    .line 1608
    :catchall_0
    move-exception v0

    #@38
    .line 1609
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@3b
    .line 1608
    throw v0
.end method

.method public static isEnterpriseContactId(J)Z
    .locals 4
    .param p0, "contactId"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1759
    sget-wide v2, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    #@3
    cmp-long v1, p0, v2

    #@5
    if-ltz v1, :cond_0

    #@7
    const-wide v2, 0x7fffffff80000000L

    #@c
    cmp-long v1, p0, v2

    #@e
    if-gez v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    return v0
.end method

.method public static lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "lookupUri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1635
    if-nez p1, :cond_0

    #@4
    .line 1636
    return-object v3

    #@5
    .line 1639
    :cond_0
    const/4 v0, 0x1

    #@6
    new-array v2, v0, [Ljava/lang/String;

    #@8
    const-string/jumbo v0, "_id"

    #@b
    aput-object v0, v2, v1

    #@d
    move-object v0, p0

    #@e
    move-object v1, p1

    #@f
    move-object v4, v3

    #@10
    move-object v5, v3

    #@11
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@14
    move-result-object v6

    #@15
    .line 1640
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    #@17
    .line 1641
    return-object v3

    #@18
    .line 1645
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 1646
    const/4 v0, 0x0

    #@1f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    #@22
    move-result-wide v8

    #@23
    .line 1647
    .local v8, "contactId":J
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@25
    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result-object v0

    #@29
    .line 1650
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@2c
    .line 1647
    return-object v0

    #@2d
    .line 1650
    .end local v8    # "contactId":J
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@30
    .line 1652
    return-object v3

    #@31
    .line 1649
    :catchall_0
    move-exception v0

    #@32
    .line 1650
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@35
    .line 1649
    throw v0
.end method

.method public static markAsContacted(Landroid/content/ContentResolver;J)V
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1669
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@3
    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 1670
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    #@9
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    #@c
    .line 1672
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "last_time_contacted"

    #@f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@12
    move-result-wide v4

    #@13
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@1a
    .line 1673
    invoke-virtual {p0, v0, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@1d
    .line 1668
    return-void
.end method

.method public static openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 2153
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "preferHighres"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 2105
    if-eqz p2, :cond_0

    #@4
    .line 2107
    const-string/jumbo v0, "display_photo"

    #@7
    .line 2106
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@a
    move-result-object v8

    #@b
    .line 2109
    .local v8, "displayPhotoUri":Landroid/net/Uri;
    :try_start_0
    const-string/jumbo v0, "r"

    #@e
    invoke-virtual {p0, v8, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    #@11
    move-result-object v10

    #@12
    .line 2110
    .local v10, "fd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v10, :cond_0

    #@14
    .line 2111
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v0

    #@18
    return-object v0

    #@19
    .line 2113
    .end local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v9

    #@1a
    .line 2118
    .end local v8    # "displayPhotoUri":Landroid/net/Uri;
    :cond_0
    const-string/jumbo v0, "photo"

    #@1d
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@20
    move-result-object v1

    #@21
    .line 2119
    .local v1, "photoUri":Landroid/net/Uri;
    if-nez v1, :cond_1

    #@23
    .line 2120
    return-object v3

    #@24
    .line 2123
    :cond_1
    const/4 v0, 0x1

    #@25
    new-array v2, v0, [Ljava/lang/String;

    #@27
    .line 2124
    const-string/jumbo v0, "data15"

    #@2a
    aput-object v0, v2, v4

    #@2c
    move-object v0, p0

    #@2d
    move-object v4, v3

    #@2e
    move-object v5, v3

    #@2f
    .line 2122
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@32
    move-result-object v6

    #@33
    .line 2127
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    #@35
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_3

    #@3b
    .line 2130
    const/4 v0, 0x0

    #@3c
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    move-result-object v7

    #@40
    .line 2131
    .local v7, "data":[B
    if-nez v7, :cond_5

    #@42
    .line 2136
    if-eqz v6, :cond_2

    #@44
    .line 2137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@47
    .line 2132
    :cond_2
    return-object v3

    #@48
    .line 2136
    .end local v7    # "data":[B
    :cond_3
    if-eqz v6, :cond_4

    #@4a
    .line 2137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@4d
    .line 2128
    :cond_4
    return-object v3

    #@4e
    .line 2134
    .restart local v7    # "data":[B
    :cond_5
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@50
    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    .line 2136
    if-eqz v6, :cond_6

    #@55
    .line 2137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@58
    .line 2134
    :cond_6
    return-object v0

    #@59
    .line 2135
    .end local v7    # "data":[B
    :catchall_0
    move-exception v0

    #@5a
    .line 2136
    if-eqz v6, :cond_7

    #@5c
    .line 2137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@5f
    .line 2135
    :cond_7
    throw v0
.end method
