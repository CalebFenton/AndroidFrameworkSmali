.class public final Landroid/provider/Telephony$Sms;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Telephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$Sms$Inbox;,
        Landroid/provider/Telephony$Sms$Sent;,
        Landroid/provider/Telephony$Sms$Draft;,
        Landroid/provider/Telephony$Sms$Outbox;,
        Landroid/provider/Telephony$Sms$Conversations;,
        Landroid/provider/Telephony$Sms$Intents;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 317
    const-string/jumbo v0, "content://sms"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 274
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;
    .locals 12
    .param p0, "subId"    # I
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "date"    # Ljava/lang/Long;
    .param p7, "read"    # Z
    .param p8, "deliveryReport"    # Z

    #@0
    .prologue
    .line 364
    const-wide/16 v10, -0x1

    #@2
    move v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move-object v4, p3

    #@6
    move-object/from16 v5, p4

    #@8
    move-object/from16 v6, p5

    #@a
    move-object/from16 v7, p6

    #@c
    move/from16 v8, p7

    #@e
    move/from16 v9, p8

    #@10
    .line 363
    invoke-static/range {v1 .. v11}, Landroid/provider/Telephony$Sms;->addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;
    .locals 5
    .param p0, "subId"    # I
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "date"    # Ljava/lang/Long;
    .param p7, "read"    # Z
    .param p8, "deliveryReport"    # Z
    .param p9, "threadId"    # J

    #@0
    .prologue
    .line 409
    new-instance v0, Landroid/content/ContentValues;

    #@2
    const/16 v1, 0x8

    #@4
    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    #@7
    .line 410
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "Telephony"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Telephony addMessageToUri sub id: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 412
    const-string/jumbo v1, "sub_id"

    #@24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@2b
    .line 413
    const-string/jumbo v1, "address"

    #@2e
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@31
    .line 414
    if-eqz p6, :cond_0

    #@33
    .line 415
    const-string/jumbo v1, "date"

    #@36
    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@39
    .line 417
    :cond_0
    const-string/jumbo v2, "read"

    #@3c
    if-eqz p7, :cond_3

    #@3e
    const/4 v1, 0x1

    #@3f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@42
    move-result-object v1

    #@43
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@46
    .line 418
    const-string/jumbo v1, "subject"

    #@49
    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@4c
    .line 419
    const-string/jumbo v1, "body"

    #@4f
    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@52
    .line 420
    if-eqz p8, :cond_1

    #@54
    .line 421
    const-string/jumbo v1, "status"

    #@57
    const/16 v2, 0x20

    #@59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@60
    .line 423
    :cond_1
    const-wide/16 v2, -0x1

    #@62
    cmp-long v1, p9, v2

    #@64
    if-eqz v1, :cond_2

    #@66
    .line 424
    const-string/jumbo v1, "thread_id"

    #@69
    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@70
    .line 426
    :cond_2
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@73
    move-result-object v1

    #@74
    return-object v1

    #@75
    .line 417
    :cond_3
    const/4 v1, 0x0

    #@76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@79
    move-result-object v1

    #@7a
    goto :goto_0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;
    .locals 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z
    .param p7, "deliveryReport"    # Z

    #@0
    .prologue
    .line 341
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    #@3
    move-result v1

    #@4
    .line 342
    const-wide/16 v10, -0x1

    #@6
    move-object v2, p0

    #@7
    move-object v3, p1

    #@8
    move-object v4, p2

    #@9
    move-object v5, p3

    #@a
    move-object/from16 v6, p4

    #@c
    move-object/from16 v7, p5

    #@e
    move/from16 v8, p6

    #@10
    move/from16 v9, p7

    #@12
    .line 341
    invoke-static/range {v1 .. v11}, Landroid/provider/Telephony$Sms;->addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;
    .locals 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z
    .param p7, "deliveryReport"    # Z
    .param p8, "threadId"    # J

    #@0
    .prologue
    .line 385
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    #@3
    move-result v1

    #@4
    move-object v2, p0

    #@5
    move-object v3, p1

    #@6
    move-object v4, p2

    #@7
    move-object v5, p3

    #@8
    move-object/from16 v6, p4

    #@a
    move-object/from16 v7, p5

    #@c
    move/from16 v8, p6

    #@e
    move/from16 v9, p7

    #@10
    move-wide/from16 v10, p8

    #@12
    invoke-static/range {v1 .. v11}, Landroid/provider/Telephony$Sms;->addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public static getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 289
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    #@5
    move-result-object v0

    #@6
    .line 290
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    #@8
    .line 291
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 293
    :cond_0
    return-object v2
.end method

.method public static isOutgoingFolder(I)Z
    .locals 2
    .param p0, "messageType"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 482
    const/4 v1, 0x5

    #@2
    if-eq p0, v1, :cond_0

    #@4
    .line 483
    const/4 v1, 0x4

    #@5
    if-ne p0, v1, :cond_1

    #@7
    .line 482
    :cond_0
    :goto_0
    return v0

    #@8
    .line 484
    :cond_1
    const/4 v1, 0x2

    #@9
    if-eq p0, v1, :cond_0

    #@b
    .line 485
    const/4 v1, 0x6

    #@c
    if-eq p0, v1, :cond_0

    #@e
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public static moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "folder"    # I
    .param p3, "error"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    .line 440
    if-nez p1, :cond_0

    #@5
    .line 441
    return v9

    #@6
    .line 444
    :cond_0
    const/4 v7, 0x0

    #@7
    .line 445
    .local v7, "markAsUnread":Z
    const/4 v6, 0x0

    #@8
    .line 446
    .local v6, "markAsRead":Z
    packed-switch p2, :pswitch_data_0

    #@b
    .line 459
    return v9

    #@c
    .line 452
    :pswitch_0
    const/4 v6, 0x1

    #@d
    .line 462
    :goto_0
    :pswitch_1
    new-instance v3, Landroid/content/ContentValues;

    #@f
    const/4 v0, 0x3

    #@10
    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    #@13
    .line 464
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "type"

    #@16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@1d
    .line 465
    if-eqz v7, :cond_2

    #@1f
    .line 466
    const-string/jumbo v0, "read"

    #@22
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@29
    .line 470
    :cond_1
    :goto_1
    const-string/jumbo v0, "error_code"

    #@2c
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@33
    .line 472
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@36
    move-result-object v1

    #@37
    move-object v0, p0

    #@38
    move-object v2, p1

    #@39
    move-object v5, v4

    #@3a
    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@3d
    move-result v0

    #@3e
    if-ne v8, v0, :cond_3

    #@40
    move v0, v8

    #@41
    :goto_2
    return v0

    #@42
    .line 456
    .end local v3    # "values":Landroid/content/ContentValues;
    :pswitch_2
    const/4 v7, 0x1

    #@43
    .line 457
    goto :goto_0

    #@44
    .line 467
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_2
    if-eqz v6, :cond_1

    #@46
    .line 468
    const-string/jumbo v0, "read"

    #@49
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@50
    goto :goto_1

    #@51
    :cond_3
    move v0, v9

    #@52
    .line 472
    goto :goto_2

    #@53
    .line 446
    nop

    #@54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static query(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "projection"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 301
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    #@3
    const-string/jumbo v5, "date DESC"

    #@6
    move-object v0, p0

    #@7
    move-object v2, p1

    #@8
    move-object v4, v3

    #@9
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 310
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    #@3
    .line 311
    if-nez p3, :cond_0

    #@5
    const-string/jumbo v5, "date DESC"

    #@8
    :goto_0
    move-object v0, p0

    #@9
    move-object v2, p1

    #@a
    move-object v3, p2

    #@b
    .line 310
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    :cond_0
    move-object v5, p3

    #@11
    .line 311
    goto :goto_0
.end method
