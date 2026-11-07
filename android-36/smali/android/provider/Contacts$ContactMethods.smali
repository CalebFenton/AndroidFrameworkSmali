.class public final Landroid/provider/Contacts$ContactMethods;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$ContactMethodsColumns;
.implements Landroid/provider/Contacts$PeopleColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactMethods"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Contacts$ContactMethods$ProviderNames;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CONTENT_EMAIL_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/email"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONTENT_EMAIL_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/email"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONTENT_EMAIL_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONTENT_IM_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/jabber-im"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONTENT_POSTAL_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/postal-address"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONTENT_POSTAL_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/postal-address"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact-methods"
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

.field public static final whitelist PERSON_ID:Ljava/lang/String; = "person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist POSTAL_LOCATION_LATITUDE:Ljava/lang/String; = "data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist POSTAL_LOCATION_LONGITUDE:Ljava/lang/String; = "aux_data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_AIM:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_GOOGLE_TALK:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_ICQ:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_JABBER:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_MSN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_QQ:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_SKYPE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_YAHOO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1465
    nop

    .line 1466
    const-string v0, "content://contacts/contact_methods"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    .line 1473
    nop

    .line 1474
    const-string v0, "content://contacts/contact_methods/email"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    .line 1473
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p0, "encodedString"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1313
    if-nez p0, :cond_4

    .line 1314
    const/4 v0, 0x0

    return-object v0

    .line 1317
    :cond_4
    const-string/jumbo v0, "pre:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1318
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1321
    :cond_1b
    const-string v0, "custom:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1322
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1325
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the value is not a valid encoded protocol, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist encodeCustomImProtocol(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "protocolString"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist encodePredefinedImProtocol(I)Ljava/lang/String;
    .registers 3
    .param p0, "protocol"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pre:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist getDisplayLabel(Landroid/content/Context;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "kind"    # I
    .param p2, "type"    # I
    .param p3, "label"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1392
    const-string v0, ""

    .line 1393
    .local v0, "display":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_4c

    .line 1429
    const v1, 0x104000f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    .line 1412
    :pswitch_e
    if-eqz p2, :cond_25

    .line 1413
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1416
    .local v2, "labels":[Ljava/lang/CharSequence;
    add-int/lit8 v3, p2, -0x1

    :try_start_1d
    aget-object v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1d .. :try_end_1f} :catch_21

    .line 1419
    .end local v0    # "display":Ljava/lang/CharSequence;
    .local v1, "display":Ljava/lang/CharSequence;
    move-object v0, v1

    goto :goto_24

    .line 1417
    .end local v1    # "display":Ljava/lang/CharSequence;
    .restart local v0    # "display":Ljava/lang/CharSequence;
    :catch_21
    move-exception v3

    .line 1418
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    aget-object v0, v2, v1

    .line 1420
    .end local v2    # "labels":[Ljava/lang/CharSequence;
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_24
    goto :goto_4a

    .line 1421
    :cond_25
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 1422
    move-object v0, p3

    goto :goto_4a

    .line 1395
    :pswitch_2d
    if-eqz p2, :cond_43

    .line 1396
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1070000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1399
    .restart local v2    # "labels":[Ljava/lang/CharSequence;
    add-int/lit8 v3, p2, -0x1

    :try_start_3b
    aget-object v1, v2, v3
    :try_end_3d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3b .. :try_end_3d} :catch_3f

    .line 1402
    .end local v0    # "display":Ljava/lang/CharSequence;
    .restart local v1    # "display":Ljava/lang/CharSequence;
    move-object v0, v1

    goto :goto_42

    .line 1400
    .end local v1    # "display":Ljava/lang/CharSequence;
    .restart local v0    # "display":Ljava/lang/CharSequence;
    :catch_3f
    move-exception v3

    .line 1401
    .restart local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    aget-object v0, v2, v1

    .line 1403
    .end local v2    # "labels":[Ljava/lang/CharSequence;
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_42
    goto :goto_4a

    .line 1404
    :cond_43
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 1405
    move-object v0, p3

    .line 1431
    :cond_4a
    :goto_4a
    return-object v0

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_e
    .end packed-switch
.end method

.method public static greylist-max-o lookupProviderNameFromId(I)Ljava/lang/String;
    .registers 2
    .param p0, "protocol"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1360
    packed-switch p0, :pswitch_data_1e

    .line 1378
    const/4 v0, 0x0

    return-object v0

    .line 1372
    :pswitch_5
    const-string v0, "JABBER"

    return-object v0

    .line 1370
    :pswitch_8
    const-string v0, "ICQ"

    return-object v0

    .line 1362
    :pswitch_b
    const-string v0, "GTalk"

    return-object v0

    .line 1376
    :pswitch_e
    const-string v0, "QQ"

    return-object v0

    .line 1374
    :pswitch_11
    const-string v0, "SKYPE"

    return-object v0

    .line 1368
    :pswitch_14
    const-string v0, "Yahoo"

    return-object v0

    .line 1366
    :pswitch_17
    const-string v0, "MSN"

    return-object v0

    .line 1364
    :pswitch_1a
    const-string v0, "AIM"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist addPostalLocation(Landroid/content/Context;JDD)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "postalId"    # J
    .param p4, "latitude"    # D
    .param p6, "longitude"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1446
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1448
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1449
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "data"

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1450
    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "aux_data"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1451
    sget-object v2, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1452
    .local v2, "loc":Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 1455
    .local v4, "locId":J
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1456
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1457
    sget-object v3, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1458
    return-void
.end method
