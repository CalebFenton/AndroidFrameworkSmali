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
.field public static final ADD_FOR_ALL_USERS:Ljava/lang/String; = "add_for_all_users"

.field public static final ALLOW_VOICEMAILS_PARAM_KEY:Ljava/lang/String; = "allow_voicemails"

.field public static final ANSWERED_EXTERNALLY_TYPE:I = 0x7

.field public static final BLOCKED_TYPE:I = 0x6

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

.field public static final FEATURES_PULLED_EXTERNALLY:I = 0x2

.field public static final FEATURES_VIDEO:I = 0x1

.field public static final GEOCODED_LOCATION:Ljava/lang/String; = "geocoded_location"

.field public static final INCOMING_TYPE:I = 0x1

.field public static final IS_READ:Ljava/lang/String; = "is_read"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "last_modified"

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

.field public static final POST_DIAL_DIGITS:Ljava/lang/String; = "post_dial_digits"

.field public static final PRESENTATION_ALLOWED:I = 0x1

.field public static final PRESENTATION_PAYPHONE:I = 0x4

.field public static final PRESENTATION_RESTRICTED:I = 0x2

.field public static final PRESENTATION_UNKNOWN:I = 0x3

.field public static final REJECTED_TYPE:I = 0x5

.field public static final SHADOW_CONTENT_URI:Landroid/net/Uri;

.field public static final SUB_ID:Ljava/lang/String; = "sub_id"

.field public static final TRANSCRIPTION:Ljava/lang/String; = "transcription"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VIA_NUMBER:Ljava/lang/String; = "via_number"

.field public static final VOICEMAIL_TYPE:I = 0x4

.field public static final VOICEMAIL_URI:Ljava/lang/String; = "voicemail_uri"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 82
    const-string/jumbo v0, "content://call_log/calls"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 81
    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 86
    const-string/jumbo v0, "content://call_log_shadow/calls"

    #@c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@f
    move-result-object v0

    #@10
    .line 85
    sput-object v0, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    #@12
    .line 92
    const-string/jumbo v0, "content://call_log/calls/filter"

    #@15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@18
    move-result-object v0

    #@19
    .line 91
    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_FILTER_URI:Landroid/net/Uri;

    #@1b
    .line 148
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    #@1d
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@20
    move-result-object v0

    #@21
    .line 149
    const-string/jumbo v1, "allow_voicemails"

    #@24
    const-string/jumbo v2, "true"

    #@27
    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@2e
    move-result-object v0

    #@2f
    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    #@31
    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;)Landroid/net/Uri;
    .locals 17
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
    .line 498
    const-string/jumbo v4, ""

    #@3
    const-string/jumbo v5, ""

    #@6
    .line 500
    const/4 v14, 0x0

    #@7
    const/4 v15, 0x0

    #@8
    .line 501
    const/16 v16, 0x0

    #@a
    move-object/from16 v1, p0

    #@c
    move-object/from16 v2, p1

    #@e
    move-object/from16 v3, p2

    #@10
    move/from16 v6, p3

    #@12
    move/from16 v7, p4

    #@14
    move/from16 v8, p5

    #@16
    move-object/from16 v9, p6

    #@18
    move-wide/from16 v10, p7

    #@1a
    move/from16 v12, p9

    #@1c
    move-object/from16 v13, p10

    #@1e
    .line 498
    invoke-static/range {v1 .. v16}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;Z)Landroid/net/Uri;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;)Landroid/net/Uri;
    .locals 17
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "postDialDigits"    # Ljava/lang/String;
    .param p4, "viaNumber"    # Ljava/lang/String;
    .param p5, "presentation"    # I
    .param p6, "callType"    # I
    .param p7, "features"    # I
    .param p8, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p9, "start"    # J
    .param p11, "duration"    # I
    .param p12, "dataUsage"    # Ljava/lang/Long;
    .param p13, "addForAllUsers"    # Z
    .param p14, "userToBeInsertedTo"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 539
    const/16 v16, 0x0

    #@2
    move-object/from16 v1, p0

    #@4
    move-object/from16 v2, p1

    #@6
    move-object/from16 v3, p2

    #@8
    move-object/from16 v4, p3

    #@a
    move-object/from16 v5, p4

    #@c
    move/from16 v6, p5

    #@e
    move/from16 v7, p6

    #@10
    move/from16 v8, p7

    #@12
    move-object/from16 v9, p8

    #@14
    move-wide/from16 v10, p9

    #@16
    move/from16 v12, p11

    #@18
    move-object/from16 v13, p12

    #@1a
    move/from16 v14, p13

    #@1c
    move-object/from16 v15, p14

    #@1e
    .line 537
    invoke-static/range {v1 .. v16}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;Z)Landroid/net/Uri;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;Z)Landroid/net/Uri;
    .locals 39
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "postDialDigits"    # Ljava/lang/String;
    .param p4, "viaNumber"    # Ljava/lang/String;
    .param p5, "presentation"    # I
    .param p6, "callType"    # I
    .param p7, "features"    # I
    .param p8, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p9, "start"    # J
    .param p11, "duration"    # I
    .param p12, "dataUsage"    # Ljava/lang/Long;
    .param p13, "addForAllUsers"    # Z
    .param p14, "userToBeInsertedTo"    # Landroid/os/UserHandle;
    .param p15, "is_read"    # Z

    #@0
    .prologue
    .line 585
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v4

    #@4
    .line 586
    .local v4, "resolver":Landroid/content/ContentResolver;
    const/16 v22, 0x1

    #@6
    .line 588
    .local v22, "numberPresentation":I
    const/16 v26, 0x0

    #@8
    .line 590
    .local v26, "tm":Landroid/telecom/TelecomManager;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v26

    #@c
    .line 593
    .end local v26    # "tm":Landroid/telecom/TelecomManager;
    :goto_0
    const/4 v11, 0x0

    #@d
    .line 594
    .local v11, "accountAddress":Ljava/lang/String;
    if-eqz v26, :cond_0

    #@f
    if-eqz p8, :cond_0

    #@11
    .line 595
    move-object/from16 v0, v26

    #@13
    move-object/from16 v1, p8

    #@15
    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    #@18
    move-result-object v10

    #@19
    .line 596
    .local v10, "account":Landroid/telecom/PhoneAccount;
    if-eqz v10, :cond_0

    #@1b
    .line 597
    invoke-virtual {v10}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    #@1e
    move-result-object v14

    #@1f
    .line 598
    .local v14, "address":Landroid/net/Uri;
    if-eqz v14, :cond_0

    #@21
    .line 599
    invoke-virtual {v14}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@24
    move-result-object v11

    #@25
    .line 609
    .end local v10    # "account":Landroid/telecom/PhoneAccount;
    .end local v11    # "accountAddress":Ljava/lang/String;
    .end local v14    # "address":Landroid/net/Uri;
    :cond_0
    const/4 v5, 0x2

    #@26
    move/from16 v0, p5

    #@28
    if-ne v0, v5, :cond_9

    #@2a
    .line 610
    const/16 v22, 0x2

    #@2c
    .line 617
    :cond_1
    :goto_1
    const/4 v5, 0x1

    #@2d
    move/from16 v0, v22

    #@2f
    if-eq v0, v5, :cond_2

    #@31
    .line 618
    const-string/jumbo p2, ""

    #@34
    .line 619
    if-eqz p0, :cond_2

    #@36
    .line 620
    const-string/jumbo v5, ""

    #@39
    move-object/from16 v0, p0

    #@3b
    iput-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    #@3d
    .line 625
    :cond_2
    const/4 v12, 0x0

    #@3e
    .line 626
    .local v12, "accountComponentString":Ljava/lang/String;
    const/4 v13, 0x0

    #@3f
    .line 627
    .local v13, "accountId":Ljava/lang/String;
    if-eqz p8, :cond_3

    #@41
    .line 628
    invoke-virtual/range {p8 .. p8}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@48
    move-result-object v12

    #@49
    .line 629
    .local v12, "accountComponentString":Ljava/lang/String;
    invoke-virtual/range {p8 .. p8}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    #@4c
    move-result-object v13

    #@4d
    .line 632
    .end local v12    # "accountComponentString":Ljava/lang/String;
    .end local v13    # "accountId":Ljava/lang/String;
    :cond_3
    new-instance v34, Landroid/content/ContentValues;

    #@4f
    const/4 v5, 0x6

    #@50
    move-object/from16 v0, v34

    #@52
    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    #@55
    .line 634
    .local v34, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "number"

    #@58
    move-object/from16 v0, v34

    #@5a
    move-object/from16 v1, p2

    #@5c
    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@5f
    .line 635
    const-string/jumbo v5, "post_dial_digits"

    #@62
    move-object/from16 v0, v34

    #@64
    move-object/from16 v1, p3

    #@66
    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@69
    .line 636
    const-string/jumbo v5, "via_number"

    #@6c
    move-object/from16 v0, v34

    #@6e
    move-object/from16 v1, p4

    #@70
    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@73
    .line 637
    const-string/jumbo v5, "presentation"

    #@76
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@79
    move-result-object v6

    #@7a
    move-object/from16 v0, v34

    #@7c
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@7f
    .line 638
    const-string/jumbo v5, "type"

    #@82
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@85
    move-result-object v6

    #@86
    move-object/from16 v0, v34

    #@88
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@8b
    .line 639
    const-string/jumbo v5, "features"

    #@8e
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@91
    move-result-object v6

    #@92
    move-object/from16 v0, v34

    #@94
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@97
    .line 640
    const-string/jumbo v5, "date"

    #@9a
    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9d
    move-result-object v6

    #@9e
    move-object/from16 v0, v34

    #@a0
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@a3
    .line 641
    const-string/jumbo v5, "duration"

    #@a6
    move/from16 v0, p11

    #@a8
    int-to-long v6, v0

    #@a9
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@ac
    move-result-object v6

    #@ad
    move-object/from16 v0, v34

    #@af
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@b2
    .line 642
    if-eqz p12, :cond_4

    #@b4
    .line 643
    const-string/jumbo v5, "data_usage"

    #@b7
    move-object/from16 v0, v34

    #@b9
    move-object/from16 v1, p12

    #@bb
    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@be
    .line 645
    :cond_4
    const-string/jumbo v5, "subscription_component_name"

    #@c1
    move-object/from16 v0, v34

    #@c3
    invoke-virtual {v0, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@c6
    .line 646
    const-string/jumbo v5, "subscription_id"

    #@c9
    move-object/from16 v0, v34

    #@cb
    invoke-virtual {v0, v5, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@ce
    .line 647
    const-string/jumbo v5, "phone_account_address"

    #@d1
    move-object/from16 v0, v34

    #@d3
    invoke-virtual {v0, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@d6
    .line 648
    const-string/jumbo v5, "new"

    #@d9
    const/4 v6, 0x1

    #@da
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@dd
    move-result-object v6

    #@de
    move-object/from16 v0, v34

    #@e0
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@e3
    .line 649
    const-string/jumbo v6, "add_for_all_users"

    #@e6
    if-eqz p13, :cond_c

    #@e8
    const/4 v5, 0x1

    #@e9
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ec
    move-result-object v5

    #@ed
    move-object/from16 v0, v34

    #@ef
    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@f2
    .line 651
    const/4 v5, 0x3

    #@f3
    move/from16 v0, p6

    #@f5
    if-ne v0, v5, :cond_5

    #@f7
    .line 652
    const-string/jumbo v6, "is_read"

    #@fa
    if-eqz p15, :cond_d

    #@fc
    const/4 v5, 0x1

    #@fd
    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@100
    move-result-object v5

    #@101
    move-object/from16 v0, v34

    #@103
    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@106
    .line 655
    :cond_5
    if-eqz p0, :cond_7

    #@108
    move-object/from16 v0, p0

    #@10a
    iget-wide v6, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    #@10c
    const-wide/16 v8, 0x0

    #@10e
    cmp-long v5, v6, v8

    #@110
    if-lez v5, :cond_7

    #@112
    .line 664
    move-object/from16 v0, p0

    #@114
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    #@116
    if-eqz v5, :cond_e

    #@118
    .line 665
    move-object/from16 v0, p0

    #@11a
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    #@11c
    move-object/from16 v21, v0

    #@11e
    .line 666
    .local v21, "normalizedPhoneNumber":Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    #@120
    .line 667
    const/4 v6, 0x1

    #@121
    new-array v6, v6, [Ljava/lang/String;

    #@123
    const-string/jumbo v7, "_id"

    #@126
    const/4 v8, 0x0

    #@127
    aput-object v7, v6, v8

    #@129
    .line 668
    const-string/jumbo v7, "contact_id =? AND data4 =?"

    #@12c
    .line 669
    const/4 v8, 0x2

    #@12d
    new-array v8, v8, [Ljava/lang/String;

    #@12f
    move-object/from16 v0, p0

    #@131
    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    #@133
    move-wide/from16 v36, v0

    #@135
    invoke-static/range {v36 .. v37}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@138
    move-result-object v9

    #@139
    const/16 v35, 0x0

    #@13b
    aput-object v9, v8, v35

    #@13d
    .line 670
    const/4 v9, 0x1

    #@13e
    aput-object v21, v8, v9

    #@140
    .line 671
    const/4 v9, 0x0

    #@141
    .line 666
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@144
    move-result-object v17

    #@145
    .line 683
    .end local v21    # "normalizedPhoneNumber":Ljava/lang/String;
    .local v17, "cursor":Landroid/database/Cursor;
    :goto_4
    if-eqz v17, :cond_7

    #@147
    .line 685
    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    #@14a
    move-result v5

    #@14b
    if-lez v5, :cond_6

    #@14d
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    #@150
    move-result v5

    #@151
    if-eqz v5, :cond_6

    #@153
    .line 686
    const/4 v5, 0x0

    #@154
    move-object/from16 v0, v17

    #@156
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@159
    move-result-object v18

    #@15a
    .line 687
    .local v18, "dataId":Ljava/lang/String;
    move-object/from16 v0, v18

    #@15c
    invoke-static {v4, v0}, Landroid/provider/CallLog$Calls;->updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V

    #@15f
    .line 688
    const/16 v5, 0x2710

    #@161
    move/from16 v0, p11

    #@163
    if-lt v0, v5, :cond_6

    #@165
    .line 689
    const/4 v5, 0x2

    #@166
    move/from16 v0, p6

    #@168
    if-ne v0, v5, :cond_6

    #@16a
    .line 690
    move-object/from16 v0, p0

    #@16c
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    #@16e
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@171
    move-result v5

    #@172
    .line 688
    if-eqz v5, :cond_6

    #@174
    .line 691
    move-object/from16 v0, p1

    #@176
    move-object/from16 v1, v18

    #@178
    move-object/from16 v2, p2

    #@17a
    invoke-static {v0, v4, v1, v2}, Landroid/provider/CallLog$Calls;->updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17d
    .line 695
    .end local v18    # "dataId":Ljava/lang/String;
    :cond_6
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    #@180
    .line 722
    .end local v17    # "cursor":Landroid/database/Cursor;
    :cond_7
    const/16 v24, 0x0

    #@182
    .line 724
    .local v24, "result":Landroid/net/Uri;
    const-class v5, Landroid/os/UserManager;

    #@184
    move-object/from16 v0, p1

    #@186
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@189
    move-result-object v32

    #@18a
    check-cast v32, Landroid/os/UserManager;

    #@18c
    .line 725
    .local v32, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v32 .. v32}, Landroid/os/UserManager;->getUserHandle()I

    #@18f
    move-result v16

    #@190
    .line 727
    .local v16, "currentUserId":I
    if-eqz p13, :cond_14

    #@192
    .line 730
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@194
    .line 729
    move-object/from16 v0, p1

    #@196
    move-object/from16 v1, v32

    #@198
    move-object/from16 v2, v34

    #@19a
    invoke-static {v0, v1, v5, v2}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@19d
    move-result-object v28

    #@19e
    .line 731
    .local v28, "uriForSystem":Landroid/net/Uri;
    if-eqz v28, :cond_8

    #@1a0
    .line 732
    const-string/jumbo v5, "call_log_shadow"

    #@1a3
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@1a6
    move-result-object v6

    #@1a7
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1aa
    move-result v5

    #@1ab
    .line 731
    if-eqz v5, :cond_10

    #@1ad
    .line 736
    :cond_8
    const/4 v5, 0x0

    #@1ae
    return-object v5

    #@1af
    .line 591
    .end local v16    # "currentUserId":I
    .end local v24    # "result":Landroid/net/Uri;
    .end local v28    # "uriForSystem":Landroid/net/Uri;
    .end local v32    # "userManager":Landroid/os/UserManager;
    .end local v34    # "values":Landroid/content/ContentValues;
    .restart local v26    # "tm":Landroid/telecom/TelecomManager;
    :catch_0
    move-exception v19

    #@1b0
    .local v19, "e":Ljava/lang/UnsupportedOperationException;
    goto/16 :goto_0

    #@1b2
    .line 611
    .end local v19    # "e":Ljava/lang/UnsupportedOperationException;
    .end local v26    # "tm":Landroid/telecom/TelecomManager;
    :cond_9
    const/4 v5, 0x4

    #@1b3
    move/from16 v0, p5

    #@1b5
    if-ne v0, v5, :cond_a

    #@1b7
    .line 612
    const/16 v22, 0x4

    #@1b9
    goto/16 :goto_1

    #@1bb
    .line 613
    :cond_a
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1be
    move-result v5

    #@1bf
    if-nez v5, :cond_b

    #@1c1
    .line 614
    const/4 v5, 0x3

    #@1c2
    move/from16 v0, p5

    #@1c4
    if-ne v0, v5, :cond_1

    #@1c6
    .line 615
    :cond_b
    const/16 v22, 0x3

    #@1c8
    goto/16 :goto_1

    #@1ca
    .line 649
    .restart local v34    # "values":Landroid/content/ContentValues;
    :cond_c
    const/4 v5, 0x0

    #@1cb
    goto/16 :goto_2

    #@1cd
    .line 652
    :cond_d
    const/4 v5, 0x0

    #@1ce
    goto/16 :goto_3

    #@1d0
    .line 673
    :cond_e
    move-object/from16 v0, p0

    #@1d2
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    #@1d4
    if-eqz v5, :cond_f

    #@1d6
    move-object/from16 v0, p0

    #@1d8
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    #@1da
    move-object/from16 v23, v0

    #@1dc
    .line 675
    .local v23, "phoneNumber":Ljava/lang/String;
    :goto_5
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    #@1de
    .line 676
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@1e1
    move-result-object v6

    #@1e2
    .line 675
    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@1e5
    move-result-object v5

    #@1e6
    .line 677
    const/4 v6, 0x1

    #@1e7
    new-array v6, v6, [Ljava/lang/String;

    #@1e9
    const-string/jumbo v7, "_id"

    #@1ec
    const/4 v8, 0x0

    #@1ed
    aput-object v7, v6, v8

    #@1ef
    .line 678
    const-string/jumbo v7, "contact_id =?"

    #@1f2
    .line 679
    const/4 v8, 0x1

    #@1f3
    new-array v8, v8, [Ljava/lang/String;

    #@1f5
    move-object/from16 v0, p0

    #@1f7
    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    #@1f9
    move-wide/from16 v36, v0

    #@1fb
    invoke-static/range {v36 .. v37}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@1fe
    move-result-object v9

    #@1ff
    const/16 v35, 0x0

    #@201
    aput-object v9, v8, v35

    #@203
    .line 680
    const/4 v9, 0x0

    #@204
    .line 674
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@207
    move-result-object v17

    #@208
    .restart local v17    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_4

    #@20a
    .line 673
    .end local v17    # "cursor":Landroid/database/Cursor;
    .end local v23    # "phoneNumber":Ljava/lang/String;
    :cond_f
    move-object/from16 v23, p2

    #@20c
    .restart local v23    # "phoneNumber":Ljava/lang/String;
    goto :goto_5

    #@20d
    .line 694
    .end local v23    # "phoneNumber":Ljava/lang/String;
    .restart local v17    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    #@20e
    .line 695
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    #@211
    .line 694
    throw v5

    #@212
    .line 738
    .end local v17    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "currentUserId":I
    .restart local v24    # "result":Landroid/net/Uri;
    .restart local v28    # "uriForSystem":Landroid/net/Uri;
    .restart local v32    # "userManager":Landroid/os/UserManager;
    :cond_10
    if-nez v16, :cond_11

    #@214
    .line 739
    move-object/from16 v24, v28

    #@216
    .line 744
    .end local v24    # "result":Landroid/net/Uri;
    :cond_11
    const/4 v5, 0x1

    #@217
    move-object/from16 v0, v32

    #@219
    invoke-virtual {v0, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@21c
    move-result-object v33

    #@21d
    .line 746
    .local v33, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    #@220
    move-result v15

    #@221
    .line 747
    .local v15, "count":I
    const/16 v20, 0x0

    #@223
    .local v20, "i":I
    :goto_6
    move/from16 v0, v20

    #@225
    if-ge v0, v15, :cond_15

    #@227
    .line 748
    move-object/from16 v0, v33

    #@229
    move/from16 v1, v20

    #@22b
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22e
    move-result-object v31

    #@22f
    check-cast v31, Landroid/content/pm/UserInfo;

    #@231
    .line 749
    .local v31, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v31 .. v31}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@234
    move-result-object v29

    #@235
    .line 750
    .local v29, "userHandle":Landroid/os/UserHandle;
    invoke-virtual/range {v29 .. v29}, Landroid/os/UserHandle;->getIdentifier()I

    #@238
    move-result v30

    #@239
    .line 752
    .local v30, "userId":I
    invoke-virtual/range {v29 .. v29}, Landroid/os/UserHandle;->isSystem()Z

    #@23c
    move-result v5

    #@23d
    if-eqz v5, :cond_13

    #@23f
    .line 747
    :cond_12
    :goto_7
    add-int/lit8 v20, v20, 0x1

    #@241
    goto :goto_6

    #@242
    .line 757
    :cond_13
    move-object/from16 v0, p1

    #@244
    move-object/from16 v1, v32

    #@246
    move/from16 v2, v30

    #@248
    invoke-static {v0, v1, v2}, Landroid/provider/CallLog$Calls;->shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z

    #@24b
    move-result v5

    #@24c
    if-eqz v5, :cond_12

    #@24e
    .line 765
    move-object/from16 v0, v32

    #@250
    move-object/from16 v1, v29

    #@252
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    #@255
    move-result v5

    #@256
    if-eqz v5, :cond_12

    #@258
    .line 766
    move-object/from16 v0, v32

    #@25a
    move-object/from16 v1, v29

    #@25c
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    #@25f
    move-result v5

    #@260
    .line 765
    if-eqz v5, :cond_12

    #@262
    .line 767
    move-object/from16 v0, p1

    #@264
    move-object/from16 v1, v32

    #@266
    move-object/from16 v2, v29

    #@268
    move-object/from16 v3, v34

    #@26a
    invoke-static {v0, v1, v2, v3}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@26d
    move-result-object v27

    #@26e
    .line 769
    .local v27, "uri":Landroid/net/Uri;
    move/from16 v0, v30

    #@270
    move/from16 v1, v16

    #@272
    if-ne v0, v1, :cond_12

    #@274
    .line 770
    move-object/from16 v24, v27

    #@276
    .local v24, "result":Landroid/net/Uri;
    goto :goto_7

    #@277
    .line 778
    .end local v15    # "count":I
    .end local v20    # "i":I
    .end local v27    # "uri":Landroid/net/Uri;
    .end local v28    # "uriForSystem":Landroid/net/Uri;
    .end local v29    # "userHandle":Landroid/os/UserHandle;
    .end local v30    # "userId":I
    .end local v31    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v33    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v24, "result":Landroid/net/Uri;
    :cond_14
    if-eqz p14, :cond_16

    #@279
    move-object/from16 v25, p14

    #@27b
    .line 781
    .local v25, "targetUserHandle":Landroid/os/UserHandle;
    :goto_8
    move-object/from16 v0, p1

    #@27d
    move-object/from16 v1, v32

    #@27f
    move-object/from16 v2, v25

    #@281
    move-object/from16 v3, v34

    #@283
    invoke-static {v0, v1, v2, v3}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@286
    move-result-object v24

    #@287
    .line 784
    .end local v24    # "result":Landroid/net/Uri;
    .end local v25    # "targetUserHandle":Landroid/os/UserHandle;
    :cond_15
    return-object v24

    #@288
    .line 780
    .restart local v24    # "result":Landroid/net/Uri;
    :cond_16
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@28b
    move-result-object v25

    #@28c
    goto :goto_8
.end method

.method private static addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 825
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v1

    #@5
    .line 830
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    #@d
    .line 831
    :goto_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@10
    move-result v5

    #@11
    .line 829
    invoke-static {v4, v5}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    #@14
    move-result-object v3

    #@15
    .line 838
    .local v3, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v1, v3, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@18
    move-result-object v2

    #@19
    .line 839
    .local v2, "result":Landroid/net/Uri;
    const-string/jumbo v4, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET 500)"

    #@1c
    .line 841
    const/4 v5, 0x0

    #@1d
    .line 839
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 842
    return-object v2

    #@21
    .line 830
    .end local v2    # "result":Landroid/net/Uri;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    sget-object v4, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    #@23
    goto :goto_0

    #@24
    .line 843
    .restart local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    #@25
    .line 844
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "CallLog"

    #@28
    const-string/jumbo v5, "Failed to insert calllog"

    #@2b
    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    .line 848
    return-object v6
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 885
    const/4 v1, 0x0

    #@1
    .line 887
    .local v1, "countryIso":Ljava/lang/String;
    const-string/jumbo v3, "country_detector"

    #@4
    .line 886
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Landroid/location/CountryDetector;

    #@a
    .line 888
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_0

    #@c
    .line 889
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    #@f
    move-result-object v0

    #@10
    .line 890
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_0

    #@12
    .line 891
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 894
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
    .line 805
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    .line 806
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    #@5
    .line 809
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    #@7
    .line 810
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
    .line 811
    const-string/jumbo v3, "type = 2"

    #@13
    .line 813
    const-string/jumbo v5, "date DESC LIMIT 1"

    #@16
    .line 812
    const/4 v4, 0x0

    #@17
    .line 808
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@1a
    move-result-object v6

    #@1b
    .line 814
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    #@1d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_1

    #@23
    .line 817
    const/4 v1, 0x0

    #@24
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result-object v1

    #@28
    .line 819
    if-eqz v6, :cond_0

    #@2a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@2d
    .line 817
    :cond_0
    return-object v1

    #@2e
    .line 815
    :cond_1
    :try_start_1
    const-string/jumbo v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    .line 819
    if-eqz v6, :cond_2

    #@33
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@36
    .line 815
    :cond_2
    return-object v1

    #@37
    .line 818
    .end local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    #@38
    .line 819
    if-eqz v6, :cond_3

    #@3a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@3d
    .line 818
    :cond_3
    throw v1
.end method

.method public static shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 790
    const-string/jumbo v2, "no_outgoing_calls"

    #@4
    .line 791
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@7
    move-result-object v3

    #@8
    .line 790
    invoke-virtual {p1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 792
    return v1

    #@f
    .line 794
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@12
    move-result-object v0

    #@13
    .line 795
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1

    #@15
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_2

    #@1b
    :cond_1
    :goto_0
    return v1

    #@1c
    :cond_2
    const/4 v1, 0x1

    #@1d
    goto :goto_0
.end method

.method private static updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "dataId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 853
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
    .line 855
    const-string/jumbo v2, "type"

    #@e
    .line 856
    const-string/jumbo v3, "call"

    #@11
    .line 853
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@18
    move-result-object v0

    #@19
    .line 858
    .local v0, "feedbackUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    #@1b
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    #@1e
    invoke-virtual {p0, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@21
    .line 852
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
    .line 867
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
    .line 868
    :cond_0
    return-void

    #@d
    .line 870
    :cond_1
    invoke-static {p0}, Landroid/provider/CallLog$Calls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 871
    .local v0, "countryIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_2

    #@17
    .line 872
    return-void

    #@18
    .line 875
    :cond_2
    invoke-static {p0}, Landroid/provider/CallLog$Calls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 874
    invoke-static {p3, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 876
    .local v1, "normalizedNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_3

    #@26
    .line 877
    return-void

    #@27
    .line 879
    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    #@29
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    #@2c
    .line 880
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "data4"

    #@2f
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@32
    .line 881
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
    .line 866
    return-void
.end method
