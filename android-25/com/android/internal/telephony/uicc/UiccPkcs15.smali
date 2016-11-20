.class public Lcom/android/internal/telephony/uicc/UiccPkcs15;
.super Landroid/os/Handler;
.source "UiccPkcs15.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;,
        Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;
    }
.end annotation


# static fields
.field private static final CARRIER_RULE_AID:Ljava/lang/String; = "FFFFFFFFFFFF"

.field private static final DBG:Z = true

.field private static final EVENT_CLOSE_LOGICAL_CHANNEL_DONE:I = 0x7

.field private static final EVENT_LOAD_ACCF_DONE:I = 0x6

.field private static final EVENT_LOAD_ACMF_DONE:I = 0x4

.field private static final EVENT_LOAD_ACRF_DONE:I = 0x5

.field private static final EVENT_LOAD_DODF_DONE:I = 0x3

.field private static final EVENT_LOAD_ODF_DONE:I = 0x2

.field private static final EVENT_SELECT_PKCS15_DONE:I = 0x1

.field private static final ID_ACRF:Ljava/lang/String; = "4300"

.field private static final LOG_TAG:Ljava/lang/String; = "UiccPkcs15"

.field private static final TAG_ASN_OCTET_STRING:Ljava/lang/String; = "04"

.field private static final TAG_ASN_SEQUENCE:Ljava/lang/String; = "30"

.field private static final TAG_TARGET_AID:Ljava/lang/String; = "A0"


# instance fields
.field private mChannelId:I

.field private mFh:Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

.field private mLoadedCallback:Landroid/os/Message;

.field private mPkcs15Selector:Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;

.field private mRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/uicc/UiccPkcs15;)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/uicc/UiccPkcs15;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;Landroid/os/Message;)V
    .locals 2
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "loadedCallback"    # Landroid/os/Message;

    #@0
    .prologue
    .line 192
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@3
    .line 179
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    #@6
    .line 180
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    #@d
    .line 193
    const-string/jumbo v0, "Creating UiccPkcs15"

    #@10
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    #@13
    .line 194
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@15
    .line 195
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mLoadedCallback:Landroid/os/Message;

    #@17
    .line 196
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;

    #@19
    const/4 v1, 0x1

    #@1a
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->obtainMessage(I)Landroid/os/Message;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;-><init>(Lcom/android/internal/telephony/uicc/UiccPkcs15;Landroid/os/Message;)V

    #@21
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mPkcs15Selector:Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;

    #@23
    .line 192
    return-void
.end method

.method private cleanUp()V
    .locals 3

    #@0
    .prologue
    .line 248
    const-string/jumbo v0, "cleanUp"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    #@6
    .line 249
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    #@8
    if-ltz v0, :cond_0

    #@a
    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@c
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    #@e
    .line 251
    const/4 v2, 0x7

    #@f
    .line 250
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->obtainMessage(I)Landroid/os/Message;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    #@16
    .line 252
    const/4 v0, -0x1

    #@17
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    #@19
    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mLoadedCallback:Landroid/os/Message;

    #@1b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@1e
    .line 247
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 330
    const-string/jumbo v0, "UiccPkcs15"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 329
    return-void
.end method

.method private parseAccf(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 308
    move-object v0, p1

    #@1
    .line 309
    .local v0, "acCondition":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_1

    #@7
    .line 310
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@9
    const-string/jumbo v4, "30"

    #@c
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@f
    .line 311
    .local v3, "tlvCondition":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    new-instance v2, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@11
    const-string/jumbo v4, "04"

    #@14
    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@17
    .line 313
    .local v2, "tlvCert":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v4, 0x0

    #@18
    :try_start_0
    invoke-virtual {v3, v0, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 314
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    const/4 v5, 0x1

    #@21
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    #@24
    .line 315
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    #@2b
    move-result v4

    #@2c
    if-nez v4, :cond_0

    #@2e
    .line 316
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    #@30
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    goto :goto_0

    #@38
    .line 318
    :catch_0
    move-exception v1

    #@39
    .line 319
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v5, "Error: "

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    #@50
    .line 307
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .end local v2    # "tlvCert":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v3    # "tlvCondition":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    :cond_1
    return-void
.end method

.method private parseAcrf(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 267
    const/4 v2, 0x0

    #@1
    .line 269
    .local v2, "ret":Ljava/lang/String;
    move-object v0, p1

    #@2
    .line 270
    .end local v2    # "ret":Ljava/lang/String;
    .local v0, "acRules":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v9

    #@6
    if-nez v9, :cond_1

    #@8
    .line 271
    new-instance v7, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@a
    const-string/jumbo v9, "30"

    #@d
    invoke-direct {v7, v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@10
    .line 273
    .local v7, "tlvRule":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v9, 0x0

    #@11
    :try_start_0
    invoke-virtual {v7, v0, v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 274
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 275
    .local v3, "ruleString":Ljava/lang/String;
    const-string/jumbo v9, "A0"

    #@1c
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1f
    move-result v9

    #@20
    if-eqz v9, :cond_0

    #@22
    .line 279
    new-instance v8, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@24
    const-string/jumbo v9, "A0"

    #@27
    invoke-direct {v8, v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@2a
    .line 280
    .local v8, "tlvTarget":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@2c
    const-string/jumbo v9, "04"

    #@2f
    invoke-direct {v4, v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@32
    .line 281
    .local v4, "tlvAid":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    new-instance v5, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@34
    const-string/jumbo v9, "30"

    #@37
    invoke-direct {v5, v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@3a
    .line 282
    .local v5, "tlvAsnPath":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    new-instance v6, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    #@3c
    const-string/jumbo v9, "04"

    #@3f
    invoke-direct {v6, v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    #@42
    .line 286
    .local v6, "tlvPath":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v9, 0x0

    #@43
    invoke-virtual {v8, v3, v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    .line 289
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    #@4a
    move-result-object v9

    #@4b
    const/4 v10, 0x1

    #@4c
    invoke-virtual {v4, v9, v10}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    #@4f
    .line 291
    const-string/jumbo v9, "FFFFFFFFFFFF"

    #@52
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    #@55
    move-result-object v10

    #@56
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v9

    #@5a
    if-eqz v9, :cond_0

    #@5c
    .line 292
    const/4 v9, 0x1

    #@5d
    invoke-virtual {v5, v3, v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    #@60
    .line 293
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    #@63
    move-result-object v9

    #@64
    const/4 v10, 0x1

    #@65
    invoke-virtual {v6, v9, v10}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    #@68
    .line 294
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@6b
    move-result-object v2

    #@6c
    .local v2, "ret":Ljava/lang/String;
    goto :goto_0

    #@6d
    .line 298
    .end local v2    # "ret":Ljava/lang/String;
    .end local v3    # "ruleString":Ljava/lang/String;
    .end local v4    # "tlvAid":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v5    # "tlvAsnPath":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v6    # "tlvPath":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v8    # "tlvTarget":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    :catch_0
    move-exception v1

    #@6e
    .line 299
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v9, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v10, "Error: "

    #@76
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v9

    #@7a
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v9

    #@7e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v9

    #@82
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    #@85
    .line 303
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .end local v7    # "tlvRule":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 337
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 338
    const-string/jumbo v2, " mRules:"

    #@7
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    .line 339
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    #@c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "cert$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/lang/String;

    #@1c
    .line 340
    .local v0, "cert":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "  "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@33
    goto :goto_0

    #@34
    .line 336
    .end local v0    # "cert":Ljava/lang/String;
    .end local v1    # "cert$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public getRules()Ljava/util/List;
    .locals 1
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
    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "handleMessage: "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget v3, p1, Landroid/os/Message;->what:I

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    #@19
    .line 202
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b
    check-cast v0, Landroid/os/AsyncResult;

    #@1d
    .line 204
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    #@1f
    packed-switch v2, :pswitch_data_0

    #@22
    .line 243
    :pswitch_0
    const-string/jumbo v2, "UiccPkcs15"

    #@25
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v4, "Unknown event "

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    iget v4, p1, Landroid/os/Message;->what:I

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 200
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    #@3f
    .line 206
    :pswitch_2
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@41
    if-nez v2, :cond_1

    #@43
    .line 209
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

    #@45
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@47
    check-cast v2, Ljava/lang/String;

    #@49
    invoke-direct {v3, p0, v2}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccPkcs15;Ljava/lang/String;)V

    #@4c
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mFh:Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

    #@4e
    .line 210
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mFh:Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

    #@50
    const-string/jumbo v3, "4300"

    #@53
    const/4 v4, 0x5

    #@54
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->obtainMessage(I)Landroid/os/Message;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->loadFile(Ljava/lang/String;Landroid/os/Message;)Z

    #@5b
    move-result v2

    #@5c
    if-nez v2, :cond_0

    #@5e
    .line 211
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->cleanUp()V

    #@61
    goto :goto_0

    #@62
    .line 214
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v3, "select pkcs15 failed: "

    #@6a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v2

    #@78
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    #@7b
    .line 216
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mLoadedCallback:Landroid/os/Message;

    #@7d
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@80
    goto :goto_0

    #@81
    .line 221
    :pswitch_3
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@83
    if-nez v2, :cond_2

    #@85
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@87
    if-eqz v2, :cond_2

    #@89
    .line 222
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@8b
    check-cast v2, Ljava/lang/String;

    #@8d
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->parseAcrf(Ljava/lang/String;)Ljava/lang/String;

    #@90
    move-result-object v1

    #@91
    .line 223
    .local v1, "idAccf":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mFh:Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

    #@93
    const/4 v3, 0x6

    #@94
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->obtainMessage(I)Landroid/os/Message;

    #@97
    move-result-object v3

    #@98
    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->loadFile(Ljava/lang/String;Landroid/os/Message;)Z

    #@9b
    move-result v2

    #@9c
    if-nez v2, :cond_0

    #@9e
    .line 224
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->cleanUp()V

    #@a1
    goto :goto_0

    #@a2
    .line 227
    .end local v1    # "idAccf":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->cleanUp()V

    #@a5
    goto :goto_0

    #@a6
    .line 232
    :pswitch_4
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@a8
    if-nez v2, :cond_3

    #@aa
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@ac
    if-eqz v2, :cond_3

    #@ae
    .line 233
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@b0
    check-cast v2, Ljava/lang/String;

    #@b2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->parseAccf(Ljava/lang/String;)V

    #@b5
    .line 236
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->cleanUp()V

    #@b8
    goto :goto_0

    #@b9
    .line 204
    nop

    #@ba
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
