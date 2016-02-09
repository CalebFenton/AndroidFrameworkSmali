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
        Landroid/provider/ContactsContract$Contacts$Data;,
        Landroid/provider/ContactsContract$Contacts$Entity;,
        Landroid/provider/ContactsContract$Contacts$StreamItems;,
        Landroid/provider/ContactsContract$Contacts$AggregationSuggestions;,
        Landroid/provider/ContactsContract$Contacts$Photo;
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

.field public static final QUERY_PARAMETER_VCARD_NO_PHOTO:Ljava/lang/String; = "no_photo"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 1393
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
    .line 1405
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    #@d
    .line 1406
    const-string/jumbo v1, "contacts_corp"

    #@10
    .line 1405
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CORP_CONTENT_URI:Landroid/net/Uri;

    #@16
    .line 1424
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@18
    .line 1425
    const-string/jumbo v1, "lookup"

    #@1b
    .line 1424
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@1e
    move-result-object v0

    #@1f
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    #@21
    .line 1435
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@23
    .line 1436
    const-string/jumbo v1, "as_vcard"

    #@26
    .line 1435
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@29
    move-result-object v0

    #@2a
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    #@2c
    .line 1489
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@2e
    .line 1490
    const-string/jumbo v1, "as_multi_vcard"

    #@31
    .line 1489
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@34
    move-result-object v0

    #@35
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    #@37
    .line 1588
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@39
    const-string/jumbo v1, "filter"

    #@3c
    .line 1587
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@3f
    move-result-object v0

    #@40
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    #@42
    .line 1596
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@44
    const-string/jumbo v1, "strequent"

    #@47
    .line 1595
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@4a
    move-result-object v0

    #@4b
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    #@4d
    .line 1602
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@4f
    const-string/jumbo v1, "frequent"

    #@52
    .line 1601
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@55
    move-result-object v0

    #@56
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FREQUENT_URI:Landroid/net/Uri;

    #@58
    .line 1611
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    #@5a
    const-string/jumbo v1, "filter"

    #@5d
    .line 1610
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@60
    move-result-object v0

    #@61
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_FILTER_URI:Landroid/net/Uri;

    #@63
    .line 1614
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@65
    const-string/jumbo v1, "group"

    #@68
    .line 1613
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@6b
    move-result-object v0

    #@6c
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_GROUP_URI:Landroid/net/Uri;

    #@6e
    .line 1640
    const-wide/32 v0, 0x3b9aca00

    #@71
    sput-wide v0, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    #@73
    .line 1648
    const-string/jumbo v0, "c-"

    #@76
    sput-object v0, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String;

    #@78
    .line 1383
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1388
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
    .line 1527
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1528
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 1530
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
    .line 1500
    const/4 v0, 0x2

    #@4
    new-array v2, v0, [Ljava/lang/String;

    #@6
    .line 1501
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
    .line 1500
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@17
    move-result-object v6

    #@18
    .line 1503
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    #@1a
    .line 1504
    return-object v3

    #@1b
    .line 1508
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 1509
    const/4 v0, 0x0

    #@22
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@25
    move-result-object v7

    #@26
    .line 1510
    .local v7, "lookupKey":Ljava/lang/String;
    const/4 v0, 0x1

    #@27
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    #@2a
    move-result-wide v8

    #@2b
    .line 1511
    .local v8, "contactId":J
    invoke-static {v8, v9, v7}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    move-result-object v0

    #@2f
    .line 1514
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@32
    .line 1511
    return-object v0

    #@33
    .line 1514
    .end local v7    # "lookupKey":Ljava/lang/String;
    .end local v8    # "contactId":J
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@36
    .line 1516
    return-object v3

    #@37
    .line 1513
    :catchall_0
    move-exception v0

    #@38
    .line 1514
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@3b
    .line 1513
    throw v0
.end method

.method public static isEnterpriseContactId(J)Z
    .locals 4
    .param p0, "contactId"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1656
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
    .line 1540
    if-nez p1, :cond_0

    #@4
    .line 1541
    return-object v3

    #@5
    .line 1544
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
    .line 1545
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    #@17
    .line 1546
    return-object v3

    #@18
    .line 1550
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 1551
    const/4 v0, 0x0

    #@1f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    #@22
    move-result-wide v8

    #@23
    .line 1552
    .local v8, "contactId":J
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@25
    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result-object v0

    #@29
    .line 1555
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@2c
    .line 1552
    return-object v0

    #@2d
    .line 1555
    .end local v8    # "contactId":J
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@30
    .line 1557
    return-object v3

    #@31
    .line 1554
    :catchall_0
    move-exception v0

    #@32
    .line 1555
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@35
    .line 1554
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
    .line 1574
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@3
    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 1575
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    #@9
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    #@c
    .line 1577
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
    .line 1578
    invoke-virtual {p0, v0, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@1d
    .line 1573
    return-void
.end method

.method public static openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 2049
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
    .line 2002
    if-eqz p2, :cond_0

    #@4
    .line 2004
    const-string/jumbo v0, "display_photo"

    #@7
    .line 2003
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@a
    move-result-object v8

    #@b
    .line 2007
    .local v8, "displayPhotoUri":Landroid/net/Uri;
    :try_start_0
    const-string/jumbo v0, "r"

    #@e
    invoke-virtual {p0, v8, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    #@11
    move-result-object v10

    #@12
    .line 2008
    .local v10, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 2009
    .end local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v9

    #@18
    .line 2014
    .end local v8    # "displayPhotoUri":Landroid/net/Uri;
    :cond_0
    const-string/jumbo v0, "photo"

    #@1b
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@1e
    move-result-object v1

    #@1f
    .line 2015
    .local v1, "photoUri":Landroid/net/Uri;
    if-nez v1, :cond_1

    #@21
    .line 2016
    return-object v3

    #@22
    .line 2019
    :cond_1
    const/4 v0, 0x1

    #@23
    new-array v2, v0, [Ljava/lang/String;

    #@25
    .line 2020
    const-string/jumbo v0, "data15"

    #@28
    aput-object v0, v2, v4

    #@2a
    move-object v0, p0

    #@2b
    move-object v4, v3

    #@2c
    move-object v5, v3

    #@2d
    .line 2018
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@30
    move-result-object v6

    #@31
    .line 2023
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    #@33
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_3

    #@39
    .line 2026
    const/4 v0, 0x0

    #@3a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    move-result-object v7

    #@3e
    .line 2027
    .local v7, "data":[B
    if-nez v7, :cond_5

    #@40
    .line 2032
    if-eqz v6, :cond_2

    #@42
    .line 2033
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@45
    .line 2028
    :cond_2
    return-object v3

    #@46
    .line 2032
    .end local v7    # "data":[B
    :cond_3
    if-eqz v6, :cond_4

    #@48
    .line 2033
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@4b
    .line 2024
    :cond_4
    return-object v3

    #@4c
    .line 2030
    .restart local v7    # "data":[B
    :cond_5
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@4e
    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    .line 2032
    if-eqz v6, :cond_6

    #@53
    .line 2033
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@56
    .line 2030
    :cond_6
    return-object v0

    #@57
    .line 2031
    .end local v7    # "data":[B
    :catchall_0
    move-exception v0

    #@58
    .line 2032
    if-eqz v6, :cond_7

    #@5a
    .line 2033
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@5d
    .line 2031
    :cond_7
    throw v0
.end method
