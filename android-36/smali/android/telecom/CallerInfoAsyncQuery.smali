.class public Landroid/telecom/CallerInfoAsyncQuery;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;,
        Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;,
        Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;,
        Landroid/telecom/CallerInfoAsyncQuery$QueryPoolException;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist ENABLE_UNKNOWN_NUMBER_GEO_DESCRIPTION:Z = true

.field private static final blacklist EVENT_ADD_LISTENER:I = 0x2

.field private static final blacklist EVENT_EMERGENCY_NUMBER:I = 0x4

.field private static final blacklist EVENT_END_OF_QUEUE:I = 0x3

.field private static final blacklist EVENT_GET_GEO_DESCRIPTION:I = 0x6

.field private static final blacklist EVENT_NEW_QUERY:I = 0x1

.field private static final blacklist EVENT_VOICEMAIL_NUMBER:I = 0x5

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CallerInfoAsyncQuery"


# instance fields
.field private blacklist mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mrelease(Landroid/telecom/CallerInfoAsyncQuery;)V
    .registers 1

    invoke-direct {p0}, Landroid/telecom/CallerInfoAsyncQuery;->release()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/telecom/CallerInfoAsyncQuery;->sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    return-void
.end method

.method private blacklist allocate(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;

    .line 545
    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    .line 548
    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Landroid/telecom/CallerInfoAsyncQuery;Landroid/content/Context;Landroid/telecom/CallerInfoAsyncQuery-IA;)V

    iput-object v0, p0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 549
    iget-object v0, p0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, p2}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-$$Nest$fputmQueryUri(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)V

    .line 550
    return-void

    .line 546
    :cond_12
    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Landroid/telecom/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 114
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 115
    .local v0, "currentUser":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 119
    .local v1, "myUser":I
    if-eq v1, v0, :cond_26

    .line 122
    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 122
    invoke-virtual {p0, v3, v2, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 124
    .local v3, "otherContext":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_1b} :catch_1c

    return-object v2

    .line 125
    .end local v3    # "otherContext":Landroid/content/Context;
    :catch_1c
    move-exception v3

    .line 126
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Can\'t find self package"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "CallerInfoAsyncQuery"

    invoke-static {v5, v3, v4, v2}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    return-object v2
.end method

.method private greylist release()V
    .registers 3

    .line 557
    iget-object v0, p0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-$$Nest$fputmContext(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)V

    .line 558
    iget-object v0, p0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, v1}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-$$Nest$fputmQueryUri(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)V

    .line 559
    iget-object v0, p0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, v1}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-$$Nest$fputmCallerInfo(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/telecom/CallerInfo;)V

    .line 560
    iput-object v1, p0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 561
    return-void
.end method

.method private static blacklist sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p0, "uri"    # Landroid/net/Uri;

    .line 564
    if-eqz p0, :cond_28

    .line 565
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "uriString":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 567
    .local v1, "indexOfLastSlash":I
    if-lez v1, :cond_27

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/xxxxxxx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 570
    :cond_27
    return-object v0

    .line 573
    .end local v0    # "uriString":Ljava/lang/String;
    .end local v1    # "indexOfLastSlash":I
    :cond_28
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist startQuery(ILandroid/content/Context;Landroid/net/Uri;Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Landroid/telecom/CallerInfoAsyncQuery;
    .registers 16
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;
    .param p3, "listener"    # Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .line 408
    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery;

    invoke-direct {v0}, Landroid/telecom/CallerInfoAsyncQuery;-><init>()V

    .line 409
    .local v0, "c":Landroid/telecom/CallerInfoAsyncQuery;
    invoke-direct {v0, p1, p2}, Landroid/telecom/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    .line 414
    new-instance v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;-><init>(Landroid/telecom/CallerInfoAsyncQuery-IA;)V

    move-object v5, v1

    .line 415
    .local v5, "cw":Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;
    iput-object p3, v5, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->listener:Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 416
    iput-object p4, v5, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 417
    const/4 v1, 0x1

    iput v1, v5, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 419
    iget-object v3, v0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v4, p0

    move-object v6, p2

    .end local p0    # "token":I
    .end local p2    # "contactRef":Landroid/net/Uri;
    .local v4, "token":I
    .local v6, "contactRef":Landroid/net/Uri;
    invoke-virtual/range {v3 .. v10}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    return-object v0
.end method

.method public static blacklist startQuery(ILandroid/content/Context;Ljava/lang/String;Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Landroid/telecom/CallerInfoAsyncQuery;
    .registers 11
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .line 438
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v5

    .line 439
    .local v5, "subId":I
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p0    # "token":I
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "number":Ljava/lang/String;
    .end local p3    # "listener":Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .end local p4    # "cookie":Ljava/lang/Object;
    .local v0, "token":I
    .local v1, "context":Landroid/content/Context;
    .local v2, "number":Ljava/lang/String;
    .local v3, "listener":Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .local v4, "cookie":Ljava/lang/Object;
    invoke-static/range {v0 .. v5}, Landroid/telecom/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;I)Landroid/telecom/CallerInfoAsyncQuery;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist startQuery(ILandroid/content/Context;Ljava/lang/String;Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;I)Landroid/telecom/CallerInfoAsyncQuery;
    .registers 23
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;
    .param p5, "subId"    # I

    .line 464
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 465
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 467
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 466
    const-string/jumbo v5, "sip"

    invoke-virtual {v0, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 474
    .local v7, "contactRef":Landroid/net/Uri;
    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery;

    invoke-direct {v0}, Landroid/telecom/CallerInfoAsyncQuery;-><init>()V

    move-object v12, v0

    .line 475
    .local v12, "c":Landroid/telecom/CallerInfoAsyncQuery;
    invoke-direct {v12, v1, v7}, Landroid/telecom/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    .line 478
    new-instance v6, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;-><init>(Landroid/telecom/CallerInfoAsyncQuery-IA;)V

    .line 479
    .local v6, "cw":Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;
    move-object/from16 v13, p3

    iput-object v13, v6, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->listener:Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 480
    move-object/from16 v14, p4

    iput-object v14, v6, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 481
    iput-object v2, v6, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    .line 482
    iput v3, v6, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->subId:I

    .line 485
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/telephony/TelephonyManager;

    .line 487
    .local v15, "tm":Landroid/telephony/TelephonyManager;
    const/4 v4, 0x0

    .line 489
    .local v4, "isEmergencyNumber":Z
    :try_start_48
    invoke-virtual {v15, v2}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0
    :try_end_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_48 .. :try_end_4c} :catch_4f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_48 .. :try_end_4c} :catch_4f

    .line 496
    .end local v4    # "isEmergencyNumber":Z
    .local v0, "isEmergencyNumber":Z
    move/from16 v16, v0

    goto :goto_56

    .line 490
    .end local v0    # "isEmergencyNumber":Z
    .restart local v4    # "isEmergencyNumber":Z
    :catch_4f
    move-exception v0

    .line 495
    .local v0, "ise":Ljava/lang/RuntimeException;
    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    move/from16 v16, v4

    .line 500
    .end local v0    # "ise":Ljava/lang/RuntimeException;
    .end local v4    # "isEmergencyNumber":Z
    .local v16, "isEmergencyNumber":Z
    :goto_56
    :try_start_56
    invoke-static {v1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0
    :try_end_5a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_56 .. :try_end_5a} :catch_5b

    .line 503
    .local v0, "isVoicemailNumber":Z
    goto :goto_5e

    .line 501
    .end local v0    # "isVoicemailNumber":Z
    :catch_5b
    move-exception v0

    .line 502
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    const/4 v4, 0x0

    move v0, v4

    .line 505
    .local v0, "isVoicemailNumber":Z
    :goto_5e
    if-eqz v16, :cond_64

    .line 506
    const/4 v4, 0x4

    iput v4, v6, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_6d

    .line 507
    :cond_64
    if-eqz v0, :cond_6a

    .line 508
    const/4 v4, 0x5

    iput v4, v6, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_6d

    .line 510
    :cond_6a
    const/4 v4, 0x1

    iput v4, v6, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 513
    :goto_6d
    iget-object v4, v12, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v5, p0

    invoke-virtual/range {v4 .. v11}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return-object v12
.end method


# virtual methods
.method public blacklist addQueryListener(ILandroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V
    .registers 14
    .param p1, "token"    # I
    .param p2, "listener"    # Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p3, "cookie"    # Ljava/lang/Object;

    .line 532
    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;-><init>(Landroid/telecom/CallerInfoAsyncQuery-IA;)V

    move-object v4, v0

    .line 533
    .local v4, "cw":Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;
    iput-object p2, v4, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->listener:Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 534
    iput-object p3, v4, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 535
    const/4 v0, 0x2

    iput v0, v4, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 537
    iget-object v2, p0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    .end local p1    # "token":I
    .local v3, "token":I
    invoke-virtual/range {v2 .. v9}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-void
.end method
