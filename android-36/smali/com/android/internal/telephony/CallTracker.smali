.class public abstract Lcom/android/internal/telephony/CallTracker;
.super Landroid/os/Handler;
.source "CallTracker.java"


# static fields
.field protected static final blacklist EVENT_CALL_STATE_CHANGE:I = 0x2

.field protected static final blacklist EVENT_CALL_WAITING_INFO_CDMA:I = 0xf

.field protected static final blacklist EVENT_CONFERENCE_RESULT:I = 0xb

.field protected static final blacklist EVENT_ECT_RESULT:I = 0xd

.field protected static final blacklist EVENT_EXIT_ECM_RESPONSE_CDMA:I = 0xe

.field protected static final blacklist EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x5

.field protected static final blacklist EVENT_OPERATION_COMPLETE:I = 0x4

.field protected static final blacklist EVENT_POLL_CALLS_RESULT:I = 0x1

.field protected static final blacklist EVENT_RADIO_AVAILABLE:I = 0x9

.field protected static final blacklist EVENT_RADIO_NOT_AVAILABLE:I = 0xa

.field protected static final blacklist EVENT_REPOLL_AFTER_DELAY:I = 0x3

.field protected static final blacklist EVENT_SEPARATE_RESULT:I = 0xc

.field protected static final blacklist EVENT_SWITCH_RESULT:I = 0x8

.field protected static final blacklist EVENT_THREE_WAY_DIAL_BLANK_FLASH:I = 0x14

.field protected static final blacklist EVENT_THREE_WAY_DIAL_L2_RESULT_CDMA:I = 0x10


# instance fields
.field private final blacklist VALID_COMPARE_LENGTH:I

.field public greylist-max-r mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field protected blacklist mHandoverConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mLastRelevantPoll:Landroid/os/Message;

.field protected greylist-max-r mNeedsPoll:Z

.field protected greylist-max-r mNumberConverted:Z

.field protected greylist-max-r mPendingOperations:I


# direct methods
.method public constructor greylist <init>(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 3

    .line 87
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallTracker;->mNumberConverted:Z

    const/4 v0, 0x3

    .line 65
    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->VALID_COMPARE_LENGTH:I

    .line 88
    iput-object p1, p0, Lcom/android/internal/telephony/CallTracker;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-void
.end method

.method private blacklist checkNoOperationsPending()Z
    .registers 1

    .line 185
    iget p0, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist shouldPerformInternationalNumberRemapping(Lcom/android/internal/telephony/Phone;Landroid/os/PersistableBundle;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    .line 264
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_2a

    .line 269
    :cond_a
    const-string v1, "international_roaming_dial_string_replace_string_array"

    invoke-virtual {p2, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_18

    .line 271
    const-string p1, "shouldPerformInternationalNumberRemapping: did not set the KEY_INTERNATIONAL_ROAMING_DIAL_STRING_REPLACE_STRING_ARRAY"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    return v0

    .line 276
    :cond_18
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    return v0

    .line 265
    :cond_2a
    :goto_2a
    const-string p1, "shouldPerformInternationalNumberRemapping: phone was null"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public blacklist cleanupCalls()V
    .registers 1

    .line 0
    return-void
.end method

.method protected blacklist convertNumberIfNecessary(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    if-nez p2, :cond_3

    return-object p2

    .line 194
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 195
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 197
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CallTracker;->shouldPerformInternationalNumberRemapping(Lcom/android/internal/telephony/Phone;Landroid/os/PersistableBundle;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 198
    const-string v1, "international_roaming_dial_string_replace_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 200
    :cond_26
    const-string v1, "dial_string_replace_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    if-nez v0, :cond_36

    .line 205
    const-string p1, "convertNumberIfNecessary convertMaps is null"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    return-object p2

    .line 209
    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertNumberIfNecessary Roaming convertMaps.length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dialNumber.length() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 213
    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_ea

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_64

    goto/16 :goto_ea

    .line 219
    :cond_64
    array-length v1, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_67
    const-string v6, ""

    if-ge v5, v1, :cond_dc

    aget-object v7, v0, v5

    .line 220
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "convertNumberIfNecessary: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 222
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d9

    .line 223
    array-length v8, v7

    if-le v8, v2, :cond_d9

    .line 224
    aget-object v8, v7, v4

    .line 225
    aget-object v7, v7, v2

    .line 226
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d9

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d9

    .line 228
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d7

    const-string v0, "MDN"

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 229
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getLine1Number()Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_dc

    .line 231
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    move-object v6, p1

    goto :goto_dc

    .line 234
    :cond_be
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v7, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_dc

    :cond_d7
    move-object v6, v7

    goto :goto_dc

    :cond_d9
    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    .line 246
    :cond_dc
    :goto_dc
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_ea

    .line 247
    const-string p1, "convertNumberIfNecessary: convert service number"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 248
    iput-boolean v2, p0, Lcom/android/internal/telephony/CallTracker;->mNumberConverted:Z

    return-object v6

    :cond_ea
    :goto_ea
    return-object p2
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 333
    const-string p1, "CallTracker:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mPendingOperations="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mNeedsPoll="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/CallTracker;->mNeedsPoll:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mLastRelevantPoll="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;
    .registers 10

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_8
    const-string v4, "getHoConnection: Handover connection match found = "

    if-ge v3, v1, :cond_55

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/internal/telephony/Connection;

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getHoConnection - compare number: hoConn= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    return-object v5

    .line 135
    :cond_55
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_5b
    if-ge v2, v1, :cond_a0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getHoConnection: compare state hoConn= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v6}, Lcom/android/internal/telephony/Call;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    if-ne v5, v6, :cond_5b

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    return-object v3

    :cond_a0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract blacklist getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public blacklist getRingingHandoverConnection()Lcom/android/internal/telephony/Connection;
    .registers 5

    .line 303
    iget-object p0, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_7
    if-ge v1, v0, :cond_1c

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 304
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_7

    return-object v2

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract greylist-max-r getState()Lcom/android/internal/telephony/PhoneConstants$State;
.end method

.method public abstract whitelist handleMessage(Landroid/os/Message;)V
.end method

.method protected abstract blacklist handlePollCalls(Landroid/os/AsyncResult;)V
.end method

.method protected blacklist handleRadioAvailable()V
    .registers 1

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->pollCallsWhenSafe()V

    return-void
.end method

.method protected blacklist isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .registers 2

    if-eqz p1, :cond_12

    .line 118
    instance-of p0, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz p0, :cond_12

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 119
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p0

    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p0, p1, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method protected abstract greylist-max-r log(Ljava/lang/String;)V
.end method

.method protected blacklist notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Call$SrvccState;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .line 146
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne p1, v0, :cond_c

    if-eqz p2, :cond_c

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_15

    .line 149
    :cond_c
    sget-object p2, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq p1, p2, :cond_15

    .line 152
    iget-object p2, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 154
    :cond_15
    :goto_15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifySrvccState: state="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mHandoverConnections= "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    .line 155
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist obtainNoPollCompleteMessage(I)Landroid/os/Message;
    .registers 3

    .line 172
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 174
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist pollCallsAfterDelay()V
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    .line 104
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 105
    const-string v0, "Skip polling because HAL_SERVICE_VOICE < RADIO_HAL_VERSION_1.4"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 110
    :cond_15
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 112
    iput v1, v0, Landroid/os/Message;->what:I

    const-wide/16 v1, 0xfa

    .line 113
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected blacklist pollCallsWhenSafe()V
    .registers 3

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallTracker;->mNeedsPoll:Z

    .line 94
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;->checkNoOperationsPending()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 95
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 96
    iget-object p0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    :cond_14
    return-void
.end method

.method public abstract greylist registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist unregisterForVoiceCallEnded(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForVoiceCallStarted(Landroid/os/Handler;)V
.end method
