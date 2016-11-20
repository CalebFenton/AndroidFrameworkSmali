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
.field public static final CONTENT_EMAIL_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/email"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_EMAIL_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/email"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_EMAIL_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_IM_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/jabber-im"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_POSTAL_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/postal-address"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_POSTAL_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/postal-address"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact-methods"
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

.field public static final PERSON_ID:Ljava/lang/String; = "person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSTAL_LOCATION_LATITUDE:Ljava/lang/String; = "data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSTAL_LOCATION_LONGITUDE:Ljava/lang/String; = "aux_data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_AIM:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_GOOGLE_TALK:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_ICQ:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_JABBER:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_MSN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_QQ:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_SKYPE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTOCOL_YAHOO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1472
    const-string/jumbo v0, "content://contacts/contact_methods"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 1471
    sput-object v0, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 1480
    const-string/jumbo v0, "content://contacts/contact_methods/email"

    #@c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@f
    move-result-object v0

    #@10
    .line 1479
    sput-object v0, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    #@12
    .line 1233
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "encodedString"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1319
    if-nez p0, :cond_0

    #@3
    .line 1320
    return-object v0

    #@4
    .line 1323
    :cond_0
    const-string/jumbo v0, "pre:"

    #@7
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1324
    const/4 v0, 0x4

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@15
    move-result v0

    #@16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v0

    #@1a
    return-object v0

    #@1b
    .line 1327
    :cond_1
    const-string/jumbo v0, "custom:"

    #@1e
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 1328
    const/4 v0, 0x7

    #@25
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0

    #@2a
    .line 1331
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2c
    .line 1332
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v2, "the value is not a valid encoded protocol, "

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 1331
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0
.end method

.method public static encodeCustomImProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "protocolString"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "custom:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static encodePredefinedImProtocol(I)Ljava/lang/String;
    .locals 2
    .param p0, "protocol"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "pre:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static final getDisplayLabel(Landroid/content/Context;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "kind"    # I
    .param p2, "type"    # I
    .param p3, "label"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1398
    const-string/jumbo v0, ""

    #@4
    .line 1399
    .local v0, "display":Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_0

    #@7
    .line 1435
    const v3, 0x104000f

    #@a
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 1437
    :cond_0
    :goto_0
    return-object v0

    #@f
    .line 1401
    :pswitch_0
    if-eqz p2, :cond_1

    #@11
    .line 1402
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@14
    move-result-object v3

    #@15
    .line 1403
    const/high16 v4, 0x1070000

    #@17
    .line 1402
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    #@1a
    move-result-object v2

    #@1b
    .line 1405
    .local v2, "labels":[Ljava/lang/CharSequence;
    add-int/lit8 v3, p2, -0x1

    #@1d
    :try_start_0
    aget-object v0, v2, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    goto :goto_0

    #@20
    .line 1406
    :catch_0
    move-exception v1

    #@21
    .line 1407
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    aget-object v0, v2, v5

    #@23
    goto :goto_0

    #@24
    .line 1410
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2    # "labels":[Ljava/lang/CharSequence;
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@27
    move-result v3

    #@28
    if-nez v3, :cond_0

    #@2a
    .line 1411
    move-object v0, p3

    #@2b
    goto :goto_0

    #@2c
    .line 1418
    :pswitch_1
    if-eqz p2, :cond_2

    #@2e
    .line 1419
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@31
    move-result-object v3

    #@32
    .line 1420
    const v4, 0x1070004

    #@35
    .line 1419
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    #@38
    move-result-object v2

    #@39
    .line 1422
    .restart local v2    # "labels":[Ljava/lang/CharSequence;
    add-int/lit8 v3, p2, -0x1

    #@3b
    :try_start_1
    aget-object v0, v2, v3
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    #@3d
    goto :goto_0

    #@3e
    .line 1423
    :catch_1
    move-exception v1

    #@3f
    .line 1424
    .restart local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    aget-object v0, v2, v5

    #@41
    goto :goto_0

    #@42
    .line 1427
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2    # "labels":[Ljava/lang/CharSequence;
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@45
    move-result v3

    #@46
    if-nez v3, :cond_0

    #@48
    .line 1428
    move-object v0, p3

    #@49
    goto :goto_0

    #@4a
    .line 1399
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static lookupProviderNameFromId(I)Ljava/lang/String;
    .locals 1
    .param p0, "protocol"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1366
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1384
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 1368
    :pswitch_0
    const-string/jumbo v0, "GTalk"

    #@8
    return-object v0

    #@9
    .line 1370
    :pswitch_1
    const-string/jumbo v0, "AIM"

    #@c
    return-object v0

    #@d
    .line 1372
    :pswitch_2
    const-string/jumbo v0, "MSN"

    #@10
    return-object v0

    #@11
    .line 1374
    :pswitch_3
    const-string/jumbo v0, "Yahoo"

    #@14
    return-object v0

    #@15
    .line 1376
    :pswitch_4
    const-string/jumbo v0, "ICQ"

    #@18
    return-object v0

    #@19
    .line 1378
    :pswitch_5
    const-string/jumbo v0, "JABBER"

    #@1c
    return-object v0

    #@1d
    .line 1380
    :pswitch_6
    const-string/jumbo v0, "SKYPE"

    #@20
    return-object v0

    #@21
    .line 1382
    :pswitch_7
    const-string/jumbo v0, "QQ"

    #@24
    return-object v0

    #@25
    .line 1366
    nop

    #@26
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public addPostalLocation(Landroid/content/Context;JDD)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "postalId"    # J
    .param p4, "latitude"    # D
    .param p6, "longitude"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1452
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v1

    #@5
    .line 1454
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    #@7
    const/4 v5, 0x2

    #@8
    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    #@b
    .line 1455
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "data"

    #@e
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@11
    move-result-object v6

    #@12
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    #@15
    .line 1456
    const-string/jumbo v5, "aux_data"

    #@18
    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    #@1f
    .line 1457
    sget-object v5, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    #@21
    invoke-virtual {v1, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@24
    move-result-object v0

    #@25
    .line 1458
    .local v0, "loc":Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@28
    move-result-wide v2

    #@29
    .line 1461
    .local v2, "locId":J
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    #@2c
    .line 1462
    const-string/jumbo v5, "aux_data"

    #@2f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@36
    .line 1463
    sget-object v5, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    #@38
    invoke-static {v5, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v1, v5, v4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@3f
    .line 1451
    return-void
.end method
