.class public Landroid/provider/CallLog$Calls;
.super Ljava/lang/Object;
.source "CallLog.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation


# static fields
.field public static final ALLOW_VOICEMAILS_PARAM_KEY:Ljava/lang/String; = "allow_voicemails"

.field public static final CACHED_FORMATTED_NUMBER:Ljava/lang/String; = "formatted_number"

.field public static final CACHED_LOOKUP_URI:Ljava/lang/String; = "lookup_uri"

.field public static final CACHED_MATCHED_NUMBER:Ljava/lang/String; = "matched_number"

.field public static final CACHED_NAME:Ljava/lang/String; = "name"

.field public static final CACHED_NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final CACHED_NUMBER_LABEL:Ljava/lang/String; = "numberlabel"

.field public static final CACHED_NUMBER_TYPE:Ljava/lang/String; = "numbertype"

.field public static final CACHED_PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final CACHED_PHOTO_URI:Ljava/lang/String; = "photo_uri"

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/calls"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/calls"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

.field public static final COUNTRY_ISO:Ljava/lang/String; = "countryiso"

.field public static final DATA_USAGE:Ljava/lang/String; = "data_usage"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final EXTRA_CALL_TYPE_FILTER:Ljava/lang/String; = "android.provider.extra.CALL_TYPE_FILTER"

.field public static final FEATURES:Ljava/lang/String; = "features"

.field public static final FEATURES_VIDEO:I = 0x1

.field public static final GEOCODED_LOCATION:Ljava/lang/String; = "geocoded_location"

.field public static final INCOMING_TYPE:I = 0x1

.field public static final IS_READ:Ljava/lang/String; = "is_read"

.field public static final LIMIT_PARAM_KEY:Ljava/lang/String; = "limit"

.field private static final MIN_DURATION_FOR_NORMALIZED_NUMBER_UPDATE_MS:I = 0x2710

.field public static final MISSED_TYPE:I = 0x3

.field public static final NEW:Ljava/lang/String; = "new"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final NUMBER_PRESENTATION:Ljava/lang/String; = "presentation"

.field public static final OFFSET_PARAM_KEY:Ljava/lang/String; = "offset"

.field public static final OUTGOING_TYPE:I = 0x2

.field public static final PHONE_ACCOUNT_ADDRESS:Ljava/lang/String; = "phone_account_address"

.field public static final PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "subscription_component_name"

.field public static final PHONE_ACCOUNT_HIDDEN:Ljava/lang/String; = "phone_account_hidden"

.field public static final PHONE_ACCOUNT_ID:Ljava/lang/String; = "subscription_id"

.field public static final PRESENTATION_ALLOWED:I = 0x1

.field public static final PRESENTATION_PAYPHONE:I = 0x4

.field public static final PRESENTATION_RESTRICTED:I = 0x2

.field public static final PRESENTATION_UNKNOWN:I = 0x3

.field public static final SUB_ID:Ljava/lang/String; = "sub_id"

.field public static final TRANSCRIPTION:Ljava/lang/String; = "transcription"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VOICEMAIL_TYPE:I = 0x4

.field public static final VOICEMAIL_URI:Ljava/lang/String; = "voicemail_uri"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 70
    const-string/jumbo v0, "content://call_log/calls"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 69
    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 76
    const-string/jumbo v0, "content://call_log/calls/filter"

    #@c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@f
    move-result-object v0

    #@10
    .line 75
    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_FILTER_URI:Landroid/net/Uri;

    #@12
    .line 132
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    #@14
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@17
    move-result-object v0

    #@18
    .line 133
    const-string/jumbo v1, "allow_voicemails"

    #@1b
    const-string/jumbo v2, "true"

    #@1e
    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@25
    move-result-object v0

    #@26
    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    #@28
    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;)Landroid/net/Uri;
    .locals 15
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "features"    # I
    .param p6, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p7, "start"    # J
    .param p9, "duration"    # I
    .param p10, "dataUsage"    # Ljava/lang/Long;

    #@0
    .prologue
    .line 424
    const/4 v12, 0x0

    #@1
    const/4 v13, 0x0

    #@2
    move-object v1, p0

    #@3
    move-object/from16 v2, p1

    #@5
    move-object/from16 v3, p2

    #@7
    move/from16 v4, p3

    #@9
    move/from16 v5, p4

    #@b
    move/from16 v6, p5

    #@d
    move-object/from16 v7, p6

    #@f
    move-wide/from16 v8, p7

    #@11
    move/from16 v10, p9

    #@13
    move-object/from16 v11, p10

    #@15
    .line 423
    invoke-static/range {v1 .. v13}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZZ)Landroid/net/Uri;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;Z)Landroid/net/Uri;
    .locals 15
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "features"    # I
    .param p6, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p7, "start"    # J
    .param p9, "duration"    # I
    .param p10, "dataUsage"    # Ljava/lang/Long;
    .param p11, "addForAllUsers"    # Z

    #@0
    .prologue
    .line 456
    const/4 v13, 0x0

    #@1
    move-object v1, p0

    #@2
    move-object/from16 v2, p1

    #@4
    move-object/from16 v3, p2

    #@6
    move/from16 v4, p3

    #@8
    move/from16 v5, p4

    #@a
    move/from16 v6, p5

    #@c
    move-object/from16 v7, p6

    #@e
    move-wide/from16 v8, p7

    #@10
    move/from16 v10, p9

    #@12
    move-object/from16 v11, p10

    #@14
    move/from16 v12, p11

    #@16
    .line 455
    invoke-static/range {v1 .. v13}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZZ)Landroid/net/Uri;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZZ)Landroid/net/Uri;
    .locals 35
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "features"    # I
    .param p6, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p7, "start"    # J
    .param p9, "duration"    # I
    .param p10, "dataUsage"    # Ljava/lang/Long;
    .param p11, "addForAllUsers"    # Z
    .param p12, "is_read"    # Z

    #@0
    .prologue
    .line 488
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v4

    #@4
    .line 489
    .local v4, "resolver":Landroid/content/ContentResolver;
    const/16 v22, 0x1

    #@6
    .line 491
    .local v22, "numberPresentation":I
    const/16 v25, 0x0

    #@8
    .line 493
    .local v25, "tm":Landroid/telecom/TelecomManager;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v25

    #@c
    .line 496
    .end local v25    # "tm":Landroid/telecom/TelecomManager;
    :goto_0
    const/4 v11, 0x0

    #@d
    .line 497
    .local v11, "accountAddress":Ljava/lang/String;
    if-eqz v25, :cond_0

    #@f
    if-eqz p6, :cond_0

    #@11
    .line 498
    move-object/from16 v0, v25

    #@13
    move-object/from16 v1, p6

    #@15
    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    #@18
    move-result-object v10

    #@19
    .line 499
    .local v10, "account":Landroid/telecom/PhoneAccount;
    if-eqz v10, :cond_0

    #@1b
    .line 500
    invoke-virtual {v10}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    #@1e
    move-result-object v14

    #@1f
    .line 501
    .local v14, "address":Landroid/net/Uri;
    if-eqz v14, :cond_0

    #@21
    .line 502
    invoke-virtual {v14}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@24
    move-result-object v11

    #@25
    .line 512
    .end local v10    # "account":Landroid/telecom/PhoneAccount;
    .end local v11    # "accountAddress":Ljava/lang/String;
    .end local v14    # "address":Landroid/net/Uri;
    :cond_0
    const/4 v5, 0x2

    #@26
    move/from16 v0, p3

    #@28
    if-ne v0, v5, :cond_9

    #@2a
    .line 513
    const/16 v22, 0x2

    #@2c
    .line 520
    :cond_1
    :goto_1
    const/4 v5, 0x1

    #@2d
    move/from16 v0, v22

    #@2f
    if-eq v0, v5, :cond_2

    #@31
    .line 521
    const-string/jumbo p2, ""

    #@34
    .line 522
    if-eqz p0, :cond_2

    #@36
    .line 523
    const-string/jumbo v5, ""

    #@39
    move-object/from16 v0, p0

    #@3b
    iput-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    #@3d
    .line 528
    :cond_2
    const/4 v12, 0x0

    #@3e
    .line 529
    .local v12, "accountComponentString":Ljava/lang/String;
    const/4 v13, 0x0

    #@3f
    .line 530
    .local v13, "accountId":Ljava/lang/String;
    if-eqz p6, :cond_3

    #@41
    .line 531
    invoke-virtual/range {p6 .. p6}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@48
    move-result-object v12

    #@49
    .line 532
    .local v12, "accountComponentString":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    #@4c
    move-result-object v13

    #@4d
    .line 535
    .end local v12    # "accountComponentString":Ljava/lang/String;
    .end local v13    # "accountId":Ljava/lang/String;
    :cond_3
    new-instance v31, Landroid/content/ContentValues;

    #@4f
    const/4 v5, 0x6

    #@50
    move-object/from16 v0, v31

    #@52
    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    #@55
    .line 537
    .local v31, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "number"

    #@58
    move-object/from16 v0, v31

    #@5a
    move-object/from16 v1, p2

    #@5c
    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@5f
    .line 538
    const-string/jumbo v5, "presentation"

    #@62
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@65
    move-result-object v6

    #@66
    move-object/from16 v0, v31

    #@68
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@6b
    .line 539
    const-string/jumbo v5, "type"

    #@6e
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@71
    move-result-object v6

    #@72
    move-object/from16 v0, v31

    #@74
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@77
    .line 540
    const-string/jumbo v5, "features"

    #@7a
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7d
    move-result-object v6

    #@7e
    move-object/from16 v0, v31

    #@80
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@83
    .line 541
    const-string/jumbo v5, "date"

    #@86
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@89
    move-result-object v6

    #@8a
    move-object/from16 v0, v31

    #@8c
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@8f
    .line 542
    const-string/jumbo v5, "duration"

    #@92
    move/from16 v0, p9

    #@94
    int-to-long v6, v0

    #@95
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@98
    move-result-object v6

    #@99
    move-object/from16 v0, v31

    #@9b
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@9e
    .line 543
    if-eqz p10, :cond_4

    #@a0
    .line 544
    const-string/jumbo v5, "data_usage"

    #@a3
    move-object/from16 v0, v31

    #@a5
    move-object/from16 v1, p10

    #@a7
    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@aa
    .line 546
    :cond_4
    const-string/jumbo v5, "subscription_component_name"

    #@ad
    move-object/from16 v0, v31

    #@af
    invoke-virtual {v0, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@b2
    .line 547
    const-string/jumbo v5, "subscription_id"

    #@b5
    move-object/from16 v0, v31

    #@b7
    invoke-virtual {v0, v5, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@ba
    .line 548
    const-string/jumbo v5, "phone_account_address"

    #@bd
    move-object/from16 v0, v31

    #@bf
    invoke-virtual {v0, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@c2
    .line 549
    const-string/jumbo v5, "new"

    #@c5
    const/4 v6, 0x1

    #@c6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c9
    move-result-object v6

    #@ca
    move-object/from16 v0, v31

    #@cc
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@cf
    .line 551
    const/4 v5, 0x3

    #@d0
    move/from16 v0, p4

    #@d2
    if-ne v0, v5, :cond_5

    #@d4
    .line 552
    const-string/jumbo v6, "is_read"

    #@d7
    if-eqz p12, :cond_c

    #@d9
    const/4 v5, 0x1

    #@da
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@dd
    move-result-object v5

    #@de
    move-object/from16 v0, v31

    #@e0
    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@e3
    .line 555
    :cond_5
    if-eqz p0, :cond_7

    #@e5
    move-object/from16 v0, p0

    #@e7
    iget-wide v6, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    #@e9
    const-wide/16 v8, 0x0

    #@eb
    cmp-long v5, v6, v8

    #@ed
    if-lez v5, :cond_7

    #@ef
    .line 564
    move-object/from16 v0, p0

    #@f1
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    #@f3
    if-eqz v5, :cond_d

    #@f5
    .line 565
    move-object/from16 v0, p0

    #@f7
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    #@f9
    move-object/from16 v21, v0

    #@fb
    .line 566
    .local v21, "normalizedPhoneNumber":Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    #@fd
    .line 567
    const/4 v6, 0x1

    #@fe
    new-array v6, v6, [Ljava/lang/String;

    #@100
    const-string/jumbo v7, "_id"

    #@103
    const/4 v8, 0x0

    #@104
    aput-object v7, v6, v8

    #@106
    .line 568
    const-string/jumbo v7, "contact_id =? AND data4 =?"

    #@109
    .line 569
    const/4 v8, 0x2

    #@10a
    new-array v8, v8, [Ljava/lang/String;

    #@10c
    move-object/from16 v0, p0

    #@10e
    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    #@110
    move-wide/from16 v32, v0

    #@112
    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@115
    move-result-object v9

    #@116
    const/16 v32, 0x0

    #@118
    aput-object v9, v8, v32

    #@11a
    .line 570
    const/4 v9, 0x1

    #@11b
    aput-object v21, v8, v9

    #@11d
    .line 571
    const/4 v9, 0x0

    #@11e
    .line 566
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@121
    move-result-object v17

    #@122
    .line 583
    .end local v21    # "normalizedPhoneNumber":Ljava/lang/String;
    .local v17, "cursor":Landroid/database/Cursor;
    :goto_3
    if-eqz v17, :cond_7

    #@124
    .line 585
    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    #@127
    move-result v5

    #@128
    if-lez v5, :cond_6

    #@12a
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    #@12d
    move-result v5

    #@12e
    if-eqz v5, :cond_6

    #@130
    .line 586
    const/4 v5, 0x0

    #@131
    move-object/from16 v0, v17

    #@133
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@136
    move-result-object v18

    #@137
    .line 587
    .local v18, "dataId":Ljava/lang/String;
    move-object/from16 v0, v18

    #@139
    invoke-static {v4, v0}, Landroid/provider/CallLog$Calls;->updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V

    #@13c
    .line 588
    const/16 v5, 0x2710

    #@13e
    move/from16 v0, p9

    #@140
    if-lt v0, v5, :cond_6

    #@142
    .line 589
    const/4 v5, 0x2

    #@143
    move/from16 v0, p4

    #@145
    if-ne v0, v5, :cond_6

    #@147
    .line 590
    move-object/from16 v0, p0

    #@149
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    #@14b
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14e
    move-result v5

    #@14f
    .line 588
    if-eqz v5, :cond_6

    #@151
    .line 591
    move-object/from16 v0, p1

    #@153
    move-object/from16 v1, v18

    #@155
    move-object/from16 v2, p2

    #@157
    invoke-static {v0, v4, v1, v2}, Landroid/provider/CallLog$Calls;->updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15a
    .line 595
    .end local v18    # "dataId":Ljava/lang/String;
    :cond_6
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    #@15d
    .line 600
    .end local v17    # "cursor":Landroid/database/Cursor;
    :cond_7
    const/16 v24, 0x0

    #@15f
    .line 602
    .local v24, "result":Landroid/net/Uri;
    if-eqz p11, :cond_10

    #@161
    .line 606
    const-string/jumbo v5, "user"

    #@164
    .line 605
    move-object/from16 v0, p1

    #@166
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@169
    move-result-object v29

    #@16a
    check-cast v29, Landroid/os/UserManager;

    #@16c
    .line 607
    .local v29, "userManager":Landroid/os/UserManager;
    const/4 v5, 0x1

    #@16d
    move-object/from16 v0, v29

    #@16f
    invoke-virtual {v0, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@172
    move-result-object v30

    #@173
    .line 608
    .local v30, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {v29 .. v29}, Landroid/os/UserManager;->getUserHandle()I

    #@176
    move-result v16

    #@177
    .line 609
    .local v16, "currentUserId":I
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    #@17a
    move-result v15

    #@17b
    .line 610
    .local v15, "count":I
    const/16 v20, 0x0

    #@17d
    .end local v24    # "result":Landroid/net/Uri;
    .local v20, "i":I
    :goto_4
    move/from16 v0, v20

    #@17f
    if-ge v0, v15, :cond_11

    #@181
    .line 611
    move-object/from16 v0, v30

    #@183
    move/from16 v1, v20

    #@185
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@188
    move-result-object v27

    #@189
    check-cast v27, Landroid/content/pm/UserInfo;

    #@18b
    .line 612
    .local v27, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v27 .. v27}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@18e
    move-result-object v28

    #@18f
    .line 613
    .local v28, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, v29

    #@191
    move-object/from16 v1, v28

    #@193
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    #@196
    move-result v5

    #@197
    if-eqz v5, :cond_8

    #@199
    .line 614
    const-string/jumbo v5, "no_outgoing_calls"

    #@19c
    move-object/from16 v0, v29

    #@19e
    move-object/from16 v1, v28

    #@1a0
    invoke-virtual {v0, v5, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    #@1a3
    move-result v5

    #@1a4
    if-eqz v5, :cond_f

    #@1a6
    .line 610
    :cond_8
    :goto_5
    add-int/lit8 v20, v20, 0x1

    #@1a8
    goto :goto_4

    #@1a9
    .line 494
    .end local v15    # "count":I
    .end local v16    # "currentUserId":I
    .end local v20    # "i":I
    .end local v27    # "user":Landroid/content/pm/UserInfo;
    .end local v28    # "userHandle":Landroid/os/UserHandle;
    .end local v29    # "userManager":Landroid/os/UserManager;
    .end local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v31    # "values":Landroid/content/ContentValues;
    .restart local v25    # "tm":Landroid/telecom/TelecomManager;
    :catch_0
    move-exception v19

    #@1aa
    .local v19, "e":Ljava/lang/UnsupportedOperationException;
    goto/16 :goto_0

    #@1ac
    .line 514
    .end local v19    # "e":Ljava/lang/UnsupportedOperationException;
    .end local v25    # "tm":Landroid/telecom/TelecomManager;
    :cond_9
    const/4 v5, 0x4

    #@1ad
    move/from16 v0, p3

    #@1af
    if-ne v0, v5, :cond_a

    #@1b1
    .line 515
    const/16 v22, 0x4

    #@1b3
    goto/16 :goto_1

    #@1b5
    .line 516
    :cond_a
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1b8
    move-result v5

    #@1b9
    if-nez v5, :cond_b

    #@1bb
    .line 517
    const/4 v5, 0x3

    #@1bc
    move/from16 v0, p3

    #@1be
    if-ne v0, v5, :cond_1

    #@1c0
    .line 518
    :cond_b
    const/16 v22, 0x3

    #@1c2
    goto/16 :goto_1

    #@1c4
    .line 552
    .restart local v31    # "values":Landroid/content/ContentValues;
    :cond_c
    const/4 v5, 0x0

    #@1c5
    goto/16 :goto_2

    #@1c7
    .line 573
    :cond_d
    move-object/from16 v0, p0

    #@1c9
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    #@1cb
    if-eqz v5, :cond_e

    #@1cd
    move-object/from16 v0, p0

    #@1cf
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    #@1d1
    move-object/from16 v23, v0

    #@1d3
    .line 575
    .local v23, "phoneNumber":Ljava/lang/String;
    :goto_6
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    #@1d5
    .line 576
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@1d8
    move-result-object v6

    #@1d9
    .line 575
    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@1dc
    move-result-object v5

    #@1dd
    .line 577
    const/4 v6, 0x1

    #@1de
    new-array v6, v6, [Ljava/lang/String;

    #@1e0
    const-string/jumbo v7, "_id"

    #@1e3
    const/4 v8, 0x0

    #@1e4
    aput-object v7, v6, v8

    #@1e6
    .line 578
    const-string/jumbo v7, "contact_id =?"

    #@1e9
    .line 579
    const/4 v8, 0x1

    #@1ea
    new-array v8, v8, [Ljava/lang/String;

    #@1ec
    move-object/from16 v0, p0

    #@1ee
    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    #@1f0
    move-wide/from16 v32, v0

    #@1f2
    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@1f5
    move-result-object v9

    #@1f6
    const/16 v32, 0x0

    #@1f8
    aput-object v9, v8, v32

    #@1fa
    .line 580
    const/4 v9, 0x0

    #@1fb
    .line 574
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@1fe
    move-result-object v17

    #@1ff
    .restart local v17    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_3

    #@201
    .line 573
    .end local v17    # "cursor":Landroid/database/Cursor;
    .end local v23    # "phoneNumber":Ljava/lang/String;
    :cond_e
    move-object/from16 v23, p2

    #@203
    .restart local v23    # "phoneNumber":Ljava/lang/String;
    goto :goto_6

    #@204
    .line 594
    .end local v23    # "phoneNumber":Ljava/lang/String;
    .restart local v17    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    #@205
    .line 595
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    #@208
    .line 594
    throw v5

    #@209
    .line 616
    .end local v17    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "count":I
    .restart local v16    # "currentUserId":I
    .restart local v20    # "i":I
    .restart local v27    # "user":Landroid/content/pm/UserInfo;
    .restart local v28    # "userHandle":Landroid/os/UserHandle;
    .restart local v29    # "userManager":Landroid/os/UserManager;
    .restart local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_f
    invoke-virtual/range {v27 .. v27}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@20c
    move-result v5

    #@20d
    if-nez v5, :cond_8

    #@20f
    .line 618
    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    #@211
    move-object/from16 v0, v27

    #@213
    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    #@215
    invoke-static {v5, v6}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    #@218
    move-result-object v5

    #@219
    .line 617
    move-object/from16 v0, p1

    #@21b
    move-object/from16 v1, v31

    #@21d
    invoke-static {v0, v5, v1}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@220
    move-result-object v26

    #@221
    .line 619
    .local v26, "uri":Landroid/net/Uri;
    move-object/from16 v0, v27

    #@223
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@225
    move/from16 v0, v16

    #@227
    if-ne v5, v0, :cond_8

    #@229
    .line 620
    move-object/from16 v24, v26

    #@22b
    .local v24, "result":Landroid/net/Uri;
    goto/16 :goto_5

    #@22d
    .line 625
    .end local v15    # "count":I
    .end local v16    # "currentUserId":I
    .end local v20    # "i":I
    .end local v26    # "uri":Landroid/net/Uri;
    .end local v27    # "user":Landroid/content/pm/UserInfo;
    .end local v28    # "userHandle":Landroid/os/UserHandle;
    .end local v29    # "userManager":Landroid/os/UserManager;
    .end local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v24, "result":Landroid/net/Uri;
    :cond_10
    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    #@22f
    move-object/from16 v0, p1

    #@231
    move-object/from16 v1, v31

    #@233
    invoke-static {v0, v5, v1}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@236
    move-result-object v24

    #@237
    .line 628
    .end local v24    # "result":Landroid/net/Uri;
    :cond_11
    return-object v24
.end method

.method private static addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 658
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    .line 659
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@7
    move-result-object v1

    #@8
    .line 660
    .local v1, "result":Landroid/net/Uri;
    const-string/jumbo v2, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET 500)"

    #@b
    .line 662
    const/4 v3, 0x0

    #@c
    .line 660
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@f
    .line 663
    return-object v1
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 699
    const/4 v1, 0x0

    #@1
    .line 701
    .local v1, "countryIso":Ljava/lang/String;
    const-string/jumbo v3, "country_detector"

    #@4
    .line 700
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Landroid/location/CountryDetector;

    #@a
    .line 702
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_0

    #@c
    .line 703
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    #@f
    move-result-object v0

    #@10
    .line 704
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_0

    #@12
    .line 705
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 708
    .end local v0    # "country":Landroid/location/Country;
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 638
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    .line 639
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    #@5
    .line 642
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    #@7
    .line 643
    const/4 v2, 0x1

    #@8
    new-array v2, v2, [Ljava/lang/String;

    #@a
    const-string/jumbo v3, "number"

    #@d
    const/4 v4, 0x0

    #@e
    aput-object v3, v2, v4

    #@10
    .line 644
    const-string/jumbo v3, "type = 2"

    #@13
    .line 646
    const-string/jumbo v5, "date DESC LIMIT 1"

    #@16
    .line 645
    const/4 v4, 0x0

    #@17
    .line 641
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@1a
    move-result-object v6

    #@1b
    .line 647
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    #@1d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_1

    #@23
    .line 650
    const/4 v1, 0x0

    #@24
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result-object v1

    #@28
    .line 652
    if-eqz v6, :cond_0

    #@2a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@2d
    .line 650
    :cond_0
    return-object v1

    #@2e
    .line 648
    :cond_1
    :try_start_1
    const-string/jumbo v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    .line 652
    if-eqz v6, :cond_2

    #@33
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@36
    .line 648
    :cond_2
    return-object v1

    #@37
    .line 651
    .end local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    #@38
    .line 652
    if-eqz v6, :cond_3

    #@3a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@3d
    .line 651
    :cond_3
    throw v1
.end method

.method private static updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "dataId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 667
    sget-object v1, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    #@3
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@a
    move-result-object v1

    #@b
    .line 669
    const-string/jumbo v2, "type"

    #@e
    .line 670
    const-string/jumbo v3, "call"

    #@11
    .line 667
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@18
    move-result-object v0

    #@19
    .line 672
    .local v0, "feedbackUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    #@1b
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    #@1e
    invoke-virtual {p0, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@21
    .line 666
    return-void
.end method

.method private static updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 681
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 682
    :cond_0
    return-void

    #@d
    .line 684
    :cond_1
    invoke-static {p0}, Landroid/provider/CallLog$Calls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 685
    .local v0, "countryIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_2

    #@17
    .line 686
    return-void

    #@18
    .line 689
    :cond_2
    invoke-static {p0}, Landroid/provider/CallLog$Calls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 688
    invoke-static {p3, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 690
    .local v1, "normalizedNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_3

    #@26
    .line 691
    return-void

    #@27
    .line 693
    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    #@29
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    #@2c
    .line 694
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "data4"

    #@2f
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@32
    .line 695
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    #@34
    const-string/jumbo v4, "_id=?"

    #@37
    const/4 v5, 0x1

    #@38
    new-array v5, v5, [Ljava/lang/String;

    #@3a
    const/4 v6, 0x0

    #@3b
    aput-object p2, v5, v6

    #@3d
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@40
    .line 680
    return-void
.end method
