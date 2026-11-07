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
        Landroid/provider/Contacts$People$Extensions;,
        Landroid/provider/Contacts$People$ContactMethods;,
        Landroid/provider/Contacts$People$Phones;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CONTENT_FILTER_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DELETED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o GROUPS_PROJECTION:[Ljava/lang/String;

.field public static final whitelist PRIMARY_EMAIL_ID:Ljava/lang/String; = "primary_email"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIMARY_ORGANIZATION_ID:Ljava/lang/String; = "primary_organization"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIMARY_PHONE_ID:Ljava/lang/String; = "primary_phone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o WITH_EMAIL_OR_IM_FILTER_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 356
    nop

    .line 357
    const-string v0, "content://contacts/people"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    .line 365
    nop

    .line 366
    const-string v0, "content://contacts/people/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 374
    nop

    .line 375
    const-string v0, "content://contacts/deleted_people"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->DELETED_CONTENT_URI:Landroid/net/Uri;

    .line 390
    nop

    .line 391
    const-string v0, "content://contacts/people/with_email_or_im_filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->WITH_EMAIL_OR_IM_FILTER_URI:Landroid/net/Uri;

    .line 538
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->GROUPS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "personId"    # J
    .param p3, "groupId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 532
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 533
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "person"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 534
    const-string/jumbo v1, "group_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 535
    sget-object v1, Landroid/provider/Contacts$GroupMembership;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist addToGroup(Landroid/content/ContentResolver;JLjava/lang/String;)Landroid/net/Uri;
    .registers 13
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "personId"    # J
    .param p3, "groupName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 501
    const-wide/16 v1, 0x0

    .line 502
    .local v1, "groupId":J
    sget-object v4, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Contacts$People;->GROUPS_PROJECTION:[Ljava/lang/String;

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string/jumbo v6, "name=?"

    move-object v3, p0

    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 504
    .local p0, "groupsCursor":Landroid/database/Cursor;
    if-eqz p0, :cond_2a

    .line 506
    :try_start_15
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 507
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    move-wide v1, v4

    .line 510
    :cond_21
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 511
    goto :goto_2a

    .line 510
    :catchall_25
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 511
    throw v0

    .line 514
    :cond_2a
    :goto_2a
    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-eqz v0, :cond_35

    .line 518
    invoke-static {v3, p1, p2, v1, v2}, Landroid/provider/Contacts$People;->addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 515
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to find the My Contacts group"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist addToMyContactsGroup(Landroid/content/ContentResolver;J)Landroid/net/Uri;
    .registers 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "personId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 481
    invoke-static {p0}, Landroid/provider/Contacts$People;->tryGetMyContactsGroupId(Landroid/content/ContentResolver;)J

    move-result-wide v0

    .line 482
    .local v0, "groupId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_f

    .line 486
    invoke-static {p0, p1, p2, v0, v1}, Landroid/provider/Contacts$People;->addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 483
    :cond_f
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to find the My Contacts group"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist createPersonInMyContactsGroup(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 554
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 555
    .local v0, "contactUri":Landroid/net/Uri;
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 556
    const-string v2, "Contacts"

    const-string v3, "Failed to create the contact"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return-object v1

    .line 560
    :cond_11
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Landroid/provider/Contacts$People;->addToMyContactsGroup(Landroid/content/ContentResolver;J)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 561
    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 562
    return-object v1

    .line 564
    :cond_1f
    return-object v0
.end method

.method public static whitelist loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "person"    # Landroid/net/Uri;
    .param p2, "placeholderImageResource"    # I
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 628
    if-nez p1, :cond_7

    .line 629
    invoke-static {p2, p0, p3}, Landroid/provider/Contacts$People;->loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 632
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Contacts$People;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 633
    .local v0, "stream":Ljava/io/InputStream;
    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-static {v0, v1, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 634
    .local v1, "bm":Landroid/graphics/Bitmap;
    :cond_16
    if-nez v1, :cond_1c

    .line 635
    invoke-static {p2, p0, p3}, Landroid/provider/Contacts$People;->loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 637
    :cond_1c
    return-object v1
.end method

.method private static greylist-max-o loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "placeholderImageResource"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 642
    if-nez p0, :cond_4

    .line 643
    const/4 v0, 0x0

    return-object v0

    .line 645
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist markAsContacted(Landroid/content/ContentResolver;J)V
    .registers 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "personId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 448
    return-void
.end method

.method public static whitelist openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "person"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 599
    const-string/jumbo v0, "photo"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 600
    .local v2, "photoUri":Landroid/net/Uri;
    const-string v0, "data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .end local p0    # "cr":Landroid/content/ContentResolver;
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 602
    .local p0, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    :try_start_18
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_3f

    .line 605
    :cond_1f
    const/4 v3, 0x0

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_38

    .line 606
    .local v3, "data":[B
    if-nez v3, :cond_2d

    .line 607
    nop

    .line 611
    if-eqz p0, :cond_2c

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 607
    :cond_2c
    return-object v0

    .line 609
    :cond_2d
    :try_start_2d
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_38

    .line 611
    if-eqz p0, :cond_37

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 609
    :cond_37
    return-object v0

    .line 611
    .end local v3    # "data":[B
    :catchall_38
    move-exception v0

    if-eqz p0, :cond_3e

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 612
    :cond_3e
    throw v0

    .line 603
    :cond_3f
    :goto_3f
    nop

    .line 611
    if-eqz p0, :cond_45

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 603
    :cond_45
    return-object v0
.end method

.method public static whitelist queryGroups(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .registers 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "person"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 572
    sget-object v1, Landroid/provider/Contacts$GroupMembership;->CONTENT_URI:Landroid/net/Uri;

    .line 573
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 572
    const/4 v2, 0x0

    const-string/jumbo v3, "person=?"

    const-string/jumbo v5, "name ASC"

    move-object v0, p0

    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V
    .registers 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "person"    # Landroid/net/Uri;
    .param p2, "data"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 585
    const-string/jumbo v0, "photo"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 586
    .local v0, "photoUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 587
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 588
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 589
    return-void
.end method

.method public static greylist-max-o tryGetMyContactsGroupId(Landroid/content/ContentResolver;)J
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 456
    sget-object v2, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/Contacts$People;->GROUPS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v4, "system_id=\'Contacts\'"

    move-object v1, p0

    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 458
    .local p0, "groupsCursor":Landroid/database/Cursor;
    if-eqz p0, :cond_28

    .line 460
    :try_start_10
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 461
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_23

    .line 464
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 461
    return-wide v2

    .line 464
    :cond_1f
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 465
    goto :goto_28

    .line 464
    :catchall_23
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 465
    throw v0

    .line 467
    :cond_28
    :goto_28
    const-wide/16 v2, 0x0

    return-wide v2
.end method
