.class public final Landroid/provider/Contacts$People;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$PeopleColumns;
.implements Landroid/provider/Contacts$PhonesColumns;
.implements Landroid/provider/Contacts$PresenceColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "People"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Contacts$People$Phones;,
        Landroid/provider/Contacts$People$ContactMethods;,
        Landroid/provider/Contacts$People$Extensions;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DELETED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final GROUPS_PROJECTION:[Ljava/lang/String;

.field public static final PRIMARY_EMAIL_ID:Ljava/lang/String; = "primary_email"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIMARY_ORGANIZATION_ID:Ljava/lang/String; = "primary_organization"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIMARY_PHONE_ID:Ljava/lang/String; = "primary_phone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WITH_EMAIL_OR_IM_FILTER_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 354
    const-string/jumbo v0, "content://contacts/people"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 353
    sput-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 363
    const-string/jumbo v0, "content://contacts/people/filter"

    #@c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@f
    move-result-object v0

    #@10
    .line 362
    sput-object v0, Landroid/provider/Contacts$People;->CONTENT_FILTER_URI:Landroid/net/Uri;

    #@12
    .line 372
    const-string/jumbo v0, "content://contacts/deleted_people"

    #@15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@18
    move-result-object v0

    #@19
    .line 371
    sput-object v0, Landroid/provider/Contacts$People;->DELETED_CONTENT_URI:Landroid/net/Uri;

    #@1b
    .line 388
    const-string/jumbo v0, "content://contacts/people/with_email_or_im_filter"

    #@1e
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@21
    move-result-object v0

    #@22
    .line 387
    sput-object v0, Landroid/provider/Contacts$People;->WITH_EMAIL_OR_IM_FILTER_URI:Landroid/net/Uri;

    #@24
    .line 545
    const/4 v0, 0x1

    #@25
    new-array v0, v0, [Ljava/lang/String;

    #@27
    .line 546
    const-string/jumbo v1, "_id"

    #@2a
    const/4 v2, 0x0

    #@2b
    aput-object v1, v0, v2

    #@2d
    .line 545
    sput-object v0, Landroid/provider/Contacts$People;->GROUPS_PROJECTION:[Ljava/lang/String;

    #@2f
    .line 340
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "personId"    # J
    .param p3, "groupId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 539
    new-instance v0, Landroid/content/ContentValues;

    #@2
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@5
    .line 540
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "person"

    #@8
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@f
    .line 541
    const-string/jumbo v1, "group_id"

    #@12
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@19
    .line 542
    sget-object v1, Landroid/provider/Contacts$GroupMembership;->CONTENT_URI:Landroid/net/Uri;

    #@1b
    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@1e
    move-result-object v1

    #@1f
    return-object v1
.end method

.method public static addToGroup(Landroid/content/ContentResolver;JLjava/lang/String;)Landroid/net/Uri;
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "personId"    # J
    .param p3, "groupName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 508
    const-wide/16 v6, 0x0

    #@4
    .line 509
    .local v6, "groupId":J
    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    #@6
    sget-object v2, Landroid/provider/Contacts$People;->GROUPS_PROJECTION:[Ljava/lang/String;

    #@8
    .line 510
    const-string/jumbo v3, "name=?"

    #@b
    const/4 v0, 0x1

    #@c
    new-array v4, v0, [Ljava/lang/String;

    #@e
    aput-object p3, v4, v9

    #@10
    move-object v0, p0

    #@11
    .line 509
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@14
    move-result-object v8

    #@15
    .line 511
    .local v8, "groupsCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    #@17
    .line 513
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 514
    const/4 v0, 0x0

    #@1e
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result-wide v6

    #@22
    .line 517
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@25
    .line 521
    :cond_1
    const-wide/16 v0, 0x0

    #@27
    cmp-long v0, v6, v0

    #@29
    if-nez v0, :cond_2

    #@2b
    .line 522
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2d
    const-string/jumbo v1, "Failed to find the My Contacts group"

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 516
    :catchall_0
    move-exception v0

    #@35
    .line 517
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@38
    .line 516
    throw v0

    #@39
    .line 525
    :cond_2
    invoke-static {p0, p1, p2, v6, v7}, Landroid/provider/Contacts$People;->addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;

    #@3c
    move-result-object v0

    #@3d
    return-object v0
.end method

.method public static addToMyContactsGroup(Landroid/content/ContentResolver;J)Landroid/net/Uri;
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "personId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 488
    invoke-static {p0}, Landroid/provider/Contacts$People;->tryGetMyContactsGroupId(Landroid/content/ContentResolver;)J

    #@3
    move-result-wide v0

    #@4
    .line 489
    .local v0, "groupId":J
    const-wide/16 v2, 0x0

    #@6
    cmp-long v2, v0, v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 490
    new-instance v2, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v3, "Failed to find the My Contacts group"

    #@f
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 493
    :cond_0
    invoke-static {p0, p1, p2, v0, v1}, Landroid/provider/Contacts$People;->addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;

    #@16
    move-result-object v2

    #@17
    return-object v2
.end method

.method public static createPersonInMyContactsGroup(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 561
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    #@3
    invoke-virtual {p0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 562
    .local v0, "contactUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    #@9
    .line 563
    const-string/jumbo v1, "Contacts"

    #@c
    const-string/jumbo v2, "Failed to create the contact"

    #@f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 564
    return-object v4

    #@13
    .line 567
    :cond_0
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@16
    move-result-wide v2

    #@17
    invoke-static {p0, v2, v3}, Landroid/provider/Contacts$People;->addToMyContactsGroup(Landroid/content/ContentResolver;J)Landroid/net/Uri;

    #@1a
    move-result-object v1

    #@1b
    if-nez v1, :cond_1

    #@1d
    .line 568
    invoke-virtual {p0, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@20
    .line 569
    return-object v4

    #@21
    .line 571
    :cond_1
    return-object v0
.end method

.method public static loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "person"    # Landroid/net/Uri;
    .param p2, "placeholderImageResource"    # I
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 635
    if-nez p1, :cond_0

    #@3
    .line 636
    invoke-static {p2, p0, p3}, Landroid/provider/Contacts$People;->loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@6
    move-result-object v2

    #@7
    return-object v2

    #@8
    .line 639
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@b
    move-result-object v2

    #@c
    invoke-static {v2, p1}, Landroid/provider/Contacts$People;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    #@f
    move-result-object v1

    #@10
    .line 640
    .local v1, "stream":Ljava/io/InputStream;
    if-eqz v1, :cond_2

    #@12
    invoke-static {v1, v3, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@15
    move-result-object v0

    #@16
    .line 641
    :goto_0
    if-nez v0, :cond_1

    #@18
    .line 642
    invoke-static {p2, p0, p3}, Landroid/provider/Contacts$People;->loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@1b
    move-result-object v0

    #@1c
    .line 644
    :cond_1
    return-object v0

    #@1d
    .line 640
    :cond_2
    const/4 v0, 0x0

    #@1e
    .local v0, "bm":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private static loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "placeholderImageResource"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    #@0
    .prologue
    .line 649
    if-nez p0, :cond_0

    #@2
    .line 650
    const/4 v0, 0x0

    #@3
    return-object v0

    #@4
    .line 652
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0, p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static markAsContacted(Landroid/content/ContentResolver;J)V
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "personId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 448
    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    #@3
    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 449
    .local v0, "uri":Landroid/net/Uri;
    const-string/jumbo v2, "update_contact_time"

    #@a
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@d
    move-result-object v0

    #@e
    .line 450
    new-instance v1, Landroid/content/ContentValues;

    #@10
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    #@13
    .line 453
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "last_time_contacted"

    #@16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@19
    move-result-wide v4

    #@1a
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@21
    .line 454
    invoke-virtual {p0, v0, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@24
    .line 447
    return-void
.end method

.method public static openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "person"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 606
    const-string/jumbo v0, "photo"

    #@5
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v1

    #@9
    .line 607
    .local v1, "photoUri":Landroid/net/Uri;
    const/4 v0, 0x1

    #@a
    new-array v2, v0, [Ljava/lang/String;

    #@c
    const-string/jumbo v0, "data"

    #@f
    aput-object v0, v2, v4

    #@11
    move-object v0, p0

    #@12
    move-object v4, v3

    #@13
    move-object v5, v3

    #@14
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@17
    move-result-object v6

    #@18
    .line 609
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    #@1a
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 612
    const/4 v0, 0x0

    #@21
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result-object v7

    #@25
    .line 613
    .local v7, "data":[B
    if-nez v7, :cond_3

    #@27
    .line 618
    if-eqz v6, :cond_0

    #@29
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@2c
    .line 614
    :cond_0
    return-object v3

    #@2d
    .line 618
    .end local v7    # "data":[B
    :cond_1
    if-eqz v6, :cond_2

    #@2f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@32
    .line 610
    :cond_2
    return-object v3

    #@33
    .line 616
    .restart local v7    # "data":[B
    :cond_3
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@35
    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    .line 618
    if-eqz v6, :cond_4

    #@3a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@3d
    .line 616
    :cond_4
    return-object v0

    #@3e
    .line 617
    .end local v7    # "data":[B
    :catchall_0
    move-exception v0

    #@3f
    .line 618
    if-eqz v6, :cond_5

    #@41
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@44
    .line 617
    :cond_5
    throw v0
.end method

.method public static queryGroups(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "person"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 579
    sget-object v1, Landroid/provider/Contacts$GroupMembership;->CONTENT_URI:Landroid/net/Uri;

    #@2
    const-string/jumbo v3, "person=?"

    #@5
    .line 580
    const/4 v0, 0x1

    #@6
    new-array v4, v0, [Ljava/lang/String;

    #@8
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    const/4 v2, 0x0

    #@d
    aput-object v0, v4, v2

    #@f
    const-string/jumbo v5, "name ASC"

    #@12
    .line 579
    const/4 v2, 0x0

    #@13
    move-object v0, p0

    #@14
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public static setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "person"    # Landroid/net/Uri;
    .param p2, "data"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 592
    const-string/jumbo v2, "photo"

    #@4
    invoke-static {p1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@7
    move-result-object v0

    #@8
    .line 593
    .local v0, "photoUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    #@a
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    #@d
    .line 594
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "data"

    #@10
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    #@13
    .line 595
    invoke-virtual {p0, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@16
    .line 591
    return-void
.end method

.method public static tryGetMyContactsGroupId(Landroid/content/ContentResolver;)J
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 463
    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    #@3
    sget-object v2, Landroid/provider/Contacts$People;->GROUPS_PROJECTION:[Ljava/lang/String;

    #@5
    .line 464
    const-string/jumbo v3, "system_id=\'Contacts\'"

    #@8
    move-object v0, p0

    #@9
    move-object v5, v4

    #@a
    .line 463
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@d
    move-result-object v6

    #@e
    .line 465
    .local v6, "groupsCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    #@10
    .line 467
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 468
    const/4 v0, 0x0

    #@17
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-wide v0

    #@1b
    .line 471
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@1e
    .line 468
    return-wide v0

    #@1f
    .line 471
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@22
    .line 474
    :cond_1
    const-wide/16 v0, 0x0

    #@24
    return-wide v0

    #@25
    .line 470
    :catchall_0
    move-exception v0

    #@26
    .line 471
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@29
    .line 470
    throw v0
.end method
