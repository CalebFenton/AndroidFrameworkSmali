.class public Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
.super Landroid/os/Handler;
.source "UiccCarrierPrivilegeRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    }
.end annotation


# instance fields
.field private blacklist mAIDInUse:I

.field private blacklist mAccessRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mChannelId:I

.field private blacklist mCheckedRules:Z

.field private greylist-max-r mLoadedCallback:Landroid/os/Message;

.field private blacklist mRetryCount:I

.field private final blacklist mRetryRunnable:Ljava/lang/Runnable;

.field private blacklist mRules:Ljava/lang/String;

.field private greylist-max-r mState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mStatusMessage:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

.field private blacklist mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAIDInUse(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mopenChannel(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->openChannel(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smlog(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Message;)V
    .registers 5

    .line 217
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 197
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Lcom/android/internal/telephony/LocalLog;

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mCheckedRules:Z

    .line 202
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    .line 218
    const-string v1, "Creating UiccCarrierPrivilegeRules"

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 219
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 220
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 221
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Lcom/android/internal/telephony/LocalLog;

    const-string v1, "Not loaded."

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 222
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mLoadedCallback:Landroid/os/Message;

    .line 223
    const-string p1, ""

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    .line 224
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    .line 227
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    .line 228
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->openChannel(I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;)V"
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 197
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Lcom/android/internal/telephony/LocalLog;

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mCheckedRules:Z

    .line 202
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    .line 233
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    .line 234
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 235
    const-string p1, ""

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    .line 236
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Lcom/android/internal/telephony/LocalLog;

    const-string p1, "Loaded from test rules."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getStateString(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_11

    const/4 p0, 0x1

    if-eq p1, p0, :cond_e

    const/4 p0, 0x2

    if-eq p1, p0, :cond_b

    .line 736
    const-string p0, "UNKNOWN"

    return-object p0

    .line 734
    :cond_b
    const-string p0, "STATE_ERROR"

    return-object p0

    .line 732
    :cond_e
    const-string p0, "STATE_LOADED"

    return-object p0

    .line 730
    :cond_11
    const-string p0, "STATE_LOADING"

    return-object p0
.end method

.method private blacklist isDataComplete()Z
    .registers 5

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDataComplete mRules:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    const-string v1, "FF40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 562
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 563
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parseLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDataComplete lengthBytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 565
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-$$Nest$fgetlength(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/Integer;

    move-result-object v0

    .line 566
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v2, v0

    if-ne p0, v2, :cond_5d

    .line 567
    const-string p0, "isDataComplete yes"

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 570
    :cond_5d
    const-string p0, "isDataComplete no"

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 574
    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tags don\'t match."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 1

    .line 0
    return-void
.end method

.method private blacklist openChannel(I)V
    .registers 7

    if-nez p1, :cond_5

    .line 211
    const-string v0, "A00000015144414300"

    goto :goto_7

    :cond_5
    const-string v0, "A00000015141434C00"

    .line 213
    :goto_7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 214
    invoke-virtual {p0, v2, v4, p1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 213
    invoke-virtual {v1, v0, v4, p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method private static blacklist parseRefArdo(Ljava/lang/String;)Landroid/telephony/UiccAccessRule;
    .registers 11

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got rule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 613
    :goto_17
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10c

    .line 614
    const-string v3, "E1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_c1

    .line 615
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v1, p0, v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 622
    new-instance v2, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v3, "C1"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 623
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-$$Nest$fgetvalue(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "4F"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 624
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v4, v7}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 625
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-$$Nest$fgetvalue(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 626
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-$$Nest$fgetlengthBytes(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "06"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-$$Nest$fgetvalue(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "FFFFFFFFFFFF"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 627
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7e

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_75

    goto :goto_7e

    .line 630
    :cond_75
    invoke-virtual {v2, v1, v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 631
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-$$Nest$fgetvalue(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v2

    goto :goto_95

    :cond_7e
    :goto_7e
    return-object v0

    .line 632
    :cond_7f
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-$$Nest$fgetvalue(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 633
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-$$Nest$fgetvalue(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 634
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-$$Nest$fgetvalue(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v2

    .line 638
    :goto_95
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ba

    .line 639
    const-string v3, "CA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a4

    return-object v0

    .line 642
    :cond_a4
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v4, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v4, v1, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 644
    new-instance v1, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-$$Nest$fgetvalue(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_bb

    :cond_ba
    move-object v1, v0

    :goto_bb
    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_17

    :cond_c0
    return-object v0

    .line 648
    :cond_c1
    const-string v3, "E3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_104

    .line 649
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v4, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v4, p0, v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 653
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-$$Nest$fgetvalue(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v3

    .line 654
    :goto_d6
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const-string v7, "DB"

    if-nez v4, :cond_f3

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f3

    .line 655
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v4, v3, v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_d6

    .line 658
    :cond_f3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_fa

    return-object v0

    .line 661
    :cond_fa
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v4, v7}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    goto/16 :goto_17

    .line 665
    :cond_104
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid Rule type"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 669
    :cond_10c
    new-instance p0, Landroid/telephony/UiccAccessRule;

    .line 670
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Landroid/telephony/UiccAccessRule;-><init>([BLjava/lang/String;J)V

    return-object p0
.end method

.method private static blacklist parseRules(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got rules: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 584
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v1, "FF40"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 585
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 587
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-$$Nest$fgetvalue(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object p0

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 589
    :goto_28
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_63

    .line 590
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v2, "E2"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 591
    invoke-virtual {v1, p0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 592
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-$$Nest$fgetvalue(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->parseRefArdo(Ljava/lang/String;)Landroid/telephony/UiccAccessRule;

    move-result-object v2

    if-eqz v2, :cond_48

    .line 594
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 596
    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip unrecognized rule."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-$$Nest$fgetvalue(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UiccCarrierPrivilegeRules"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_63
    return-object v0
.end method

.method public static blacklist shouldRetry(Landroid/os/AsyncResult;I)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 399
    iget-object v2, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v2, Lcom/android/internal/telephony/CommandException;

    const/4 v4, 0x0

    if-eqz v3, :cond_63

    if-ge p1, v1, :cond_63

    .line 400
    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    .line 401
    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, [I

    if-eqz p0, :cond_4b

    .line 403
    array-length p0, v2

    const/4 v3, 0x3

    if-ne p0, v3, :cond_4b

    .line 404
    aget p0, v2, v0

    int-to-byte p0, p0

    aget v2, v2, v1

    int-to-byte v2, v2

    new-array v1, v1, [B

    aput-byte p0, v1, v4

    aput-byte v2, v1, v0

    .line 405
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    goto :goto_4c

    :cond_4b
    move p0, v4

    .line 408
    :goto_4c
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v1, :cond_62

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v1, :cond_58

    const/16 v1, 0x6985

    if-eq p0, v1, :cond_62

    :cond_58
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INTERNAL_ERR:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v1, :cond_61

    const/16 p1, 0x6999

    if-ne p0, p1, :cond_61

    goto :goto_62

    :cond_61
    return v4

    :cond_62
    :goto_62
    return v0

    :cond_63
    return v4
.end method

.method private blacklist updateState(ILjava/lang/String;)V
    .registers 4

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 679
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mLoadedCallback:Landroid/os/Message;

    if-eqz p1, :cond_c

    .line 680
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 683
    :cond_c
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateStatusMessage(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateStatusMessage(Ljava/lang/String;)V
    .registers 2

    .line 687
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist areCarrierPriviligeRulesLoaded()Z
    .registers 1

    .line 243
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 698
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 699
    const-string p2, "UiccCarrierPrivilegeRules:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 701
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    const-string p2, "mStatusMessage="

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 703
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 704
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    if-eqz p2, :cond_73

    .line 705
    const-string p2, "mAccessRules: "

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 707
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_49
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccAccessRule;

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  rule=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_49

    .line 710
    :cond_6f
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    goto :goto_78

    .line 712
    :cond_73
    const-string p2, " mAccessRules: null"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    :goto_78
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    if-eqz p2, :cond_98

    .line 715
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUiccPkcs15: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 716
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_9d

    .line 718
    :cond_98
    const-string p0, " mUiccPkcs15: null"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 720
    :goto_9d
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 721
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getAccessRules()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    if-nez p0, :cond_7

    .line 275
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 277
    :cond_7
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I
    .registers 4

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 p0, -0x2

    return p0

    .line 353
    :cond_f
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/UiccAccessRule;

    .line 354
    invoke-virtual {v0, p1}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v0

    if-eqz v0, :cond_15

    return v0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    .line 316
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->hasCarrierPrivilegeRules()Z

    move-result v1

    if-nez v1, :cond_17

    .line 317
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_11

    const/4 p0, -0x1

    return p0

    :cond_11
    const/4 p1, 0x2

    if-ne p0, p1, :cond_16

    const/4 p0, -0x2

    return p0

    :cond_16
    return v0

    :cond_17
    const v1, 0x28008000

    .line 328
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result p0
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_22} :catch_23

    return p0

    .line 334
    :catch_23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found for carrier privilege status check"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    .registers 5

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 p0, -0x2

    return p0

    .line 295
    :cond_f
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/UiccAccessRule;

    .line 296
    invoke-virtual {v0, p1, p2}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15

    return v0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I
    .registers 3

    .line 369
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatusForUid(Landroid/content/pm/PackageManager;I)I

    move-result p0

    return p0
.end method

.method public blacklist getCarrierPrivilegeStatusForUid(Landroid/content/pm/PackageManager;I)I
    .registers 7

    .line 380
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_17

    .line 383
    array-length v1, p2

    move v2, v0

    :goto_9
    if-ge v2, v1, :cond_17

    aget-object v3, p2, v2

    .line 384
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_14

    return v3

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    return v0
.end method

.method public blacklist getPackageNames()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    if-eqz p0, :cond_2b

    .line 261
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccAccessRule;

    .line 262
    invoke-virtual {v1}, Landroid/telephony/UiccAccessRule;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 263
    invoke-virtual {v1}, Landroid/telephony/UiccAccessRule;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_2b
    return-object v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 420
    iget v2, v0, Landroid/os/Message;->arg2:I

    iput v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    .line 422
    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    const-string v5, "Success!"

    const-string v6, ""

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v2, v8, :cond_1c7

    const/4 v9, 0x3

    if-eq v2, v7, :cond_84

    if-eq v2, v9, :cond_75

    if-eq v2, v3, :cond_34

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiccCarrierPrivilegeRules"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 537
    :cond_34
    const-string v0, "EVENT_PKCS15_READ_DONE"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 538
    iget-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->getRules()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_44

    goto :goto_6f

    .line 541
    :cond_44
    iget-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->getRules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 542
    new-instance v3, Landroid/telephony/UiccAccessRule;

    .line 543
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-wide/16 v9, 0x0

    invoke-direct {v3, v2, v6, v9, v10}, Landroid/telephony/UiccAccessRule;-><init>([BLjava/lang/String;J)V

    .line 544
    iget-object v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 546
    :cond_6b
    invoke-direct {v1, v8, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    return-void

    .line 539
    :cond_6f
    :goto_6f
    const-string v0, "No ARA or ARF."

    invoke-direct {v1, v7, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    return-void

    .line 528
    :cond_75
    const-string v0, "EVENT_CLOSE_LOGICAL_CHANNEL_DONE"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 529
    iget v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-nez v0, :cond_269

    .line 531
    iput-object v6, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    .line 532
    invoke-direct {v1, v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->openChannel(I)V

    return-void

    .line 467
    :cond_84
    const-string v2, "EVENT_TRANSMIT_LOGICAL_CHANNEL_DONE"

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 468
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 469
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_150

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_150

    .line 470
    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 471
    iget v0, v2, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v3, 0x90

    if-ne v0, v3, :cond_11d

    iget v0, v2, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-nez v0, :cond_11d

    iget-object v0, v2, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v0, :cond_11d

    array-length v0, v0

    if-lez v0, :cond_11d

    .line 474
    :try_start_a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 475
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    .line 476
    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->isDataComplete()Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 479
    iget-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    iget-object v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->parseRules(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 480
    iget v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-nez v0, :cond_e2

    .line 481
    iput-boolean v8, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mCheckedRules:Z

    goto/16 :goto_1b5

    :catch_e0
    move-exception v0

    goto :goto_103

    .line 483
    :cond_e2
    invoke-direct {v1, v8, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    goto/16 :goto_1b5

    .line 486
    :cond_e7
    iget-object v10, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget v11, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    const-string v17, ""

    iget v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    .line 488
    invoke-virtual {v1, v7, v11, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v19

    const/16 v12, 0x80

    const/16 v13, 0xca

    const/16 v14, 0xff

    const/16 v15, 0x60

    const/16 v16, 0x0

    const/16 v18, 0x0

    .line 486
    invoke-virtual/range {v10 .. v19}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;ZLandroid/os/Message;)V
    :try_end_102
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a8 .. :try_end_102} :catch_e0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a8 .. :try_end_102} :catch_e0

    return-void

    .line 493
    :goto_103
    iget v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-ne v2, v8, :cond_1b5

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing rules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v7, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    goto/16 :goto_1b5

    .line 498
    :cond_11d
    iget v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-ne v0, v8, :cond_1b5

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid response: payload="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 500
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sw1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sw2="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-direct {v1, v7, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    goto :goto_1b5

    .line 506
    :cond_150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading value from SIM via "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget v3, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-nez v3, :cond_161

    const-string v3, "ARAD"

    goto :goto_163

    :cond_161
    const-string v3, "ARAM"

    :goto_163
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 508
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_190

    .line 509
    check-cast v3, Lcom/android/internal/telephony/CommandException;

    .line 510
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "error code : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1aa

    .line 513
    :cond_190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "unknown exception : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 515
    :goto_1aa
    iget v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-nez v2, :cond_1b2

    .line 516
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateStatusMessage(Ljava/lang/String;)V

    goto :goto_1b5

    .line 518
    :cond_1b2
    invoke-direct {v1, v7, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    .line 522
    :cond_1b5
    :goto_1b5
    iget-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    iget v3, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    invoke-virtual {v1, v9, v4, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccCloseLogicalChannel(IZLandroid/os/Message;)V

    const/4 v0, -0x1

    .line 524
    iput v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    goto/16 :goto_269

    .line 425
    :cond_1c7
    const-string v2, "EVENT_OPEN_LOGICAL_CHANNEL_DONE"

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 426
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 427
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1f7

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1f7

    .line 428
    check-cast v2, [I

    aget v9, v2, v4

    iput v9, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    .line 429
    iget-object v8, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    .line 430
    invoke-virtual {v1, v7, v9, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    const/16 v10, 0x80

    const/16 v11, 0xca

    const/16 v12, 0xff

    const/16 v13, 0x40

    const/4 v14, 0x0

    .line 429
    const-string v15, ""

    const/16 v16, 0x0

    invoke-virtual/range {v8 .. v17}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;ZLandroid/os/Message;)V

    return-void

    .line 433
    :cond_1f7
    iget v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryCount:I

    invoke-static {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->shouldRetry(Landroid/os/AsyncResult;I)Z

    move-result v2

    if-eqz v2, :cond_216

    .line 434
    const-string v0, "should retry"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 435
    iget v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryCount:I

    add-int/2addr v0, v8

    iput v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryCount:I

    .line 436
    iget-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 437
    iget-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 439
    :cond_216
    iget v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-nez v2, :cond_21f

    .line 441
    iput-object v6, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    .line 442
    invoke-direct {v1, v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->openChannel(I)V

    .line 444
    :cond_21f
    iget v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-ne v2, v8, :cond_269

    .line 445
    iget-boolean v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mCheckedRules:Z

    if-eqz v2, :cond_22b

    .line 446
    invoke-direct {v1, v8, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    return-void

    .line 450
    :cond_22b
    const-string v2, "No ARA, try ARF next."

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 451
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_25c

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 452
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v2, v4, :cond_25c

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No ARA due to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 456
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateStatusMessage(Ljava/lang/String;)V

    .line 458
    :cond_25c
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccPkcs15;

    iget-object v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 459
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccPkcs15;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Message;)V

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    :cond_269
    :goto_269
    return-void
.end method

.method public blacklist hasCarrierPrivilegeRules()Z
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    if-eqz p0, :cond_14

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method
