.class public Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
.super Lcom/android/internal/telephony/uicc/UiccCard;
.source "EuiccCard.java"


# instance fields
.field private volatile blacklist mEid:Ljava/lang/String;

.field private blacklist mEidReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEidReadyRegistrants(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEidReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEid(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smlogd(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V
    .registers 7

    .line 50
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V

    .line 51
    iget-object p1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no eid given in constructor for phone "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->loge(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->loadEidAndNotifyRegistrants()V

    return-void

    .line 55
    :cond_23
    iget-object p1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    .line 56
    iget-object p1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardId:Ljava/lang/String;

    return-void
.end method

.method static synthetic blacklist access$002(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic blacklist access$102(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardId:Ljava/lang/String;

    return-object p1
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 177
    const-string v0, "EuiccCard"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 164
    const-string v0, "EuiccCard"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 184
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 185
    new-instance p1, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 186
    const-string p2, "EuiccCard:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mEid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist getEid()Ljava/lang/String;
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    return-object p0
.end method

.method protected blacklist loadEidAndNotifyRegistrants()V
    .registers 4

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 127
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;)V

    .line 151
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccPorts:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->getEid(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist registerForEidReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 102
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 103
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    if-eqz p1, :cond_13

    .line 104
    new-instance p0, Landroid/os/AsyncResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    return-void

    .line 106
    :cond_13
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEidReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-nez p1, :cond_1e

    .line 107
    new-instance p1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEidReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 109
    :cond_1e
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEidReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist unregisterForEidReady(Landroid/os/Handler;)V
    .registers 2

    .line 117
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEidReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_7

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    :cond_7
    return-void
.end method

.method public blacklist update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V
    .registers 7

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_3
    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 82
    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    goto :goto_12

    :catchall_10
    move-exception p0

    goto :goto_17

    .line 84
    :cond_12
    :goto_12
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V

    .line 85
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_10

    throw p0
.end method

.method protected blacklist updateCardId(Ljava/lang/String;)V
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 91
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->updateCardId(Ljava/lang/String;)V

    return-void

    .line 93
    :cond_c
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->mEid:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardId:Ljava/lang/String;

    return-void
.end method

.method public blacklist updateSupportedMepMode(Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V
    .registers 5

    .line 68
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    .line 69
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccPorts:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccPort;

    .line 70
    instance-of v1, v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    if-eqz v1, :cond_22

    .line 71
    check-cast v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->updateSupportedMepMode(Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V

    goto :goto_c

    .line 73
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eUICC card has non-euicc port object:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->loge(Ljava/lang/String;)V

    goto :goto_c

    :cond_3b
    return-void
.end method
