.class public Lcom/android/internal/telephony/uicc/UiccCard;
.super Ljava/lang/Object;
.source "UiccCard.java"


# static fields
.field protected static final blacklist DBG:Z = true

.field public static final blacklist EXTRA_ICC_CARD_ADDED:Ljava/lang/String; = "com.android.internal.telephony.uicc.ICC_CARD_ADDED"

.field protected static final blacklist LOG_TAG:Ljava/lang/String; = "UiccCard"


# instance fields
.field protected blacklist mCardId:Ljava/lang/String;

.field private greylist-max-r mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field protected final greylist-max-r mLock:Ljava/lang/Object;

.field private blacklist mPhoneIdToPortIdx:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

.field protected blacklist mUiccPorts:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/uicc/UiccPort;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$5Z2xWklsK-3YubuBSBV_M-nHsms(I)[Lcom/android/internal/telephony/uicc/UiccPort;
    .registers 1

    .line 188
    new-array p0, p0, [Lcom/android/internal/telephony/uicc/UiccPort;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V
    .registers 8

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccPorts:Ljava/util/LinkedHashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneIdToPortIdx:Ljava/util/HashMap;

    .line 63
    const-string v0, "Creating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 64
    iget-object v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 65
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    .line 66
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    .line 67
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V

    return-void
.end method

.method private greylist-max-r log(Ljava/lang/String;)V
    .registers 2

    .line 212
    const-string p0, "UiccCard"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private greylist-max-r loge(Ljava/lang/String;)V
    .registers 2

    .line 217
    const-string p0, "UiccCard"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_3
    const-string v1, "Disposing card"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccPorts:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/UiccPort;

    if-eqz v2, :cond_12

    .line 78
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccPort;->dispose()V

    goto :goto_12

    :catchall_24
    move-exception p0

    goto :goto_37

    .line 81
    :cond_26
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccPorts:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v1, 0x0

    .line 82
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccPorts:Ljava/util/LinkedHashMap;

    .line 83
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneIdToPortIdx:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 84
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneIdToPortIdx:Ljava/util/HashMap;

    .line 85
    monitor-exit v0

    return-void

    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_24

    throw p0
.end method

.method public blacklist disposePort(I)V
    .registers 6

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disposing port for index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 96
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneIdToPortIdx:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccPort;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccPort;->dispose()V

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_3b

    .line 99
    :cond_30
    :goto_30
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccPorts:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    monitor-exit v0

    return-void

    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_2e

    throw p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 221
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 222
    const-string p2, "UiccCard:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 224
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCardState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCardId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNumberOfPorts="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccPorts:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSupportedMepMode="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUiccPorts= size="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccPorts:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 230
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccPorts:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_98
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/uicc/UiccPort;

    .line 231
    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/uicc/UiccPort;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_98

    .line 233
    :cond_a8
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 234
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 133
    const-string v0, "UiccCard finalized"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getCardId()Ljava/lang/String;
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 172
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardId:Ljava/lang/String;

    return-object p0

    .line 174
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccPorts:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/UiccPort;

    const/4 v0, 0x0

    if-nez p0, :cond_1c

    return-object v0

    .line 178
    :cond_1c
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccPort;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p0

    if-nez p0, :cond_23

    return-object v0

    .line 179
    :cond_23
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 163
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public blacklist getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccPorts:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/UiccPort;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 207
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public blacklist getUiccPortForPhone(I)Lcom/android/internal/telephony/uicc/UiccPort;
    .registers 4

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccPorts:Ljava/util/LinkedHashMap;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneIdToPortIdx:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/UiccPort;

    monitor-exit v0

    return-object p0

    :catchall_17
    move-exception p0

    .line 198
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public blacklist getUiccPortList()[Lcom/android/internal/telephony/uicc/UiccPort;
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccPorts:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCard$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/UiccCard$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/internal/telephony/uicc/UiccPort;

    monitor-exit v0

    return-object p0

    :catchall_1a
    move-exception p0

    .line 189
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public blacklist update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V
    .registers 16

    .line 107
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_3
    iget-object v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 109
    iget-object v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->updateCardId(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v2, :cond_70

    .line 111
    iget-object v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    .line 112
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccPorts:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/UiccPort;

    if-nez v2, :cond_59

    .line 114
    instance-of v2, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    if-eqz v2, :cond_3a

    .line 115
    new-instance v3, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    move-object v9, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V

    goto :goto_4f

    :catchall_37
    move-exception v0

    move-object p0, v0

    goto :goto_78

    :cond_3a
    move-object v9, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    .line 118
    new-instance p0, Lcom/android/internal/telephony/uicc/UiccPort;

    move-object v10, v9

    iget-object v9, v10, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    move v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/telephony/uicc/UiccPort;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;Lcom/android/internal/telephony/uicc/UiccCard;)V

    move v7, v8

    move-object v9, v10

    move-object v3, v4

    .line 120
    :goto_4f
    iget-object p0, v9, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccPorts:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    :cond_59
    move-object v9, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    .line 122
    invoke-virtual {v2, v4, v5, v6, v9}, Lcom/android/internal/telephony/uicc/UiccPort;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/uicc/UiccCard;)V

    .line 124
    :goto_61
    iget-object p0, v9, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneIdToPortIdx:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    monitor-exit v1

    return-void

    .line 126
    :cond_70
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Card state is absent when updating!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :goto_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_37

    throw p0
.end method

.method protected blacklist updateCardId(Ljava/lang/String;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardId:Ljava/lang/String;

    return-void
.end method

.method public blacklist updateSupportedMepMode(Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    return-void
.end method
