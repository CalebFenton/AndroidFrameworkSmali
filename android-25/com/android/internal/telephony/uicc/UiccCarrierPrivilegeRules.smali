.class public Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
.super Landroid/os/Handler;
.source "UiccCarrierPrivilegeRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;,
        Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;,
        Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
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

.field private static final EVENT_PKCS15_READ_DONE:I = 0x4

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

.field private mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;


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
    .line 233
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@3
    .line 220
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    #@a
    .line 234
    const-string/jumbo v0, "Creating UiccCarrierPrivilegeRules"

    #@d
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@10
    .line 235
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@12
    .line 236
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@18
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1a
    .line 237
    const-string/jumbo v0, "Not loaded."

    #@1d
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Ljava/lang/String;

    #@1f
    .line 238
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mLoadedCallback:Landroid/os/Message;

    #@21
    .line 239
    const-string/jumbo v0, ""

    #@24
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    #@26
    .line 240
    new-instance v0, Ljava/util/ArrayList;

    #@28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2b
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    #@2d
    .line 242
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->openChannel()V

    #@30
    .line 233
    return-void
.end method

.method private static getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B
    .locals 5
    .param p0, "signature"    # Landroid/content/pm/Signature;
    .param p1, "algo"    # Ljava/lang/String;

    #@0
    .prologue
    .line 618
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@3
    move-result-object v1

    #@4
    .line 619
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
    .line 620
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    #@e
    .line 621
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
    .line 623
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
    .line 408
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 409
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@7
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@9
    return-object v0

    #@a
    .line 410
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 411
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@10
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@12
    return-object v0

    #@13
    .line 412
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 413
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    #@19
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    #@1b
    return-object v0

    #@1c
    .line 415
    :cond_2
    return-object v1
.end method

.method private getStateString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 670
    packed-switch p1, :pswitch_data_0

    #@3
    .line 678
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 672
    :pswitch_0
    const-string/jumbo v0, "STATE_LOADING"

    #@a
    return-object v0

    #@b
    .line 674
    :pswitch_1
    const-string/jumbo v0, "STATE_LOADED"

    #@e
    return-object v0

    #@f
    .line 676
    :pswitch_2
    const-string/jumbo v0, "STATE_ERROR"

    #@12
    return-object v0

    #@13
    .line 670
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
    .line 514
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
    .line 515
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
    .line 516
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@26
    const-string/jumbo v2, "FF40"

    #@29
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@2c
    .line 517
    .local v0, "allRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    #@2e
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parseLength(Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 518
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
    .line 519
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
    .line 520
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get0(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/Integer;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@62
    move-result v4

    #@63
    .line 519
    add-int/2addr v3, v4

    #@64
    if-ne v2, v3, :cond_0

    #@66
    .line 521
    const-string/jumbo v2, "isDataComplete yes"

    #@69
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@6c
    .line 522
    const/4 v2, 0x1

    #@6d
    return v2

    #@6e
    .line 524
    :cond_0
    const-string/jumbo v2, "isDataComplete no"

    #@71
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@74
    .line 525
    const/4 v2, 0x0

    #@75
    return v2

    #@76
    .line 528
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
    .line 638
    return-void
.end method

.method private openChannel()V
    .locals 4

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@2
    const-string/jumbo v1, "A00000015141434C00"

    #@5
    .line 230
    const/4 v2, 0x1

    #@6
    const/4 v3, 0x0

    #@7
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v2

    #@b
    .line 229
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    #@e
    .line 227
    return-void
.end method

.method private static parseRefArdo(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    .locals 13
    .param p0, "rule"    # Ljava/lang/String;

    #@0
    .prologue
    .line 560
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
    .line 562
    const/4 v4, 0x0

    #@18
    .line 563
    .local v4, "certificateHash":Ljava/lang/String;
    const/4 v6, 0x0

    #@19
    .line 564
    .local v6, "packageName":Ljava/lang/String;
    const/4 v10, 0x0

    #@1a
    .line 565
    .local v10, "tmp":Ljava/lang/String;
    const-wide/16 v2, 0x0

    #@1c
    .line 567
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
    .line 568
    const-string/jumbo v11, "E1"

    #@25
    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@28
    move-result v11

    #@29
    if-eqz v11, :cond_3

    #@2b
    .line 569
    new-instance v9, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@2d
    const-string/jumbo v11, "E1"

    #@30
    invoke-direct {v9, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@33
    .line 570
    .local v9, "refDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v11, 0x0

    #@34
    invoke-virtual {v9, p0, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    #@37
    move-result-object p0

    #@38
    .line 573
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
    .line 574
    const/4 v11, 0x0

    #@46
    return-object v11

    #@47
    .line 577
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@49
    const-string/jumbo v11, "C1"

    #@4c
    invoke-direct {v5, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@4f
    .line 578
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
    .line 579
    .local v10, "tmp":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    .line 581
    .local v4, "certificateHash":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    #@5f
    move-result v11

    #@60
    if-nez v11, :cond_2

    #@62
    .line 582
    const-string/jumbo v11, "CA"

    #@65
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@68
    move-result v11

    #@69
    if-nez v11, :cond_1

    #@6b
    .line 583
    const/4 v11, 0x0

    #@6c
    return-object v11

    #@6d
    .line 585
    :cond_1
    new-instance v8, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@6f
    const-string/jumbo v11, "CA"

    #@72
    invoke-direct {v8, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@75
    .line 586
    .local v8, "pkgDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v11, 0x1

    #@76
    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    #@79
    .line 587
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
    .line 589
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "pkgDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    :cond_2
    const/4 v6, 0x0

    #@88
    .local v6, "packageName":Ljava/lang/String;
    goto :goto_0

    #@89
    .line 591
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
    .line 592
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@94
    const-string/jumbo v11, "E3"

    #@97
    invoke-direct {v1, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@9a
    .line 593
    .local v1, "arDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v11, 0x0

    #@9b
    invoke-virtual {v1, p0, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    #@9e
    move-result-object p0

    #@9f
    .line 596
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
    .line 597
    const/4 v11, 0x0

    #@ad
    return-object v11

    #@ae
    .line 600
    :cond_4
    new-instance v7, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@b0
    const-string/jumbo v11, "DB"

    #@b3
    invoke-direct {v7, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@b6
    .line 601
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
    .line 604
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
    .line 608
    :cond_6
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;

    #@cb
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    #@ce
    move-result-object v11

    #@cf
    invoke-direct {v0, v11, v6, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;-><init>([BLjava/lang/String;J)V

    #@d2
    .line 610
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
    .line 536
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
    .line 538
    new-instance v2, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@19
    const-string/jumbo v5, "FF40"

    #@1c
    invoke-direct {v2, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@1f
    .line 539
    .local v2, "allRefArDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v5, 0x1

    #@20
    invoke-virtual {v2, p0, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    #@23
    .line 541
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    .line 542
    .local v3, "arDos":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    #@29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@2c
    .line 543
    .local v1, "accessRules":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;>;"
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@2f
    move-result v5

    #@30
    if-nez v5, :cond_1

    #@32
    .line 544
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@34
    const-string/jumbo v5, "E2"

    #@37
    invoke-direct {v4, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@3a
    .line 545
    .local v4, "refArDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v5, 0x0

    #@3b
    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    .line 546
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->parseRefArdo(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;

    #@46
    move-result-object v0

    #@47
    .line 547
    .local v0, "accessRule":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    if-eqz v0, :cond_0

    #@49
    .line 548
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4c
    goto :goto_0

    #@4d
    .line 550
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
    .line 553
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
    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@5
    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mLoadedCallback:Landroid/os/Message;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 632
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mLoadedCallback:Landroid/os/Message;

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 635
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Ljava/lang/String;

    #@10
    .line 629
    return-void
.end method


# virtual methods
.method public areCarrierPriviligeRulesLoaded()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 249
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
    .line 646
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
    .line 647
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
    .line 648
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
    .line 649
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    #@5a
    if-eqz v2, :cond_0

    #@5c
    .line 650
    const-string/jumbo v2, " mAccessRules: "

    #@5f
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@62
    .line 651
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
    .line 652
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
    .line 655
    .end local v0    # "ar":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    .end local v1    # "ar$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v2, " mAccessRules: null"

    #@96
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@99
    .line 657
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    #@9b
    if-eqz v2, :cond_2

    #@9d
    .line 658
    new-instance v2, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v3, " mUiccPkcs15: "

    #@a5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v2

    #@a9
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    #@ab
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v2

    #@af
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v2

    #@b3
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b6
    .line 659
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    #@b8
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@bb
    .line 663
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@be
    .line 645
    return-void

    #@bf
    .line 661
    :cond_2
    const-string/jumbo v2, " mUiccPkcs15: null"

    #@c2
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c5
    goto :goto_1
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
    .line 381
    new-instance v1, Ljava/util/ArrayList;

    #@4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 382
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 383
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1, p2, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    #@f
    move-result-object v6

    #@10
    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@13
    .line 384
    invoke-virtual {p1, p2, v7}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    #@16
    move-result-object v6

    #@17
    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@1a
    .line 385
    invoke-virtual {p1, p2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@1d
    move-result-object v6

    #@1e
    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@21
    .line 386
    invoke-virtual {p1, p2, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    #@24
    move-result-object v6

    #@25
    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@28
    .line 388
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
    .line 389
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getPackageName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    .line 390
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@3e
    .line 394
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    #@41
    move-result v5

    #@42
    .line 395
    .local v5, "status":I
    const/4 v6, 0x1

    #@43
    if-ne v5, v6, :cond_1

    #@45
    .line 396
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@48
    goto :goto_0

    #@49
    .line 397
    :cond_1
    if-eqz v5, :cond_0

    #@4b
    .line 399
    return-object v8

    #@4c
    .line 403
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "status":I
    :cond_2
    return-object v1
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I
    .locals 7
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 342
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@3
    .line 343
    .local v2, "signatures":[Landroid/content/pm/Signature;
    array-length v5, v2

    #@4
    move v3, v4

    #@5
    :goto_0
    if-ge v3, v5, :cond_1

    #@7
    aget-object v1, v2, v3

    #@9
    .line 344
    .local v1, "sig":Landroid/content/pm/Signature;
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@b
    invoke-virtual {p0, v1, v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I

    #@e
    move-result v0

    #@f
    .line 345
    .local v0, "accessStatus":I
    if-eqz v0, :cond_0

    #@11
    .line 346
    return v0

    #@12
    .line 343
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@14
    goto :goto_0

    #@15
    .line 349
    .end local v0    # "accessStatus":I
    .end local v1    # "sig":Landroid/content/pm/Signature;
    :cond_1
    return v4
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 6
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->hasCarrierPrivilegeRules()Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_2

    #@7
    .line 315
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    #@9
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@c
    move-result v2

    #@d
    .line 316
    .local v2, "state":I
    if-nez v2, :cond_0

    #@f
    .line 317
    const/4 v3, -0x1

    #@10
    return v3

    #@11
    .line 318
    :cond_0
    const/4 v3, 0x2

    #@12
    if-ne v2, v3, :cond_1

    #@14
    .line 319
    const/4 v3, -0x2

    #@15
    return v3

    #@16
    .line 321
    :cond_1
    return v5

    #@17
    .line 327
    .end local v2    # "state":I
    :cond_2
    const v3, 0x8040

    #@1a
    .line 326
    invoke-virtual {p1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@1d
    move-result-object v1

    #@1e
    .line 328
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result v3

    #@22
    return v3

    #@23
    .line 329
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@24
    .line 330
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "UiccCarrierPrivilegeRules"

    #@27
    const-string/jumbo v4, "NameNotFoundException"

    #@2a
    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    .line 332
    return v5
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    .locals 7
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 284
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@6
    move-result v4

    #@7
    .line 285
    .local v4, "state":I
    if-nez v4, :cond_0

    #@9
    .line 286
    const/4 v5, -0x1

    #@a
    return v5

    #@b
    .line 287
    :cond_0
    const/4 v5, 0x2

    #@c
    if-ne v4, v5, :cond_1

    #@e
    .line 288
    const/4 v5, -0x2

    #@f
    return v5

    #@10
    .line 292
    :cond_1
    const-string/jumbo v5, "SHA-1"

    #@13
    invoke-static {p1, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B

    #@16
    move-result-object v2

    #@17
    .line 293
    .local v2, "certHash":[B
    const-string/jumbo v5, "SHA-256"

    #@1a
    invoke-static {p1, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B

    #@1d
    move-result-object v3

    #@1e
    .line 294
    .local v3, "certHash256":[B
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    #@20
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v1

    #@24
    .local v1, "ar$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_4

    #@2a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;

    #@30
    .line 295
    .local v0, "ar":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    invoke-virtual {v0, v2, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->matches([BLjava/lang/String;)Z

    #@33
    move-result v5

    #@34
    if-nez v5, :cond_3

    #@36
    invoke-virtual {v0, v3, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->matches([BLjava/lang/String;)Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_2

    #@3c
    .line 296
    :cond_3
    const/4 v5, 0x1

    #@3d
    return v5

    #@3e
    .line 300
    .end local v0    # "ar":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    :cond_4
    return v6
.end method

.method public getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I
    .locals 6
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 359
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v3

    #@5
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 361
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
    .line 362
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    #@12
    move-result v0

    #@13
    .line 363
    .local v0, "accessStatus":I
    if-eqz v0, :cond_0

    #@15
    .line 364
    return v0

    #@16
    .line 361
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@18
    goto :goto_0

    #@19
    .line 367
    .end local v0    # "accessStatus":I
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    return v4
.end method

.method public getPackageNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 265
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 266
    .local v2, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 267
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "ar$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;

    #@1b
    .line 268
    .local v0, "ar":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->packageName:Ljava/lang/String;

    #@1d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_0

    #@23
    .line 269
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->packageName:Ljava/lang/String;

    #@25
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28
    goto :goto_0

    #@29
    .line 273
    .end local v0    # "ar":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    .end local v1    # "ar$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 422
    move-object/from16 v0, p1

    #@2
    iget v2, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 505
    const-string/jumbo v2, "UiccCarrierPrivilegeRules"

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "Unknown event "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    move-object/from16 v0, p1

    #@18
    iget v4, v0, Landroid/os/Message;->what:I

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 419
    :goto_0
    return-void

    #@26
    .line 425
    :pswitch_0
    const-string/jumbo v2, "EVENT_OPEN_LOGICAL_CHANNEL_DONE"

    #@29
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@2c
    .line 426
    move-object/from16 v0, p1

    #@2e
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@30
    check-cast v12, Landroid/os/AsyncResult;

    #@32
    .line 427
    .local v12, "ar":Landroid/os/AsyncResult;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@34
    if-nez v2, :cond_0

    #@36
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@38
    if-eqz v2, :cond_0

    #@3a
    .line 428
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@3c
    check-cast v2, [I

    #@3e
    const/4 v3, 0x0

    #@3f
    aget v2, v2, v3

    #@41
    move-object/from16 v0, p0

    #@43
    iput v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    #@45
    .line 429
    move-object/from16 v0, p0

    #@47
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@49
    move-object/from16 v0, p0

    #@4b
    iget v3, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    #@4d
    const-string/jumbo v9, ""

    #@50
    .line 430
    new-instance v4, Ljava/lang/Integer;

    #@52
    move-object/from16 v0, p0

    #@54
    iget v5, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    #@56
    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    #@59
    const/4 v5, 0x2

    #@5a
    move-object/from16 v0, p0

    #@5c
    invoke-virtual {v0, v5, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@5f
    move-result-object v10

    #@60
    .line 429
    const/16 v4, 0x80

    #@62
    const/16 v5, 0xca

    #@64
    const/16 v6, 0xff

    #@66
    const/16 v7, 0x40

    #@68
    const/4 v8, 0x0

    #@69
    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/uicc/UiccCard;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    #@6c
    goto :goto_0

    #@6d
    .line 434
    :cond_0
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@6f
    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    #@71
    if-eqz v2, :cond_1

    #@73
    move-object/from16 v0, p0

    #@75
    iget v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryCount:I

    #@77
    const/4 v3, 0x1

    #@78
    if-ge v2, v3, :cond_1

    #@7a
    .line 435
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@7c
    check-cast v2, Lcom/android/internal/telephony/CommandException;

    #@7e
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    #@81
    move-result-object v2

    #@82
    .line 436
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    #@84
    .line 435
    if-ne v2, v3, :cond_1

    #@86
    .line 437
    move-object/from16 v0, p0

    #@88
    iget v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryCount:I

    #@8a
    add-int/lit8 v2, v2, 0x1

    #@8c
    move-object/from16 v0, p0

    #@8e
    iput v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryCount:I

    #@90
    .line 438
    move-object/from16 v0, p0

    #@92
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    #@94
    move-object/from16 v0, p0

    #@96
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->removeCallbacks(Ljava/lang/Runnable;)V

    #@99
    .line 439
    move-object/from16 v0, p0

    #@9b
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    #@9d
    const-wide/16 v4, 0x2710

    #@9f
    move-object/from16 v0, p0

    #@a1
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->postDelayed(Ljava/lang/Runnable;J)Z

    #@a4
    goto :goto_0

    #@a5
    .line 443
    :cond_1
    const-string/jumbo v2, "No ARA, try ARF next."

    #@a8
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@ab
    .line 444
    new-instance v2, Lcom/android/internal/telephony/uicc/UiccPkcs15;

    #@ad
    move-object/from16 v0, p0

    #@af
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@b1
    .line 445
    const/4 v4, 0x4

    #@b2
    move-object/from16 v0, p0

    #@b4
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(I)Landroid/os/Message;

    #@b7
    move-result-object v4

    #@b8
    .line 444
    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccPkcs15;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Landroid/os/Message;)V

    #@bb
    move-object/from16 v0, p0

    #@bd
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    #@bf
    goto/16 :goto_0

    #@c1
    .line 451
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    const-string/jumbo v2, "EVENT_TRANSMIT_LOGICAL_CHANNEL_DONE"

    #@c4
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@c7
    .line 452
    move-object/from16 v0, p1

    #@c9
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@cb
    check-cast v12, Landroid/os/AsyncResult;

    #@cd
    .line 453
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@cf
    if-nez v2, :cond_4

    #@d1
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@d3
    if-eqz v2, :cond_4

    #@d5
    .line 454
    iget-object v0, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@d7
    move-object/from16 v18, v0

    #@d9
    check-cast v18, Lcom/android/internal/telephony/uicc/IccIoResult;

    #@db
    .line 455
    .local v18, "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v18

    #@dd
    iget v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    #@df
    const/16 v3, 0x90

    #@e1
    if-ne v2, v3, :cond_3

    #@e3
    move-object/from16 v0, v18

    #@e5
    iget v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    #@e7
    if-nez v2, :cond_3

    #@e9
    .line 456
    move-object/from16 v0, v18

    #@eb
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    #@ed
    if-eqz v2, :cond_3

    #@ef
    move-object/from16 v0, v18

    #@f1
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    #@f3
    array-length v2, v2

    #@f4
    if-lez v2, :cond_3

    #@f6
    .line 458
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@f8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@fb
    move-object/from16 v0, p0

    #@fd
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    #@ff
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v2

    #@103
    move-object/from16 v0, v18

    #@105
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    #@107
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@10a
    move-result-object v3

    #@10b
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@10d
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@110
    move-result-object v3

    #@111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v2

    #@115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@118
    move-result-object v2

    #@119
    move-object/from16 v0, p0

    #@11b
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    #@11d
    .line 459
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->isDataComplete()Z

    #@120
    move-result v2

    #@121
    if-eqz v2, :cond_2

    #@123
    .line 460
    move-object/from16 v0, p0

    #@125
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    #@127
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->parseRules(Ljava/lang/String;)Ljava/util/List;

    #@12a
    move-result-object v2

    #@12b
    move-object/from16 v0, p0

    #@12d
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    #@12f
    .line 461
    const-string/jumbo v2, "Success!"

    #@132
    const/4 v3, 0x1

    #@133
    move-object/from16 v0, p0

    #@135
    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    #@138
    .line 481
    .end local v18    # "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    :goto_1
    move-object/from16 v0, p0

    #@13a
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@13c
    move-object/from16 v0, p0

    #@13e
    iget v3, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    #@140
    .line 482
    const/4 v4, 0x3

    #@141
    .line 481
    move-object/from16 v0, p0

    #@143
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(I)Landroid/os/Message;

    #@146
    move-result-object v4

    #@147
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    #@14a
    .line 483
    const/4 v2, -0x1

    #@14b
    move-object/from16 v0, p0

    #@14d
    iput v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    #@14f
    goto/16 :goto_0

    #@151
    .line 463
    .restart local v18    # "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    #@153
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@155
    move-object/from16 v0, p0

    #@157
    iget v3, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    #@159
    const-string/jumbo v9, ""

    #@15c
    .line 464
    new-instance v4, Ljava/lang/Integer;

    #@15e
    move-object/from16 v0, p0

    #@160
    iget v5, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    #@162
    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    #@165
    const/4 v5, 0x2

    #@166
    move-object/from16 v0, p0

    #@168
    invoke-virtual {v0, v5, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@16b
    move-result-object v10

    #@16c
    .line 463
    const/16 v4, 0x80

    #@16e
    const/16 v5, 0xca

    #@170
    const/16 v6, 0xff

    #@172
    const/16 v7, 0x60

    #@174
    const/4 v8, 0x0

    #@175
    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/uicc/UiccCard;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    #@178
    goto/16 :goto_0

    #@17a
    .line 467
    :catch_0
    move-exception v16

    #@17b
    .line 468
    .local v16, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@17d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@180
    const-string/jumbo v3, "Error parsing rules: "

    #@183
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v2

    #@187
    move-object/from16 v0, v16

    #@189
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v2

    #@18d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@190
    move-result-object v2

    #@191
    const/4 v3, 0x2

    #@192
    move-object/from16 v0, p0

    #@194
    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    #@197
    goto :goto_1

    #@198
    .line 469
    .end local v16    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v17

    #@199
    .line 470
    .local v17, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@19b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19e
    const-string/jumbo v3, "Error parsing rules: "

    #@1a1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v2

    #@1a5
    move-object/from16 v0, v17

    #@1a7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v2

    #@1ab
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ae
    move-result-object v2

    #@1af
    const/4 v3, 0x2

    #@1b0
    move-object/from16 v0, p0

    #@1b2
    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    #@1b5
    goto :goto_1

    #@1b6
    .line 473
    .end local v17    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1bb
    const-string/jumbo v3, "Invalid response: payload="

    #@1be
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v2

    #@1c2
    move-object/from16 v0, v18

    #@1c4
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    #@1c6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v2

    #@1ca
    .line 474
    const-string/jumbo v3, " sw1="

    #@1cd
    .line 473
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v2

    #@1d1
    .line 474
    move-object/from16 v0, v18

    #@1d3
    iget v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    #@1d5
    .line 473
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v2

    #@1d9
    .line 474
    const-string/jumbo v3, " sw2="

    #@1dc
    .line 473
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v2

    #@1e0
    .line 474
    move-object/from16 v0, v18

    #@1e2
    iget v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    #@1e4
    .line 473
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e7
    move-result-object v2

    #@1e8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1eb
    move-result-object v15

    #@1ec
    .line 475
    .local v15, "errorMsg":Ljava/lang/String;
    const/4 v2, 0x2

    #@1ed
    move-object/from16 v0, p0

    #@1ef
    invoke-direct {v0, v2, v15}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    #@1f2
    goto/16 :goto_1

    #@1f4
    .line 478
    .end local v15    # "errorMsg":Ljava/lang/String;
    .end local v18    # "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_4
    const-string/jumbo v2, "Error reading value from SIM."

    #@1f7
    const/4 v3, 0x2

    #@1f8
    move-object/from16 v0, p0

    #@1fa
    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    #@1fd
    goto/16 :goto_1

    #@1ff
    .line 487
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string/jumbo v2, "EVENT_CLOSE_LOGICAL_CHANNEL_DONE"

    #@202
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@205
    goto/16 :goto_0

    #@207
    .line 491
    :pswitch_3
    const-string/jumbo v2, "EVENT_PKCS15_READ_DONE"

    #@20a
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    #@20d
    .line 492
    move-object/from16 v0, p0

    #@20f
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    #@211
    if-eqz v2, :cond_5

    #@213
    move-object/from16 v0, p0

    #@215
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    #@217
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->getRules()Ljava/util/List;

    #@21a
    move-result-object v2

    #@21b
    if-nez v2, :cond_6

    #@21d
    .line 493
    :cond_5
    const-string/jumbo v2, "No ARA or ARF."

    #@220
    const/4 v3, 0x2

    #@221
    move-object/from16 v0, p0

    #@223
    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    #@226
    goto/16 :goto_0

    #@228
    .line 495
    :cond_6
    move-object/from16 v0, p0

    #@22a
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    #@22c
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->getRules()Ljava/util/List;

    #@22f
    move-result-object v2

    #@230
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@233
    move-result-object v14

    #@234
    .local v14, "cert$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@237
    move-result v2

    #@238
    if-eqz v2, :cond_7

    #@23a
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23d
    move-result-object v13

    #@23e
    check-cast v13, Ljava/lang/String;

    #@240
    .line 496
    .local v13, "cert":Ljava/lang/String;
    new-instance v11, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;

    #@242
    .line 497
    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    #@245
    move-result-object v2

    #@246
    const-string/jumbo v3, ""

    #@249
    const-wide/16 v4, 0x0

    #@24b
    .line 496
    invoke-direct {v11, v2, v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;-><init>([BLjava/lang/String;J)V

    #@24e
    .line 498
    .local v11, "accessRule":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    move-object/from16 v0, p0

    #@250
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    #@252
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@255
    goto :goto_2

    #@256
    .line 500
    .end local v11    # "accessRule":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    .end local v13    # "cert":Ljava/lang/String;
    :cond_7
    const-string/jumbo v2, "Success!"

    #@259
    const/4 v3, 0x1

    #@25a
    move-object/from16 v0, p0

    #@25c
    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    #@25f
    goto/16 :goto_0

    #@261
    .line 422
    nop

    #@262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public hasCarrierPrivilegeRules()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 257
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    #@b
    if-eqz v1, :cond_0

    #@d
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    #@f
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@12
    move-result v1

    #@13
    if-lez v1, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    :cond_0
    return v0
.end method
