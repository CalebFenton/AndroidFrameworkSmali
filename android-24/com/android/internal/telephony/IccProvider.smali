.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field protected static final ADN:I = 0x1

.field protected static final ADN_ALL:I = 0x7

.field protected static final ADN_SUB:I = 0x2

.field private static final DBG:Z = true

.field protected static final FDN:I = 0x3

.field protected static final FDN_SUB:I = 0x4

.field protected static final SDN:I = 0x5

.field protected static final SDN_SUB:I = 0x6

.field protected static final STR_EMAILS:Ljava/lang/String; = "emails"

.field protected static final STR_NUMBER:Ljava/lang/String; = "number"

.field protected static final STR_PIN2:Ljava/lang/String; = "pin2"

.field protected static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    .line 48
    new-array v0, v6, [Ljava/lang/String;

    #@6
    .line 49
    const-string/jumbo v1, "name"

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    .line 50
    const-string/jumbo v1, "number"

    #@f
    aput-object v1, v0, v3

    #@11
    .line 51
    const-string/jumbo v1, "emails"

    #@14
    aput-object v1, v0, v4

    #@16
    .line 52
    const-string/jumbo v1, "_id"

    #@19
    aput-object v1, v0, v5

    #@1b
    .line 48
    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    #@1d
    .line 69
    new-instance v0, Landroid/content/UriMatcher;

    #@1f
    const/4 v1, -0x1

    #@20
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    #@23
    .line 68
    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    #@25
    .line 72
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    #@27
    const-string/jumbo v1, "icc"

    #@2a
    const-string/jumbo v2, "adn"

    #@2d
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    #@30
    .line 73
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    #@32
    const-string/jumbo v1, "icc"

    #@35
    const-string/jumbo v2, "adn/subId/#"

    #@38
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    #@3b
    .line 74
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    #@3d
    const-string/jumbo v1, "icc"

    #@40
    const-string/jumbo v2, "fdn"

    #@43
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    #@46
    .line 75
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    #@48
    const-string/jumbo v1, "icc"

    #@4b
    const-string/jumbo v2, "fdn/subId/#"

    #@4e
    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    #@51
    .line 76
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    #@53
    const-string/jumbo v1, "icc"

    #@56
    const-string/jumbo v2, "sdn"

    #@59
    const/4 v3, 0x5

    #@5a
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    #@5d
    .line 77
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    #@5f
    const-string/jumbo v1, "icc"

    #@62
    const-string/jumbo v2, "sdn/subId/#"

    #@65
    const/4 v3, 0x6

    #@66
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    #@69
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    #@3
    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # I

    #@0
    .prologue
    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "addIccRecordToEf: efType=0x"

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 431
    const-string/jumbo v3, ", name="

    #@1b
    .line 430
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 431
    const-string/jumbo v3, ", number="

    #@26
    .line 430
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 431
    const-string/jumbo v3, ", emails="

    #@31
    .line 430
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    move-object/from16 v0, p4

    #@37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 432
    const-string/jumbo v3, ", subscription="

    #@3e
    .line 430
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    move/from16 v0, p6

    #@44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    #@4f
    .line 434
    const/4 v11, 0x0

    #@50
    .line 443
    .local v11, "success":Z
    :try_start_0
    const-string/jumbo v2, "simphonebook"

    #@53
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@56
    move-result-object v2

    #@57
    .line 442
    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    #@5a
    move-result-object v1

    #@5b
    .line 444
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    #@5d
    .line 446
    const-string/jumbo v4, ""

    #@60
    const-string/jumbo v5, ""

    #@63
    move/from16 v2, p6

    #@65
    move v3, p1

    #@66
    move-object v6, p2

    #@67
    move-object v7, p3

    #@68
    move-object/from16 v8, p5

    #@6a
    .line 445
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    move-result v11

    #@6e
    .line 453
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v11    # "success":Z
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v3, "addIccRecordToEf: "

    #@76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v2

    #@7e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v2

    #@82
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    #@85
    .line 454
    return v11

    #@86
    .line 450
    .restart local v11    # "success":Z
    :catch_0
    move-exception v10

    #@87
    .line 451
    .local v10, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v10}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    #@8a
    move-result-object v2

    #@8b
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    #@8e
    goto :goto_0

    #@8f
    .line 448
    .end local v10    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v9

    #@90
    .local v9, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # I

    #@0
    .prologue
    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "deleteIccRecordFromEf: efType=0x"

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    .line 487
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 486
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 488
    const-string/jumbo v3, ", name="

    #@1b
    .line 486
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 488
    const-string/jumbo v3, ", number="

    #@26
    .line 486
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 488
    const-string/jumbo v3, ", emails="

    #@31
    .line 486
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    move-object/from16 v0, p4

    #@37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 489
    const-string/jumbo v3, ", pin2="

    #@3e
    .line 486
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    move-object/from16 v0, p5

    #@44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    .line 489
    const-string/jumbo v3, ", subscription="

    #@4b
    .line 486
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    move/from16 v0, p6

    #@51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    #@5c
    .line 491
    const/4 v11, 0x0

    #@5d
    .line 495
    .local v11, "success":Z
    :try_start_0
    const-string/jumbo v2, "simphonebook"

    #@60
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@63
    move-result-object v2

    #@64
    .line 494
    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    #@67
    move-result-object v1

    #@68
    .line 496
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    #@6a
    .line 498
    const-string/jumbo v6, ""

    #@6d
    const-string/jumbo v7, ""

    #@70
    move/from16 v2, p6

    #@72
    move v3, p1

    #@73
    move-object v4, p2

    #@74
    move-object v5, p3

    #@75
    move-object/from16 v8, p5

    #@77
    .line 497
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@7a
    move-result v11

    #@7b
    .line 505
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v11    # "success":Z
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v3, "deleteIccRecordFromEf: "

    #@83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v2

    #@8f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    #@92
    .line 506
    return v11

    #@93
    .line 502
    .restart local v11    # "success":Z
    :catch_0
    move-exception v10

    #@94
    .line 503
    .local v10, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v10}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    #@97
    move-result-object v2

    #@98
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    #@9b
    goto :goto_0

    #@9c
    .line 500
    .end local v10    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v9

    #@9d
    .local v9, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getRequestSubId(Landroid/net/Uri;)I
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "getRequestSubId url: "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    #@17
    .line 548
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    move-result v1

    #@1f
    return v1

    #@20
    .line 549
    :catch_0
    move-exception v0

    #@21
    .line 550
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@23
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v3, "Unknown URL "

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v1
.end method

.method private loadAllSimContacts(I)Landroid/database/Cursor;
    .locals 8
    .param p1, "efType"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 125
    iget-object v5, p0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@3
    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    #@6
    move-result-object v4

    #@7
    .line 127
    .local v4, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_0

    #@9
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@c
    move-result v5

    #@d
    if-nez v5, :cond_2

    #@f
    .line 128
    :cond_0
    new-array v1, v6, [Landroid/database/Cursor;

    #@11
    .line 141
    .local v1, "result":[Landroid/database/Cursor;
    :cond_1
    new-instance v5, Landroid/database/MergeCursor;

    #@13
    invoke-direct {v5, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    #@16
    return-object v5

    #@17
    .line 130
    .end local v1    # "result":[Landroid/database/Cursor;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@1a
    move-result v3

    #@1b
    .line 131
    .local v3, "subIdCount":I
    new-array v1, v3, [Landroid/database/Cursor;

    #@1d
    .line 134
    .restart local v1    # "result":[Landroid/database/Cursor;
    const/4 v0, 0x0

    #@1e
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@20
    .line 135
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v5

    #@24
    check-cast v5, Landroid/telephony/SubscriptionInfo;

    #@26
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    #@29
    move-result v2

    #@2a
    .line 136
    .local v2, "subId":I
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    #@2d
    move-result-object v5

    #@2e
    aput-object v5, v1, v0

    #@30
    .line 137
    const-string/jumbo v5, "IccProvider"

    #@33
    new-instance v6, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v7, "ADN Records loaded for Subscription ::"

    #@3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 134
    add-int/lit8 v0, v0, 0x1

    #@4c
    goto :goto_0
.end method

.method private loadFromEf(II)Landroid/database/MatrixCursor;
    .locals 9
    .param p1, "efType"    # I
    .param p2, "subId"    # I

    #@0
    .prologue
    .line 395
    new-instance v7, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v8, "loadFromEf: efType=0x"

    #@8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v7

    #@c
    .line 396
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@f
    move-result-object v8

    #@10
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@13
    move-result-object v8

    #@14
    .line 395
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v7

    #@18
    .line 396
    const-string/jumbo v8, ", subscription="

    #@1b
    .line 395
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v7

    #@1f
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v7

    #@23
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    #@2a
    .line 398
    const/4 v1, 0x0

    #@2b
    .line 401
    .local v1, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :try_start_0
    const-string/jumbo v7, "simphonebook"

    #@2e
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@31
    move-result-object v7

    #@32
    .line 400
    invoke-static {v7}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    #@35
    move-result-object v6

    #@36
    .line 402
    .local v6, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v6, :cond_0

    #@38
    .line 403
    invoke-interface {v6, p2, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    move-result-object v1

    #@3c
    .line 411
    .end local v1    # "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v6    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    #@3e
    .line 413
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@41
    move-result v0

    #@42
    .line 414
    .local v0, "N":I
    new-instance v2, Landroid/database/MatrixCursor;

    #@44
    sget-object v7, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    #@46
    invoke-direct {v2, v7, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    #@49
    .line 415
    .local v2, "cursor":Landroid/database/MatrixCursor;
    new-instance v7, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v8, "adnRecords.size="

    #@51
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v7

    #@55
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v7

    #@59
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v7

    #@5d
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    #@60
    .line 416
    const/4 v5, 0x0

    #@61
    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_1

    #@63
    .line 417
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@66
    move-result-object v7

    #@67
    check-cast v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@69
    invoke-direct {p0, v7, v2, v5}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V

    #@6c
    .line 416
    add-int/lit8 v5, v5, 0x1

    #@6e
    goto :goto_1

    #@6f
    .line 407
    .end local v0    # "N":I
    .end local v2    # "cursor":Landroid/database/MatrixCursor;
    .end local v5    # "i":I
    .restart local v1    # "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :catch_0
    move-exception v4

    #@70
    .line 408
    .local v4, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v4}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    #@73
    move-result-object v7

    #@74
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    #@77
    goto :goto_0

    #@78
    .line 419
    .end local v1    # "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v4    # "ex":Ljava/lang/SecurityException;
    .restart local v0    # "N":I
    .restart local v2    # "cursor":Landroid/database/MatrixCursor;
    .restart local v5    # "i":I
    :cond_1
    return-object v2

    #@79
    .line 422
    .end local v0    # "N":I
    .end local v2    # "cursor":Landroid/database/MatrixCursor;
    .end local v5    # "i":I
    :cond_2
    const-string/jumbo v7, "IccProvider"

    #@7c
    const-string/jumbo v8, "Cannot load ADN records"

    #@7f
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@82
    .line 423
    new-instance v7, Landroid/database/MatrixCursor;

    #@84
    sget-object v8, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    #@86
    invoke-direct {v7, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    #@89
    return-object v7

    #@8a
    .line 405
    .restart local v1    # "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :catch_1
    move-exception v3

    #@8b
    .local v3, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 10
    .param p1, "record"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;
    .param p3, "id"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 516
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    #@4
    move-result v7

    #@5
    if-nez v7, :cond_2

    #@7
    .line 517
    const/4 v7, 0x4

    #@8
    new-array v1, v7, [Ljava/lang/Object;

    #@a
    .line 518
    .local v1, "contact":[Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 519
    .local v0, "alphaTag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    .line 521
    .local v5, "number":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v8, "loadRecord: "

    #@1a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v7

    #@1e
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v7

    #@22
    const-string/jumbo v8, ", "

    #@25
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v7

    #@2d
    const-string/jumbo v8, ","

    #@30
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v7

    #@38
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    #@3b
    .line 522
    aput-object v0, v1, v6

    #@3d
    .line 523
    const/4 v7, 0x1

    #@3e
    aput-object v5, v1, v7

    #@40
    .line 525
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    .line 526
    .local v4, "emails":[Ljava/lang/String;
    if-eqz v4, :cond_1

    #@46
    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    .line 528
    .local v3, "emailString":Ljava/lang/StringBuilder;
    array-length v7, v4

    #@4c
    :goto_0
    if-ge v6, v7, :cond_0

    #@4e
    aget-object v2, v4, v6

    #@50
    .line 529
    .local v2, "email":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v9, "Adding email:"

    #@58
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v8

    #@5c
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v8

    #@60
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v8

    #@64
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    #@67
    .line 530
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    .line 531
    const-string/jumbo v8, ","

    #@6d
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 528
    add-int/lit8 v6, v6, 0x1

    #@72
    goto :goto_0

    #@73
    .line 533
    .end local v2    # "email":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v6

    #@77
    const/4 v7, 0x2

    #@78
    aput-object v6, v1, v7

    #@7a
    .line 535
    .end local v3    # "emailString":Ljava/lang/StringBuilder;
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7d
    move-result-object v6

    #@7e
    const/4 v7, 0x3

    #@7f
    aput-object v6, v1, v7

    #@81
    .line 536
    invoke-virtual {p2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    #@84
    .line 515
    .end local v0    # "alphaTag":Ljava/lang/String;
    .end local v1    # "contact":[Ljava/lang/Object;
    .end local v4    # "emails":[Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 541
    const-string/jumbo v0, "IccProvider"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[IccProvider] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 540
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "inVal"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x27

    #@2
    const/4 v2, 0x0

    #@3
    .line 243
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    .line 245
    .local v0, "len":I
    if-nez v0, :cond_0

    #@9
    .line 246
    const-string/jumbo v2, "len of input String is 0"

    #@c
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    #@f
    .line 247
    return-object p1

    #@10
    .line 249
    :cond_0
    move-object v1, p1

    #@11
    .line 251
    .local v1, "retVal":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v2

    #@15
    if-ne v2, v3, :cond_1

    #@17
    add-int/lit8 v2, v0, -0x1

    #@19
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v2

    #@1d
    if-ne v2, v3, :cond_1

    #@1f
    .line 252
    add-int/lit8 v2, v0, -0x1

    #@21
    const/4 v3, 0x1

    #@22
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    .line 255
    :cond_1
    return-object v1
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "efType"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "oldNumber"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "newNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "subId"    # I

    #@0
    .prologue
    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "updateIccRecordInEf: efType=0x"

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 461
    const-string/jumbo v3, ", oldname="

    #@1b
    .line 460
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 461
    const-string/jumbo v3, ", oldnumber="

    #@26
    .line 460
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 462
    const-string/jumbo v3, ", newname="

    #@31
    .line 460
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    move-object/from16 v0, p4

    #@37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 462
    const-string/jumbo v3, ", newnumber="

    #@3e
    .line 460
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    move-object/from16 v0, p5

    #@44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    .line 463
    const-string/jumbo v3, ", subscription="

    #@4b
    .line 460
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    move/from16 v0, p7

    #@51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    #@5c
    .line 465
    const/4 v11, 0x0

    #@5d
    .line 469
    .local v11, "success":Z
    :try_start_0
    const-string/jumbo v2, "simphonebook"

    #@60
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@63
    move-result-object v2

    #@64
    .line 468
    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    #@67
    move-result-object v1

    #@68
    .line 470
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    #@6a
    move/from16 v2, p7

    #@6c
    move v3, p1

    #@6d
    move-object v4, p2

    #@6e
    move-object v5, p3

    #@6f
    move-object/from16 v6, p4

    #@71
    move-object/from16 v7, p5

    #@73
    move-object/from16 v8, p6

    #@75
    .line 471
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@78
    move-result v11

    #@79
    .line 479
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v11    # "success":Z
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v3, "updateIccRecordInEf: "

    #@81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v2

    #@8d
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    #@90
    .line 480
    return v11

    #@91
    .line 476
    .restart local v11    # "success":Z
    :catch_0
    move-exception v10

    #@92
    .line 477
    .local v10, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v10}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    #@95
    move-result-object v2

    #@96
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    #@99
    goto :goto_0

    #@9a
    .line 474
    .end local v10    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v9

    #@9b
    .local v9, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 19
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 263
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    #@7
    move-result v10

    #@8
    .line 264
    .local v10, "match":I
    packed-switch v10, :pswitch_data_0

    #@b
    .line 286
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@d
    .line 287
    new-instance v17, Ljava/lang/StringBuilder;

    #@f
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v18, "Cannot insert into URL: "

    #@15
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v17

    #@19
    move-object/from16 v0, v17

    #@1b
    move-object/from16 v1, p1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v17

    #@21
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v17

    #@25
    .line 286
    move-object/from16 v0, v17

    #@27
    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 266
    :pswitch_0
    const/16 v3, 0x6f3a

    #@2d
    .line 267
    .local v3, "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    #@30
    move-result v8

    #@31
    .line 290
    .local v8, "subId":I
    :goto_0
    const-string/jumbo v2, "delete"

    #@34
    move-object/from16 v0, p0

    #@36
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    #@39
    .line 293
    const/4 v4, 0x0

    #@3a
    .line 294
    .local v4, "tag":Ljava/lang/String;
    const/4 v5, 0x0

    #@3b
    .line 295
    .local v5, "number":Ljava/lang/String;
    const/4 v6, 0x0

    #@3c
    .line 296
    .local v6, "emails":[Ljava/lang/String;
    const/4 v7, 0x0

    #@3d
    .line 298
    .local v7, "pin2":Ljava/lang/String;
    const-string/jumbo v2, "AND"

    #@40
    move-object/from16 v0, p2

    #@42
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@45
    move-result-object v15

    #@46
    .line 299
    .local v15, "tokens":[Ljava/lang/String;
    array-length v11, v15

    #@47
    .line 301
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    .end local v7    # "pin2":Ljava/lang/String;
    .local v11, "n":I
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, -0x1

    #@49
    if-ltz v11, :cond_5

    #@4b
    .line 302
    aget-object v13, v15, v11

    #@4d
    .line 303
    .local v13, "param":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v17, "parsing \'"

    #@55
    move-object/from16 v0, v17

    #@57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    const-string/jumbo v17, "\'"

    #@62
    move-object/from16 v0, v17

    #@64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v2

    #@6c
    move-object/from16 v0, p0

    #@6e
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    #@71
    .line 305
    const-string/jumbo v2, "="

    #@74
    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@77
    move-result-object v12

    #@78
    .line 307
    .local v12, "pair":[Ljava/lang/String;
    array-length v2, v12

    #@79
    const/16 v17, 0x2

    #@7b
    move/from16 v0, v17

    #@7d
    if-eq v2, v0, :cond_1

    #@7f
    .line 308
    const-string/jumbo v2, "IccProvider"

    #@82
    new-instance v17, Ljava/lang/StringBuilder;

    #@84
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v18, "resolve: bad whereClause parameter: "

    #@8a
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v17

    #@8e
    move-object/from16 v0, v17

    #@90
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v17

    #@94
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v17

    #@98
    move-object/from16 v0, v17

    #@9a
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9d
    goto :goto_1

    #@9e
    .line 271
    .end local v3    # "efType":I
    .end local v6    # "emails":[Ljava/lang/String;
    .end local v8    # "subId":I
    .end local v11    # "n":I
    .end local v12    # "pair":[Ljava/lang/String;
    .end local v13    # "param":Ljava/lang/String;
    .end local v15    # "tokens":[Ljava/lang/String;
    :pswitch_1
    const/16 v3, 0x6f3a

    #@a0
    .line 272
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    #@a3
    move-result v8

    #@a4
    .restart local v8    # "subId":I
    goto :goto_0

    #@a5
    .line 276
    .end local v3    # "efType":I
    .end local v8    # "subId":I
    :pswitch_2
    const/16 v3, 0x6f3b

    #@a7
    .line 277
    .restart local v3    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    #@aa
    move-result v8

    #@ab
    .restart local v8    # "subId":I
    goto :goto_0

    #@ac
    .line 281
    .end local v3    # "efType":I
    .end local v8    # "subId":I
    :pswitch_3
    const/16 v3, 0x6f3b

    #@ae
    .line 282
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    #@b1
    move-result v8

    #@b2
    .restart local v8    # "subId":I
    goto/16 :goto_0

    #@b4
    .line 311
    .restart local v6    # "emails":[Ljava/lang/String;
    .restart local v11    # "n":I
    .restart local v12    # "pair":[Ljava/lang/String;
    .restart local v13    # "param":Ljava/lang/String;
    .restart local v15    # "tokens":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #@b5
    aget-object v2, v12, v2

    #@b7
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@ba
    move-result-object v9

    #@bb
    .line 312
    .local v9, "key":Ljava/lang/String;
    const/4 v2, 0x1

    #@bc
    aget-object v2, v12, v2

    #@be
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@c1
    move-result-object v16

    #@c2
    .line 314
    .local v16, "val":Ljava/lang/String;
    const-string/jumbo v2, "tag"

    #@c5
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c8
    move-result v2

    #@c9
    if-eqz v2, :cond_2

    #@cb
    .line 315
    move-object/from16 v0, p0

    #@cd
    move-object/from16 v1, v16

    #@cf
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    #@d2
    move-result-object v4

    #@d3
    .local v4, "tag":Ljava/lang/String;
    goto/16 :goto_1

    #@d5
    .line 316
    .end local v4    # "tag":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "number"

    #@d8
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@db
    move-result v2

    #@dc
    if-eqz v2, :cond_3

    #@de
    .line 317
    move-object/from16 v0, p0

    #@e0
    move-object/from16 v1, v16

    #@e2
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    #@e5
    move-result-object v5

    #@e6
    .local v5, "number":Ljava/lang/String;
    goto/16 :goto_1

    #@e8
    .line 318
    .end local v5    # "number":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "emails"

    #@eb
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ee
    move-result v2

    #@ef
    if-eqz v2, :cond_4

    #@f1
    .line 320
    const/4 v6, 0x0

    #@f2
    goto/16 :goto_1

    #@f4
    .line 321
    :cond_4
    const-string/jumbo v2, "pin2"

    #@f7
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fa
    move-result v2

    #@fb
    if-eqz v2, :cond_0

    #@fd
    .line 322
    move-object/from16 v0, p0

    #@ff
    move-object/from16 v1, v16

    #@101
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    #@104
    move-result-object v7

    #@105
    .local v7, "pin2":Ljava/lang/String;
    goto/16 :goto_1

    #@107
    .line 326
    .end local v7    # "pin2":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    .end local v12    # "pair":[Ljava/lang/String;
    .end local v13    # "param":Ljava/lang/String;
    .end local v16    # "val":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x3

    #@108
    if-ne v3, v2, :cond_6

    #@10a
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10d
    move-result v2

    #@10e
    if-eqz v2, :cond_6

    #@110
    .line 327
    const/4 v2, 0x0

    #@111
    return v2

    #@112
    :cond_6
    move-object/from16 v2, p0

    #@114
    .line 330
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z

    #@117
    move-result v14

    #@118
    .line 331
    .local v14, "success":Z
    if-nez v14, :cond_7

    #@11a
    .line 332
    const/4 v2, 0x0

    #@11b
    return v2

    #@11c
    .line 335
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    #@11f
    move-result-object v2

    #@120
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@123
    move-result-object v2

    #@124
    const/16 v17, 0x0

    #@126
    move-object/from16 v0, p1

    #@128
    move-object/from16 v1, v17

    #@12a
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    #@12d
    .line 336
    const/4 v2, 0x1

    #@12e
    return v2

    #@12f
    .line 264
    nop

    #@130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 146
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    #@5
    move-result v0

    #@6
    packed-switch v0, :pswitch_data_0

    #@9
    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Unknown URL "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 154
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/sim-contact"

    #@26
    return-object v0

    #@27
    .line 146
    nop

    #@28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 165
    const/4 v5, 0x0

    #@2
    .line 168
    .local v5, "pin2":Ljava/lang/String;
    const-string/jumbo v0, "insert"

    #@5
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    #@8
    .line 170
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    #@a
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    #@d
    move-result v8

    #@e
    .line 171
    .local v8, "match":I
    packed-switch v8, :pswitch_data_0

    #@11
    .line 195
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@13
    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v11, "Cannot insert into URL: "

    #@1b
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    .line 195
    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 173
    :pswitch_0
    const/16 v1, 0x6f3a

    #@2d
    .line 174
    .local v1, "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    #@30
    move-result v6

    #@31
    .line 199
    .end local v5    # "pin2":Ljava/lang/String;
    .local v6, "subId":I
    :goto_0
    const-string/jumbo v0, "tag"

    #@34
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 200
    .local v2, "tag":Ljava/lang/String;
    const-string/jumbo v0, "number"

    #@3b
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    .local v3, "number":Ljava/lang/String;
    move-object v0, p0

    #@40
    .line 202
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z

    #@43
    move-result v10

    #@44
    .line 204
    .local v10, "success":Z
    if-nez v10, :cond_0

    #@46
    .line 205
    return-object v4

    #@47
    .line 178
    .end local v1    # "efType":I
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    .end local v6    # "subId":I
    .end local v10    # "success":Z
    .restart local v5    # "pin2":Ljava/lang/String;
    :pswitch_1
    const/16 v1, 0x6f3a

    #@49
    .line 179
    .restart local v1    # "efType":I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    #@4c
    move-result v6

    #@4d
    .restart local v6    # "subId":I
    goto :goto_0

    #@4e
    .line 183
    .end local v1    # "efType":I
    .end local v6    # "subId":I
    :pswitch_2
    const/16 v1, 0x6f3b

    #@50
    .line 184
    .restart local v1    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    #@53
    move-result v6

    #@54
    .line 185
    .restart local v6    # "subId":I
    const-string/jumbo v0, "pin2"

    #@57
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    .local v5, "pin2":Ljava/lang/String;
    goto :goto_0

    #@5c
    .line 189
    .end local v1    # "efType":I
    .end local v6    # "subId":I
    .local v5, "pin2":Ljava/lang/String;
    :pswitch_3
    const/16 v1, 0x6f3b

    #@5e
    .line 190
    .restart local v1    # "efType":I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    #@61
    move-result v6

    #@62
    .line 191
    .restart local v6    # "subId":I
    const-string/jumbo v0, "pin2"

    #@65
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    .local v5, "pin2":Ljava/lang/String;
    goto :goto_0

    #@6a
    .line 208
    .end local v5    # "pin2":Ljava/lang/String;
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v3    # "number":Ljava/lang/String;
    .restart local v10    # "success":Z
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    #@6c
    const-string/jumbo v0, "content://icc/"

    #@6f
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@72
    .line 209
    .local v7, "buf":Ljava/lang/StringBuilder;
    packed-switch v8, :pswitch_data_1

    #@75
    .line 228
    :goto_1
    const/4 v0, 0x0

    #@76
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    .line 230
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v0

    #@7d
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@80
    move-result-object v9

    #@81
    .line 232
    .local v9, "resultUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    #@84
    move-result-object v0

    #@85
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@88
    move-result-object v0

    #@89
    invoke-virtual {v0, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    #@8c
    .line 239
    return-object v9

    #@8d
    .line 211
    .end local v9    # "resultUri":Landroid/net/Uri;
    :pswitch_4
    const-string/jumbo v0, "adn/"

    #@90
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    goto :goto_1

    #@94
    .line 215
    :pswitch_5
    const-string/jumbo v0, "adn/subId/"

    #@97
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    goto :goto_1

    #@9b
    .line 219
    :pswitch_6
    const-string/jumbo v0, "fdn/"

    #@9e
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    goto :goto_1

    #@a2
    .line 223
    :pswitch_7
    const-string/jumbo v0, "fdn/subId/"

    #@a5
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    goto :goto_1

    #@a9
    .line 171
    nop

    #@aa
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    #@b6
    .line 209
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    #@0
    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@a
    .line 85
    const/4 v0, 0x1

    #@b
    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x6f49

    #@2
    const/16 v2, 0x6f3b

    #@4
    const/16 v1, 0x6f3a

    #@6
    .line 91
    const-string/jumbo v0, "query"

    #@9
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    #@c
    .line 93
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    #@e
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    #@11
    move-result v0

    #@12
    packed-switch v0, :pswitch_data_0

    #@15
    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "Unknown URL "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 96
    :pswitch_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    #@32
    move-result v0

    #@33
    .line 95
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    #@36
    move-result-object v0

    #@37
    return-object v0

    #@38
    .line 99
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    #@3b
    move-result v0

    #@3c
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    #@3f
    move-result-object v0

    #@40
    return-object v0

    #@41
    .line 103
    :pswitch_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    #@44
    move-result v0

    #@45
    .line 102
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    #@48
    move-result-object v0

    #@49
    return-object v0

    #@4a
    .line 106
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    #@4d
    move-result v0

    #@4e
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    #@51
    move-result-object v0

    #@52
    return-object v0

    #@53
    .line 110
    :pswitch_4
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    #@56
    move-result v0

    #@57
    .line 109
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    #@5a
    move-result-object v0

    #@5b
    return-object v0

    #@5c
    .line 113
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    #@5f
    move-result v0

    #@60
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    #@63
    move-result-object v0

    #@64
    return-object v0

    #@65
    .line 116
    :pswitch_6
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->loadAllSimContacts(I)Landroid/database/Cursor;

    #@68
    move-result-object v0

    #@69
    return-object v0

    #@6a
    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 15
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 341
    const/4 v7, 0x0

    #@1
    .line 345
    .local v7, "pin2":Ljava/lang/String;
    const-string/jumbo v1, "update"

    #@4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    #@7
    .line 347
    sget-object v1, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    #@9
    move-object/from16 v0, p1

    #@b
    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    #@e
    move-result v10

    #@f
    .line 348
    .local v10, "match":I
    packed-switch v10, :pswitch_data_0

    #@12
    .line 372
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@14
    .line 373
    new-instance v13, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v14, "Cannot insert into URL: "

    #@1c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v13

    #@20
    move-object/from16 v0, p1

    #@22
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v13

    #@26
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v13

    #@2a
    .line 372
    invoke-direct {v1, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1

    #@2e
    .line 350
    :pswitch_0
    const/16 v2, 0x6f3a

    #@30
    .line 351
    .local v2, "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    #@33
    move-result v8

    #@34
    .line 376
    .end local v7    # "pin2":Ljava/lang/String;
    .local v8, "subId":I
    :goto_0
    const-string/jumbo v1, "tag"

    #@37
    move-object/from16 v0, p2

    #@39
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    .line 377
    .local v3, "tag":Ljava/lang/String;
    const-string/jumbo v1, "number"

    #@40
    move-object/from16 v0, p2

    #@42
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    .line 378
    .local v4, "number":Ljava/lang/String;
    const/4 v9, 0x0

    #@47
    .line 379
    .local v9, "emails":[Ljava/lang/String;
    const-string/jumbo v1, "newTag"

    #@4a
    move-object/from16 v0, p2

    #@4c
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    .line 380
    .local v5, "newTag":Ljava/lang/String;
    const-string/jumbo v1, "newNumber"

    #@53
    move-object/from16 v0, p2

    #@55
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@58
    move-result-object v6

    #@59
    .line 381
    .local v6, "newNumber":Ljava/lang/String;
    const/4 v11, 0x0

    #@5a
    .local v11, "newEmails":[Ljava/lang/String;
    move-object v1, p0

    #@5b
    .line 383
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    #@5e
    move-result v12

    #@5f
    .line 386
    .local v12, "success":Z
    if-nez v12, :cond_0

    #@61
    .line 387
    const/4 v1, 0x0

    #@62
    return v1

    #@63
    .line 355
    .end local v2    # "efType":I
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "newTag":Ljava/lang/String;
    .end local v6    # "newNumber":Ljava/lang/String;
    .end local v8    # "subId":I
    .end local v9    # "emails":[Ljava/lang/String;
    .end local v11    # "newEmails":[Ljava/lang/String;
    .end local v12    # "success":Z
    .restart local v7    # "pin2":Ljava/lang/String;
    :pswitch_1
    const/16 v2, 0x6f3a

    #@65
    .line 356
    .restart local v2    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    #@68
    move-result v8

    #@69
    .restart local v8    # "subId":I
    goto :goto_0

    #@6a
    .line 360
    .end local v2    # "efType":I
    .end local v8    # "subId":I
    :pswitch_2
    const/16 v2, 0x6f3b

    #@6c
    .line 361
    .restart local v2    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    #@6f
    move-result v8

    #@70
    .line 362
    .restart local v8    # "subId":I
    const-string/jumbo v1, "pin2"

    #@73
    move-object/from16 v0, p2

    #@75
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@78
    move-result-object v7

    #@79
    .local v7, "pin2":Ljava/lang/String;
    goto :goto_0

    #@7a
    .line 366
    .end local v2    # "efType":I
    .end local v8    # "subId":I
    .local v7, "pin2":Ljava/lang/String;
    :pswitch_3
    const/16 v2, 0x6f3b

    #@7c
    .line 367
    .restart local v2    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    #@7f
    move-result v8

    #@80
    .line 368
    .restart local v8    # "subId":I
    const-string/jumbo v1, "pin2"

    #@83
    move-object/from16 v0, p2

    #@85
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@88
    move-result-object v7

    #@89
    .local v7, "pin2":Ljava/lang/String;
    goto :goto_0

    #@8a
    .line 390
    .end local v7    # "pin2":Ljava/lang/String;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v5    # "newTag":Ljava/lang/String;
    .restart local v6    # "newNumber":Ljava/lang/String;
    .restart local v9    # "emails":[Ljava/lang/String;
    .restart local v11    # "newEmails":[Ljava/lang/String;
    .restart local v12    # "success":Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    #@8d
    move-result-object v1

    #@8e
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@91
    move-result-object v1

    #@92
    const/4 v13, 0x0

    #@93
    move-object/from16 v0, p1

    #@95
    invoke-virtual {v1, v0, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    #@98
    .line 391
    const/4 v1, 0x1

    #@99
    return v1

    #@9a
    .line 348
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
