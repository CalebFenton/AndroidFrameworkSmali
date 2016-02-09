.class public Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
.super Landroid/os/Handler;
.source "UiccCarrierPrivilegeRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;,
        Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;,
        Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;
    }
.end annotation


# static fields
.field private static final AID:Ljava/lang/String; = "A00000015141434C00"

.field private static final CLA:I = 0x80

.field private static final COMMAND:I = 0xca

.field private static final DATA:Ljava/lang/String; = ""

.field private static final DBG:Z = false

.field private static final EVENT_CLOSE_LOGICAL_CHANNEL_DONE:I = 0x3

.field private static final EVENT_OPEN_LOGICAL_CHANNEL_DONE:I = 0x1

.field private static final EVENT_TRANSMIT_LOGICAL_CHANNEL_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "UiccCarrierPrivilegeRules"

.field private static final MAX_RETRY:I = 0x1

.field private static final P1:I = 0xff

.field private static final P2:I = 0x40

.field private static final P2_EXTENDED_DATA:I = 0x60

.field private static final P3:I = 0x0

.field private static final RETRY_INTERVAL_MS:I = 0x2710

.field private static final STATE_ERROR:I = 0x2

.field private static final STATE_LOADED:I = 0x1

.field private static final STATE_LOADING:I = 0x0

.field private static final TAG_ALL_REF_AR_DO:Ljava/lang/String; = "FF40"

.field private static final TAG_AR_DO:Ljava/lang/String; = "E3"

.field private static final TAG_DEVICE_APP_ID_REF_DO:Ljava/lang/String; = "C1"

.field private static final TAG_PERM_AR_DO:Ljava/lang/String; = "DB"

.field private static final TAG_PKG_REF_DO:Ljava/lang/String; = "CA"

.field private static final TAG_REF_AR_DO:Ljava/lang/String; = "E2"

.field private static final TAG_REF_DO:Ljava/lang/String; = "E1"


# instance fields
.field private mAccessRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelId:I

.field private mLoadedCallback:Landroid/os/Message;

.field private mRetryCount:I

.field private final mRetryRunnable:Ljava/lang/Runnable;

.field private mRules:Ljava/lang/String;

.field private mState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mStatusMessage:Ljava/lang/String;

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->openChannel()V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;Landroid/os/Message;)V
    .locals 2
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "loadedCallback"    # Landroid/os/Message;

    #@0
    .prologue
    .line 232
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@3
    .line 219
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    #@a
    .line 233
    const-string/jumbo v0, "Creating UiccCarrierPrivilegeRules"

    #@d
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@10
    .line 234
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@12
    .line 235
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@18
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1a
    .line 236
    const-string/jumbo v0, "Not loaded."

    #@1d
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Ljava/lang/String;

    #@1f
    .line 237
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mLoadedCallback:Landroid/os/Message;

    #@21
    .line 238
    const-string/jumbo v0, ""

    #@24
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    #@26
    .line 240
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->openChannel()V

    #@29
    .line 232
    return-void
.end method

.method private static getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B
    .locals 5
    .param p0, "signature"    # Landroid/content/pm/Signature;
    .param p1, "algo"    # Ljava/lang/String;

    #@0
    .prologue
    .line 555
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@3
    move-result-object v1

    #@4
    .line 556
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 557
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    #@e
    .line 558
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v2, "UiccCarrierPrivilegeRules"

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "NoSuchAlgorithmException: "

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 560
    const/4 v2, 0x0

    #@29
    return-object v2
.end method

.method private getPackageName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 363
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 364
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@7
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@9
    return-object v0

    #@a
    .line 365
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 366
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@10
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@12
    return-object v0

    #@13
    .line 367
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 368
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    #@19
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    #@1b
    return-object v0

    #@1c
    .line 370
    :cond_2
    return-object v1
.end method

.method private getStateString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 601
    packed-switch p1, :pswitch_data_0

    #@3
    .line 609
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 603
    :pswitch_0
    const-string/jumbo v0, "STATE_LOADING"

    #@a
    return-object v0

    #@b
    .line 605
    :pswitch_1
    const-string/jumbo v0, "STATE_LOADED"

    #@e
    return-object v0

    #@f
    .line 607
    :pswitch_2
    const-string/jumbo v0, "STATE_ERROR"

    #@12
    return-object v0

    #@13
    .line 601
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isDataComplete()Z
    .locals 5

    #@0
    .prologue
    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "isDataComplete mRules:"

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@19
    .line 452
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    #@1b
    const-string/jumbo v3, "FF40"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_1

    #@24
    .line 453
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@26
    const-string/jumbo v2, "FF40"

    #@29
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@2c
    .line 454
    .local v0, "allRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    #@2e
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parseLength(Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 455
    .local v1, "lengthBytes":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v3, "isDataComplete lengthBytes: "

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@49
    .line 456
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    #@4b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@4e
    move-result v2

    #@4f
    const-string/jumbo v3, "FF40"

    #@52
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@55
    move-result v3

    #@56
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@59
    move-result v4

    #@5a
    add-int/2addr v3, v4

    #@5b
    .line 457
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get0(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/Integer;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@62
    move-result v4

    #@63
    .line 456
    add-int/2addr v3, v4

    #@64
    if-ne v2, v3, :cond_0

    #@66
    .line 458
    const-string/jumbo v2, "isDataComplete yes"

    #@69
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@6c
    .line 459
    const/4 v2, 0x1

    #@6d
    return v2

    #@6e
    .line 461
    :cond_0
    const-string/jumbo v2, "isDataComplete no"

    #@71
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@74
    .line 462
    const/4 v2, 0x0

    #@75
    return v2

    #@76
    .line 465
    .end local v0    # "allRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v1    # "lengthBytes":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@78
    const-string/jumbo v3, "Tags don\'t match."

    #@7b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 575
    return-void
.end method

.method private openChannel()V
    .locals 4

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@2
    const-string/jumbo v1, "A00000015141434C00"

    #@5
    .line 229
    const/4 v2, 0x1

    #@6
    const/4 v3, 0x0

    #@7
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v2

    #@b
    .line 228
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    #@e
    .line 226
    return-void
.end method

.method private static parseRefArdo(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    .locals 13
    .param p0, "rule"    # Ljava/lang/String;

    #@0
    .prologue
    .line 497
    new-instance v11, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v12, "Got rule: "

    #@8
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v11

    #@c
    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v11

    #@10
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v11

    #@14
    invoke-static {v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@17
    .line 499
    const/4 v4, 0x0

    #@18
    .line 500
    .local v4, "certificateHash":Ljava/lang/String;
    const/4 v6, 0x0

    #@19
    .line 501
    .local v6, "packageName":Ljava/lang/String;
    const/4 v10, 0x0

    #@1a
    .line 502
    .local v10, "tmp":Ljava/lang/String;
    const-wide/16 v2, 0x0

    #@1c
    .line 504
    .end local v4    # "certificateHash":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v10    # "tmp":Ljava/lang/String;
    .local v2, "accessType":J
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@1f
    move-result v11

    #@20
    if-nez v11, :cond_6

    #@22
    .line 505
    const-string/jumbo v11, "E1"

    #@25
    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@28
    move-result v11

    #@29
    if-eqz v11, :cond_3

    #@2b
    .line 506
    new-instance v9, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@2d
    const-string/jumbo v11, "E1"

    #@30
    invoke-direct {v9, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@33
    .line 507
    .local v9, "refDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v11, 0x0

    #@34
    invoke-virtual {v9, p0, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    #@37
    move-result-object p0

    #@38
    .line 510
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    #@3b
    move-result-object v11

    #@3c
    const-string/jumbo v12, "C1"

    #@3f
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@42
    move-result v11

    #@43
    if-nez v11, :cond_0

    #@45
    .line 511
    const/4 v11, 0x0

    #@46
    return-object v11

    #@47
    .line 514
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@49
    const-string/jumbo v11, "C1"

    #@4c
    invoke-direct {v5, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@4f
    .line 515
    .local v5, "deviceDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    #@52
    move-result-object v11

    #@53
    const/4 v12, 0x0

    #@54
    invoke-virtual {v5, v11, v12}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    #@57
    move-result-object v10

    #@58
    .line 516
    .local v10, "tmp":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    .line 518
    .local v4, "certificateHash":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    #@5f
    move-result v11

    #@60
    if-nez v11, :cond_2

    #@62
    .line 519
    const-string/jumbo v11, "CA"

    #@65
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@68
    move-result v11

    #@69
    if-nez v11, :cond_1

    #@6b
    .line 520
    const/4 v11, 0x0

    #@6c
    return-object v11

    #@6d
    .line 522
    :cond_1
    new-instance v8, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@6f
    const-string/jumbo v11, "CA"

    #@72
    invoke-direct {v8, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@75
    .line 523
    .local v8, "pkgDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v11, 0x1

    #@76
    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    #@79
    .line 524
    new-instance v6, Ljava/lang/String;

    #@7b
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    #@7e
    move-result-object v11

    #@7f
    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    #@82
    move-result-object v11

    #@83
    invoke-direct {v6, v11}, Ljava/lang/String;-><init>([B)V

    #@86
    .local v6, "packageName":Ljava/lang/String;
    goto :goto_0

    #@87
    .line 526
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "pkgDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    :cond_2
    const/4 v6, 0x0

    #@88
    .local v6, "packageName":Ljava/lang/String;
    goto :goto_0

    #@89
    .line 528
    .end local v4    # "certificateHash":Ljava/lang/String;
    .end local v5    # "deviceDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v9    # "refDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v10    # "tmp":Ljava/lang/String;
    :cond_3
    const-string/jumbo v11, "E3"

    #@8c
    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8f
    move-result v11

    #@90
    if-eqz v11, :cond_5

    #@92
    .line 529
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@94
    const-string/jumbo v11, "E3"

    #@97
    invoke-direct {v1, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@9a
    .line 530
    .local v1, "arDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v11, 0x0

    #@9b
    invoke-virtual {v1, p0, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    #@9e
    move-result-object p0

    #@9f
    .line 533
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    #@a2
    move-result-object v11

    #@a3
    const-string/jumbo v12, "DB"

    #@a6
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a9
    move-result v11

    #@aa
    if-nez v11, :cond_4

    #@ac
    .line 534
    const/4 v11, 0x0

    #@ad
    return-object v11

    #@ae
    .line 537
    :cond_4
    new-instance v7, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@b0
    const-string/jumbo v11, "DB"

    #@b3
    invoke-direct {v7, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@b6
    .line 538
    .local v7, "permDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    #@b9
    move-result-object v11

    #@ba
    const/4 v12, 0x1

    #@bb
    invoke-virtual {v7, v11, v12}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    #@be
    goto/16 :goto_0

    #@c0
    .line 541
    .end local v1    # "arDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v7    # "permDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    :cond_5
    new-instance v11, Ljava/lang/RuntimeException;

    #@c2
    const-string/jumbo v12, "Invalid Rule type"

    #@c5
    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c8
    throw v11

    #@c9
    .line 545
    :cond_6
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;

    #@cb
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    #@ce
    move-result-object v11

    #@cf
    invoke-direct {v0, v11, v6, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;-><init>([BLjava/lang/String;J)V

    #@d2
    .line 547
    .local v0, "accessRule":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    return-object v0
.end method

.method private static parseRules(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "rules"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 473
    new-instance v5, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v6, "Got rules: "

    #@8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v5

    #@c
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@17
    .line 475
    new-instance v2, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@19
    const-string/jumbo v5, "FF40"

    #@1c
    invoke-direct {v2, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@1f
    .line 476
    .local v2, "allRefArDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v5, 0x1

    #@20
    invoke-virtual {v2, p0, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    #@23
    .line 478
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    .line 479
    .local v3, "arDos":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    #@29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@2c
    .line 480
    .local v1, "accessRules":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;>;"
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@2f
    move-result v5

    #@30
    if-nez v5, :cond_1

    #@32
    .line 481
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@34
    const-string/jumbo v5, "E2"

    #@37
    invoke-direct {v4, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@3a
    .line 482
    .local v4, "refArDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v5, 0x0

    #@3b
    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    .line 483
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->parseRefArdo(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;

    #@46
    move-result-object v0

    #@47
    .line 484
    .local v0, "accessRule":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    if-eqz v0, :cond_0

    #@49
    .line 485
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4c
    goto :goto_0

    #@4d
    .line 487
    :cond_0
    const-string/jumbo v5, "UiccCarrierPrivilegeRules"

    #@50
    new-instance v6, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v7, "Skip unrecognized rule."

    #@58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    #@5f
    move-result-object v7

    #@60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v6

    #@64
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v6

    #@68
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    goto :goto_0

    #@6c
    .line 490
    .end local v0    # "accessRule":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    .end local v4    # "refArDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    :cond_1
    return-object v1
.end method

.method private updateState(ILjava/lang/String;)V
    .locals 1
    .param p1, "newState"    # I
    .param p2, "statusMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@5
    .line 568
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mLoadedCallback:Landroid/os/Message;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 569
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mLoadedCallback:Landroid/os/Message;

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 572
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Ljava/lang/String;

    #@10
    .line 566
    return-void
.end method


# virtual methods
.method public areCarrierPriviligeRulesLoaded()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 247
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "UiccCarrierPrivilegeRules: "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, " mState="

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    #@25
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@28
    move-result v3

    #@29
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getStateString(I)Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38
    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v3, " mStatusMessage=\'"

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Ljava/lang/String;

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    const-string/jumbo v3, "\'"

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@58
    .line 586
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    #@5a
    if-eqz v2, :cond_0

    #@5c
    .line 587
    const-string/jumbo v2, " mAccessRules: "

    #@5f
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@62
    .line 588
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    #@64
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@67
    move-result-object v1

    #@68
    .local v1, "ar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@6b
    move-result v2

    #@6c
    if-eqz v2, :cond_1

    #@6e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@71
    move-result-object v0

    #@72
    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;

    #@74
    .line 589
    .local v0, "ar":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    new-instance v2, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v3, "  rule=\'"

    #@7c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v2

    #@84
    const-string/jumbo v3, "\'"

    #@87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v2

    #@8f
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@92
    goto :goto_0

    #@93
    .line 592
    .end local v0    # "ar":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    .end local v1    # "ar$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v2, " mAccessRules: null"

    #@96
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@99
    .line 594
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@9c
    .line 582
    return-void
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;
    .locals 9
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 336
    new-instance v1, Ljava/util/ArrayList;

    #@4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 337
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 338
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1, p2, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    #@f
    move-result-object v6

    #@10
    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@13
    .line 339
    invoke-virtual {p1, p2, v7}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    #@16
    move-result-object v6

    #@17
    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@1a
    .line 340
    invoke-virtual {p1, p2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@1d
    move-result-object v6

    #@1e
    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@21
    .line 341
    invoke-virtual {p1, p2, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    #@24
    move-result-object v6

    #@25
    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@28
    .line 343
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v4

    #@2c
    .local v4, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v6

    #@30
    if-eqz v6, :cond_2

    #@32
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v3

    #@36
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@38
    .line 344
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getPackageName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    .line 345
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@3e
    .line 349
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    #@41
    move-result v5

    #@42
    .line 350
    .local v5, "status":I
    const/4 v6, 0x1

    #@43
    if-ne v5, v6, :cond_1

    #@45
    .line 351
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@48
    goto :goto_0

    #@49
    .line 352
    :cond_1
    if-eqz v5, :cond_0

    #@4b
    .line 354
    return-object v8

    #@4c
    .line 358
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "status":I
    :cond_2
    return-object v1
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 9
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 293
    const v5, 0x8040

    #@4
    .line 292
    :try_start_0
    invoke-virtual {p1, p2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@7
    move-result-object v2

    #@8
    .line 294
    .local v2, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@a
    .line 295
    .local v4, "signatures":[Landroid/content/pm/Signature;
    array-length v7, v4

    #@b
    move v5, v6

    #@c
    :goto_0
    if-ge v5, v7, :cond_1

    #@e
    aget-object v3, v4, v5

    #@10
    .line 296
    .local v3, "sig":Landroid/content/pm/Signature;
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@12
    invoke-virtual {p0, v3, v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v0

    #@16
    .line 297
    .local v0, "accessStatus":I
    if-eqz v0, :cond_0

    #@18
    .line 298
    return v0

    #@19
    .line 295
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 301
    .end local v0    # "accessStatus":I
    .end local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "sig":Landroid/content/pm/Signature;
    .end local v4    # "signatures":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    #@1d
    .line 302
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "UiccCarrierPrivilegeRules"

    #@20
    const-string/jumbo v7, "NameNotFoundException"

    #@23
    invoke-static {v5, v7, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    .line 304
    .end local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    return v6
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    .locals 8
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 258
    new-instance v5, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v6, "hasCarrierPrivileges: "

    #@9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v5

    #@d
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v5

    #@11
    const-string/jumbo v6, " : "

    #@14
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@23
    .line 259
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    #@25
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@28
    move-result v4

    #@29
    .line 260
    .local v4, "state":I
    if-nez v4, :cond_0

    #@2b
    .line 261
    const-string/jumbo v5, "Rules not loaded."

    #@2e
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@31
    .line 262
    const/4 v5, -0x1

    #@32
    return v5

    #@33
    .line 263
    :cond_0
    const/4 v5, 0x2

    #@34
    if-ne v4, v5, :cond_1

    #@36
    .line 264
    const-string/jumbo v5, "Error loading rules."

    #@39
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@3c
    .line 265
    const/4 v5, -0x2

    #@3d
    return v5

    #@3e
    .line 269
    :cond_1
    const-string/jumbo v5, "SHA-1"

    #@41
    invoke-static {p1, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B

    #@44
    move-result-object v2

    #@45
    .line 270
    .local v2, "certHash":[B
    const-string/jumbo v5, "SHA-256"

    #@48
    invoke-static {p1, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B

    #@4b
    move-result-object v3

    #@4c
    .line 271
    .local v3, "certHash256":[B
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    #@4e
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@51
    move-result-object v1

    #@52
    .local v1, "ar$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@55
    move-result v5

    #@56
    if-eqz v5, :cond_4

    #@58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5b
    move-result-object v0

    #@5c
    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;

    #@5e
    .line 272
    .local v0, "ar":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    invoke-virtual {v0, v2, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->matches([BLjava/lang/String;)Z

    #@61
    move-result v5

    #@62
    if-nez v5, :cond_3

    #@64
    invoke-virtual {v0, v3, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->matches([BLjava/lang/String;)Z

    #@67
    move-result v5

    #@68
    if-eqz v5, :cond_2

    #@6a
    .line 273
    :cond_3
    const/4 v5, 0x1

    #@6b
    return v5

    #@6c
    .line 277
    .end local v0    # "ar":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    :cond_4
    return v7
.end method

.method public getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I
    .locals 6
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 314
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v3

    #@5
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 316
    .local v1, "packages":[Ljava/lang/String;
    array-length v5, v1

    #@a
    move v3, v4

    #@b
    :goto_0
    if-ge v3, v5, :cond_1

    #@d
    aget-object v2, v1, v3

    #@f
    .line 317
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    #@12
    move-result v0

    #@13
    .line 318
    .local v0, "accessStatus":I
    if-eqz v0, :cond_0

    #@15
    .line 319
    return v0

    #@16
    .line 316
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@18
    goto :goto_0

    #@19
    .line 322
    .end local v0    # "accessStatus":I
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    return v4
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 377
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 442
    const-string/jumbo v0, "UiccCarrierPrivilegeRules"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Unknown event "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget v2, p1, Landroid/os/Message;->what:I

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 374
    :goto_0
    return-void

    #@22
    .line 380
    :pswitch_0
    const-string/jumbo v0, "EVENT_OPEN_LOGICAL_CHANNEL_DONE"

    #@25
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@28
    .line 381
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2a
    check-cast v9, Landroid/os/AsyncResult;

    #@2c
    .line 382
    .local v9, "ar":Landroid/os/AsyncResult;
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@2e
    if-nez v0, :cond_0

    #@30
    iget-object v0, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@32
    if-eqz v0, :cond_0

    #@34
    .line 383
    iget-object v0, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@36
    check-cast v0, [I

    #@38
    const/4 v1, 0x0

    #@39
    aget v0, v0, v1

    #@3b
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    #@3d
    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@3f
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    #@41
    const-string/jumbo v7, ""

    #@44
    .line 385
    new-instance v2, Ljava/lang/Integer;

    #@46
    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    #@48
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@4b
    const/4 v3, 0x2

    #@4c
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@4f
    move-result-object v8

    #@50
    .line 384
    const/16 v2, 0x80

    #@52
    const/16 v3, 0xca

    #@54
    const/16 v4, 0xff

    #@56
    const/16 v5, 0x40

    #@58
    const/4 v6, 0x0

    #@59
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/uicc/UiccCard;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    #@5c
    goto :goto_0

    #@5d
    .line 389
    :cond_0
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@5f
    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    #@61
    if-eqz v0, :cond_1

    #@63
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryCount:I

    #@65
    const/4 v1, 0x1

    #@66
    if-ge v0, v1, :cond_1

    #@68
    .line 390
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@6a
    check-cast v0, Lcom/android/internal/telephony/CommandException;

    #@6c
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    #@6f
    move-result-object v0

    #@70
    .line 391
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    #@72
    .line 390
    if-ne v0, v1, :cond_1

    #@74
    .line 392
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryCount:I

    #@76
    add-int/lit8 v0, v0, 0x1

    #@78
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryCount:I

    #@7a
    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    #@7c
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->removeCallbacks(Ljava/lang/Runnable;)V

    #@7f
    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    #@81
    const-wide/16 v2, 0x2710

    #@83
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->postDelayed(Ljava/lang/Runnable;J)Z

    #@86
    goto :goto_0

    #@87
    .line 396
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v1, "Error opening channel: "

    #@8f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v0

    #@93
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v0

    #@99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v0

    #@9d
    const/4 v1, 0x2

    #@9e
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    #@a1
    goto :goto_0

    #@a2
    .line 402
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    const-string/jumbo v0, "EVENT_TRANSMIT_LOGICAL_CHANNEL_DONE"

    #@a5
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@a8
    .line 403
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@aa
    check-cast v9, Landroid/os/AsyncResult;

    #@ac
    .line 404
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@ae
    if-nez v0, :cond_4

    #@b0
    iget-object v0, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@b2
    if-eqz v0, :cond_4

    #@b4
    .line 405
    iget-object v13, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@b6
    check-cast v13, Lcom/android/internal/telephony/uicc/IccIoResult;

    #@b8
    .line 406
    .local v13, "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget v0, v13, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    #@ba
    const/16 v1, 0x90

    #@bc
    if-ne v0, v1, :cond_3

    #@be
    iget v0, v13, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    #@c0
    if-nez v0, :cond_3

    #@c2
    .line 407
    iget-object v0, v13, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    #@c4
    if-eqz v0, :cond_3

    #@c6
    iget-object v0, v13, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    #@c8
    array-length v0, v0

    #@c9
    if-lez v0, :cond_3

    #@cb
    .line 409
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    #@d2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v0

    #@d6
    iget-object v1, v13, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    #@d8
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@db
    move-result-object v1

    #@dc
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@de
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@e1
    move-result-object v1

    #@e2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v0

    #@e6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v0

    #@ea
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    #@ec
    .line 410
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->isDataComplete()Z

    #@ef
    move-result v0

    #@f0
    if-eqz v0, :cond_2

    #@f2
    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    #@f4
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->parseRules(Ljava/lang/String;)Ljava/util/List;

    #@f7
    move-result-object v0

    #@f8
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    #@fa
    .line 412
    const-string/jumbo v0, "Success!"

    #@fd
    const/4 v1, 0x1

    #@fe
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    #@101
    .line 432
    .end local v13    # "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@103
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    #@105
    .line 433
    const/4 v2, 0x3

    #@106
    .line 432
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(I)Landroid/os/Message;

    #@109
    move-result-object v2

    #@10a
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    #@10d
    .line 434
    const/4 v0, -0x1

    #@10e
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    #@110
    goto/16 :goto_0

    #@112
    .line 414
    .restart local v13    # "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@114
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    #@116
    const-string/jumbo v7, ""

    #@119
    .line 415
    new-instance v2, Ljava/lang/Integer;

    #@11b
    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    #@11d
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@120
    const/4 v3, 0x2

    #@121
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@124
    move-result-object v8

    #@125
    .line 414
    const/16 v2, 0x80

    #@127
    const/16 v3, 0xca

    #@129
    const/16 v4, 0xff

    #@12b
    const/16 v5, 0x60

    #@12d
    const/4 v6, 0x0

    #@12e
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/uicc/UiccCard;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    #@131
    goto/16 :goto_0

    #@133
    .line 418
    :catch_0
    move-exception v11

    #@134
    .line 419
    .local v11, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;

    #@136
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@139
    const-string/jumbo v1, "Error parsing rules: "

    #@13c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v0

    #@140
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v0

    #@144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@147
    move-result-object v0

    #@148
    const/4 v1, 0x2

    #@149
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    #@14c
    goto :goto_1

    #@14d
    .line 420
    .end local v11    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v12

    #@14e
    .line 421
    .local v12, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v0, Ljava/lang/StringBuilder;

    #@150
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@153
    const-string/jumbo v1, "Error parsing rules: "

    #@156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v0

    #@15a
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v0

    #@15e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@161
    move-result-object v0

    #@162
    const/4 v1, 0x2

    #@163
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    #@166
    goto :goto_1

    #@167
    .line 424
    .end local v12    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    #@169
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16c
    const-string/jumbo v1, "Invalid response: payload="

    #@16f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@172
    move-result-object v0

    #@173
    iget-object v1, v13, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    #@175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v0

    #@179
    .line 425
    const-string/jumbo v1, " sw1="

    #@17c
    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v0

    #@180
    .line 425
    iget v1, v13, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    #@182
    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@185
    move-result-object v0

    #@186
    .line 425
    const-string/jumbo v1, " sw2="

    #@189
    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v0

    #@18d
    .line 425
    iget v1, v13, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    #@18f
    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@192
    move-result-object v0

    #@193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@196
    move-result-object v10

    #@197
    .line 426
    .local v10, "errorMsg":Ljava/lang/String;
    const/4 v0, 0x2

    #@198
    invoke-direct {p0, v0, v10}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    #@19b
    goto/16 :goto_1

    #@19d
    .line 429
    .end local v10    # "errorMsg":Ljava/lang/String;
    .end local v13    # "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_4
    const-string/jumbo v0, "Error reading value from SIM."

    #@1a0
    const/4 v1, 0x2

    #@1a1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    #@1a4
    goto/16 :goto_1

    #@1a6
    .line 438
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string/jumbo v0, "EVENT_CLOSE_LOGICAL_CHANNEL_DONE"

    #@1a9
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@1ac
    goto/16 :goto_0

    #@1ae
    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
